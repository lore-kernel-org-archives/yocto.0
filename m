Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 002EAE006DB; Sun, 17 Aug 2014 08:22:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0918E00655
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 08:22:07 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id f8so2646965wiw.0
	for <yocto@yoctoproject.org>; Sun, 17 Aug 2014 08:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=li8iBT/vjAUb+Kk5/d6fiYPl4uUIJErbuo7pp7LjHiQ=;
	b=aGfeGCNP0r+WxvaKNnpERhE3nb9hhj3oodlCMI5vnweLMK28oxVLcLZEszt2OITW0U
	2gOcHmhnSSfO0/z79YDJYUcDhsX3KwUJxNsQd2+iXL28DBGTIApr1oskUW2zwzpU8VxC
	KwtYjClRIhf6P8DPn576ybPCVp7r0csZI5azlpKvOiPt/btDmDX/hVMt3rxHVUpbcy+I
	3PLdqVmsY2fN7KwnBmnAvwRMGZNh/C/QfmIVoYjLUoUUF8LslpVhLnEku90EHOFmK8Yc
	ysN4WWs7ZuY1+mQWLURZ2ThSONXPofwq48uarbxide8QCCjX5lwWE1u1utV+3MIBroeK
	Olnw==
X-Received: by 10.180.73.139 with SMTP id l11mr34430890wiv.30.1408288926407;
	Sun, 17 Aug 2014 08:22:06 -0700 (PDT)
Received: from ernie.muppets.liwing.de (p578b540c.dip0.t-ipconnect.de.
	[87.139.84.12])
	by mx.google.com with ESMTPSA id o9sm9791733wjo.11.2014.08.17.08.22.04
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 17 Aug 2014 08:22:04 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Message-Id: <B0C10C21-AE1E-4D0E-80BA-E379C720ACAD@gmail.com>
Date: Sun, 17 Aug 2014 17:21:56 +0200
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: Patch for svn uri for local path specification
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
X-List-Received-Date: Sun, 17 Aug 2014 15:22:11 -0000
X-Groupsio-MsgNum: 21125
Content-Type: multipart/mixed;
	boundary="Apple-Mail=_49838F6F-F2F6-428D-865E-8427C8D068F2"

--Apple-Mail=_49838F6F-F2F6-428D-865E-8427C8D068F2
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Aloah,

for a 3rd party module we need a precompiled v8 on our target - in a speci=
fic version ;)
Simply adding a recipe leads to suffer and pain for the nice google lib ..=
.

I end up with https://github.com/rehsack/meta-jens/tree/master/recipes-www=
/v8 and attached patch to poky:=20

Comments or applying is appreciated :)

Best regards
--=20
Jens Rehsack
rehsack@gmail.com






--Apple-Mail=_49838F6F-F2F6-428D-865E-8427C8D068F2
Content-Disposition: attachment;
	filename=poky-svn.patch
Content-Type: application/octet-stream;
	x-unix-mode=0644;
	name="poky-svn.patch"
Content-Transfer-Encoding: 7bit

diff --git a/bitbake/lib/bb/fetch2/svn.py b/bitbake/lib/bb/fetch2/svn.py
index 8847461..c932c5b 100644
--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -54,6 +54,11 @@ class Svn(FetchMethod):
 
         ud.module = ud.parm["module"]
 
+        if not "path_spec" in ud.parm:
+            ud.path_spec = ud.module
+        else:
+            ud.path_spec = ud.parm["path_spec"]
+
         # Create paths to svn checkouts
         relpath = self._strip_leading_slashes(ud.path)
         ud.pkgdir = os.path.join(data.expand('${SVNDIR}', d), ud.host, relpath)
@@ -101,7 +106,7 @@ class Svn(FetchMethod):
                 suffix = "@%s" % (ud.revision)
 
             if command == "fetch":
-                svncmd = "%s co %s %s://%s/%s%s %s" % (ud.basecmd, " ".join(options), proto, svnroot, ud.module, suffix, ud.module)
+                svncmd = "%s co %s %s://%s/%s%s %s" % (ud.basecmd, " ".join(options), proto, svnroot, ud.module, suffix, ud.path_spec)
             elif command == "update":
                 svncmd = "%s update %s" % (ud.basecmd, " ".join(options))
             else:
@@ -148,7 +153,7 @@ class Svn(FetchMethod):
 
         os.chdir(ud.pkgdir)
         # tar them up to a defined filename
-        runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, ud.module), d, cleanup = [ud.localpath])
+        runfetchcmd("tar %s -czf %s %s" % (tar_flags, ud.localpath, ud.path_spec), d, cleanup = [ud.localpath])
 
     def clean(self, ud, d):
         """ Clean SVN specific files and dirs """

--Apple-Mail=_49838F6F-F2F6-428D-865E-8427C8D068F2--
