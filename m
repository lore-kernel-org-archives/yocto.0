Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D7D3E00D3F; Tue, 17 May 2016 07:56:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D63AE00D0C
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 07:56:32 -0700 (PDT)
Received: by mail-qk0-f194.google.com with SMTP id i7so1661376qkd.1
	for <yocto@yoctoproject.org>; Tue, 17 May 2016 07:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=E1xcWIu8AvpiAUr3vMUJeCDPGBxTM+b6wUb6Ib6sC7Q=;
	b=Vw5LgrLAiGjPpamAiCUGRZ5e3fAEX9PSXi0oU40xxXh11F/mcTn7KB2lXQlPVxNOi3
	kkDSiug4q2HM2SatDK435pbE3tu5gqvzWZIn3wI8BsvOzXuXJ8LnfASCV3B90Y6v5+dN
	OR72j40ctof349IaXhkj9O38PM5wmiJl7vJFF9fnRSCJMCGDbPaKGJvnO6JkWbIillK9
	MNz7ruBcOvzLFg4Yvdmdi4IQ0a/kP+OWvGR16WJkENq0DcXcXzpbljD9DKeCfAd7FMje
	Xx9hDIc6pnAhmwiQFAQQMgUdej/AgwxKy6QUA9Htv1seXfrgJr2bfw2DOTjqnTaXdxQT
	Cd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=E1xcWIu8AvpiAUr3vMUJeCDPGBxTM+b6wUb6Ib6sC7Q=;
	b=NCraJ1d3O8CdMIY9Hw8o3YIrHV1nY/6ixKZlOPqD06J2W8t1+CwiQLpjzImiY5eNqz
	GOlW+HYU5m7dCSUuDE5SqYqC8W40pdCD8mL4vaeo7ecVB290vrinaXh/8s9Qvee/JZqm
	dpb9htqVtP5FQmRq/48DcDS/qqKfjbSn6r8p5w/oB4t4Yn4TTdimYx7MPqPyOkggJoGy
	fUmdwXHul+jajWaIqGOLcTwLLE9ml1kMAP4A6jv7tq9joe6jNYeIiqrE1Aw3T8Y/JtUH
	oRdb8glwabWdz+FEy88vpLtMlEox3afz3tnKppChzVhSIIjKl1e8vuJjD/q0RJCFNoSn
	jBLA==
X-Gm-Message-State: AOPr4FU1oQx7rhQmqeIlB7u9XSqQYeQgI48pMTJhb5vm7O+1A0Nc9jgJa0n8PXhrkVMj+2bTaZbh2xbFVnUAAQ==
X-Received: by 10.55.155.20 with SMTP id d20mr2146524qke.26.1463496992311;
	Tue, 17 May 2016 07:56:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Tue, 17 May 2016 07:56:02 -0700 (PDT)
