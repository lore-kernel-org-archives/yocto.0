Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F5C3E00B18; Fri,  6 Jul 2018 13:28:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44AF8E0084E
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 13:28:33 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id a195-v6so18050911itd.3
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 13:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZqxVGxXUR5elkuR3r4AWP6EhQtSjoTw0q1KXWSWayb8=;
	b=sPyaxyYm1Rr/uG6QQ22bLvVEuB+Fxf6eIm0zEInjkr9UdaPiQvl8EenqIB98morq2y
	5AgZktNQeyuE++JsJMpLfZp3e9+VNUQ3+csKET0+d4ijwJWZChBuJfcOlg75MXu4KW08
	D6drNEqdJnVU3D2O6tg5N0ffyqkDFpahcjINTFvMJztOy1/bi+dYRIG4iLWWMqRj2Sqs
	5dRDLTcDUt9BE2RaovWNXPWi186V8zsBqlLomrq1LGQCwECUDX2B3HXkN6wvaqAPDMbL
	jGncDjzR+JjbAkqJioXrGVOkgRupnNcSM1kbJauFF7PY/ZELgZgZghtozsR3GrSn+IMt
	PaFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZqxVGxXUR5elkuR3r4AWP6EhQtSjoTw0q1KXWSWayb8=;
	b=cQV/BBsX8SW6Wm7ydc01P3ePv7du9PJ/e9HX6EgTbs/ADyVeVt2uzC4fAoNTZLMkAE
	9oqjAD8ESQZACq41O+6aqXisyPzhvKmnZOgmS8rJmdx6Bu3679k3FdB8gkVf59agCEdl
	SH3Wph5X1G/etLSnNf7ZWYtmWDnrB0/Zca+5TdYQqI2Z5BZK09XbYmEZ3/EHJuw2Qnhb
	Y7EjR7fK+50/HF6ZvcxlhHigLq5ku4NunTIAXsEc313gLYFG4XgWIqTH1AQA6NT8oGP4
	4UBOEVgG7OYZQbS0G4Ghv5vqhsh+iAjHA1mnNQtwLpcf+1t3g840nNm6pwhnWZnSkxrz
	I+fg==
X-Gm-Message-State: APt69E0KFvG5Ug5oIW+le4D9kU+3zSBx3buww9RWZq91rmLYKJiuvUzZ
	AsJzyEV3B9yiWMOiSUNtGPOA+8TnecV5bkUAl0Gv7g==
X-Google-Smtp-Source: AAOMgpduglO36mxc9QOPSA+6Ey5d+vjfJaZ7RaRFBmUuHJ6DEMw3zb/jbVenJ9m8aIhj1HOKncM0rf4wX2YUwRowV94=
X-Received: by 2002:a24:1184:: with SMTP id
	126-v6mr8680755itf.146.1530908912542; 
	Fri, 06 Jul 2018 13:28:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGm+ji+pGQJAxz-bFMUok4eLSkMgMNyUtYw_OWDyUdHz6g@mail.gmail.com>
	<CAJTo0LZ6FK+F_nsVyi3YmsAaGhqc0RCLV74gfmb8=WRY4C6iow@mail.gmail.com>
	<CAJ86T=X4NjfRUwN3vq6i8FTQ=6iqUoMjOc136ZRtfmm2ecJ+aA@mail.gmail.com>
In-Reply-To: <CAJ86T=X4NjfRUwN3vq6i8FTQ=6iqUoMjOc136ZRtfmm2ecJ+aA@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 6 Jul 2018 15:28:21 -0500
Message-ID: <CAFzUWGmE8sUDbBUZjfzRCSJ6e_SXiLfxYkof3uB+b275sD_0pg@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Understanding "dev package contains non-symlink"
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
X-List-Received-Date: Fri, 06 Jul 2018 20:28:35 -0000
Content-Type: multipart/alternative; boundary="000000000000ea6a5c05705a8138"

--000000000000ea6a5c05705a8138
Content-Type: text/plain; charset="UTF-8"

Hi,

