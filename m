Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.579.1576048696022856851
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2019 23:18:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=my569lWr;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4A81E01149; Tue, 10 Dec 2019 23:18:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37305E010D7
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 23:18:13 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id t17so5388953qtr.7
        for <yocto@yoctoproject.org>; Tue, 10 Dec 2019 23:18:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=JNbP1yDgMI2CD1e7nkx0ONsUYdvBsuSU29XZ13zNXkA=;
        b=my569lWr/aGDKsm/1uFfu7sgfsZXr6vn/h5nszlUaklANYNYSjjNCzKAvnVY1k3k4P
         umzIBL79yXoBbtf5vdTlAreYMCw1mb8ZcVKybORXI4KoMcTTIBjODtZMNpiPzhiPX9pk
         GUgmufcG0x0L678z3kYvDDSoN1ALtTAkS9lUdllAPs4geqzNyZqRyYB1FKSKjnUSQubC
         S0D+o63a12yy9JAFVJVeNtiPSM9zP0cPRK5aPAHOwnmzYFMG/aaNw7ix3+QV9XdRvPyG
         cKmxku4VvoHXGp1cTO0DZ3mNqCwekZo6Iw0Vo7WjryNJrR/xGfD8AMm4KyvM6NaCG9kC
         6kxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=JNbP1yDgMI2CD1e7nkx0ONsUYdvBsuSU29XZ13zNXkA=;
        b=alp/BPciBedYfA7wfhvkVsdeYmiygWT21proFr/1oToindI2dsCde/IrmbSe+wRqm7
         djQ7gWKrKFlr7oxThJjfVZVem3pj4oRAQgo/x31jf+uB77Ppl0hiCbOexR1iVWg2EeV6
         P4VRc5v1MUlqiiKT8eLomrWshKCTdQpaP2wDYD/Bso6XsnRtOkYegZA2OMDzxToNoGt8
         bXLH8ARDUWh9MWL6gXJmZ0L7dQ+mIk8vqU6rCXHOEQpqoFSswZI19AdM0VoltDVpswyz
         wFKZ5pTQaBK3TJGnPVffB3nKs0hMspXULqG9V95WoFLcMAiXVUu17smWLPwNoddhfhNm
         kU0w==
X-Gm-Message-State: APjAAAV9xzx7eqkiLzVkELQc+2W+NKt3EKqiR20XpQXCTpJTjjg+M05Q
	DkBkcNlorIvlFtCRt4KpBGb3i4qq
X-Google-Smtp-Source: APXvYqz0Ha2GSS9jwUWveKOPzSaXnajIcbcNGezRDIWuKK6hHwGxa4GHPs9nQYjACBSnkzuh4d5j5A==
X-Received: by 2002:ac8:27ab:: with SMTP id w40mr1526698qtw.18.1576048692946;
        Tue, 10 Dec 2019 23:18:12 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id o19sm612256qtb.43.2019.12.10.23.18.11
        for <yocto@yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Dec 2019 23:18:12 -0800 (PST)
Date: Wed, 11 Dec 2019 02:18:07 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: variable and task/function timing
Message-ID: <20191211071807.GA32639@linux-uys3>
MIME-Version: 1.0
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Is there a document, or better yet a diagram, showing the order in which
various config files, recipes, tasks, etc are parsed?

Figuring out the order of the config files is easy enough (bitbake.conf), but
trying to figure out when various other parts are processed is just a guess
for me right now.

Conceptually this is what I want to do:

	Currently the meson build system (class) is hard-coded to always produce
	a buildtype of "plain", which are (basically) production builds. But
	there are other buildtypes that can be specified; such as
	"debugoptimized". I want a recipe to be able to influence the meson
	buildtype, and I want the user to be able to tweak this parameter from
	their conf/local.conf.

Here's what I want to do:

	diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
	index dc8c28963c..e1a13bbbf7 100644
	--- a/meta/classes/meson.bbclass
	+++ b/meta/classes/meson.bbclass
	@@ -12,8 +12,9 @@ MESON_SOURCEPATH = "${S}"
	 def noprefix(var, d):
	     return d.getVar(var).replace(d.getVar('prefix') + '/', '', 1)

	+MESON_BUILDTYPE ?= "plain"
	 MESONOPTS = " --prefix ${prefix} \
	-              --buildtype plain \
	+              --buildtype ${MESON_BUILDTYPE} \
		       --bindir ${@noprefix('bindir', d)} \
		       --sbindir ${@noprefix('sbindir', d)} \
		       --datadir ${@noprefix('datadir', d)} \
	diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/mesa/mesa.inc
	index 5838207e6b..fb232d414e 100644
	--- a/meta/recipes-graphics/mesa/mesa.inc
	+++ b/meta/recipes-graphics/mesa/mesa.inc
	@@ -46,6 +46,20 @@ export WANT_LLVM_RELEASE = "${MESA_LLVM_RELEASE}"

	 MESA_LLVM_RELEASE ?= "${LLVMVERSION}"

	+# set the build type to either 'release' or 'debug'
	+# the upstream mesa sources actually build a debug release by default
	+# but here we assume the user will want a release build by default
	+MESA_BUILD_TYPE ?= "release"
	+python do_check_build_type() {
	+    _buildtype = d.getVar('MESA_BUILD_TYPE')
	+    if _buildtype not in ['release', 'debug']:
	+        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
	+    if _buildtype == 'debug':
	+        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
	+        bb.plain("setting meson build type to debugoptimized")
	+}
	+addtask check_build_type before do_configure
	+
	 EXTRA_OEMESON = " \
	     -Dshared-glapi=true \
	     -Dgallium-opencl=disabled \

