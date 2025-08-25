Return-Path: <hprajapati@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF625CA0EED
	for <webhook@archiver.kernel.org>; Mon, 25 Aug 2025 06:35:56 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.33180.1756103747665921501
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Aug 2025 23:35:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=i2vka5c1;
 spf=pass (domain: mvista.com, ip: 209.85.216.53, mailfrom: hprajapati@mvista.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-324fb2bb058so2557503a91.3
        for <yocto@lists.yoctoproject.org>; Sun, 24 Aug 2025 23:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google; t=1756103747; x=1756708547; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ochaI1Ic4h7dWKf7Zbzirb4Q+K1yWjNF5hRuZML9CcE=;
        b=i2vka5c1eQXW7ojWuYYJiQ7dN4c1nRfGIJB197Zogg5fWU21OhFwkzLJ1WzKJmfa9c
         YVYeg/FcahwRLcoqiYmh02k+5IGcXalUJVWxNtlbyBke03e5V+ipL7MV0Sdcxyo8mtfE
         K2QljWfT7A1Q9edqkLGhUV6xW14eL1nuykdds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756103747; x=1756708547;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ochaI1Ic4h7dWKf7Zbzirb4Q+K1yWjNF5hRuZML9CcE=;
        b=udk6THL313JWfSzsgOAZtePf6RB9R5uX1GuYQsbhtdT9EhArDzS+RKbNPNmP3kC8TH
         +U+E/o3jHYbmUFteSIRMHJRz7HQPqoGze4cOmE2QvFXa6fofeFffcDpwJYND1a6wKh3J
         ZHd0Qm4GfE9MeAD/4OQL7ZwDwkYaEMG6gaiHnN7f+uZogxCt/os3qcpBOT4cob58f888
         YJ9BVe2M+ZvLHriYPfRL/znt9PhmriDRQDqHBzG/hBEoRJ6bdDniVjNcl+GJchGKgpiX
         DuuTbfT70bWXybJ3tMGdrRMFHKWC/vw51TICFnTjH7zMjdEY0kuq2tKFGdnwVvzz0rnk
         42iw==
X-Gm-Message-State: AOJu0YxBDj776FpJi3nAN20uWN8IGwo95sY6OaC9CXy95Jy4Ov7eiPeS
	2CJOqfOs+AWsemJGB9jh97LqkAdSCm90/jiQ+Twxr+FLhphdo4vZK4hTTSJSkT2qwEQpVcrvGc5
	shPmo
X-Gm-Gg: ASbGncvvsU06ynp8rzs2fQQQMnltLG0jYLjYq8wnbH6h47YyZnXXTorETsXGTfNPNG3
	u2qWG+xUQs2TFX0oh0pSrrNNUUO7MaQTsfcGUUp4k+e5QKRHoIeshgnF4IZeeSRiAdkg+61Q/mi
	lVEVbo9yJmnYfiuhGexmjxc0IguFCU6bIV7ysczXLIqW/G3CGP/QAdbUVkS74nlQhWXi3iQV23I
	R1VfsyBX3pMAG3anzVWfiRy214+TqiJ2J4B1otZoDRgPdMnEDQL3Z6dxvaagvsDl0pWZTpP505h
	7ffrbsmPq/j3mk9TD7jjgRtWgKnstChmff3U/WMG8TwInSGESGUgJ+mVLanSA0XTlQkqwOAsLm2
	bKTzbeWqoT0IIZL7v6TDECqh8ZaJyg6SZUA==
X-Google-Smtp-Source: AGHT+IHYCDWaxosXAdePdMKfiIhVuxZxlgM9xDbs8OxpGqAfNkE93X3aytRCIeE7Q65SxnRU/HbUcA==
X-Received: by 2002:a17:90b:1d06:b0:324:e03a:662e with SMTP id 98e67ed59e1d1-32515eaeeecmr15442844a91.23.1756103746475;
        Sun, 24 Aug 2025 23:35:46 -0700 (PDT)
Received: from MVIN00016.mvista.com ([27.121.101.67])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3254ae9a763sm6037343a91.12.2025.08.24.23.35.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 23:35:46 -0700 (PDT)
From: Hitendra Prajapati <hprajapati@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com,
	Hitendra Prajapati <hprajapati@mvista.com>
Subject: [meta-security][kirkstone][PATCH] aide: fix CVE-2025-54389
Date: Mon, 25 Aug 2025 12:05:23 +0530
Message-ID: <20250825063523.30092-1-hprajapati@mvista.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Aug 2025 06:35:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65788

Upstream-Status: Backport from https://github.com/aide/aide/commit/64c8f32b0349c33fb8382784af468338078851f9

Signed-off-by: Hitendra Prajapati <hprajapati@mvista.com>
---
 recipes-ids/aide/aide/CVE-2025-54389.patch | 358 +++++++++++++++++++++
 recipes-ids/aide/aide_0.17.4.bb            |   4 +-
 2 files changed, 361 insertions(+), 1 deletion(-)
 create mode 100644 recipes-ids/aide/aide/CVE-2025-54389.patch

diff --git a/recipes-ids/aide/aide/CVE-2025-54389.patch b/recipes-ids/aide/aide/CVE-2025-54389.patch
new file mode 100644
index 0000000..4db5d93
--- /dev/null
+++ b/recipes-ids/aide/aide/CVE-2025-54389.patch
@@ -0,0 +1,358 @@
+From 64c8f32b0349c33fb8382784af468338078851f9 Mon Sep 17 00:00:00 2001
+From: Hannes von Haugwitz <hannes@vonhaugwitz.com>
+Date: Thu, 7 Aug 2025 18:04:41 +0200
+Subject: [PATCH] Escape control characters in report and log output
+
+* this addresses CVE-2025-54389
+* thanks to Rajesh Pangare for reporting this issue
+
+CVE: CVE-2025-54389
+Upstream-Status: Backport [https://github.com/aide/aide/commit/64c8f32b0349c33fb8382784af468338078851f9]
+Signed-off-by: Hitendra Prajapati <hprajapati@mvista.com>
+---
+ doc/aide.1     | 13 +++++++++++
+ include/util.h |  3 +++
+ src/aide.c     |  9 ++++++--
+ src/gen_list.c |  4 +++-
+ src/log.c      | 31 +++++++++++++++++++++-----
+ src/report.c   | 59 +++++++++++++++++++++++++++++++++++---------------
+ src/util.c     | 34 +++++++++++++++++++++++++++++
+ 7 files changed, 127 insertions(+), 26 deletions(-)
+
+diff --git a/doc/aide.1 b/doc/aide.1
+index a7b9462..5d10e33 100644
+--- a/doc/aide.1
++++ b/doc/aide.1
+@@ -122,12 +122,25 @@ SIGUSR1 toggles the log_level between current and debug level.
+ .PP
+ .SH NOTES
+ 
++.IP "Checksum encoding"
++
+ The checksums in the database and in the output are by default base64
+ encoded (see also report_base16 option).
+ To decode them you can use the following shell command:
+ 
+ echo <encoded_checksum> | base64 \-d | hexdump \-v \-e '32/1 "%02x" "\\n"'
+ 
++.IP "Control characters"
++
++Control characters (00-31 and 127) are always escaped in log and plain report
++output. They are escaped by a literal backslash (\\) followed by exactly 3
++digits representing the character in octal notation (e.g. a newline is output
++as "\fB\\012\fR"). A literal backslash is not escaped unless it is followed by
++3 digits (0-9), in this case the literal backslash is escaped as
++"\fB\\134\fR". Reports in JSON format are escaped according to the JSON specs
++(e.g. a newline is output as "\fB\\b\fR" or an escape (\fBESC\fR) is output as
++"\fB\\u001b\fR")
++
+ .PP
+ .SH FILES
+ 
+diff --git a/include/util.h b/include/util.h
+index aaff780..d339740 100644
+--- a/include/util.h
++++ b/include/util.h
+@@ -51,6 +51,9 @@ int cmpurl(url_t*, url_t*);
+ 
+ int contains_unsafe(const char*);
+ 
++char *strnesc(const char *, size_t);
++char *stresc(const char *);
++
+ void decode_string(char*);
+ 
+ char* encode_string(const char*);
+diff --git a/src/aide.c b/src/aide.c
+index b04e721..576fbd3 100644
+--- a/src/aide.c
++++ b/src/aide.c
+@@ -271,7 +271,8 @@ static void read_param(int argc,char**argv)
+                 conf->limit=checked_malloc(strlen(optarg)+1);
+                 strcpy(conf->limit,optarg);
+                 if((conf->limit_crx=pcre_compile(conf->limit, PCRE_ANCHORED, &pcre_error, &pcre_erroffset, NULL)) == NULL) {
+-                    INVALID_ARGUMENT("--limit", error in regular expression '%s' at %i: %s, conf->limit, pcre_erroffset, pcre_error)
++                    char * limit_safe = stresc(conf->limit);
++                    INVALID_ARGUMENT("--limit", error in regular expression '%s' at %i: %s, limit_safe, pcre_erroffset, pcre_error)
+                 }
+                 log_msg(LOG_LEVEL_INFO,_("(--limit): set limit to '%s'"), conf->limit);
+             break;
+@@ -572,7 +573,11 @@ int main(int argc,char**argv)
+       rx_rule* rule = NULL;
+       int match = check_rxtree(conf->check_path, conf->tree, &rule, conf->check_file_type, true);
+       if (match < 0) {
+-        fprintf(stdout, "[ ] %c '%s': outside of limit '%s'\n", get_restriction_char(conf->check_file_type), conf->check_path, conf->limit);
++        char* limit_safe = stresc(conf->limit);
++        char* path_safe = stresc(conf->check_path);
++        fprintf(stdout, "[ ] %c '%s': outside of limit '%s'\n", get_restriction_char(conf->check_file_type), path_safe, limit_safe);
++        free(path_safe);
++        free(limit_safe);
+         exit(2);
+       } else {
+         exit(match?0:1);
+diff --git a/src/gen_list.c b/src/gen_list.c
+index 98b437c..7059899 100644
+--- a/src/gen_list.c
++++ b/src/gen_list.c
+@@ -510,7 +510,9 @@ int check_rxtree(char* filename,seltree* tree, rx_rule* *rule, RESTRICTION_TYPE
+   int match = check_seltree(tree, filename, file_type, rule);
+   if (dry_run) {
+       char * str;
+-      fprintf(stdout, "[%c] %c '%s': ", match?'X':' ', get_restriction_char(file_type), filename);
++      char* filename_safe = stresc(filename);
++      fprintf(stdout, "[%c] %c '%s': ", match?'X':' ', get_restriction_char(file_type), filename_safe);
++      free(filename_safe);
+       if (match > 0) {
+           char* attr_str;
+           fprintf(stdout, "%s: '%s%s %s %s' (%s:%d: '%s')\n", get_rule_type_long_string(match), match == EQUAL_MATCH?"=":"", (*rule)->rx, str = get_restriction_string((*rule)->restriction), attr_str = diff_attributes(0, (*rule)->attr), (*rule)->config_filename, (*rule)->config_linenumber, (*rule)->config_line);
+diff --git a/src/log.c b/src/log.c
+index 5a25a36..5d7fa74 100644
+--- a/src/log.c
++++ b/src/log.c
+@@ -25,6 +25,7 @@
+ 
+ #include "log.h"
+ #include "locale-aide.h"
++#include "util.h"
+ 
+ LOG_LEVEL prev_log_level = LOG_LEVEL_UNSET;
+ LOG_LEVEL log_level = LOG_LEVEL_UNSET;
+@@ -60,7 +61,7 @@ static void cache_line(LOG_LEVEL level, const char* format, va_list ap) {
+ 
+     void * tmp = realloc(cached_lines, (ncachedlines+1) * sizeof(log_cache)); /* freed in log_cached_lines() */
+     if (tmp == NULL) {
+-        log_msg(LOG_LEVEL_ERROR, "realloc() failed: %s", strerror(errno));
++        fprintf(stderr, "%s: realloc: failed to allocate memory\n", log_level_array[LOG_LEVEL_ERROR-1].log_string);
+         exit(EXIT_FAILURE);
+     } else {
+         cached_lines = tmp;
+@@ -85,7 +86,12 @@ const char * get_log_level_name(LOG_LEVEL level) {
+ 
+ static void log_cached_lines(void) {
+     for(int i = 0; i < ncachedlines; ++i) {
+-        log_msg(cached_lines[i].level, "%s", cached_lines[i].message);
++        LOG_LEVEL level = cached_lines[i].level;
++        if (level == LOG_LEVEL_ERROR || level <= log_level) {
++            char * msg_safe = stresc(cached_lines[i].message);
++            fprintf(stderr, "%s: %s\n", log_level_array[level-1].log_string, msg_safe);
++            free(msg_safe);
++        }
+         free(cached_lines[i].message);
+     }
+     ncachedlines = 0;
+@@ -96,9 +102,24 @@ static void vlog_msg(LOG_LEVEL level,const char* format, va_list ap) {
+     FILE* url = stderr;
+ 
+     if (level == LOG_LEVEL_ERROR || level <= log_level) {
+-        fprintf(url, "%s: ", log_level_array[level-1].log_string );
+-        vfprintf(url, format, ap);
+-        fprintf(url, "\n");
++
++        va_list aq;
++        va_copy(aq, ap);
++        size_t n = vsnprintf(NULL, 0, format, aq) + 1;
++        va_end(aq);
++
++        int size = n * sizeof(char);
++        char *msg_unsafe = malloc(size);
++        if (msg_unsafe == NULL) {
++            fprintf(stderr, "%s: malloc: failed to allocate %d bytes of memory\n", log_level_array[LOG_LEVEL_ERROR-1].log_string, size);
++            exit(EXIT_FAILURE);
++        }
++
++        vsnprintf(msg_unsafe, n, format, ap);
++        char *msg_safe = stresc(msg_unsafe);
++        free(msg_unsafe);
++        fprintf(url, "%s: %s\n", log_level_array[level-1].log_string, msg_safe);
++        free(msg_safe);
+     } else if (log_level == LOG_LEVEL_UNSET) {
+         cache_line(level, format, ap);
+     }
+diff --git a/src/report.c b/src/report.c
+index b342a0f..e3cee48 100644
+--- a/src/report.c
++++ b/src/report.c
+@@ -631,6 +631,7 @@ if ((conf->action&(DO_COMPARE|DO_DIFF) || (conf->action&DO_INIT && r->detailed_i
+ #endif
+             )) {
+ 
++    char *filename_safe = stresc(((node->checked&NODE_REMOVED)?node->old_data:node->new_data)->filename);
+     if(r->summarize_changes) {
+         int i;
+         char* summary = checked_malloc ((report_attrs_order_length+1) * sizeof (char));
+@@ -676,17 +677,18 @@ if ((conf->action&(DO_COMPARE|DO_DIFF) || (conf->action&DO_INIT && r->detailed_i
+             }
+         }
+         summary[report_attrs_order_length]='\0';
+-        report_printf(r, "\n%s: %s", summary, ((node->checked&NODE_REMOVED)?node->old_data:node->new_data)->filename);
++        report_printf(r, "\n%s: %s", summary, filename_safe);
+         free(summary); summary=NULL;
+     } else {
+         if (node->checked&NODE_ADDED) {
+-            report_printf(r,_("\nadded: %s"),(node->new_data)->filename);
++            report_printf(r,_("\nadded: %s"), filename_safe);
+         } else if (node->checked&NODE_REMOVED) {
+-            report_printf(r,_("\nremoved: %s"),(node->old_data)->filename);
++            report_printf(r,_("\nremoved: %s"), filename_safe);
+         } else if (node->checked&NODE_CHANGED) {
+-            report_printf(r,_("\nchanged: %s"),(node->new_data)->filename);
++            report_printf(r,_("\nchanged: %s"), filename_safe);
+         }
+     }
++    free(filename_safe);
+             }
+         } else {
+             break; /* list sorted by report_level */
+@@ -698,36 +700,49 @@ if ((conf->action&(DO_COMPARE|DO_DIFF) || (conf->action&DO_INIT && r->detailed_i
+ static void print_attribute(REPORT_LEVEL report_level, db_line* oline, db_line* nline,
+         DB_ATTR_TYPE attr, report_t *r, const char* name,
+         DB_ATTR_TYPE report_attrs, DB_ATTR_TYPE added_attrs, DB_ATTR_TYPE removed_attrs) {
+-    char **ovalue, **nvalue;
++    char **ovalues = NULL;
++    char **nvalues = NULL;
+     int onumber, nnumber, olen, nlen, i, k, c;
+     int p = (width_details-(4 + MAX_WIDTH_DETAILS_STRING))/2;
+ 
+         if ( (attr&report_attrs && r->level >= report_level)
+           || (report_attrs && attr&(added_attrs|removed_attrs) && r->level >= REPORT_LEVEL_ADDED_REMOVED_ATTRIBUTES) ) {
+ 
+-            onumber=get_attribute_values(attr, oline, &ovalue, r);
+-            nnumber=get_attribute_values(attr, nline, &nvalue, r);
++            onumber=get_attribute_values(attr, oline, &ovalues, r);
++            nnumber=get_attribute_values(attr, nline, &nvalues, r);
+ 
+             i = 0;
+             while (i<onumber || i<nnumber) {
+-                olen = i<onumber?strlen(ovalue[i]):0;
+-                nlen = i<nnumber?strlen(nvalue[i]):0;
++                char *ovalue = NULL;
++                char *nvalue = NULL;
++                olen = 0;
++                nlen = 0;
++                if (i<onumber){
++                    ovalue = stresc(ovalues[i]);
++                    olen = strlen(ovalue);
++                }
++                if (i<nnumber) {
++                    nvalue = stresc(nvalues[i]);
++                    nlen = strlen(nvalue);
++                }
+                 k = 0;
+                 while (olen-p*k >= 0 || nlen-p*k >= 0) {
+                     c = k*(p-1);
+                     if (!onumber) {
+-                        report_printf(r," %-*s%c %-*c  %.*s\n", MAX_WIDTH_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue[i][c]:"");
++                        report_printf(r," %-*s%c %-*c  %.*s\n", MAX_WIDTH_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, ' ', p-1, nlen-c>0?&nvalue[c]:"");
+                     } else if (!nnumber) {
+-                        report_printf(r," %-*s%c %.*s\n", MAX_WIDTH_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[i][c]:"");
++                        report_printf(r," %-*s%c %.*s\n", MAX_WIDTH_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p-1, olen-c>0?&ovalue[c]:"");
+                     } else {
+-                        report_printf(r," %-*s%c %-*.*s| %.*s\n", MAX_WIDTH_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[i][c]:"", p-1, nlen-c>0?&nvalue[i][c]:"");
++                        report_printf(r," %-*s%c %-*.*s| %.*s\n", MAX_WIDTH_DETAILS_STRING, (i+k)?"":name, (i+k)?' ':':', p, p-1, olen-c>0?&ovalue[c]:"", p-1, nlen-c>0?&nvalue[c]:"");
+                     }
+                     k++;
+                 }
+                 ++i;
++                free(ovalue);
++                free(nvalue);
+             }
+-            for(i=0; i < onumber; ++i) { free(ovalue[i]); ovalue[i]=NULL; } free(ovalue); ovalue=NULL;
+-            for(i=0; i < nnumber; ++i) { free(nvalue[i]); nvalue[i]=NULL; } free(nvalue); nvalue=NULL;
++            for(i=0; i < onumber; ++i) { free(ovalues[i]); ovalues[i]=NULL; } free(ovalues); ovalues=NULL;
++            for(i=0; i < nnumber; ++i) { free(nvalues[i]); nvalues[i]=NULL; } free(nvalues); nvalues=NULL;
+         }
+ }
+ 
+@@ -760,7 +775,9 @@ static void print_dbline_attributes(REPORT_LEVEL report_level, db_line* oline, d
+             if (file_type) {
+                 report_printf(r, "%s: ", file_type);
+             }
+-            report_printf(r, "%s\n", (nline==NULL?oline:nline)->filename);
++            char *filename_safe = stresc((nline==NULL?oline:nline)->filename);
++            report_printf(r, "%s\n", filename_safe);
++            free(filename_safe);
+         }
+ 
+     for (int j=0; j < report_attrs_order_length; ++j) {
+@@ -829,9 +846,11 @@ static void terse_report(seltree* node) {
+             if (!(node->checked&(NODE_MOVED_IN|NODE_MOVED_OUT))){
+                 if (r->level >= REPORT_LEVEL_LIST_ENTRIES
+                   && (node->old_data->attr&~(r->ignore_removed_attrs))^(node->new_data->attr&~(r->ignore_added_attrs)) ) {
++                    char *entry_safe = stresc(node->old_data->filename);
+                     char *str = NULL;
+                     report_printf(r, "Entry %s in databases has different attributes: %s\n",
+-                            node->old_data->filename,str= diff_attributes(node->old_data->attr&~(r->ignore_removed_attrs),node->new_data->attr&~(r->ignore_added_attrs)));
++                            entry_safe,str= diff_attributes(node->old_data->attr&~(r->ignore_removed_attrs),node->new_data->attr&~(r->ignore_added_attrs)));
++                    free(entry_safe);
+                     free(str);
+                 }
+                 DB_ATTR_TYPE changed_attrs = (node->changed_attrs)&~(r->ignore_changed_attrs);
+@@ -933,14 +952,18 @@ static void print_report_header() {
+         if (r->level >= REPORT_LEVEL_SUMMARY) {
+             int first = 1;
+             if (conf->limit != NULL) {
+-                report_printf(r, _("Limit: %s"), conf->limit);
++                char *limit_safe = stresc(conf->limit);
++                report_printf(r, _("Limit: %s"), limit_safe);
++                free(limit_safe);
+                 first = 0;
+             }
+ 
+             if (conf->action&(DO_INIT|DO_COMPARE) && conf->root_prefix_length > 0) {
+                 if (first) { first=0; }
+                 else { report_printf(r," | "); }
+-                report_printf(r, _("Root prefix: %s"),conf->root_prefix);
++                char *prefix_safe = stresc(conf->root_prefix);
++                report_printf(r, _("Root prefix: %s"), prefix_safe);
++                free(prefix_safe);
+             }
+ 
+             if (r->level != REPORT_LEVEL_CHANGED_ATTRIBUTES) {
+diff --git a/src/util.c b/src/util.c
+index 1826059..ba7359e 100644
+--- a/src/util.c
++++ b/src/util.c
+@@ -99,6 +99,40 @@ int cmpurl(url_t* u1,url_t* u2)
+   return RETOK;
+ };
+ 
++static size_t escape_str(const char *unescaped_str, char *str, size_t s) {
++    size_t n = 0;
++    size_t i = 0;
++    char c;
++    while (i < s && (c = unescaped_str[i])) {
++        if ((c >= 0 && (c < 0x1f || c == 0x7f)) ||
++            (c == '\\' && isdigit(unescaped_str[i+1])
++                       && isdigit(unescaped_str[i+2])
++                       && isdigit(unescaped_str[i+3])
++                ) ) {
++            if (str) { snprintf(&str[n], 5, "\\%03o", c); }
++            n += 4;
++        } else {
++            if (str) { str[n] = c; }
++            n++;
++        }
++        i++;
++    }
++    if (str) { str[n] = '\0'; }
++    n++;
++    return n;
++}
++
++char *strnesc(const char *unescaped_str, size_t s) {
++    int n = escape_str(unescaped_str, NULL, s);
++    char *str = checked_malloc(n);
++    escape_str(unescaped_str, str, s);
++    return str;
++}
++
++char *stresc(const char *unescaped_str) {
++    return strnesc(unescaped_str, strlen(unescaped_str));
++}
++
+ /* Returns 1 if the string contains unsafe characters, 0 otherwise.  */
+ int contains_unsafe (const char *s)
+ {
+-- 
+2.50.1
+
diff --git a/recipes-ids/aide/aide_0.17.4.bb b/recipes-ids/aide/aide_0.17.4.bb
index 6bc2bfe..69beff6 100644
--- a/recipes-ids/aide/aide_0.17.4.bb
+++ b/recipes-ids/aide/aide_0.17.4.bb
@@ -6,7 +6,9 @@ LICENSE = "GPL-2.0-only"
 DEPENDS = "bison-native libpcre"
 
 SRC_URI = "https://github.com/aide/aide/releases/download/v${PV}/${BPN}-${PV}.tar.gz \
-           file://aide.conf"
+           file://aide.conf \
+           file://CVE-2025-54389.patch \
+           "
 
 SRC_URI[sha256sum] = "c81505246f3ffc2e76036d43a77212ae82895b5881d9b9e25c1361b1a9b7a846"
 
-- 
2.50.1