Been struggling to understand the differences here. This is what the
directory looks like

kratsg@dc:/local/d4/gstark/poky/build$ ls
tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/
total 4.3M
drwxr-xr-x 2 kratsg atlas 4.0K Jun 28 16:13 .
drwxr-xr-x 5 kratsg atlas 4.0K Jun 28 16:13 ..
lrwxrwxrwx 1 kratsg atlas   19 Jun 28 16:13 libXrdAppUtils.so ->
libXrdAppUtils.so.1
lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdAppUtils.so.1 ->
libXrdAppUtils.so.1.0.0
-rwxr-xr-x 2 kratsg atlas  44K Jun 28 16:13 libXrdAppUtils.so.1.0.0
-rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdBlacklistDecision-4.so
-rwxr-xr-x 2 kratsg atlas  59K Jun 28 16:13 libXrdBwm-4.so
-rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdCksCalczcrc32-4.so
lrwxrwxrwx 1 kratsg atlas   13 Jun 28 16:13 libXrdCl.so -> libXrdCl.so.2
-rwxr-xr-x 2 kratsg atlas  27K Jun 28 16:13 libXrdClProxyPlugin-4.so
lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdClient.so ->
libXrdClient.so.2
lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdClient.so.2 ->
libXrdClient.so.2.0.0
-rwxr-xr-x 2 kratsg atlas 554K Jun 28 16:13 libXrdClient.so.2.0.0
lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdCl.so.2 ->
libXrdCl.so.2.0.0
-rwxr-xr-x 2 kratsg atlas 937K Jun 28 16:13 libXrdCl.so.2.0.0
lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdCrypto.so ->
libXrdCrypto.so.1
lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdCryptoLite.so ->
libXrdCryptoLite.so.1
lrwxrwxrwx 1 kratsg atlas   25 Jun 28 16:13 libXrdCryptoLite.so.1 ->
libXrdCryptoLite.so.1.0.0
-rwxr-xr-x 2 kratsg atlas 5.9K Jun 28 16:13 libXrdCryptoLite.so.1.0.0
lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdCrypto.so.1 ->
libXrdCrypto.so.1.0.0
-rwxr-xr-x 2 kratsg atlas  95K Jun 28 16:13 libXrdCrypto.so.1.0.0
lrwxrwxrwx 1 kratsg atlas   14 Jun 28 16:13 libXrdFfs.so -> libXrdFfs.so.2
lrwxrwxrwx 1 kratsg atlas   18 Jun 28 16:13 libXrdFfs.so.2 ->
libXrdFfs.so.2.0.0
-rwxr-xr-x 2 kratsg atlas  47K Jun 28 16:13 libXrdFfs.so.2.0.0
-rwxr-xr-x 2 kratsg atlas 156K Jun 28 16:13 libXrdFileCache-4.so
-rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdN2No2p-4.so
-rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdOssSIgpfsT-4.so
lrwxrwxrwx 1 kratsg atlas   16 Jun 28 16:13 libXrdPosix.so ->
libXrdPosix.so.2
lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdPosixPreload.so ->
libXrdPosixPreload.so.1
lrwxrwxrwx 1 kratsg atlas   27 Jun 28 16:13 libXrdPosixPreload.so.1 ->
libXrdPosixPreload.so.1.0.0
-rwxr-xr-x 2 kratsg atlas  67K Jun 28 16:13 libXrdPosixPreload.so.1.0.0
lrwxrwxrwx 1 kratsg atlas   20 Jun 28 16:13 libXrdPosix.so.2 ->
libXrdPosix.so.2.0.0
-rwxr-xr-x 2 kratsg atlas 128K Jun 28 16:13 libXrdPosix.so.2.0.0
-rwxr-xr-x 2 kratsg atlas  56K Jun 28 16:13 libXrdPss-4.so
-rwxr-xr-x 2 kratsg atlas  19K Jun 28 16:13 libXrdSecProt-4.so
-rwxr-xr-x 2 kratsg atlas 112K Jun 28 16:13 libXrdSecpwd-4.so
-rwxr-xr-x 2 kratsg atlas  35K Jun 28 16:13 libXrdSecsss-4.so
-rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdSecunix-4.so
-rwxr-xr-x 2 kratsg atlas  52K Jun 28 16:13 libXrdSec-4.so
lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdServer.so ->
libXrdServer.so.2
lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdServer.so.2 ->
libXrdServer.so.2.0.0
-rwxr-xr-x 2 kratsg atlas 764K Jun 28 16:13 libXrdServer.so.2.0.0
lrwxrwxrwx 1 kratsg atlas   17 Jun 28 16:13 libXrdSsiLib.so ->
libXrdSsiLib.so.1
lrwxrwxrwx 1 kratsg atlas   21 Jun 28 16:13 libXrdSsiLib.so.1 ->
libXrdSsiLib.so.1.0.0
-rwxr-xr-x 2 kratsg atlas 108K Jun 28 16:13 libXrdSsiLib.so.1.0.0
-rwxr-xr-x 2 kratsg atlas  15K Jun 28 16:13 libXrdSsiLog-4.so
lrwxrwxrwx 1 kratsg atlas   19 Jun 28 16:13 libXrdSsiShMap.so ->
libXrdSsiShMap.so.1
lrwxrwxrwx 1 kratsg atlas   23 Jun 28 16:13 libXrdSsiShMap.so.1 ->
libXrdSsiShMap.so.1.0.0
-rwxr-xr-x 2 kratsg atlas  31K Jun 28 16:13 libXrdSsiShMap.so.1.0.0
-rwxr-xr-x 2 kratsg atlas 100K Jun 28 16:13 libXrdSsi-4.so
-rwxr-xr-x 2 kratsg atlas  47K Jun 28 16:13 libXrdThrottle-4.so
lrwxrwxrwx 1 kratsg atlas   16 Jun 28 16:13 libXrdUtils.so ->
libXrdUtils.so.2
lrwxrwxrwx 1 kratsg atlas   20 Jun 28 16:13 libXrdUtils.so.2 ->
libXrdUtils.so.2.0.0
-rwxr-xr-x 2 kratsg atlas 589K Jun 28 16:13 libXrdUtils.so.2.0.0
lrwxrwxrwx 1 kratsg atlas   14 Jun 28 16:13 libXrdXml.so -> libXrdXml.so.2
lrwxrwxrwx 1 kratsg atlas   18 Jun 28 16:13 libXrdXml.so.2 ->
libXrdXml.so.2.0.0
-rwxr-xr-x 2 kratsg atlas  88K Jun 28 16:13 libXrdXml.so.2.0.0
-rwxr-xr-x 2 kratsg atlas  11K Jun 28 16:13 libXrdXrootd-4.so


