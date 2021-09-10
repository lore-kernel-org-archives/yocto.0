Received: from mail1.wrs.com (mail1.wrs.com [147.11.146.13])
 by mx.groups.io with SMTP id smtpd.web09.6525.1631263012823028153
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Sep 2021 01:36:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 147.11.146.13, mailfrom: kai.kang@windriver.com)
Received: from mail.windriver.com (mail.wrs.com [147.11.1.11])
	by mail1.wrs.com (8.15.2/8.15.2) with ESMTPS id 18A8apTr005005
	(version=TLSv1.1 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 10 Sep 2021 01:36:51 -0700
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.corp.ad.wrs.com [147.11.82.252])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id 18A8aoW5029947
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <yocto@lists.yoctoproject.org>; Fri, 10 Sep 2021 01:36:51 -0700 (PDT)
Received: from ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 10 Sep 2021 01:36:50 -0700
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ALA-EXCHNG02.corp.ad.wrs.com (147.11.82.254) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.14; Fri, 10 Sep 2021 01:36:50 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2242.12 via Frontend Transport; Fri, 10 Sep 2021 01:36:49 -0700
From: "kai" <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [hardknott][PATCH] sssd: fix CVE-2021-3621
Date: Fri, 10 Sep 2021 16:36:46 +0800
Message-ID: <20210910083646.19595-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-MIME-Autoconverted: from 8bit to quoted-printable by mail1.wrs.com id 18A8apTr005005
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

From: Kai Kang <kai.kang@windriver.com>

Backport patch to fix CVE-2021-3621.

CVE: CVE-2021-3621

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../sssd/files/CVE-2021-3621.patch            | 291 ++++++++++++++++++
 recipes-security/sssd/sssd_1.16.5.bb          |   1 +
 2 files changed, 292 insertions(+)
 create mode 100644 recipes-security/sssd/files/CVE-2021-3621.patch