In-Reply-To: <bf3219da-4a88-f071-fa00-b46b2872afc5@fos4x.de>
References: <bf3219da-4a88-f071-fa00-b46b2872afc5@fos4x.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 May 2016 07:56:02 -0700
Message-ID: <CAMKF1sqkeLzhgppY0Pf2rUXwYHOXwjQo+L=arawCmUF52vtO0A@mail.gmail.com>
To: Christian Fuchs <christian.fuchs@fos4x.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Curl recipe not applying DISTRO_FEATURES
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
X-List-Received-Date: Tue, 17 May 2016 14:56:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, May 17, 2016 at 1:14 AM, Christian Fuchs
<christian.fuchs@fos4x.de> wrote:
> Hello everybody,
>
> I am using Yocto version 1.8 and I'm having trouble compiling curl on a
> 64-bit machine running Debian Wheezy 7.10.
>
> The recipe always creates a libcurl.so.5 library, which I understand is d=
ue
> to an error regarding the size of off_t picked up by autotools. From the
> recipe:
>
>> # see
>> https://lists.yoctoproject.org/pipermail/poky/2013-December/009435.html
>> # We should ideally drop ac_cv_sizeof_off_t from site files but until th=
en
>> EXTRA_OECONF +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'largefile',
>> 'ac_cv_sizeof_off_t=3D8', '', d)}"
>
> As far as I understand bitbake this last line should add the string
> 'ac_cv_sizeoff_off_t=3D8' to EXTRA_OECONF, if 'largefile' is set in
> DISTRO_FEATURES. When I checked the DISTRO_FEATURES variable with "bitbak=
e
> -e curl", 'largefile' was indeed set.
>>
>> DISTRO_FEATURES=3D"alsa argp bluetooth ext2 irda largefile pcmcia usbgad=
get
>> usbhost wifi xattr nfs zeroconf pci 3g nfc x11 ipv4 ipv6 libc-backtrace
>> libc-big-macros libc-bsd libc-cxx-tests libc-catgets libc-charsets
>> libc-crypt                                         libc-crypt-ufc
>> libc-db-aliases libc-envz libc-fcvt libc-fmtmsg libc-fstab libc-ftravers=
e
>> libc-getlogin libc-idn libc-inet-anl libc-libm libc-locales libc-locale-=
code
>> libc-memusage libc-nis libc-nsswitch libc-rcmd libc-rtld-debug libc-spaw=
n
>> libc-streams libc-sunrpc libc-utmp libc-utmpx libc-wordexp
>> libc-posix-clang-wchar libc-posix-regexp libc-posix-regexp-glibc
>> libc-posix-wchar-io largefile multiarch tiny pam keyboard usbhost ext2 i=
pv6
>> pcmcia pulseaudio sysvinit"
>
>
> However the configure log shows that configure is called without
> 'ac_cv_sizeoff_off_t=3D8':
>>
>> NOTE: Running
>> /data/jenkins/workspace/kOS/build/tmp/work/core2-32-fos4x-linux/curl/7.4=
0.0-r0/curl-7.40.0/configure
>> --build=3Dx86_64-linux           --host=3Di586-fos4x-linux
>> --target=3Di586-fos4x-linux           --prefix=3D/usr --exec_prefix=3D/u=
sr
>> --bindir=3D/usr/bin --sbindir=3D/usr/sbin           --libexecdir=3D/usr/=
lib/curl
>> --datadir=3D/usr/share           --sysconfdir=3D/etc --sharedstatedir=3D=
/com
>> --localstatedir=3D/var --libdir=3D/usr/lib           --includedir=3D/usr=
/include
>> --oldincludedir=3D/usr/include --infodir=3D/usr/share/info
>> --mandir=3D/usr/share/man           --disable-silent-rules
>> --disable-dependency-tracking
>> --with-libtool-sysroot=3D/data/jenkins/workspace/kOS/build/tmp/sysroots/=
fos4x
>> --without-libidn --enable-crypto-auth --disable-ldap
>> --disable-ldaps --with-ca-bundle=3D/etc/ssl/certs/ca-certificates.crt
>> --with-gnutls --enable-ipv6 --without-libssh2 --without-librtmp
>> --disable-smb --without-ssl
>> --with-zlib=3D/data/jenkins/workspace/kOS/build/tmp/sysroots/fos4x/usr/l=
ib/../
>
> ...
>>
>> configure: WARNING: This libcurl built is probably not ABI compatible wi=
th
>> previous
>> configure: WARNING: builds! You MUST read lib/README.curl_off_t to figur=
e
>> it out.
>
>
> When I try to compile this recipe with the exact same settings on a
> test-machine running Ubuntu 14.04 everything works fine, configure is cal=
led
> with 'ac_cv_sizeoff_off_t=3D8', no ABI issues are detected and libcurl.so=
.4 is
> produced.
>>
>> NOTE: Running
>> /scratch/working/build/tmp/work/core2-32-fos4x-linux/curl/7.40.0-r0/curl=
-7.40.0/configure
>> --build=3Dx86_64-linux         --host=3Di586-fos4x-linux
>> --target=3Di586-fos4x-linux           --prefix=3D/usr --exec_prefix=3D/u=
sr
>> --bindir=3D/usr    /bin --sbindir=3D/usr/sbin         --libexecdir=3D/us=
r/lib/curl
>> --datadir=3D/usr/share        --sysconfdir=3D/etc --sharedstatedir=3D/co=
m
>> --localstatedir=3D/var --libdir=3D/usr/lib           --includedir=3D/usr=
/include
>> --oldinc ludedir=3D/usr/include --infodir=3D/usr/share/info
>> --mandir=3D/usr/share/man         --disable-silent-rules
>> --disable-dependency-tracking
>> --with-libtool-sysroot=3D/scratch/working/build/tmp/sysroots/fos4x
>> --without-libidn                 - -enable-crypto-auth
>> --disable-ldap --disable-ldaps
>> --with-ca-bundle=3D/etc/ssl/certs/ca-certificates.crt ac_cv_sizeof_off_t=
=3D8
>> --with-gnutls --enable-ipv6 --without-libssh2 --without-librtmp
>> --disable-smb --without-ssl --
>> with-zlib=3D/scratch/working/build/tmp/sysroots/fos4x/usr/lib/../
>
>
> Could somebody give me a hint, how I can fix this?

use bitbake -e output to see if EXTRA_OECONF is correctly expanded.
Secondly, you might want to check
if its expanding correctly then check if its appended to configure
call correctly. also check whats /bin/sh pointing to on both systems.

>
> Best regards,
> Christian
>
> --
> Christian Fuchs, M.Sc. - Software-Developer
> fos4X GmbH - www.fos4x.de - T +49 89 999 542 15 - F +49 89 999 542 01
> Thalkirchner Str. 210, Geb. 6 - D-81371 M=C3=BCnchen; AG M=C3=BCnchen HRB=
 189 218
> Managing Directors: Dr. Lars Hoffmann, Dr. Mathias M=C3=BCller
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