According to the docs, there is a CMAKE_INSTALL_PREFIX I can configure:

  * CMAKE_INSTALL_PREFIX - indicates where the XRootD files should be
installed,
                           (default: /usr)

and this might let me set the install prefix to something custom, move
those files into the package, and the plug-ins elsewhere.. But I'm not sure
if this is the right way to go... e.g.

EXTRA_OEMAKE = "-DCMAKE_INSTALL_PREFIX=/opt/xrootd" or something.

Giordon

On Thu, Jun 28, 2018 at 7:37 PM Andre McCurdy <armccurdy@gmail.com> wrote:

> On Thu, Jun 28, 2018 at 3:53 PM, Burton, Ross <ross.burton@intel.com>
> wrote:
> > Hi Giordan,
> >
> >
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries
> > might be helpful to you.
> >
> > One useful thing would be to show us exactly what files are being
> > installed (and what files are symlinks).  It sounds like xrootd is
> > messing up library installation...
>
> Based on the logs, it looks like xrootd is installing both versioned
> shared libraries (e.g. "libXrdXml.so" is presumably a symlink to a
> real library named libXrdXml.so.<something> ?) and it's ALSO
> installing a set of plug-ins (e.g. "libXrdThrottle-4.so").
>
> If so, then the real problem seems to be that the plug-ins are being
> installed in /usr/lib. To avoid tripping up the default packaging
> rules and QA tests, plug-ins should ideally be installed somewhere
> other than ${base_libdir} or ${libdir}.
>
> If you can fix the build so that the plug-ins (just the plug-ins, not
> the versioned shared libraries) get installed to a different directory
> then I guess you will be able remove the packaging rules over-rides
> and the QA errors will go away.
>
> If you can't fix the build to install the plug-ins in another
> directory, then you could keep the packaging rules over-rides that you
> have already and just ignore the "dev-so" QA test (unlike the
> "dev-elf" QA test, which you should never ignore, the consequences of
> ignoring the "dev-so" QA test are fairly benign - you will end up with
> .so symlinks in the run-time package, which doesn't do any real harm).
>
> > On 28 June 2018 at 22:19, Giordon Stark <kratsg@gmail.com> wrote:
> >> Hi,
> >>
> >> I've read the emails in this mailing list. I'm mostly struggling to
> >> understand the situation for which "-dev package contains non-symlink
> .so"
> >> occurs. I understand that normally, one expects "*.so" files installed
> as
> >> part of the package, with symlinks to these versions in the "-dev"
> package.
> >> What I don't understand is the fix, and why this problem occurs in the
> first
> >> place.
> >>
> >> The recipe I'm working on in question is here: xrootd_4.8.3.bb (if
> this link
> >> doesn't work in the future, it's probably because I've merged this to
> >> master). This recipe is to install this piece of code:
> >> https://github.com/xrootd/xrootd.
> >>
> >> Here's an example of the errors:
> >>
> >> ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: -dev package contains
> >> non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdThrottle-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecsss-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecunix-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecpwd-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdN2No2p-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSec-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdFileCache-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsiLog-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdCksCalczcrc32-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBwm-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdBlacklistDecision-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdClProxyPlugin-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSecProt-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdOssSIgpfsT-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdSsi-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdPss-4.so'
> >> -dev package contains non-symlink .so: xrootd-dev path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd-dev/usr/lib/libXrdXrootd-4.so'
> >> [dev-elf]
> >> ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
> >> consider fixing them.
> >> ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
> >> ERROR: Logfile of failure stored in:
> >>
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.28174
> >> ERROR: Task
> >> (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:
> do_package_qa)
> >> failed with exit code '1'
> >>
> >> Then, when I add these lines to the recipe:
> >>
> >>   FILES_SOLIBSDEV = ""
> >>   FILES_${PN} += "${libdir}/*.so"
> >>
> >> I find that nothing is really fixed. It seems to be a similar error, but
> >> with different files now:
> >>
> >> ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: non -dev/-dbg/nativesdk-
> >> package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdXml.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiLib.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCryptoLite.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdAppUtils.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCrypto.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosix.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdUtils.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdSsiShMap.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdCl.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdClient.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdServer.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdPosixPreload.so'
> >> non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path
> >>
> '/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib/libXrdFfs.so'
> >> [dev-so]
> >> ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. Please
> >> consider fixing them.
> >> ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_qa
> >> ERROR: Logfile of failure stored in:
> >>
> /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/temp/log.do_package_qa.30048
> >> ERROR: Task
> >> (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:
> do_package_qa)
> >> failed with exit code '1'
> >>
> >> I'm getting a bit confused as these errors didn't show up the first
> time.
> >> And I suppose part of the confusing is about packaging vs installation.
> >>
> >> Thanks,
> >>
> >> Giordon
> >> --
> >> Giordon Stark
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
-- 
Giordon Stark

