Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web08.12023.1632066257044187670
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Sep 2021 08:44:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VAHohaF1;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id r2so14861577pgl.10
        for <yocto@lists.yoctoproject.org>; Sun, 19 Sep 2021 08:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=cyADMVLe6IeKu/SyvVsEQmWDsAmJ2xv7l8/PMmjqs80=;
        b=VAHohaF1TLiYPKRZhpYviz6WFGS5by0CBkqF0gmtYGCAJIAMrXwTg1Rqo8oBlNnp47
         lpfSH93QJAfyYsle8R360cJRBcVLfFvUgAu1RDweNWQIVG7CztV8QFGCxZ8PkOZeDpRp
         UeRrtxOTj4iDw0RmC0cSzqpiCQS/FXGa5kqXVVBt2r18g7Cwzua4bhX+c449OiHMvJ/G
         04lAxMTqYFo3Subj+N2o7OVE5N9luQU3Vx4mKaf6a9aapNCrjPoqyAH96+ffFIrYYar1
         lLfVwwG606Wa+covw0lFgLSpqlF1uVNJOkcCkcOb3ahXzQy6Zl1SEl4S9K4t8XzuHW4m
         fToQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=cyADMVLe6IeKu/SyvVsEQmWDsAmJ2xv7l8/PMmjqs80=;
        b=qsJBWdpGRKDFwTKAjKj6UUpKTxyoLAWBeU+t82JP92pumWdnv/fxGsY6UMtngYbw5e
         +7bIbo3mgHt2zbZG7oaDXWRQWIM0kLdXR2adp79BiL7X/gzrWQH+HQjtEd0O4BZSwKEG
         00BJScQuJXo65hgbq25KtMLje7CGY3yEHBIQ+eAy6ziqnx0xkDO02FZ4mifm63NPkzKY
         wc5a98VN9ObmjEJocbio6XYI0BvZkgSJBR5WAM1KbmSi8nh/1s2eZc554hc/MgnOxXoP
         ZGuyh5tkRW6TxMQwT6fzWs+SGOppl/QR7gSOnySI3lIxkFyl09rf+fXcSvFc7LtlFTh9
         Q3cw==
X-Gm-Message-State: AOAM530iMEc2sRSfAJGDEz626DkWxTZUYnGDaCd8rG3dpwM9f+EitP3M
	sWv643MSEGJqgN/wcW40JX0iZ+1v1us=
X-Google-Smtp-Source: ABdhPJy0S+oieopnKtQMq+Dn4m+K9t3HEDYMCW3Je67fzbDCin9q1L1x1o+QbKkk/kRhTlUdulHn7w==
X-Received: by 2002:a63:ec06:: with SMTP id j6mr19548053pgh.259.1632066256007;
        Sun, 19 Sep 2021 08:44:16 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:cf26:fc5a:d6c7:2fa? ([2601:202:4180:a5c0:cf26:fc5a:d6c7:2fa])
        by smtp.gmail.com with ESMTPSA id v13sm11732373pfm.16.2021.09.19.08.44.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Sep 2021 08:44:15 -0700 (PDT)
