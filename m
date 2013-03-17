Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7BE2E003DB;
	Sat, 16 Mar 2013 23:52:13 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id hi8so1631773wib.13
	for <multiple recipients>; Sat, 16 Mar 2013 23:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=Wd2eK1E+t/Ccm5gHQFdNhb42nhPV2QleDIxkjxOvqBc=;
	b=acm8dUr2ZzpQViiqiGW8slAI915KWCaMo6QZvpI6r8RbMU1VBIdiDs8Voj8mGf2RH+
	S+8GaOuM55L0P1JBSYPd+Dy/EAsI5B2zJ3GIZACtgSzTgavm4PQ59qSML964Pa3MkzJr
	rhTeUN9GY4wey6AcyBzHC5lIwDAOm7Gyjqi+Hl6E53UcFWCFIe+fTSYr+0TMzWSFckCA
	r6z6GRXouYdbkzuyycanp7UQdGvaYYckoYJHJWtAkGbH91sw+//nFxoFf9h4eW4cUvOI
	n8sahW+3H10JAoTA3IO3lhOzoQAxMxy+c7idy+a4rSZ/515L8YWunR/1G9jFzM7vvG16
	YPYg==
X-Received: by 10.194.123.103 with SMTP id lz7mr18663974wjb.10.1363503132579; 
	Sat, 16 Mar 2013 23:52:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sat, 16 Mar 2013 23:51:52 -0700 (PDT)
In-Reply-To: <F22887B9-EB54-45EA-AC94-FBABDDE4D698@gmail.com>
References: <insop.song@gmail.com> <cover.1363347615.git.insop.song@gmail.com>
	<a766d16a1cf4da3c2dd13b8c7e53f89775733187.1363347615.git.insop.song@gmail.com>
	<F22887B9-EB54-45EA-AC94-FBABDDE4D698@gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Sat, 16 Mar 2013 23:51:52 -0700
Message-ID: <CACzyEJ9PpzedOQp+2F03M=b6EzVVKWnVXeNLOPLrWhy=0Vd9CQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	linux-yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] add scheedtool-dl for testing sched_deadline use jiri's github as a main repo
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
X-List-Received-Date: Sun, 17 Mar 2013 06:52:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Mar 16, 2013 at 10:01 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
> On Mar 15, 2013, at 4:47 AM, Insop Song <insop.song@gmail.com> wrote:
>
>> +SRCREV = "${AUTOREV}"
>
> IMO find a good revision and send that one here. you can use AUTOREV internally for your
> development thats all fine


Hi Khem,

Thank you for the review.
I've updated that already as Bruce suggested the same as well in the
latest patch update.

Here is the update patch for your reference.

Thank you.

Insop

+From 041b2b65889c44c47f90313c5bf9ce61effa96df Mon Sep 17 00:00:00 2001
+From: Insop Song <insop.song@gmail.com>
+Date: Sat, 9 Mar 2013 01:23:24 -0800
+Subject: [PATCH] set "--with-deadline" as a default to go around yocto build
+ error on deadline enabled
+
+---
+ configure.ac  |    2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/configure.ac  b/configure.ac
+index a5e2990..64e57e4 100644
+--- a/configure.ac
++++ b/configure.ac
+@@ -34,7 +34,7 @@ AC_ARG_WITH([deadline],
+       [AS_HELP_STRING([--with-deadline],
+          [Add support for SCHED_DEADLINE])],
+       [],
+-      [with_deadline=no])
++      [with_deadline=yes])
+
+ AS_IF([test "x$with_deadline" != xno],
+       [AC_DEFINE([DLSCHED], [1], [Define if you have SCHED_DEADLINE support])
+--
+1.7.9.5
+
diff --git a/recipes-tools/rt-app/rt-app.bb  b/recipes-tools/rt-app/rt-app.bb
new file mode 100644
index 0000000..acce437
--- /dev/null
+++ b/recipes-tools/rt-app/rt-app.bb
@@ -0,0 +1,28 @@
+DESCRIPTION = "rt-app is a test application that starts multiple
periodic threads in order to simulate a real-time periodic load"
+SECTION = "devel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM =
"file://COPYING;endline=339;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
+PR = "r1"
+
+SRCREV = "e81cbe9f76ee298feded17bb7455d4deb2fb32af"
+
+SRC_URI = "git://github.com/gbagnoli/rt-app.git \
+       file://0001-set-with-deadline-as-a-default-to-go-around-yocto-bu.patch \
+       "
+
+S = "${WORKDIR}/git"
+
+inherit autotools gettext pkgconfig
+
+do_configure_prepend() {
+       autoreconf --install --verbose --force
+}
+
+do_install() {
+       install -d ${D}${bindir}
+       install -m 0755 src/rt-app ${D}${bindir}
+}
+
+FILES_{PN} = "${bindir}/rt-app"
+
+PARALLEL_MAKE = ""
diff --git a/recipes-tools/schedtool-dl/schedtool-dl.bb
b/recipes-tools/schedtool-dl/schedtool-dl.bb
new file mode 100644
index 0000000..5592175
--- /dev/null
+++ b/recipes-tools/schedtool-dl/schedtool-dl.bb
@@ -0,0 +1,23 @@
+DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline scheduler"
+SECTION = "devel"
+LICENSE = "GPLv2"
+LIC_FILES_CHKSUM =
"file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
+PR = "r1"
+
+SRC_URI = "git://github.com/jlelli/schedtool-dl.git;protocol=git"
+SRCREV = "cd4e3f2f5a33c3266e25e447e8efbacb3b8c88da"
+
+S = "${WORKDIR}/git"
+
+do_compile() {
+       oe_runmake
+}
+
+do_install() {
+       install -d ${D}${bindir}
+       install -m 0755 schedtool ${D}${bindir}
+}
+
+FILES_{PN} = "${bindir}/schedtool"
+
+PARALLEL_MAKE = ""