--000000000000ea6a5c05705a8138
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Been struggling to understand the d=
ifferences here. This is what the directory looks like</div><div><br></div>=
<div><div><font face=3D"monospace">kratsg@dc:/local/d4/gstark/poky/build$ l=
s tmp/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xrootd/usr/lib=
/</font></div><div><font face=3D"monospace">total 4.3M</font></div><div><fo=
nt face=3D"monospace">drwxr-xr-x 2 kratsg atlas 4.0K Jun 28 16:13 .</font><=
/div><div><font face=3D"monospace">drwxr-xr-x 5 kratsg atlas 4.0K Jun 28 16=
:13 ..</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=
=C2=A0 =C2=A019 Jun 28 16:13 libXrdAppUtils.so -&gt; libXrdAppUtils.so.1</f=
ont></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=
=A023 Jun 28 16:13 libXrdAppUtils.so.1 -&gt; libXrdAppUtils.so.1.0.0</font>=
</div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 44K Jun=
 28 16:13 libXrdAppUtils.so.1.0.0</font></div><div><font face=3D"monospace"=
>-rwxr-xr-x 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXrdBlacklistDecision-4=
.so</font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=
=A0 59K Jun 28 16:13 libXrdBwm-4.so</font></div><div><font face=3D"monospac=
e">-rwxr-xr-x 2 kratsg atlas=C2=A0 11K Jun 28 16:13 libXrdCksCalczcrc32-4.s=
o</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0=
 =C2=A013 Jun 28 16:13 libXrdCl.so -&gt; libXrdCl.so.2</font></div><div><fo=