diff --git a/recipes-security/sssd/files/CVE-2021-3621.patch b/recipes-se=
curity/sssd/files/CVE-2021-3621.patch
new file mode 100644
index 0000000..3d2c707
--- /dev/null
+++ b/recipes-security/sssd/files/CVE-2021-3621.patch
@@ -0,0 +1,291 @@
+Backport patch to fix CVE-2021-3621.
+
+Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/b4b3267]
+CVE: CVE-2021-3621
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
+From b4b32677a886bc26d60ce0171505aa3ab0c82c8a Mon Sep 17 00:00:00 2001
+From: Alexey Tikhonov <atikhono@redhat.com>
+Date: Fri, 30 Jul 2021 19:05:31 +0200
+Subject: [PATCH] TOOLS: replace system() with execvp() to avoid executio=
n of
+ user supplied command
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+:relnote: A flaw was found in SSSD, where the sssctl command was
+vulnerable to shell command injection via the logs-fetch and
+cache-expire subcommands. This flaw allows an attacker to trick
+the root user into running a specially crafted sssctl command,
+such as via sudo, to gain root access. The highest threat from this
+vulnerability is to confidentiality, integrity, as well as system
+availability.
+This patch fixes a flaw by replacing system() with execvp().
+
+:fixes: CVE-2021-3621
+
+Reviewed-by: Pavel B=C5=99ezina <pbrezina@redhat.com>
+---
+ src/tools/sssctl/sssctl.c      | 40 +++++++++++++++++-------
+ src/tools/sssctl/sssctl.h      |  2 +-
+ src/tools/sssctl/sssctl_data.c | 57 +++++++++++-----------------------
+ src/tools/sssctl/sssctl_logs.c | 31 ++++++++++++++----
+ 4 files changed, 73 insertions(+), 57 deletions(-)
+
+diff --git a/src/tools/sssctl/sssctl.c b/src/tools/sssctl/sssctl.c
+index afaa84bc0..403c89c35 100644
+--- a/src/tools/sssctl/sssctl.c
++++ b/src/tools/sssctl/sssctl.c
+@@ -97,22 +97,37 @@ sssctl_prompt(const char *message,
+     return SSSCTL_PROMPT_ERROR;
+ }
+=20
+-errno_t sssctl_run_command(const char *command)
++errno_t sssctl_run_command(const char *const argv[])
+ {
+     int ret;
++    int wstatus;
+=20
+-    DEBUG(SSSDBG_TRACE_FUNC, "Running %s\n", command);
++    DEBUG(SSSDBG_TRACE_FUNC, "Running '%s'\n", argv[0]);
+=20
+-    ret =3D system(command);
++    ret =3D fork();
+     if (ret =3D=3D -1) {
+-        DEBUG(SSSDBG_CRIT_FAILURE, "Unable to execute %s\n", command);
+         fprintf(stderr, _("Error while executing external command\n"));
+         return EFAULT;
+-    } else if (WEXITSTATUS(ret) !=3D 0) {
+-        DEBUG(SSSDBG_CRIT_FAILURE, "Command %s failed with [%d]\n",
+-              command, WEXITSTATUS(ret));
++    }
++
++    if (ret =3D=3D 0) {
++        /* cast is safe - see
++        https://pubs.opengroup.org/onlinepubs/9699919799/functions/exec=
.html
++        "The statement about argv[] and envp[] being constants ... "
++        */
++        execvp(argv[0], discard_const_p(char * const, argv));
+         fprintf(stderr, _("Error while executing external command\n"));
+-        return EIO;
++        _exit(1);
++    } else {
++        if (waitpid(ret, &wstatus, 0) =3D=3D -1) {
++            fprintf(stderr,
++                    _("Error while executing external command '%s'\n"),=
 argv[0]);
++            return EFAULT;
++        } else if (WEXITSTATUS(wstatus) !=3D 0) {
++            fprintf(stderr,
++                    _("Command '%s' failed with [%d]\n"), argv[0], WEXI=
TSTATUS(wstatus));
++            return EIO;
++        }
+     }
+=20
+     return EOK;
+@@ -132,11 +147,14 @@ static errno_t sssctl_manage_service(enum sssctl_s=
vc_action action)
+ #elif defined(HAVE_SERVICE)
+     switch (action) {
+     case SSSCTL_SVC_START:
+-        return sssctl_run_command(SERVICE_PATH" sssd start");
++        return sssctl_run_command(
++                      (const char *[]){SERVICE_PATH, "sssd", "start", N=
ULL});
+     case SSSCTL_SVC_STOP:
+-        return sssctl_run_command(SERVICE_PATH" sssd stop");
++        return sssctl_run_command(
++                      (const char *[]){SERVICE_PATH, "sssd", "stop", NU=
LL});
+     case SSSCTL_SVC_RESTART:
+-        return sssctl_run_command(SERVICE_PATH" sssd restart");
++        return sssctl_run_command(
++                      (const char *[]){SERVICE_PATH, "sssd", "restart",=
 NULL});
+     }
+ #endif
+=20
+diff --git a/src/tools/sssctl/sssctl.h b/src/tools/sssctl/sssctl.h
+index 70fc19eff..71f798b2a 100644
+--- a/src/tools/sssctl/sssctl.h
++++ b/src/tools/sssctl/sssctl.h
+@@ -42,7 +42,7 @@ enum sssctl_prompt_result
+ sssctl_prompt(const char *message,
+               enum sssctl_prompt_result defval);
+=20
+-errno_t sssctl_run_command(const char *command);
++errno_t sssctl_run_command(const char *const argv[]); /* argv[0] - comm=
and */
+ bool sssctl_start_sssd(bool force);
+ bool sssctl_stop_sssd(bool force);
+ bool sssctl_restart_sssd(bool force);
+diff --git a/src/tools/sssctl/sssctl_data.c b/src/tools/sssctl/sssctl_da=
ta.c
+index cc46cafbf..8a042664c 100644
+--- a/src/tools/sssctl/sssctl_data.c
++++ b/src/tools/sssctl/sssctl_data.c
+@@ -105,15 +105,15 @@ static errno_t sssctl_backup(bool force)
+         }
+     }
+=20
+-    ret =3D sssctl_run_command("sss_override user-export "
+-                             SSS_BACKUP_USER_OVERRIDES);
++    ret =3D sssctl_run_command((const char *[]){"sss_override", "user-e=
xport",
++                                              SSS_BACKUP_USER_OVERRIDES=
, NULL});
+     if (ret !=3D EOK) {
+         fprintf(stderr, _("Unable to export user overrides\n"));
+         return ret;
+     }
+=20
+-    ret =3D sssctl_run_command("sss_override group-export "
+-                             SSS_BACKUP_GROUP_OVERRIDES);
++    ret =3D sssctl_run_command((const char *[]){"sss_override", "group-=
export",
++                                              SSS_BACKUP_GROUP_OVERRIDE=
S, NULL});
+     if (ret !=3D EOK) {
+         fprintf(stderr, _("Unable to export group overrides\n"));
+         return ret;
+@@ -158,8 +158,8 @@ static errno_t sssctl_restore(bool force_start, bool=
 force_restart)
+     }
+=20
+     if (sssctl_backup_file_exists(SSS_BACKUP_USER_OVERRIDES)) {
+-        ret =3D sssctl_run_command("sss_override user-import "
+-                                 SSS_BACKUP_USER_OVERRIDES);
++        ret =3D sssctl_run_command((const char *[]){"sss_override", "us=
er-import",
++                                                  SSS_BACKUP_USER_OVERR=
IDES, NULL});
+         if (ret !=3D EOK) {
+             fprintf(stderr, _("Unable to import user overrides\n"));
+             return ret;
+@@ -167,8 +167,8 @@ static errno_t sssctl_restore(bool force_start, bool=
 force_restart)
+     }
+=20
+     if (sssctl_backup_file_exists(SSS_BACKUP_USER_OVERRIDES)) {
+-        ret =3D sssctl_run_command("sss_override group-import "
+-                                 SSS_BACKUP_GROUP_OVERRIDES);
++        ret =3D sssctl_run_command((const char *[]){"sss_override", "gr=
oup-import",
++                                                  SSS_BACKUP_GROUP_OVER=
RIDES, NULL});
+         if (ret !=3D EOK) {
+             fprintf(stderr, _("Unable to import group overrides\n"));
+             return ret;
+@@ -296,40 +296,19 @@ errno_t sssctl_cache_expire(struct sss_cmdline *cm=
dline,
+                             void *pvt)
+ {
+     errno_t ret;
+-    char *cmd_args =3D NULL;
+-    const char *cachecmd =3D SSS_CACHE;
+-    char *cmd =3D NULL;
+-    int i;
+-
+-    if (cmdline->argc =3D=3D 0) {
+-        ret =3D sssctl_run_command(cachecmd);
+-        goto done;
+-    }
+=20
+-    cmd_args =3D talloc_strdup(tool_ctx, "");
+-    if (cmd_args =3D=3D NULL) {
+-        ret =3D ENOMEM;
+-        goto done;
++    const char **args =3D talloc_array_size(tool_ctx,
++                                          sizeof(char *),
++                                          cmdline->argc + 2);
++    if (!args) {
++        return ENOMEM;
+     }
++    memcpy(&args[1], cmdline->argv, sizeof(char *) * cmdline->argc);
++    args[0] =3D SSS_CACHE;
++    args[cmdline->argc + 1] =3D NULL;
+=20
+-    for (i =3D 0; i < cmdline->argc; i++) {
+-        cmd_args =3D talloc_strdup_append(cmd_args, cmdline->argv[i]);
+-        if (i !=3D cmdline->argc - 1) {
+-            cmd_args =3D talloc_strdup_append(cmd_args, " ");
+-        }
+-    }
+-
+-    cmd =3D talloc_asprintf(tool_ctx, "%s %s", cachecmd, cmd_args);
+-    if (cmd =3D=3D NULL) {
+-        ret =3D ENOMEM;
+-        goto done;
+-    }
+-
+-    ret =3D sssctl_run_command(cmd);
+-
+-done:
+-    talloc_free(cmd_args);
+-    talloc_free(cmd);
++    ret =3D sssctl_run_command(args);
+=20
++    talloc_free(args);
+     return ret;
+ }
+diff --git a/src/tools/sssctl/sssctl_logs.c b/src/tools/sssctl/sssctl_lo=
gs.c
+index aca988c05..c85cc7a4b 100644
+--- a/src/tools/sssctl/sssctl_logs.c
++++ b/src/tools/sssctl/sssctl_logs.c
+@@ -32,6 +32,7 @@
+ #include <popt.h>
+ #include <stdio.h>
+ #include <signal.h>
++#include <glob.h>
+=20
+ #include "util/util.h"
+ #include "tools/common/sss_process.h"
+@@ -231,6 +232,7 @@ errno_t sssctl_logs_remove(struct sss_cmdline *cmdli=
ne,
+ {
+     struct sssctl_logs_opts opts =3D {0};
+     errno_t ret;
++    glob_t globbuf;
+=20
+     /* Parse command line. */
+     struct poptOption options[] =3D {
+@@ -254,8 +256,19 @@ errno_t sssctl_logs_remove(struct sss_cmdline *cmdl=
ine,
+=20
+         sss_signal(SIGHUP);
+     } else {
++        globbuf.gl_offs =3D 4;
++        ret =3D glob(LOG_PATH"/*.log", GLOB_ERR|GLOB_DOOFFS, NULL, &glo=
bbuf);
++        if (ret !=3D 0) {
++            DEBUG(SSSDBG_CRIT_FAILURE, "Unable to expand log files list=
\n");
++            return ret;
++        }
++        globbuf.gl_pathv[0] =3D discard_const_p(char, "truncate");
++        globbuf.gl_pathv[2] =3D discard_const_p(char, "--size");
++        globbuf.gl_pathv[3] =3D discard_const_p(char, "0");
++
+         printf(_("Truncating log files...\n"));
+-        ret =3D sssctl_run_command("truncate --size 0 " LOG_FILES);
++        ret =3D sssctl_run_command((const char * const*)globbuf.gl_path=
v);
++        globfree(&globbuf);
+         if (ret !=3D EOK) {
+             fprintf(stderr, _("Unable to truncate log files\n"));
+             return ret;
+@@ -270,8 +283,8 @@ errno_t sssctl_logs_fetch(struct sss_cmdline *cmdlin=
e,
+                           void *pvt)
+ {
+     const char *file;
+-    const char *cmd;
+     errno_t ret;
++    glob_t globbuf;
+=20
+     /* Parse command line. */
+     ret =3D sss_tool_popt_ex(cmdline, NULL, SSS_TOOL_OPT_OPTIONAL, NULL=
, NULL,
+@@ -281,13 +294,19 @@ errno_t sssctl_logs_fetch(struct sss_cmdline *cmdl=
ine,
+         return ret;
+     }
+=20
+-    cmd =3D talloc_asprintf(tool_ctx, "tar -czf %s %s", file, LOG_FILES=
);
+-    if (cmd =3D=3D NULL) {
+-        fprintf(stderr, _("Out of memory!"));
++    globbuf.gl_offs =3D 3;
++    ret =3D glob(LOG_PATH"/*.log", GLOB_ERR|GLOB_DOOFFS, NULL, &globbuf=
);
++    if (ret !=3D 0) {
++        DEBUG(SSSDBG_CRIT_FAILURE, "Unable to expand log files list\n")=
;
++        return ret;
+     }
++    globbuf.gl_pathv[0] =3D discard_const_p(char, "tar");
++    globbuf.gl_pathv[1] =3D discard_const_p(char, "-czf");
++    globbuf.gl_pathv[2] =3D discard_const_p(char, file);
+=20
+     printf(_("Archiving log files into %s...\n"), file);
+-    ret =3D sssctl_run_command(cmd);
++    ret =3D sssctl_run_command((const char * const*)globbuf.gl_pathv);
++    globfree(&globbuf);
+     if (ret !=3D EOK) {
+         fprintf(stderr, _("Unable to archive log files\n"));
+         return ret;
+--=20
+2.33.0
+
diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd=
/sssd_1.16.5.bb
index 9784ec7..02d0837 100644
--- a/recipes-security/sssd/sssd_1.16.5.bb
+++ b/recipes-security/sssd/sssd_1.16.5.bb
@@ -22,6 +22,7 @@ SRC_URI =3D "https://releases.pagure.org/SSSD/${BPN}/${=
BP}.tar.gz \
            file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpa=
ges.patch \
            file://0001-nss-Collision-with-external-nss-symbol.patch \
            file://0002-Provide-missing-defines-which-otherwise-are-avail=
abl.patch \
+           file://CVE-2021-3621.patch \
            "
=20
 SRC_URI[sha256sum] =3D "2e1a7bf036b583f686d35164f2d79bdf4857b98f51fe8b0d=
17aa0fa756e4d0c0"
--=20
2.17.1

