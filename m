Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F1C2E00D85; Wed, 17 Jul 2019 16:40:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97790E00B8F
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 16:40:29 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Jul 2019 16:40:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; d="scan'208";a="175855935"
Received: from mohdfitr-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.146.109])
	by FMSMGA003.fm.intel.com with ESMTP; 17 Jul 2019 16:40:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 18 Jul 2019 11:37:59 +1200
Message-Id: <cover.1563405983.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [layerindex-web][PATCH 000/126] Docker setup / misc fixes (cover letter only)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 17 Jul 2019 23:40:31 -0000
Content-Transfer-Encoding: 8bit

The Clear Linux* Dissector [1] is a special-purpose fork of the OE Layer
Index codebase. During development a number of general-purpose fixes have
been made, so I am now sending a slightly reworked set of these back to be
merged into the layer index. Highlights:

* Enhanced docker/docker-compose setup with script for one-command
  installation - this is now the preferred method of installation for
  uses other than development, so the README documentation has been
  updated accordingly.
* User-selectable security questions for password resets
* Fixes for spec file importing
* Various minor security fixes

[1] https://github.com/intel/clear-linux-dissector-web


The following changes since commit dba1fbe5d1c5d8714d7ca3ca86c42972ebde128e:

  RRS: add missing migration (2019-05-28 09:57:58 +1200)

are available in the Git repository at:

  git://git.yoctoproject.org/layerindex-web paule/dissector-backports
  http://git.yoctoproject.org/cgit.cgi/layerindex-web/log/?h=paule/dissector-backports

Amber Elliot (6):
  docker: add setup script
  admin.py: Add custom SiteAdmin model.
  Upgrade django-registration to version 3.0.
  Add user security questions
  layerindex/urls.py: improve formatting
  requirements.txt: Require secure version of Django.

Paul Eggleton (119):
  Add ability to hide branches
  Split out recipe dependency handling to its own function
  docker: Add docker-compose file
  update_classic_status: recognise pythonhosted.org as python
  update_classic_status: set category for KDE packages
  update_classic_status: categorise perl packages
  import_otherdistro: add description option
  import_otherdistro: improve display of deleted items
  dockersetup: formatting fixes
  dockersetup: add some error checking to the setup script
  dockersetup: tweak portmapping option and display port
  docker/nginx*.conf: fix up indentation
  docker: use quoted values
  dockersetup: add HTTPS support and use by default
  dockersetup: Show intro message
  dockersetup: add letsencrypt support
  nginx: set some limits for DDOS protection
  docker: set mariadb wait_timeout to upstream default
  dockerignore: add docker files and tests
  docker: enable user/password for RabbitMQ server
  dockersetup: move HTTPS code to its own function
  dockersetup: support update/reinstall mode
  dockersetup: fix auto-generated passwords
  dockersetup: warn if http proxy specified without https
  dockersetup: use separate db account with lower privileges
  dockersetup: use with open in readfile/writefile
  .gitignore: add some more files/dirs
  dockersetup: support importing gzip compressed database dumps
  docker: pass through options for migrate script
  docker: restart services automatically unless stopped
  Update TableSorter to latest version of active fork
  Disable caching on auth views
  docker: enable SECURE_BROWSER_XSS_FILTER
  Use shell=False where possible with utils.runcmd()
  dockersetup: import database dump before running migrations
  dockersetup: move superuser account creation to the end
  dockersetup: set site info and email host
  Rework README documents
  import_layers: fix URL construction
  Add a script to create initial db dump
  dockersetup: add option to skip database migrations
  dockersetup: enable error report emails
  Disable autocomplete on sensitive fields
  docker: Increase nginx max upload size
  docker: increase gunicorn worker timeout to handle large images
  ClassicRecipeDetailView does not need a form
  Add ability to disposition comparison patches
  Add access controls to PatchDispositionAdmin
  import_otherdistro: refactor spec file import
  import_otherdistro.py: avoid deleting all records if no spec files found
  import_otherdistro.py: create layer/branch if they don't exist
  Add sha256sum to Source model
  Record sha256sum of other distro source files
  dockersetup: require email address
  import_otherdistro: optionally store local path
  import_otherdistro: fix handling of garbage in description values
  Determine if spec file patches are actually applied and striplevel
  docker-compose: fix missing DATABASE_USER for layerscelery service
  docker: add dependencies for derivative import
  tasks: support running non-shell commands
  tasks: fix incorrect closing tag on button
  Enable task log/progress to work within docker
  tasks: handle carriage returns in task output
  Record configure options
  Fix erroneously importing package fields from spec files
  docker: use python3 in migrate script
  docker: improve nginx https configuration security
  docker: Increase max packet size to 128M
  tasks: disable broker heartbeat to workaround connection issues
  dockersetup: 'easy' subprocess conversions to not use shell=True
  dockersetup: require python 3.4.3 or later
  More shell quoting
  dockersetup: remove redundant code to update non-HTTPS lines in nginx-ssl.conf
  dockersetup: update nginx-ssl.conf in update mode
  Reimplement simplesearch
  admin: allow searching ClassicRecipes by cover_pn
  requirements.txt: update versions
  Set permissions for all volumes
  docker: ensure application files are owned by root
  Fix incorrect URL name leading to internal server error
  Add license / note for django-registration-templates
  Add LICENSE texts for distributed components
  COPYING.MIT: update
  admin: allow editing ClassicRecipe fields
  Fix progressive task output when it contains entity-escaped characters
  Try to make running background commands more responsive
  Add a workaround for ConnectionResetErrors in task_log_view()
  docker: delete docker directory from /opt/layerindex
  Use "Packages" in tab name on main comparison pages instead of "Recipes"
  Include branch name in "Not being applied" patch tooltip
  Tone down Axes aggressiveness
  dockersetup: use docker-compose exec instead of docker exec
  dockersetup: Use -T option with docker-compose exec
  dockersetup: obtain and use the real project name instead of hardcoding
  dockersetup: add option to specify docker-compose project name
  Replace custom pagination with django-bootstrap-pagination
  dockersetup: do not set site name if a database file is specified
  dockersetup: add option to disable adding admin user
  docker: remove hardcoded container names
  README: add pointer to import layer index data
  requirements.txt: update
  check_requirements: write out output of safety check
  check_requirements.sh: improve output for cron usage
  Fix axes lockout not working
  dockersetup: handle http/https port properly
  dockersetup: show a warning if no email host specified
  dockersetup: refactor arguments handling slightly
  dockersetup: support encryption/authentication for SMTP
  check_requirements: make output file naming a bit more consistent
  .gitignore: add a few more files
  docker: disable client MIME type sniffing
  check_requirements.sh: more tweaks
  Tweak password reset security question handling
  Fix a couple of Edit Profile form message bugs
  requirements.txt: update pillow
  auth_views: minor indentation fix
  Fix admin logout login button redirection
  Set string representation for UserProfile & SecurityQuestionAnswer models
  Optionally allow accounts without security questions to reset password