nt face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 27K Jun 28 16:13 libX=
rdClProxyPlugin-4.so</font></div><div><font face=3D"monospace">lrwxrwxrwx 1=
 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdClient.so -&gt; libXrdClien=
t.so.2</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=
=C2=A0 =C2=A021 Jun 28 16:13 libXrdClient.so.2 -&gt; libXrdClient.so.2.0.0<=
/font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas 554K Ju=
n 28 16:13 libXrdClient.so.2.0.0</font></div><div><font face=3D"monospace">=
lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdCl.so.2 -&gt; l=
ibXrdCl.so.2.0.0</font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kra=
tsg atlas 937K Jun 28 16:13 libXrdCl.so.2.0.0</font></div><div><font face=
=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A017 Jun 28 16:13 libXrd=
Crypto.so -&gt; libXrdCrypto.so.1</font></div><div><font face=3D"monospace"=
>lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 28 16:13 libXrdCryptoLite.so =
-&gt; libXrdCryptoLite.so.1</font></div><div><font face=3D"monospace">lrwxr=
wxrwx 1 kratsg atlas=C2=A0 =C2=A025 Jun 28 16:13 libXrdCryptoLite.so.1 -&gt=
; libXrdCryptoLite.so.1.0.0</font></div><div><font face=3D"monospace">-rwxr=
-xr-x 2 kratsg atlas 5.9K Jun 28 16:13 libXrdCryptoLite.so.1.0.0</font></di=
v><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Ju=
n 28 16:13 libXrdCrypto.so.1 -&gt; libXrdCrypto.so.1.0.0</font></div><div><=
font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 95K Jun 28 16:13 li=
bXrdCrypto.so.1.0.0</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 =
kratsg atlas=C2=A0 =C2=A014 Jun 28 16:13 libXrdFfs.so -&gt; libXrdFfs.so.2<=
/font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =
=C2=A018 Jun 28 16:13 libXrdFfs.so.2 -&gt; libXrdFfs.so.2.0.0</font></div><=
div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 47K Jun 28 16:=
13 libXrdFfs.so.2.0.0</font></div><div><font face=3D"monospace">-rwxr-xr-x =
2 kratsg atlas 156K Jun 28 16:13 libXrdFileCache-4.so</font></div><div><fon=
t face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXr=
dN2No2p-4.so</font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg =
atlas=C2=A0 11K Jun 28 16:13 libXrdOssSIgpfsT-4.so</font></div><div><font f=
ace=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A016 Jun 28 16:13 lib=
XrdPosix.so -&gt; libXrdPosix.so.2</font></div><div><font face=3D"monospace=
">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A023 Jun 28 16:13 libXrdPosixPreload.=
so -&gt; libXrdPosixPreload.so.1</font></div><div><font face=3D"monospace">=
lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A027 Jun 28 16:13 libXrdPosixPreload.so=
.1 -&gt; libXrdPosixPreload.so.1.0.0</font></div><div><font face=3D"monospa=
ce">-rwxr-xr-x 2 kratsg atlas=C2=A0 67K Jun 28 16:13 libXrdPosixPreload.so.=
1.0.0</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=
=C2=A0 =C2=A020 Jun 28 16:13 libXrdPosix.so.2 -&gt; libXrdPosix.so.2.0.0</f=
ont></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas 128K Jun =
28 16:13 libXrdPosix.so.2.0.0</font></div><div><font face=3D"monospace">-rw=
xr-xr-x 2 kratsg atlas=C2=A0 56K Jun 28 16:13 libXrdPss-4.so</font></div><d=
iv><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 19K Jun 28 16:1=
3 libXrdSecProt-4.so</font></div><div><font face=3D"monospace">-rwxr-xr-x 2=
 kratsg atlas 112K Jun 28 16:13 libXrdSecpwd-4.so</font></div><div><font fa=
