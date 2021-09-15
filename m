Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web08.8289.1631715458813322747
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Sep 2021 07:17:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UDSNgHCX;
 spf=pass (domain: gmail.com, ip: 209.85.215.172, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f172.google.com with SMTP id f129so2887713pgc.1
        for <yocto@lists.yoctoproject.org>; Wed, 15 Sep 2021 07:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=Bii5pdBAf7rlHMUTVx8aOC0NAGn0oIOjtlrs3mUauus=;
        b=UDSNgHCXJIB2HhM9H8Y26zzY8vN6OJrR1PtYNIkzH6RsX+pfghegfoCI9iuyD78uug
         oepncduvc+YO2Spi3aIsPDAE89N5L+/1BTvpNxEkW7CT2DAsrJAnzROvFFMo82Kj1se9
         mc9hafYGXTderJnqUQtKUgbzTnhK41etG1a7PsLAth3mRE/PsLp4c3Tw3SIzMlIzerZM
         fglWEK4pchvwl0u/asYZnO7J57NJ7/jCKWDkTGm8SyrKRKVbusXeG+pALT0Arjl2w1dL
         tww0UPE5a+oLoa38nD8Pv7BjRJLhN2MJRBox3KzA2zdwH7nSHJzdc9Qps23Zw5Td3ACM
         nhLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=Bii5pdBAf7rlHMUTVx8aOC0NAGn0oIOjtlrs3mUauus=;
        b=eyFibGTzLk0XnW9EtPBCHH1YuLUxXx6aG7mXZtLB6ZmNuWLp9EoRUf6rdpLdOasNHi
         avZ0ADx61PPQufEXaEAXCO44Ffs3mzMQzyo/swgZYhULiNc/93XIuQ7KIPkWpgd7M5K7
         RO3SEAkuEraKNc1sBu0IuE/Ls1uxXzfZXgPLBBb821KDJ2dI8aeavdSowfMyd/krnbqH
         IjfaOX3o4c1hKxkTZlSTyPrmGTXc9aFYtSekwaJFLjeMcsbqpo0am201RtHox5vKipAk
         o4hcpABhnDLeNudrl9ccFZAeY3BQ/I+MFjCnlxdB56saPik1tkeQi8W6BqxDZE/waCUg
         cn3g==
X-Gm-Message-State: AOAM532oldFiDj7UA7KF92/E3Ok5roFH93FOF2UEt7yLURBuHMEGAZWM
	3/8Vc4Hd8pKB3OGb8lUG2kNoPlnNPKQ=
X-Google-Smtp-Source: ABdhPJwOiEKhRQ+qYXl0q9Wp4Ch0fV3OoXT5bfCfuyrPWmhOKk69iB+9wXIjW/G6alwm1g7NisfJ5A==
X-Received: by 2002:a63:517:: with SMTP id 23mr20791551pgf.245.1631715457883;
        Wed, 15 Sep 2021 07:17:37 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from ?IPv6:2601:202:4180:a5c0:35e:ec78:cef4:300f? ([2601:202:4180:a5c0:35e:ec78:cef4:300f])
        by smtp.gmail.com with ESMTPSA id h16sm137123pfn.215.2021.09.15.07.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Sep 2021 07:17:37 -0700 (PDT)
Subject: Re: [yocto] [meta-security][PATCH] sssd: 2.5.1 -> 2.5.2
To: kai <kai.kang@windriver.com>, yocto@lists.yoctoproject.org
References: <20210910083927.40482-1-kai.kang@windriver.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <6193a2ef-34a4-60e1-1e02-f4e2c6590931@gmail.com>
Date: Wed, 15 Sep 2021 07:17:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210910083927.40482-1-kai.kang@windriver.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

merged
thanks

On 9/10/21 1:39 AM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> SSSD 2.5.2 Highlights
> * General information
>   - originalADgidNumber attribute in the SSSD cache is now indexed
>
> * New features
>   - Debug messages in data provider include a unique request ID that can
>     be used to track the request from its start to its end (requires
>     libtevent >= 0.11.0)
>
> * Important fixes
>   - Update large files in the files provider in batches to avoid timeouts
>
> * Configuration changes
>   - Add new config option fallback_to_nss
>
> Full release notes:
> * https://sssd.io/release-notes/sssd-2.5.2.html
>
> And backport patch to fix CVE-2021-3621.
>
> CVE: CVE-2021-3621
>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>  .../sssd/files/CVE-2021-3621.patch            | 288 ++++++++++++++++++
>  .../sssd/{sssd_2.5.1.bb => sssd_2.5.2.bb}     |   3 +-
>  2 files changed, 290 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-security/sssd/files/CVE-2021-3621.patch
>  rename recipes-security/sssd/{sssd_2.5.1.bb => sssd_2.5.2.bb} (97%)
>
> diff --git a/recipes-security/sssd/files/CVE-2021-3621.patch b/recipes-security/sssd/files/CVE-2021-3621.patch
> new file mode 100644
> index 0000000..7a59df9
> --- /dev/null
> +++ b/recipes-security/sssd/files/CVE-2021-3621.patch
> @@ -0,0 +1,288 @@
> +Backport patch to fix CVE-2021-3621.
> +
> +Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/7ab83f9]
> +CVE: CVE-2021-3621
> +
> +Signed-off-by: Kai Kang <kai.kang@windriver.com>
> +
> +From 7ab83f97e1cbefb78ece17232185bdd2985f0bbe Mon Sep 17 00:00:00 2001
> +From: Alexey Tikhonov <atikhono@redhat.com>
> +Date: Fri, 18 Jun 2021 13:17:19 +0200
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
> + src/tools/sssctl/sssctl.c      | 39 ++++++++++++++++-------
> + src/tools/sssctl/sssctl.h      |  2 +-
> + src/tools/sssctl/sssctl_data.c | 57 +++++++++++-----------------------
> + src/tools/sssctl/sssctl_logs.c | 32 +++++++++++++++----
> + 4 files changed, 73 insertions(+), 57 deletions(-)
> +
> +diff --git a/src/tools/sssctl/sssctl.c b/src/tools/sssctl/sssctl.c
> +index 2997dbf968..8adaf30910 100644
> +--- a/src/tools/sssctl/sssctl.c
> ++++ b/src/tools/sssctl/sssctl.c
> +@@ -97,22 +97,36 @@ sssctl_prompt(const char *message,
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
> +         ERROR("Error while executing external command\n");
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
> +         ERROR("Error while executing external command\n");
> +-        return EIO;
> ++        _exit(1);
> ++    } else {
> ++        if (waitpid(ret, &wstatus, 0) == -1) {
> ++            ERROR("Error while executing external command '%s'\n", argv[0]);
> ++            return EFAULT;
> ++        } else if (WEXITSTATUS(wstatus) != 0) {
> ++            ERROR("Command '%s' failed with [%d]\n",
> ++                  argv[0], WEXITSTATUS(wstatus));
> ++            return EIO;
> ++        }
> +     }
> + 
> +     return EOK;
> +@@ -132,11 +146,14 @@ static errno_t sssctl_manage_service(enum sssctl_svc_action action)
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
> +index 0115b2457c..599ef65196 100644
> +--- a/src/tools/sssctl/sssctl.h
> ++++ b/src/tools/sssctl/sssctl.h
> +@@ -47,7 +47,7 @@ enum sssctl_prompt_result
> + sssctl_prompt(const char *message,
> +               enum sssctl_prompt_result defval);
> + 
> +-errno_t sssctl_run_command(const char *command);
> ++errno_t sssctl_run_command(const char *const argv[]); /* argv[0] - command */
> + bool sssctl_start_sssd(bool force);
> + bool sssctl_stop_sssd(bool force);
> + bool sssctl_restart_sssd(bool force);
> +diff --git a/src/tools/sssctl/sssctl_data.c b/src/tools/sssctl/sssctl_data.c
> +index 8d79b977fd..bf22913416 100644
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
> +         ERROR("Unable to export user overrides\n");
> +         return ret;
> +     }
> + 
> +-    ret = sssctl_run_command("sss_override group-export "
> +-                             SSS_BACKUP_GROUP_OVERRIDES);
> ++    ret = sssctl_run_command((const char *[]){"sss_override", "group-export",
> ++                                              SSS_BACKUP_GROUP_OVERRIDES, NULL});
> +     if (ret != EOK) {
> +         ERROR("Unable to export group overrides\n");
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
> +             ERROR("Unable to import user overrides\n");
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
> +             ERROR("Unable to import group overrides\n");
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
> +index 9ff2be05b6..ebb2c4571c 100644
> +--- a/src/tools/sssctl/sssctl_logs.c
> ++++ b/src/tools/sssctl/sssctl_logs.c
> +@@ -31,6 +31,7 @@
> + #include <ldb.h>
> + #include <popt.h>
> + #include <stdio.h>
> ++#include <glob.h>
> + 
> + #include "util/util.h"
> + #include "tools/common/sss_process.h"
> +@@ -230,6 +231,7 @@ errno_t sssctl_logs_remove(struct sss_cmdline *cmdline,
> + {
> +     struct sssctl_logs_opts opts = {0};
> +     errno_t ret;
> ++    glob_t globbuf;
> + 
> +     /* Parse command line. */
> +     struct poptOption options[] = {
> +@@ -253,8 +255,20 @@ errno_t sssctl_logs_remove(struct sss_cmdline *cmdline,
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
> ++        globbuf.gl_pathv[1] = discard_const_p(char, "--no-create");
> ++        globbuf.gl_pathv[2] = discard_const_p(char, "--size");
> ++        globbuf.gl_pathv[3] = discard_const_p(char, "0");
> ++
> +         PRINT("Truncating log files...\n");
> +-        ret = sssctl_run_command("truncate --no-create --size 0 " LOG_FILES);
> ++        ret = sssctl_run_command((const char * const*)globbuf.gl_pathv);
> ++        globfree(&globbuf);
> +         if (ret != EOK) {
> +             ERROR("Unable to truncate log files\n");
> +             return ret;
> +@@ -269,8 +283,8 @@ errno_t sssctl_logs_fetch(struct sss_cmdline *cmdline,
> +                           void *pvt)
> + {
> +     const char *file;
> +-    const char *cmd;
> +     errno_t ret;
> ++    glob_t globbuf;
> + 
> +     /* Parse command line. */
> +     ret = sss_tool_popt_ex(cmdline, NULL, SSS_TOOL_OPT_OPTIONAL, NULL, NULL,
> +@@ -280,13 +294,19 @@ errno_t sssctl_logs_fetch(struct sss_cmdline *cmdline,
> +         return ret;
> +     }
> + 
> +-    cmd = talloc_asprintf(tool_ctx, "tar -czf %s %s", file, LOG_FILES);
> +-    if (cmd == NULL) {
> +-        ERROR("Out of memory!");
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
> +     PRINT("Archiving log files into %s...\n", file);
> +-    ret = sssctl_run_command(cmd);
> ++    ret = sssctl_run_command((const char * const*)globbuf.gl_pathv);
> ++    globfree(&globbuf);
> +     if (ret != EOK) {
> +         ERROR("Unable to archive log files\n");
> +         return ret;
> diff --git a/recipes-security/sssd/sssd_2.5.1.bb b/recipes-security/sssd/sssd_2.5.2.bb
> similarity index 97%
> rename from recipes-security/sssd/sssd_2.5.1.bb
> rename to recipes-security/sssd/sssd_2.5.2.bb
> index 1c77480..76d6e03 100644
> --- a/recipes-security/sssd/sssd_2.5.1.bb
> +++ b/recipes-security/sssd/sssd_2.5.2.bb
> @@ -23,9 +23,10 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
>             file://drop_ntpdate_chk.patch \
>             file://fix-ldblibdir.patch \
>             file://musl_fixup.patch \
> +           file://CVE-2021-3621.patch \
>             "
>  
> -SRC_URI[sha256sum] = "ce2f5d84a3f1750093318afd27f4fd75b1e3e75f7d80fc42d21a40cc54b58ea4"
> +SRC_URI[sha256sum] = "5e21b3c7b4a2f1063d0fbdd3216d29886b6eaba153b44fb5961698367f399a0f"
>  
>  inherit autotools pkgconfig gettext python3-dir features_check systemd
>  
>
> 
>

