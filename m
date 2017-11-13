Return-Path: <mwelchuk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE0B8E00BEA; Mon, 13 Nov 2017 10:18:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E96E9E009CB
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 10:17:59 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id q66so15219562wrb.13
	for <yocto@yoctoproject.org>; Mon, 13 Nov 2017 10:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id;
	bh=iz1Lr9Nm7hyLXXY3TrWkhhnzR44EFD0CjkNktCW0aEI=;
	b=iw86RYf5HHYYpPZ00P2dNfA6DSa7SXSVgUrCatBqja8cbZP+7nunjxySoDgqJbDmwY
	4ofznGfjL/M63pPxpL+8ugFy2pMqgLgZO0oHOaQCEhTEaosphrwNqUk/i6Sd4kFaeYdT
	2yUFuPf3wEken/72cRdb3K4mfpNK126oqB7bQ97bzWZ/hmlj4H/FWOu13Cm0tqJ6R31U
	rBUrUOVtUFlNqFL7IDWhAWbA8CJGSco80qiW693KymHf/3K07n2giHOkKo6jMAzJz/pF
	soco942bZXY1hokDL3sUDuP34XS4gijV7NLw2ABqLOhg+B7xtXSmee9LJTqIG0d87iuO
	LrHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id;
	bh=iz1Lr9Nm7hyLXXY3TrWkhhnzR44EFD0CjkNktCW0aEI=;
	b=OcIhr234xShv4uGoxgaAlxvAx7S/zhr9v5ahSgXPGR+r/Mdmb+OA0MeBtq7F1jjpgK
	bjHREJxHwvsP2XRWpzjM+fs4tHs3sxBICVxjObrdDTCJOT+6CNPSEFRktbW871N8c/G0
	loOOEaEF/6kyA53TepT1RfLeLUal4bcFCtgLx1YGvKsa5VWzl11hOL4Yb23gI7Prp6Ky
	qXEzgHTXKDmYGLhQ8RMz99KyU6soii/vPPmR5XES1RF+IqjkGRH+E/Fa0/BLww0EvfHC
	THHR+uvxk5OlP+LI+AIxou5zPjGX7ActaSZ9dC7vSCUSJuPMTNXMNHH6dyw2cKy4Zc0z
	d3KQ==
X-Gm-Message-State: AJaThX7o2N2TMqc+OuT1paKDb4BjH8Lq4ZZM2x7XbfSUL1QkXxO+XX8F
	2Qk7AkdSTRddDVpADNP7HOX7Og==
X-Google-Smtp-Source: AGs4zMY/ACnZAlewjencja8wJ1+tWKBlDAuiti3AOgdlognZpyDTeLaVjY+6DZ4rbS73S/P9n8oGfQ==
X-Received: by 10.223.182.158 with SMTP id j30mr7393012wre.242.1510597078414; 
	Mon, 13 Nov 2017 10:17:58 -0800 (PST)
Received: from hades (host86-128-5-67.range86-128.btcentralplus.com.
	[86.128.5.67])
	by smtp.gmail.com with ESMTPSA id v5sm5836756wme.26.2017.11.13.10.17.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 13 Nov 2017 10:17:57 -0800 (PST)
Sender: Martyn Welch <mwelchuk@gmail.com>
Received: from martyn by hades with local (Exim 4.84_2)
	(envelope-from <martyn@hades.home>)
	id 1eEJIy-0006OQ-9w; Mon, 13 Nov 2017 18:17:56 +0000
From: Martyn Welch <martyn@welchs.me.uk>
To: yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Date: Mon, 13 Nov 2017 18:17:53 +0000
Message-Id: <1510597074-24537-1-git-send-email-martyn@welchs.me.uk>
X-Mailer: git-send-email 2.1.4
X-Mailman-Approved-At: Mon, 13 Nov 2017 13:34:30 -0800
Cc: Martyn Welch <martyn@welchs.me.uk>
Subject: [PATCH 1/2] package.bbclass: add prohibited-path qa test
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
X-List-Received-Date: Mon, 13 Nov 2017 18:18:00 -0000

From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>

Sometimes we wish to ensure that packages don't install files or
directories somewhere that may prove detrimental to the operation of the
system. For example, this may be the case if files are placed in a
directory that is utilised as a mount point at run time, thus making them
inaccessible once when the mount point is being utilised.

Implement the prohibited-path QA test, which enables such locations to be
specified in a "PROHIBITED_PATH" variable. This implementation allows for
exact matches and simple wildcards (paths ending with an asterisk. An
error will be raised should a match be found, or in the case of a
wildcard, for any files added below the specificed location(s).

Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Signed-off-by: Martyn Welch <martyn@welchs.me.uk>
---
 meta/classes/insane.bbclass  |  2 +-
 meta/classes/package.bbclass | 11 +++++++++++
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
index def9c70..fb10681 100644
--- a/meta/classes/insane.bbclass
+++ b/meta/classes/insane.bbclass
@@ -33,7 +33,7 @@ ERROR_QA ?= "dev-so debug-deps dev-deps debug-files arch pkgconfig la \
             perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
             split-strip packages-list pkgv-undefined var-undefined \
             version-going-backwards expanded-d invalid-chars \
-            license-checksum dev-elf file-rdeps \
+            license-checksum dev-elf file-rdeps prohibited-path \
             "
 # Add usrmerge QA check based on distro feature
 ERROR_QA_append = "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', ' usrmerge', '', d)}"
diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
index 2053d46..721ca1e 100644
--- a/meta/classes/package.bbclass
+++ b/meta/classes/package.bbclass
@@ -1162,6 +1162,17 @@ python populate_packages () {
                 continue
             seen.append(file)
 
+            prohibited_path = d.getVar('PROHIBITED_PATH')
+            if prohibited_path is not None:
+                for p in prohibited_path.split():
+                    exactmatch = True
+                    if p.endswith("*"):
+                        p = p[:len(p)-1]
+                        exactmatch = False
+                    if file[1:].startswith(p) and ((file[1:] != p) or exactmatch) :
+                        msg = "%s is in a prohibited path.\n" % file[1:]
+                        package_qa_handle_error("prohibited-path", msg, d)
+
             def mkdir(src, dest, p):
                 src = os.path.join(src, p)
                 dest = os.path.join(dest, p)
-- 
2.1.4