Therefore if the user doesn't do anything explicitly, a production buildtype
will be produced. However, if the user were to specify the following in their
conf/local.conf:

	MESA_BUILD_TYPE = "debug"

I want mesa's buildtype to be "debugoptimized".

I don't want the user to specify the following in their conf/local.conf:

	MESON_BUILDTYPE = "debugoptimized"

because that would cause *all* meson-built packages to switch to the
debugoptimized buildtype. I only want mesa's build to be debugoptimized.

However, the above doesn't work. If I set MESA_BUILD_TYPE to "hello" in my
conf/local.conf, then the build will flag it and error out asking me to
specify either 'release' or 'debug', which is great. But if I set
MESA_BUILD_TYPE to 'debug' the MESON_BUILDTYPE variable is always set to
"plain" regardless. So this task runs, but I guess it runs too late to
influence the MESON_BUILDTYPE variable?

So, how can I run this function earlier (?) so that it can set the
MESON_BUILDTYPE variable correctly? I tried the following:

	diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
	index dc8c28963c..e1a13bbbf7 100644
	--- a/meta/classes/meson.bbclass
	+++ b/meta/classes/meson.bbclass
	@@ -12,8 +12,9 @@ MESON_SOURCEPATH = "${S}"
	 def noprefix(var, d):
	     return d.getVar(var).replace(d.getVar('prefix') + '/', '', 1)

	+MESON_BUILDTYPE ?= "plain"
	 MESONOPTS = " --prefix ${prefix} \
	-              --buildtype plain \
	+              --buildtype ${MESON_BUILDTYPE} \
		       --bindir ${@noprefix('bindir', d)} \
		       --sbindir ${@noprefix('sbindir', d)} \
		       --datadir ${@noprefix('datadir', d)} \
	diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/mesa/mesa.inc
	index 5838207e6b..b302f8ee55 100644
	--- a/meta/recipes-graphics/mesa/mesa.inc
	+++ b/meta/recipes-graphics/mesa/mesa.inc
	@@ -46,6 +46,20 @@ export WANT_LLVM_RELEASE = "${MESA_LLVM_RELEASE}"

	 MESA_LLVM_RELEASE ?= "${LLVMVERSION}"

	+# set the build type to either 'release' or 'debug'
	+# the upstream mesa sources actually build a debug release by default
	+# but here we assume the user will want a release build by default
	+MESA_BUILD_TYPE ?= "release"
	+def check_buildtype(d):
	+    _buildtype = d.getVar('MESA_BUILD_TYPE')
	+    if _buildtype not in ['release', 'debug']:
	+        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
	+    if _buildtype == 'debug':
	+        bb.plain("setting meson build type to debugoptimized")
	+        return 'debugoptimized'
	+    return 'plain'
	+MESON_BUILDTYPE = "${@check_buildtype(d)}"
	+
	 EXTRA_OEMESON = " \
	     -Dshared-glapi=true \
	     -Dgallium-opencl=disabled \

This will print out the bb.plain() message 16 times during parsing etc, it
will fail out if MESA_BUILD_TYPE is not one of 'release' or 'debug' (which is
good), but if this occurs, the error message is printed out twice plus a
python traceback, which might be scary to users.

The last thing I tried was the following:

	diff --git a/meta/classes/meson.bbclass b/meta/classes/meson.bbclass
	index dc8c28963c..e1a13bbbf7 100644
	--- a/meta/classes/meson.bbclass
	+++ b/meta/classes/meson.bbclass
	@@ -12,8 +12,9 @@ MESON_SOURCEPATH = "${S}"
	 def noprefix(var, d):
	     return d.getVar(var).replace(d.getVar('prefix') + '/', '', 1)

	+MESON_BUILDTYPE ?= "plain"
	 MESONOPTS = " --prefix ${prefix} \
	-              --buildtype plain \
	+              --buildtype ${MESON_BUILDTYPE} \
		       --bindir ${@noprefix('bindir', d)} \
		       --sbindir ${@noprefix('sbindir', d)} \
		       --datadir ${@noprefix('datadir', d)} \
	diff --git a/meta/recipes-graphics/mesa/mesa.inc b/meta/recipes-graphics/mesa/mesa.inc
	index 5838207e6b..c265ffc246 100644
	--- a/meta/recipes-graphics/mesa/mesa.inc
	+++ b/meta/recipes-graphics/mesa/mesa.inc
	@@ -46,6 +46,12 @@ export WANT_LLVM_RELEASE = "${MESA_LLVM_RELEASE}"

	 MESA_LLVM_RELEASE ?= "${LLVMVERSION}"

	+# set the build type to either 'release' or 'debug'
	+# the upstream mesa sources actually build a debug release by default
	+# but here we assume the user will want a release build by default
	+MESA_BUILD_TYPE ?= "release"
	+MESON_BUILDTYPE = "${@bb.utils.contains('MESA_BUILD_TYPE', 'debug', 'debugoptimized', 'plain', d)}"
	+
	 EXTRA_OEMESON = " \
	     -Dshared-glapi=true \
	     -Dgallium-opencl=disabled \

This works perfectly, but it lacks the error checking and helpful messages of
the previous attempts.

Any thoughts on how I can have it all? (i.e. nice error checking and error
messages with the variable tweakable from conf/local.conf?

Best regards,
	Trevor
