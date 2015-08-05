Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF9B8E009B8; Wed,  5 Aug 2015 08:25:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RCVD_IN_SORBS_WEB
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.8 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [208.54.5.166 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECC2AE009A7
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 08:25:17 -0700 (PDT)
Received: from ma60536d0.tmodns.net ([208.54.5.166] helo=[192.168.43.151])
	by smtp.twobit.us with esmtpsa (TLSv1.2:DHE-RSA-AES128-SHA:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZN0YQ-0005Gb-Tt; Wed, 05 Aug 2015 15:24:32 +0000
Message-ID: <55C22AD6.30001@twobit.us>
Date: Wed, 05 Aug 2015 08:25:10 -0700
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1438248304-7884-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQErr1fTKQ=Nc8OXJ0m-itC-NzoNz5bsc4R6gsCN3cJC9ciw@mail.gmail.com>
In-Reply-To: <CALwQErr1fTKQ=Nc8OXJ0m-itC-NzoNz5bsc4R6gsCN3cJC9ciw@mail.gmail.com>
X-SA-Exim-Connect-IP: 208.54.5.166
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: Re: [meta-selinux][PATCH v1] libpam: use wildcard for version and cleanup
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
X-List-Received-Date: Wed, 05 Aug 2015 15:25:20 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Shrikant,

On 07/30/2015 02:31 AM, Shrikant Bobade wrote:
> This patch provides green build for core-image-selinux
> (meta-selinux:master & poky:master) against libpam upgrade from 1.1.6 to
> 1.2.1,
> image boots fine,but I am unable to login at target. I have prepared
> build for qemuarm, does anyone else facing similar issue? please advice.

I've reproduced this issue. Build works, we can drop the DESTDIR patch
now. But login fails with the latest version.

> Observed the login issue appears even with disabled selinux support
> (selinux=0).

On a vanilla core-image-minimal with this libpam version login works
fine. The SELinux images however, even with SELinux in permissive /
disabled, login fails. I guess this means there's something wrong with
the SELinux bits in the libpam package.

Philip

> On Thu, Jul 30, 2015 at 2:55 PM, Shrikant Bobade
> <bobadeshrikant@gmail.com <mailto:bobadeshrikant@gmail.com>> wrote:
> 
>     From: Shrikant Bobade <shrikant_bobade@mentor.com
>     <mailto:shrikant_bobade@mentor.com>>
> 
>     use wildcard for version: adopting libpam upgrade from 1.1.6 to 1.2.1,
>     cleanup older recipe and remove patch sepermit-add-DESTDIR-prefix.patch
>     since the changes already available with latest source.
> 
>     Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com
>     <mailto:shrikant_bobade@mentor.com>>
>     ---
>      .../pam/libpam/sepermit-add-DESTDIR-prefix.patch   |   31
>     --------------------
>      recipes-extended/pam/libpam_%.bbappend             |    3 ++
>      recipes-extended/pam/libpam_1.1.6.bbappend         |   10 -------
>      3 files changed, 3 insertions(+), 41 deletions(-)
>      delete mode 100644
>     recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>      create mode 100644 recipes-extended/pam/libpam_%.bbappend
>      delete mode 100644 recipes-extended/pam/libpam_1.1.6.bbappend
> 
>     diff --git
>     a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>     b/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>     deleted file mode 100644
>     index d48d386..0000000
>     --- a/recipes-extended/pam/libpam/sepermit-add-DESTDIR-prefix.patch
>     +++ /dev/null
>     @@ -1,31 +0,0 @@
>     -Subject: [PATCH] libpam: add missing DESTDIR prefix
>     -
>     -The DESTDIR prefix is missing, this will cause build failures for
>     -mkdir /var/run/sepermit on the host.
>     -
>     -| mkdir -p /var/run/sepermit
>     -| mkdir: cannot create directory `/var/run/sepermit': Permission denied
>     -
>     -Upstream-Status: Pending
>     -
>     -Signed-off-by: Xin Ouyang <Xin.Ouyang@windriver.com
>     <mailto:Xin.Ouyang@windriver.com>>
>     ----
>     - modules/pam_sepermit/Makefile.am |    2 +-
>     - 1 files changed, 1 insertions(+), 1 deletions(-)
>     -
>     -diff --git a/modules/pam_sepermit/Makefile.am
>     b/modules/pam_sepermit/Makefile.am
>     -index cfc5594..bc82275 100644
>     ---- a/modules/pam_sepermit/Makefile.am
>     -+++ b/modules/pam_sepermit/Makefile.am
>     -@@ -35,7 +35,7 @@ if HAVE_LIBSELINUX
>     -   securelib_LTLIBRARIES = pam_sepermit.la <http://pam_sepermit.la>
>     -
>     - install-data-local:
>     --      mkdir -p $(sepermitlockdir)
>     -+      mkdir -p $(DESTDIR)$(sepermitlockdir)
>     - endif
>     - if ENABLE_REGENERATE_MAN
>     - noinst_DATA = README pam_sepermit.8 sepermit.conf.5
>     ---
>     -1.7.5.4
>     -
>     diff --git a/recipes-extended/pam/libpam_%.bbappend
>     b/recipes-extended/pam/libpam_%.bbappend
>     new file mode 100644
>     index 0000000..adcf938
>     --- /dev/null
>     +++ b/recipes-extended/pam/libpam_%.bbappend
>     @@ -0,0 +1,3 @@
>     +inherit enable-selinux
>     +
>     +RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
>     diff --git a/recipes-extended/pam/libpam_1.1.6.bbappend
>     b/recipes-extended/pam/libpam_1.1.6.bbappend
>     deleted file mode 100644
>     index 71acecc..0000000
>     --- a/recipes-extended/pam/libpam_1.1.6.bbappend
>     +++ /dev/null
>     @@ -1,10 +0,0 @@
>     -#FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>     -FILESPATH_append := ":${@base_set_filespath(['${THISDIR}/${PN}'], d)}"
>     -
>     -SRC_URI += "file://sepermit-add-DESTDIR-prefix.patch"
>     -
>     -PR .= ".4"
>     -
>     -inherit enable-selinux
>     -
>     -RDEPENDS_${PN}-runtime += "${@target_selinux(d, 'pam-plugin-selinux')}"
>     --
>     1.7.9.5
> 
> 
> 
> 


