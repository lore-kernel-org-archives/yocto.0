Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web10.22132.1599744645982366341
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Ao/L1umh;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id z4so6738031wrr.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k53uNnBftmbyYRX+q6SafROUrAeVNxY7exgr1WYF9mY=;
        b=Ao/L1umhd6YmBvH6Ak1rYg+iX10ZyzLTLs7bgEreANkvIUbtIw5DxqIGNYkaV+5a8K
         IqiFuUwEeW7WBbcYFFt9gPfdBFAnWIhzhIx4ExYuqqVPKd5asHNrEsoTm7bh+jRTUbPv
         kW5bgvKWcbJkrBcHvSY8AyJhAH7y4x4ZpZuC4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k53uNnBftmbyYRX+q6SafROUrAeVNxY7exgr1WYF9mY=;
        b=oSN/SceFlt3F9IGI4fTMiH55M8aLDZoD+kjB89oZx5ugPMmz0YScuyTMRKlgLCylLG
         MZ/UgcNUksVu1b1Kb58xwwYuL355ocoy+T8ZCrhckqbh/GM6rRZBpZ5B42+3ud25RWud
         H3Opt5VA9fIFvcDv1LvJCn5hCLaUNq9sWMng+B0tIo3fc56qiAnKMnP0Bvd9kjHg/7dR
         R1m7l3uubY4bAeT15q+vQIjnbP5siOxqV7Doddkt5wJvKeifwclJBAqdVo6ueChDRmaY
         +gSAs/GrC2vwx4wwQODoVJplMOKZIAJ4nadrvze8B3zDNvhR5V5vijgTkVta8ijlquxE
         HShQ==
X-Gm-Message-State: AOAM533EP7FnZVn3TPhsnaYHjxnzJG7RMhDkS9errUsYAlQe/tBJQqlf
	1P17zv+reS1nDuwylC1G5mSrkpRlHY7Zfg==
X-Google-Smtp-Source: ABdhPJydmsX3tycr+ncqRNs2sod4QShrRbCOqnPJ6U+ZN6rCLpSdWqfRN0gSIrHqoYJGgDZL4qDtwQ==
X-Received: by 2002:adf:ed12:: with SMTP id a18mr9746654wro.178.1599744644295;
        Thu, 10 Sep 2020 06:30:44 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:43 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Thomas Goodwin <btgoodwin@geontech.com>
Subject: [PATCH][autobuilder-helper][thud 10/40] layer-config: fixing silent failures from always exiting '0'
Date: Thu, 10 Sep 2020 14:30:05 +0100
Message-Id: <20200910133035.2044355-10-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Thomas Goodwin <btgoodwin@geontech.com>

The return value from bitbakecmd was not being returned when
errors occurred which allowed shared-repo-unpack to succeed
despite the failure.  This fix changes to check_call and a
try-catch when attempting to add repos that fail for whatever
reason during add-layer, like a missing conf/layer.conf at
the top level or a previously-added layer breaks parsing
because of missing dependencies.

Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/layer-config | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/scripts/layer-config b/scripts/layer-config
index bfc62da..286451a 100755
--- a/scripts/layer-config
+++ b/scripts/layer-config
@@ -24,9 +24,7 @@ args = parser.parse_args()
 ourconfig = utils.loadconfig()
 
 def bitbakecmd(targetdir, cmd):
-    ret = subprocess.call(". ./oe-init-build-env; %s" % cmd, shell=True, cwd=targetdir)
-    if ret:
-        utils.printheader("ERROR: Command %s failed with exit code %d, see errors above." % (cmd, ret))
+    subprocess.check_call(". ./oe-init-build-env; %s" % cmd, shell=True, cwd=targetdir)
 
 needrepos = utils.getconfigvar("NEEDREPOS", ourconfig, args.target, None)
 
@@ -51,5 +49,8 @@ if callinit:
 for repo in needrepos:
     if repo in repos and "no-layer-add" in repos[repo] and repos[repo]["no-layer-add"]:
         continue
-    bitbakecmd(args.abworkdir, "bitbake-layers add-layer %s" % (args.abworkdir + "/" + repo))
-
+    try:
+        bitbakecmd(args.abworkdir, "bitbake-layers add-layer %s" % (args.abworkdir + "/" + repo))
+    except subprocess.CalledProcessError as e:
+        utils.printheader("ERROR: Command %s failed with exit code %d, see errors above." % (e.cmd, e.returncode))
+        sys.exit(e.returncode)
-- 
2.25.1

