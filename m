Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web11.20807.1599740759185707160
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:25:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HoYGtp1j;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.51, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f51.google.com with SMTP id s13so5445692wmh.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k53uNnBftmbyYRX+q6SafROUrAeVNxY7exgr1WYF9mY=;
        b=HoYGtp1jk7M0XZ8GIhe0uZznP3nqCiiEpjWh0TRIb2mBuHQY6AzBO0DX2HGjKRg3Mv
         s2Cx4IAItIFXcp1QS/kXA06XL3TPUaiAggg1MNso/0eEYo/nTqnmRxcwt4YW4unUbnZU
         35eOeL24O5Gp5jWiwoPlCXNBPTCd1kbk/YFUc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k53uNnBftmbyYRX+q6SafROUrAeVNxY7exgr1WYF9mY=;
        b=EPqvuHbFNEE+8aY3O2Ck12F9SOZGwmgradPpwbbMMPz4f5fU4RNlkGSE7kFhhEBnsA
         xRLmpcv+DBo4ZgDQgZ67UIUprQfiyF3aDpf+jd1nMGKgwByGIrt10palUUEYrG3FRFpg
         H7jNlDGazIPwRfEsZeQpcrbWK3wGR2nQIC1j23QHQiynHulIc5jrdO5xd82FCSbaSjZ7
         dT19LjnaesZvXvYVPJQxi82pNJC90o0D+k0PRr9NWmWiDLT9j/DkkQwEW6zu4o4RT3Y9
         wxxp3UgJQn7+xUCVv7QqL947+v1pa7mbJ9FoiAexAwgJ/2rjHySBLexnNROFhFxDDFK+
         dljA==
X-Gm-Message-State: AOAM532ANyhdoBqsNezyspGf7XaNnlA/tLyf0NhtA6L63HRPrCJZp3Vg
	wZbRMUkH13rNPREOs2JrMFV07kadydmc9A==
X-Google-Smtp-Source: ABdhPJx7SJJE1AajfUGU6ZyRA8u65C94LuHY7PXeHOkp9j6JoteNb2tN2jsnOcbNEU4nmgNwzv/F9A==
X-Received: by 2002:a1c:9a8c:: with SMTP id c134mr7905616wme.136.1599740757399;
        Thu, 10 Sep 2020 05:25:57 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:56 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Thomas Goodwin <btgoodwin@geontech.com>
Subject: [PATCH][autobuilder-helper][warrior 04/41] layer-config: fixing silent failures from always exiting '0'
Date: Thu, 10 Sep 2020 13:25:16 +0100
Message-Id: <20200910122553.2040430-4-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