ce=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 35K Jun 28 16:13 libXrdSec=
sss-4.so</font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atla=
s=C2=A0 15K Jun 28 16:13 libXrdSecunix-4.so</font></div><div><font face=3D"=
monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 52K Jun 28 16:13 libXrdSec-4.so<=
/font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =
=C2=A017 Jun 28 16:13 libXrdServer.so -&gt; libXrdServer.so.2</font></div><=
div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A021 Jun 2=
8 16:13 libXrdServer.so.2 -&gt; libXrdServer.so.2.0.0</font></div><div><fon=
t face=3D"monospace">-rwxr-xr-x 2 kratsg atlas 764K Jun 28 16:13 libXrdServ=
er.so.2.0.0</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg a=
tlas=C2=A0 =C2=A017 Jun 28 16:13 libXrdSsiLib.so -&gt; libXrdSsiLib.so.1</f=
ont></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=
=A021 Jun 28 16:13 libXrdSsiLib.so.1 -&gt; libXrdSsiLib.so.1.0.0</font></di=
v><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas 108K Jun 28 16:13=
 libXrdSsiLib.so.1.0.0</font></div><div><font face=3D"monospace">-rwxr-xr-x=
 2 kratsg atlas=C2=A0 15K Jun 28 16:13 libXrdSsiLog-4.so</font></div><div><=
font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A019 Jun 28 16:=
13 libXrdSsiShMap.so -&gt; libXrdSsiShMap.so.1</font></div><div><font face=
=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A023 Jun 28 16:13 libXrd=
SsiShMap.so.1 -&gt; libXrdSsiShMap.so.1.0.0</font></div><div><font face=3D"=
monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 31K Jun 28 16:13 libXrdSsiShMap.=
so.1.0.0</font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atla=
s 100K Jun 28 16:13 libXrdSsi-4.so</font></div><div><font face=3D"monospace=
">-rwxr-xr-x 2 kratsg atlas=C2=A0 47K Jun 28 16:13 libXrdThrottle-4.so</fon=
t></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=
=A016 Jun 28 16:13 libXrdUtils.so -&gt; libXrdUtils.so.2</font></div><div><=
font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A020 Jun 28 16:=
13 libXrdUtils.so.2 -&gt; libXrdUtils.so.2.0.0</font></div><div><font face=
=3D"monospace">-rwxr-xr-x 2 kratsg atlas 589K Jun 28 16:13 libXrdUtils.so.2=
.0.0</font></div><div><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=
=A0 =C2=A014 Jun 28 16:13 libXrdXml.so -&gt; libXrdXml.so.2</font></div><di=
v><font face=3D"monospace">lrwxrwxrwx 1 kratsg atlas=C2=A0 =C2=A018 Jun 28 =
16:13 libXrdXml.so.2 -&gt; libXrdXml.so.2.0.0</font></div><div><font face=
=3D"monospace">-rwxr-xr-x 2 kratsg atlas=C2=A0 88K Jun 28 16:13 libXrdXml.s=
o.2.0.0</font></div><div><font face=3D"monospace">-rwxr-xr-x 2 kratsg atlas=
=C2=A0 11K Jun 28 16:13 libXrdXrootd-4.so</font></div><div><br></div><div><=
br></div><div>According to the docs, there is a CMAKE_INSTALL_PREFIX I can =
configure:</div><div><br></div><div><div><font face=3D"monospace">=C2=A0 * =
CMAKE_INSTALL_PREFIX - indicates where the XRootD files should be installed=
,</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(default:=
 /usr)</font></div></div><div><br></div><div>and this might let me set the =