Subject: Re: [yocto] [hardknott][PATCH] sssd: fix CVE-2021-3621
To: yocto@lists.yoctoproject.org
References: <20210910083646.19595-1-kai.kang@windriver.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <aaa296c1-eaea-1c6a-333f-76e189290cec@gmail.com>
Date: Sun, 19 Sep 2021 08:44:14 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910083646.19595-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 9/10/21 1:36 AM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> Backport patch to fix CVE-2021-3621.
>
> CVE: CVE-2021-3621
Merged.  thanks,
Armin
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  .../sssd/files/CVE-2021-3621.patch            | 291 ++++++++++++++++++
>  recipes-security/sssd/sssd_1.16.5.bb          |   1 +
>  2 files changed, 292 insertions(+)
>  create mode 100644 recipes-security/sssd/files/CVE-2021-3621.patch
>
> diff --git a/recipes-security/sssd/files/CVE-2021-3621.patch b/recipes-security/sssd/files/CVE-2021-3621.patch
> new file mode 100644
> index 0000000..3d2c707
> --- /dev/null
> +++ b/recipes-security/sssd/files/CVE-2021-3621.patch
> @@ -0,0 +1,291 @@
> +Backport patch to fix CVE-2021-3621.
> +
> +Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/b4b3267]
> +CVE: CVE-2021-3621
> +
> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
> +
> +From b4b32677a886bc26d60ce0171505aa3ab0c82c8a Mon Sep 17 00:00:00 2001
> +From: Alexey Tikhonov <atikhono@redhat.com>
> +Date: Fri, 30 Jul 2021 19:05:31 +0200
> +Subject: [PATCH] TOOLS: replace system() with execvp() to avoid execution of
> + user supplied command
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +:relnote: A flaw was found in SSSD, where the sssctl command was
> +vulnerable to shell command injection via the logs-fetch and
> +cache-expire subcommands. This flaw allows an attacker to trick
> +the root user into running a specially crafted sssctl command,
> +such as via sudo, to gain root access. The highest threat from this
> +vulnerability is to confidentiality, integrity, as well as system
> +availability.
> +This patch fixes a flaw by replacing system() with execvp().
> +
> +:fixes: CVE-2021-3621
> +
> +Reviewed-by: Pavel Březina <pbrezina@redhat.com>
> +---
> + src/tools/sssctl/sssctl.c      | 40 +++++++++++++++++-------
> + src/tools/sssctl/sssctl.h      |  2 +-
> + src/tools/sssctl/sssctl_data.c | 57 +++++++++++-----------------------
> + src/tools/sssctl/sssctl_logs.c | 31 ++++++++++++++----
> + 4 files changed, 73 insertions(+), 57 deletions(-)
> +
> +diff --git a/src/tools/sssctl/sssctl.c b/src/tools/sssctl/sssctl.c
> +index afaa84bc0..403c89c35 100644
> +--- a/src/tools/sssctl/sssctl.c
> ++++ b/src/tools/sssctl/sssctl.c
> +@@ -97,22 +97,37 @@ sssctl_prompt(const char *message,
> +     return SSSCTL_PROMPT_ERROR;
> + }
> + 
> +-errno_t sssctl_run_command(const char *command)
> ++errno_t sssctl_run_command(const char *const argv[])
> + {
> +     int ret;
> ++    int wstatus;
> + 
> +-    DEBUG(SSSDBG_TRACE_FUNC, "Running %s\n", command);
> ++    DEBUG(SSSDBG_TRACE_FUNC, "Running '%s'\n", argv[0]);
> + 
> +-    ret = system(command);
> ++    ret = fork();
> +     if (ret == -1) {
> +-        DEBUG(SSSDBG_CRIT_FAILURE, "Unable to execute %s\n", command);
> +         fprintf(stderr, _("Error while executing external command\n"));
> +         return EFAULT;
> +-    } else if (WEXITSTATUS(ret) != 0) {
> +-        DEBUG(SSSDBG_CRIT_FAILURE, "Command %s failed with [%d]\n",
> +-              command, WEXITSTATUS(ret));
> ++    }
> ++
> ++    if (ret == 0) {
> ++        /* cast is safe - see
> ++        https://pubs.opengroup.org/onlinepubs/9699919799/functions/exec.html
> ++        "The statement about argv[] and envp[] being constants ... "
> ++        */
> ++        execvp(argv[0], discard_const_p(char * const, argv));
> +         fprintf(stderr, _("Error while executing external command\n"));
> +-        return EIO;
> ++        _exit(1);
> ++    } else {
> ++        if (waitpid(ret, &wstatus, 0) == -1) {
> ++            fprintf(stderr,
> ++                    _("Error while executing external command '%s'\n"), argv[0]);
> ++            return EFAULT;
> ++        } else if (WEXITSTATUS(wstatus) != 0) {
> ++            fprintf(stderr,
> ++                    _("Command '%s' failed with [%d]\n"), argv[0], WEXITSTATUS(wstatus));
> ++            return EIO;
> ++        }
> +     }
> + 
> +     return EOK;
> +@@ -132,11 +147,14 @@ static errno_t sssctl_manage_service(enum sssctl_svc_action action)
> + #elif defined(HAVE_SERVICE)
> +     switch (action) {
> +     case SSSCTL_SVC_START:
> +-        return sssctl_run_command(SERVICE_PATH" sssd start");
> ++        return sssctl_run_command(
> ++                      (const char *[]){SERVICE_PATH, "sssd", "start", NULL});
> +     case SSSCTL_SVC_STOP:
> +-        return sssctl_run_command(SERVICE_PATH" sssd stop");
> ++        return sssctl_run_command(
> ++                      (const char *[]){SERVICE_PATH, "sssd", "stop", NULL});
> +     case SSSCTL_SVC_RESTART:
> +-        return sssctl_run_command(SERVICE_PATH" sssd restart");
> ++        return sssctl_run_command(
> ++                      (const char *[]){SERVICE_PATH, "sssd", "restart", NULL});
> +     }
> + #endif
> + 
> +diff --git a/src/tools/sssctl/sssctl.h b/src/tools/sssctl/sssctl.h
> +index 70fc19eff..71f798b2a 100644
> +--- a/src/tools/sssctl/sssctl.h
> ++++ b/src/tools/sssctl/sssctl.h
> +@@ -42,7 +42,7 @@ enum sssctl_prompt_result
> + sssctl_prompt(const char *message,
> +               enum sssctl_prompt_result defval);
> + 
> +-errno_t sssctl_run_command(const char *command);
> ++errno_t sssctl_run_command(const char *const argv[]); /* argv[0] - command */
> + bool sssctl_start_sssd(bool force);
> + bool sssctl_stop_sssd(bool force);
> + bool sssctl_restart_sssd(bool force);
> +diff --git a/src/tools/sssctl/sssctl_data.c b/src/tools/sssctl/sssctl_data.c
> +index cc46cafbf..8a042664c 100644
> +--- a/src/tools/sssctl/sssctl_data.c
> ++++ b/src/tools/sssctl/sssctl_data.c
> +@@ -105,15 +105,15 @@ static errno_t sssctl_backup(bool force)
> +         }
> +     }
> + 
> +-    ret = sssctl_run_command("sss_override user-export "
> +-                             SSS_BACKUP_USER_OVERRIDES);
> ++    ret = sssctl_run_command((const char *[]){"sss_override", "user-export",
> ++                                              SSS_BACKUP_USER_OVERRIDES, NULL});
> +     if (ret != EOK) {
> +         fprintf(stderr, _("Unable to export user overrides\n"));
> +         return ret;
> +     }
> + 
> +-    ret = sssctl_run_command("sss_override group-export "
> +-                             SSS_BACKUP_GROUP_OVERRIDES);
> ++    ret = sssctl_run_command((const char *[]){"sss_override", "group-export",
> ++                                              SSS_BACKUP_GROUP_OVERRIDES, NULL});
> +     if (ret != EOK) {
> +         fprintf(stderr, _("Unable to export group overrides\n"));
> +         return ret;
> +@@ -158,8 +158,8 @@ static errno_t sssctl_restore(bool force_start, bool force_restart)
> +     }
> + 
> +     if (sssctl_backup_file_exists(SSS_BACKUP_USER_OVERRIDES)) {
> +-        ret = sssctl_run_command("sss_override user-import "
> +-                                 SSS_BACKUP_USER_OVERRIDES);
> ++        ret = sssctl_run_command((const char *[]){"sss_override", "user-import",
> ++                                                  SSS_BACKUP_USER_OVERRIDES, NULL});
> +         if (ret != EOK) {
> +             fprintf(stderr, _("Unable to import user overrides\n"));
> +             return ret;
> +@@ -167,8 +167,8 @@ static errno_t sssctl_restore(bool force_start, bool force_restart)
> +     }
> + 
> +     if (sssctl_backup_file_exists(SSS_BACKUP_USER_OVERRIDES)) {
> +-        ret = sssctl_run_command("sss_override group-import "
> +-                                 SSS_BACKUP_GROUP_OVERRIDES);
> ++        ret = sssctl_run_command((const char *[]){"sss_override", "group-import",
> ++                                                  SSS_BACKUP_GROUP_OVERRIDES, NULL});
> +         if (ret != EOK) {
> +             fprintf(stderr, _("Unable to import group overrides\n"));
> +             return ret;
> +@@ -296,40 +296,19 @@ errno_t sssctl_cache_expire(struct sss_cmdline *cmdline,
> +                             void *pvt)
> + {
> +     errno_t ret;
> +-    char *cmd_args = NULL;
> +-    const char *cachecmd = SSS_CACHE;
> +-    char *cmd = NULL;
> +-    int i;
> +-
> +-    if (cmdline->argc == 0) {
> +-        ret = sssctl_run_command(cachecmd);
> +-        goto done;
> +-    }
> + 
> +-    cmd_args = talloc_strdup(tool_ctx, "");
> +-    if (cmd_args == NULL) {
> +-        ret = ENOMEM;
> +-        goto done;
> ++    const char **args = talloc_array_size(tool_ctx,
> ++                                          sizeof(char *),
> ++                                          cmdline->argc + 2);
> ++    if (!args) {
> ++        return ENOMEM;
> +     }
> ++    memcpy(&args[1], cmdline->argv, sizeof(char *) * cmdline->argc);
> ++    args[0] = SSS_CACHE;
> ++    args[cmdline->argc + 1] = NULL;
> + 
> +-    for (i = 0; i < cmdline->argc; i++) {
> +-        cmd_args = talloc_strdup_append(cmd_args, cmdline->argv[i]);
> +-        if (i != cmdline->argc - 1) {
> +-            cmd_args = talloc_strdup_append(cmd_args, " ");
> +-        }
> +-    }
> +-
> +-    cmd = talloc_asprintf(tool_ctx, "%s %s", cachecmd, cmd_args);
> +-    if (cmd == NULL) {
> +-        ret = ENOMEM;
> +-        goto done;
> +-    }
> +-
> +-    ret = sssctl_run_command(cmd);
> +-
> +-done:
> +-    talloc_free(cmd_args);
> +-    talloc_free(cmd);
> ++    ret = sssctl_run_command(args);
> + 
> ++    talloc_free(args);
> +     return ret;
> + }
> +diff --git a/src/tools/sssctl/sssctl_logs.c b/src/tools/sssctl/sssctl_logs.c
> +index aca988c05..c85cc7a4b 100644
> +--- a/src/tools/sssctl/sssctl_logs.c
> ++++ b/src/tools/sssctl/sssctl_logs.c
> +@@ -32,6 +32,7 @@
> + #include <popt.h>
> + #include <stdio.h>
> + #include <signal.h>
> ++#include <glob.h>
> + 
> + #include "util/util.h"
> + #include "tools/common/sss_process.h"
> +@@ -231,6 +232,7 @@ errno_t sssctl_logs_remove(struct sss_cmdline *cmdline,
> + {
> +     struct sssctl_logs_opts opts = {0};
> +     errno_t ret;
> ++    glob_t globbuf;
> + 
> +     /* Parse command line. */
> +     struct poptOption options[] = {
> +@@ -254,8 +256,19 @@ errno_t sssctl_logs_remove(struct sss_cmdline *cmdline,
> + 
> +         sss_signal(SIGHUP);
> +     } else {
> ++        globbuf.gl_offs = 4;
> ++        ret = glob(LOG_PATH"/*.log", GLOB_ERR|GLOB_DOOFFS, NULL, &globbuf);
> ++        if (ret != 0) {
> ++            DEBUG(SSSDBG_CRIT_FAILURE, "Unable to expand log files list\n");
> ++            return ret;
> ++        }
> ++        globbuf.gl_pathv[0] = discard_const_p(char, "truncate");
> ++        globbuf.gl_pathv[2] = discard_const_p(char, "--size");
> ++        globbuf.gl_pathv[3] = discard_const_p(char, "0");
> ++
> +         printf(_("Truncating log files...\n"));
> +-        ret = sssctl_run_command("truncate --size 0 " LOG_FILES);
> ++        ret = sssctl_run_command((const char * const*)globbuf.gl_pathv);
> ++        globfree(&globbuf);
> +         if (ret != EOK) {
> +             fprintf(stderr, _("Unable to truncate log files\n"));
> +             return ret;
> +@@ -270,8 +283,8 @@ errno_t sssctl_logs_fetch(struct sss_cmdline *cmdline,
> +                           void *pvt)
> + {
> +     const char *file;
> +-    const char *cmd;
> +     errno_t ret;
> ++    glob_t globbuf;
> + 
> +     /* Parse command line. */
> +     ret = sss_tool_popt_ex(cmdline, NULL, SSS_TOOL_OPT_OPTIONAL, NULL, NULL,
> +@@ -281,13 +294,19 @@ errno_t sssctl_logs_fetch(struct sss_cmdline *cmdline,
> +         return ret;
> +     }
> + 
> +-    cmd = talloc_asprintf(tool_ctx, "tar -czf %s %s", file, LOG_FILES);
> +-    if (cmd == NULL) {
> +-        fprintf(stderr, _("Out of memory!"));
> ++    globbuf.gl_offs = 3;
> ++    ret = glob(LOG_PATH"/*.log", GLOB_ERR|GLOB_DOOFFS, NULL, &globbuf);
> ++    if (ret != 0) {
> ++        DEBUG(SSSDBG_CRIT_FAILURE, "Unable to expand log files list\n");
> ++        return ret;
> +     }
> ++    globbuf.gl_pathv[0] = discard_const_p(char, "tar");
> ++    globbuf.gl_pathv[1] = discard_const_p(char, "-czf");
> ++    globbuf.gl_pathv[2] = discard_const_p(char, file);
> + 
> +     printf(_("Archiving log files into %s...\n"), file);
> +-    ret = sssctl_run_command(cmd);
> ++    ret = sssctl_run_command((const char * const*)globbuf.gl_pathv);
> ++    globfree(&globbuf);
> +     if (ret != EOK) {
> +         fprintf(stderr, _("Unable to archive log files\n"));
> +         return ret;
> +-- 
> +2.33.0
> +
> diff --git a/recipes-security/sssd/sssd_1.16.5.bb b/recipes-security/sssd/sssd_1.16.5.bb
> index 9784ec7..02d0837 100644
> --- a/recipes-security/sssd/sssd_1.16.5.bb
> +++ b/recipes-security/sssd/sssd_1.16.5.bb
> @@ -22,6 +22,7 @@ SRC_URI = "https://releases.pagure.org/SSSD/${BPN}/${BP}.tar.gz \
>             file://0001-build-Don-t-use-AC_CHECK_FILE-when-building-manpages.patch \
>             file://0001-nss-Collision-with-external-nss-symbol.patch \
>             file://0002-Provide-missing-defines-which-otherwise-are-availabl.patch \
> +           file://CVE-2021-3621.patch \
>             "
>  
>  SRC_URI[sha256sum] = "2e1a7bf036b583f686d35164f2d79bdf4857b98f51fe8b0d17aa0fa756e4d0c0"
>
> 
>

