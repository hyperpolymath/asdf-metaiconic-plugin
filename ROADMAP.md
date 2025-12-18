# asdf-metaiconic-plugin Roadmap

**Last Updated:** 2025-12-18

## Current Status

The project currently has a hub-and-spoke SCM mirror workflow that synchronizes code to GitLab, Codeberg, and Bitbucket from GitHub.

### Completed

- [x] Initial hub-and-spoke mirror workflow (GitHub -> GitLab/Codeberg/Bitbucket)
- [x] SSH-based authentication for secure mirroring
- [x] Pinned action versions with SHA hashes (supply chain security)
- [x] Conditional mirror execution via repository variables
- [x] **SSH host key verification** (MITM protection)
- [x] **Git credential isolation** (persist-credentials: false)
- [x] **Concurrency control** (prevents race conditions)

---

## Phase 1: Core asdf Plugin Implementation

### Required Files

- [ ] `bin/list-all` - List all available versions
- [ ] `bin/list-bin-paths` - List paths with executables
- [ ] `bin/download` - Download specific version
- [ ] `bin/install` - Install specific version
- [ ] `lib/utils.bash` - Shared utility functions

### Configuration

- [ ] Add `.tool-versions` example file
- [ ] Create `README.md` with installation/usage instructions
- [ ] Add `LICENSE` file (AGPL-3.0-or-later based on existing header)

---

## Phase 2: Quality & Testing

### Testing

- [ ] Add `test/` directory with BATS tests
- [ ] Test version listing
- [ ] Test download functionality
- [ ] Test installation
- [ ] CI workflow for running tests on PR/push

### Code Quality

- [ ] Add ShellCheck linting workflow
- [ ] Add shfmt formatting checks
- [ ] Add pre-commit hooks configuration

---

## Phase 3: Security Hardening

### Completed Security Items

| Item | Status |
|------|--------|
| SSH host key verification | Done |
| Pinned action SHAs | Done |
| Minimal permissions (`read-all`) | Done |
| Credential isolation | Done |
| Concurrency control | Done |

### Planned Security Items

- [ ] Add Dependabot configuration for action updates
- [ ] Add CODEOWNERS file
- [ ] Add security policy (SECURITY.md)
- [ ] Consider adding signed commits for releases
- [ ] Add checksum verification for downloaded binaries

---

## Phase 4: Documentation & Community

- [ ] Comprehensive README with badges
- [ ] Contributing guidelines (CONTRIBUTING.md)
- [ ] Changelog (CHANGELOG.md)
- [ ] Register plugin with asdf-plugins repository

---

## Phase 5: Advanced Features (Future)

- [ ] Support for multiple platforms (Linux, macOS, Windows/WSL)
- [ ] Support for multiple architectures (amd64, arm64)
- [ ] Version aliases (latest, stable, etc.)
- [ ] Offline installation support
- [ ] Integration with asdf update mechanisms

---

## Security Maintenance

**Periodic Tasks:**

1. **Monthly:** Verify SSH host keys are still valid
   - [GitLab SSH Keys](https://docs.gitlab.com/ee/user/gitlab_com/#ssh-host-keys-fingerprints)
   - [Codeberg SSH Fingerprint](https://docs.codeberg.org/security/ssh-fingerprint/)
   - [Bitbucket SSH Keys](https://bitbucket.org/blog/ssh-host-key-changes)

2. **Quarterly:** Review and update pinned action versions

3. **As Needed:** Rotate SSH deploy keys if compromised

---

## Notes

This roadmap prioritizes:
1. Security-first approach
2. Minimal viable plugin before features
3. Automated testing and quality gates
4. Community-ready documentation
