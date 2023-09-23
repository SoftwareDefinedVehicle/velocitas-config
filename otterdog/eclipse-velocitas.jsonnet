local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-velocitas') {
  settings+: {
    blog: "https://eclipse.dev/velocitas/",
    default_repository_permission: "none",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "Toolchain for creating containerized in-vehicle applications",
    name: "Eclipse Velocitas",
    packages_containers_internal: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  secrets+: [
    orgs.newOrgSecret('GITLAB_API_TOKEN') {
      value: "pass:bots/automotive.velocitas/gitlab.eclipse.org/api-token",
    },
    orgs.newOrgSecret('VELOCITAS_PROJECT_TOKEN') {
      value: "pass:bots/automotive.velocitas/github.com/project-token",
    },
  ],
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('cli') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devcontainer-base-images') {
      allow_update_branch: false,
      description: "devcontainer base images",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-devcontainer-setup') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-github-integration') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-github-templates') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-github-workflows') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-runtime-k3d') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-runtime-local') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('devenv-runtimes') {
      allow_update_branch: false,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('license-check') {
      allow_update_branch: false,
      description: "license-check",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('release-documentation-action') {
      allow_update_branch: false,
      description: "release-documentation-action",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-cpp-sdk') {
      allow_update_branch: false,
      description: "vehicle-app-cpp-sdk",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-cpp-template') {
      allow_update_branch: false,
      description: "vehicle-app-cpp-template",
      is_template: true,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-python-sdk') {
      allow_update_branch: false,
      description: "vehicle-app-python-sdk",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-python-template') {
      allow_update_branch: false,
      description: "vehicle-app-python-template",
      is_template: true,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-app-template') {
      allow_update_branch: false,
      description: "vehicle-app-template",
      is_template: true,
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-model-cpp') {
      allow_update_branch: false,
      description: "vehicle-model-cpp",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-model-generator') {
      allow_update_branch: false,
      description: "vehicle-model-generator",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('vehicle-model-python') {
      allow_update_branch: false,
      description: "vehicle-model-python",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('velocitas-docs') {
      allow_update_branch: false,
      description: "Documentation artifacts of Velocitas",
      gh_pages_build_type: "legacy",
      gh_pages_source_branch: "docs",
      gh_pages_source_path: "/",
      has_discussions: true,
      homepage: "https://eclipse.dev/velocitas",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
      environments: [
        orgs.newEnvironment('github-pages') {
          branch_policies+: [
            "docs"
          ],
          deployment_branch_policy: "selected",
        },
      ],
    },
    orgs.newRepo('velocitas-lib') {
      allow_update_branch: false,
      description: "A Python-based velocitas module which enables development of Velocitas CLI packages.",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
    orgs.newRepo('velocitas-project-generator-npm') {
      allow_update_branch: false,
      description: "velocitas-project-generator-npm",
      web_commit_signoff_required: false,
      branch_protection_rules: [
        orgs.newBranchProtectionRule('main') {
          dismisses_stale_reviews: true,
          require_last_push_approval: true,
          required_approving_review_count: 1,
          requires_conversation_resolution: true,
          requires_strict_status_checks: true,
        },
      ],
    },
  ],
}