install prefix to something custom, move those files into the package, and =
the plug-ins elsewhere.. But I&#39;m not sure if this is the right way to g=
o... e.g.=C2=A0</div><div><br></div><div>EXTRA_OEMAKE =3D &quot;-DCMAKE_INS=
TALL_PREFIX=3D/opt/xrootd&quot; or something.</div><div><br></div><div>Gior=
don</div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jun 28, 20=
18 at 7:37 PM Andre McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com">armc=
curdy@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On T=
hu, Jun 28, 2018 at 3:53 PM, Burton, Ross &lt;<a href=3D"mailto:ross.burton=
@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br>
&gt; Hi Giordan,<br>
&gt;<br>
&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/TipsAndTricks/Packaging_=
Prebuilt_Libraries" rel=3D"noreferrer" target=3D"_blank">https://wiki.yocto=
project.org/wiki/TipsAndTricks/Packaging_Prebuilt_Libraries</a><br>
&gt; might be helpful to you.<br>
&gt;<br>
&gt; One useful thing would be to show us exactly what files are being<br>
&gt; installed (and what files are symlinks).=C2=A0 It sounds like xrootd i=
s<br>
&gt; messing up library installation...<br>
<br>
Based on the logs, it looks like xrootd is installing both versioned<br>
shared libraries (e.g. &quot;libXrdXml.so&quot; is presumably a symlink to =
a<br>
real library named libXrdXml.so.&lt;something&gt; ?) and it&#39;s ALSO<br>
installing a set of plug-ins (e.g. &quot;libXrdThrottle-4.so&quot;).<br>
<br>
If so, then the real problem seems to be that the plug-ins are being<br>
installed in /usr/lib. To avoid tripping up the default packaging<br>
rules and QA tests, plug-ins should ideally be installed somewhere<br>
other than ${base_libdir} or ${libdir}.<br>
<br>
If you can fix the build so that the plug-ins (just the plug-ins, not<br>
the versioned shared libraries) get installed to a different directory<br>
then I guess you will be able remove the packaging rules over-rides<br>
and the QA errors will go away.<br>
<br>
If you can&#39;t fix the build to install the plug-ins in another<br>
directory, then you could keep the packaging rules over-rides that you<br>
have already and just ignore the &quot;dev-so&quot; QA test (unlike the<br>
&quot;dev-elf&quot; QA test, which you should never ignore, the consequence=
s of<br>
ignoring the &quot;dev-so&quot; QA test are fairly benign - you will end up=
 with<br>
.so symlinks in the run-time package, which doesn&#39;t do any real harm).<=
br>
<br>
&gt; On 28 June 2018 at 22:19, Giordon Stark &lt;<a href=3D"mailto:kratsg@g=
mail.com" target=3D"_blank">kratsg@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ve read the emails in this mailing list. I&#39;m mostly stru=
ggling to<br>
&gt;&gt; understand the situation for which &quot;-dev package contains non=
-symlink .so&quot;<br>
&gt;&gt; occurs. I understand that normally, one expects &quot;*.so&quot; f=
iles installed as<br>
&gt;&gt; part of the package, with symlinks to these versions in the &quot;=
-dev&quot; package.<br>
&gt;&gt; What I don&#39;t understand is the fix, and why this problem occur=
s in the first<br>
&gt;&gt; place.<br>
&gt;&gt;<br>
&gt;&gt; The recipe I&#39;m working on in question is here: <a href=3D"http=
://xrootd_4.8.3.bb" rel=3D"noreferrer" target=3D"_blank">xrootd_4.8.3.bb</a=
> (if this link<br>
&gt;&gt; doesn&#39;t work in the future, it&#39;s probably because I&#39;ve=
 merged this to<br>
&gt;&gt; master). This recipe is to install this piece of code:<br>
&gt;&gt; <a href=3D"https://github.com/xrootd/xrootd" rel=3D"noreferrer" ta=
rget=3D"_blank">https://github.com/xrootd/xrootd</a>.<br>
&gt;&gt;<br>
&gt;&gt; Here&#39;s an example of the errors:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: -dev package conta=
ins<br>
&gt;&gt; non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdThrottle-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSecsss-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSecunix-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSecpwd-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdN2No2p-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSec-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdFileCache-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSsiLog-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdCksCalczcrc32-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdBwm-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdBlacklistDecision-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdClProxyPlugin-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSecProt-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdOssSIgpfsT-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdSsi-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdPss-4.so&#39;<br>
&gt;&gt; -dev package contains non-symlink .so: xrootd-dev path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d-dev/usr/lib/libXrdXrootd-4.so&#39;<br>
&gt;&gt; [dev-elf]<br>
&gt;&gt; ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. P=
lease<br>
&gt;&gt; consider fixing them.<br>
&gt;&gt; ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_=
qa<br>
&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt; /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8=
.3-r0/temp/log.do_package_qa.28174<br>
&gt;&gt; ERROR: Task<br>
&gt;&gt; (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do=
_package_qa)<br>
&gt;&gt; failed with exit code &#39;1&#39;<br>
&gt;&gt;<br>
&gt;&gt; Then, when I add these lines to the recipe:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt;&gt;=C2=A0 =C2=A0FILES_${PN} +=3D &quot;${libdir}/*.so&quot;<br>
&gt;&gt;<br>
&gt;&gt; I find that nothing is really fixed. It seems to be a similar erro=
r, but<br>
&gt;&gt; with different files now:<br>
&gt;&gt;<br>
&gt;&gt; ERROR: xrootd-4.8.3-r0 do_package_qa: QA Issue: non -dev/-dbg/nati=
vesdk-<br>
&gt;&gt; package contains symlink .so: xrootd path<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdXml.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdSsiLib.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdCryptoLite.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdAppUtils.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdCrypto.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdPosix.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdUtils.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdSsiShMap.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdCl.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdClient.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdServer.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdPosixPreload.so&#39;<br>
&gt;&gt; non -dev/-dbg/nativesdk- package contains symlink .so: xrootd path=
<br>
&gt;&gt; &#39;/work/aarch64-poky-linux/xrootd/4.8.3-r0/packages-split/xroot=
d/usr/lib/libXrdFfs.so&#39;<br>
&gt;&gt; [dev-so]<br>
&gt;&gt; ERROR: xrootd-4.8.3-r0 do_package_qa: QA run found fatal errors. P=
lease<br>
&gt;&gt; consider fixing them.<br>
&gt;&gt; ERROR: xrootd-4.8.3-r0 do_package_qa: Function failed: do_package_=
qa<br>
&gt;&gt; ERROR: Logfile of failure stored in:<br>
&gt;&gt; /local/d4/gstark/poky/build/tmp/work/aarch64-poky-linux/xrootd/4.8=
.3-r0/temp/log.do_package_qa.30048<br>
&gt;&gt; ERROR: Task<br>
&gt;&gt; (/local/d4/gstark/meta-l1calo/recipes-core/root/xrootd_4.8.3.bb:do=
_package_qa)<br>
&gt;&gt; failed with exit code &#39;1&#39;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m getting a bit confused as these errors didn&#39;t show up =
the first time.<br>
&gt;&gt; And I suppose part of the confusing is about packaging vs installa=
tion.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; Giordon<br>
&gt;&gt; --<br>
&gt;&gt; Giordon Stark<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</di=
v></div>

--000000000000ea6a5c05705a8138--