Terri Oda (1):
  dockersetup: quote user input sent to subprocess

 .dockerignore                                 |    8 +
 .gitignore                                    |   15 +
 COPYING.MIT                                   |    5 +-
 Dockerfile                                    |    8 +-
 README                                        |  278 +-
 README.devel                                  |  121 +
 check_requirements.sh                         |   48 +-
 docker-compose.yml                            |   95 +
 docker/README                                 |   99 +-
 docker/certs/README                           |    7 +
 docker/migrate.sh                             |    2 +-
 docker/nginx-ssl.conf                         |   65 +-
 docker/nginx.conf                             |    6 +-
 docker/settings.py                            |   24 +-
 dockersetup.py                                |  785 ++++
 layerindex/admin.py                           |   31 +-
 layerindex/auth_forms.py                      |  133 +-
 layerindex/auth_views.py                      |   91 +-
 layerindex/context_processors.py              |    6 +-
 layerindex/forms.py                           |   75 +-
 layerindex/middleware.py                      |   15 +
 layerindex/migrations/0028_branch_hidden.py   |   20 +
 .../migrations/0030_securityquestion.py       |   46 +
 .../0031_securityquestion_populate.py         |   25 +
 .../migrations/0032_patchdisposition.py       |   31 +
 .../migrations/0034_source_sha256sum.py       |   20 +
 .../migrations/0036_layerbranch_local_path.py |   20 +
 layerindex/migrations/0037_patch_applied.py   |   20 +
 .../migrations/0038_patch_striplevel.py       |   20 +
 .../migrations/0041_recipe_configopts.py      |   20 +
 layerindex/models.py                          |   53 +
 layerindex/recipeparse.py                     |   42 +
 layerindex/securityquestions.py               |    6 +
 layerindex/simplesearch.py                    |   39 -
 layerindex/static/LICENSE.bootstrap           |   21 +
 layerindex/static/LICENSE.chartjs             |    9 +
 layerindex/static/LICENSE.diff2html           |   20 +
 layerindex/static/LICENSE.jquery              |   36 +
 layerindex/tasks.py                           |   13 +-
 layerindex/templatetags/addurlparameter.py    |   29 -
 layerindex/templatetags/pagination.py         |   52 -
 layerindex/tools/import_layer.py              |   10 +-
 layerindex/tools/import_layers.py             |    2 +-
 layerindex/tools/import_otherdistro.py        |  253 +-
 layerindex/tools/import_project.py            |    8 +-
 layerindex/tools/initial_db_dump.sh           |   67 +
 layerindex/tools/site_name.py                 |   71 +
 layerindex/tools/update_classic_status.py     |   10 +-
 layerindex/update.py                          |    4 +-
 layerindex/update_layer.py                    |   46 +-
 layerindex/urls.py                            |   79 +-
 layerindex/utils.py                           |   43 +-
 layerindex/views.py                           |  187 +-
 requirements.txt                              |   38 +-
 rrs/static/js/jquery.tablesorter.js           | 3945 ++++++++++++-----
 rrs/tools/rrs_maintainer_history.py           |    8 +-
 rrs/tools/rrs_upgrade_history.py              |   12 +-
 rrs/tools/rrs_upstream_email.py               |    2 +-
 rrs/tools/upgrade_history_internal.py         |   16 +-
 settings.py                                   |   11 +-
 templates/base.html                           |    6 +-
 .../activate.html                             |    2 +-
 .../activation_complete.html                  |    2 +-
 .../activation_email_body.txt}                |    2 +-
 .../activation_email_subject.txt              |    0
 .../activation_failed.html                    |   13 +
 .../registration_complete.html                |    0
 .../registration_form.html                    |    2 +-
 templates/layerindex/bulkchangesearch.html    |    6 +-
 templates/layerindex/classes.html             |    6 +-
 templates/layerindex/classicrecipedetail.html |   65 +
 templates/layerindex/classicrecipes.html      |   10 +-
 templates/layerindex/classicstats.html        |    2 +-
 .../layerindex/comparisonrecipebase.html      |   29 +-
 templates/layerindex/distros.html             |    6 +-
 templates/layerindex/history.html             |    6 +-
 templates/layerindex/layers.html              |    6 +-
 templates/layerindex/machines.html            |    6 +-
 templates/layerindex/profile.html             |    6 +
 templates/layerindex/recipes.html             |    6 +-
 templates/layerindex/reviewlist.html          |    6 +-
 templates/layerindex/task.html                |   21 +-
 templates/layerindex/updatelist.html          |    6 +-
 templates/pagination.html                     |   57 -
 templates/registration/LICENSE                |   21 +
 templates/registration/account_lockout.html   |    6 +
 .../{logout.html => logged_out.html}          |    0
 templates/registration/login.html             |    6 +-
 .../registration/password_change_form.html    |    2 +-
 .../registration/password_reset_complete.html |    2 +-
 .../registration/password_reset_confirm.html  |    8 +-
 .../registration/password_reset_email.txt     |    2 +-
 .../registration/password_reset_fail.html     |    6 +
 .../registration/password_reset_form.html     |    2 +-
 urls.py                                       |   26 +-
 95 files changed, 5881 insertions(+), 1742 deletions(-)
 create mode 100644 README.devel
 create mode 100644 docker-compose.yml
 create mode 100644 docker/certs/README
 create mode 100755 dockersetup.py
 create mode 100644 layerindex/middleware.py
 create mode 100644 layerindex/migrations/0028_branch_hidden.py
 create mode 100644 layerindex/migrations/0030_securityquestion.py
 create mode 100644 layerindex/migrations/0031_securityquestion_populate.py
 create mode 100644 layerindex/migrations/0032_patchdisposition.py
 create mode 100644 layerindex/migrations/0034_source_sha256sum.py
 create mode 100644 layerindex/migrations/0036_layerbranch_local_path.py
 create mode 100644 layerindex/migrations/0037_patch_applied.py
 create mode 100644 layerindex/migrations/0038_patch_striplevel.py
 create mode 100644 layerindex/migrations/0041_recipe_configopts.py
 create mode 100644 layerindex/securityquestions.py
 delete mode 100644 layerindex/simplesearch.py
 create mode 100644 layerindex/static/LICENSE.bootstrap
 create mode 100644 layerindex/static/LICENSE.chartjs
 create mode 100644 layerindex/static/LICENSE.diff2html
 create mode 100644 layerindex/static/LICENSE.jquery
 delete mode 100644 layerindex/templatetags/addurlparameter.py
 delete mode 100644 layerindex/templatetags/pagination.py
 create mode 100755 layerindex/tools/initial_db_dump.sh
 create mode 100755 layerindex/tools/site_name.py
 rename templates/{registration => django_registration}/activate.html (77%)
 rename templates/{registration => django_registration}/activation_complete.html (62%)
 rename templates/{registration/activation_email.txt => django_registration/activation_email_body.txt} (83%)
 rename templates/{registration => django_registration}/activation_email_subject.txt (100%)
 create mode 100644 templates/django_registration/activation_failed.html
 rename templates/{registration => django_registration}/registration_complete.html (100%)
 rename templates/{registration => django_registration}/registration_form.html (93%)
 delete mode 100644 templates/pagination.html
 create mode 100644 templates/registration/LICENSE
 create mode 100644 templates/registration/account_lockout.html
 rename templates/registration/{logout.html => logged_out.html} (100%)
 create mode 100644 templates/registration/password_reset_fail.html

-- 
2.20.1


