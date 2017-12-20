Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D630E00D7F; Wed, 20 Dec 2017 02:23:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BE27E00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:22:58 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id o2so16774980ioe.8
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:22:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+vmUPSF4iF5lhZbhMXXrTV+JpIXA0o2uZW/5FWssmaI=;
	b=W/Yhi9S1It+PA1GXvy7jbD+kEmDQ4HIhax9ORcn1/2+YEvbIq6N2VTFqLkTXgdhJ28
	Tqvs/xm1AOYrxf8JfyTREFZSlAoFZJJ0XQbr3B4JqKbjh4cSZtm5pcMROQ/PqCeTiP8A
	EkiIgfef4JpNBLWm6Obow0s2WiHet4xds7VFzrv1pkktHLzrcIc5ZrW7PEl6Fli4XNat
	6M8Ze1Rp8SArEiEqF8zLh/LiJq+U6fd33ctdfrD6M0xMQwnkKufaJgDwbxcq6Nlyn4sY
	tkOObJjEWaGiZCt+QxW1C98QA3hYQY2u353A0KTQdkQEZR1ZdpAYUWyWI3EsMDvgqr1C
	r2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+vmUPSF4iF5lhZbhMXXrTV+JpIXA0o2uZW/5FWssmaI=;
	b=WXQg0VpHkY0MPuoEoQ6oS3kFGUQOzzcY6tOU44R8TzcGxl1+S/72iGPfDnsTQ4jfis
	CpelsAsI44o40tjrDqnzJfgsRj3WeCIe7oo6xVGixay5vjKDsJjzrNaTSihXQ9VMbw2Y
	gysJm6TYq0hkzglF/f5VkpHM8ooaKN1iqiTO4IKpWxEK37Y8PQzGkxL8Vy9qB4K9EL1Y
	liP8si11Ql3LHsK13TlHPlaac95CnlDj6vRFo/W2V0WoxBLzQL9XWhhGJUzUranFniec
	KCX3fGcJs9N7TW6tNzbQMIKzTUz6mpSCdapnhtO0ube4ya8dsvuYGCJg0TpWsDyVRdX9
	H92Q==
X-Gm-Message-State: AKGB3mJqYqSAxmz1WagCrL0MEWexCABBb98V1l10uvM/CTA8/kROkBcF
	copySNwV9pXC/9cxBLcZ7hk0qNGSDxJPlv7RcHW3wQ==
X-Google-Smtp-Source: ACJfBotTtDNfpMgT2HzaHr3C4GvZgTS6f7cfOE6cp383rppUkC5WUcXJURT9k9buk3H5t8XE2RVUlVMBTRSYwvn9ghQ=
X-Received: by 10.107.83.19 with SMTP id h19mr7703399iob.208.1513765378508;
	Wed, 20 Dec 2017 02:22:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Wed, 20 Dec 2017 02:22:37 -0800 (PST)
In-Reply-To: <CABLseQ6EPUVz6=UUQpycQfushowDLeKBYyCNeN+DXkehM-NzZQ@mail.gmail.com>
References: <CABLseQ6EPUVz6=UUQpycQfushowDLeKBYyCNeN+DXkehM-NzZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Dec 2017 10:22:37 +0000
Message-ID: <CAJTo0LaTbUbDi_+X8=14v7ZdqE8OG4YSYCcUGXAcKMPoOBm0og@mail.gmail.com>
To: Barry Grussling <barry@grussling.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Rocko and Circular Dependencies
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
X-List-Received-Date: Wed, 20 Dec 2017 10:23:01 -0000
Content-Type: multipart/alternative; boundary="089e08265ff8a8e2f80560c2f7e1"

--089e08265ff8a8e2f80560c2f7e1
Content-Type: text/plain; charset="UTF-8"

Nobody else has seen this as far as I'm aware, and the autobuilder doesn't
see it.

Is that a pure oe-core/bitbake or Poky, or do you have custom layers?  Can
you replicate with a stock configuration?

On 20 December 2017 at 03:02, Barry Grussling <barry@grussling.com> wrote:

> Hello all,
>
> I am trying to move one of my builds from Krogoth to Rocko.  I am
> attempting to build
> on 1c61ba0a3f bitbake: tinfoil: Ensure we clean up loggers.
>
> Generally, I can start the first build fine.  Unfortunately, some of
> my code/recipes will usually fail
> to build due to the new compilers.  When I re-run bitbake to continue
> the build, most of
> the time I experience a build failure of circular dependencies such as:
>
> Dependency loop #1 found:
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_package
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_packagedata', 'glibc_2.26.bb:do_packagedata',
> 'rpm_git.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_install',
> 'dpkg_1.18.24.bb:do_packagedata',
> 'libtool-cross_2.4.6.bb:do_packagedata'])
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_packagedata
> (dependent Tasks ['ncurses_6.0+20170715.bb:do_package'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_package
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_packagedata', 'perl_5.24.1.bb:do_packagedata',
> 'glibc_2.26.bb:do_packagedata', 'rpm_git.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_packagedata',
> 'bzip2_1.0.6.bb:do_packagedata', 'dpkg_1.18.24.bb:do_install',
> 'zlib_1.2.11.bb:do_packagedata',
> 'libtool-cross_2.4.6.bb:do_packagedata',
> 'xz_5.2.3.bb:do_packagedata'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_packagedata
> (dependent Tasks ['dpkg_1.18.24.bb:do_package'])
>
> Dependency loop #2 found:
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_package
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_packagedata', 'perl_5.24.1.bb:do_packagedata',
> 'glibc_2.26.bb:do_packagedata', 'rpm_git.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_packagedata',
> 'bzip2_1.0.6.bb:do_packagedata', 'dpkg_1.18.24.bb:do_install',
> 'zlib_1.2.11.bb:do_packagedata',
> 'libtool-cross_2.4.6.bb:do_packagedata',
> 'xz_5.2.3.bb:do_packagedata'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_packagedata
> (dependent Tasks ['dpkg_1.18.24.bb:do_package'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_package
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_packagedata', 'glibc_2.26.bb:do_packagedata',
> 'rpm_git.bb:do_populate_sysroot', 'dpkg_1.18.24.bb:do_packagedata',
> 'libtool-cross_2.4.6.bb:do_packagedata', 'bzip2_1.0.6.bb:do_install'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_packagedata
> (dependent Tasks ['bzip2_1.0.6.bb:do_package'])
>
> Dependency loop #3 found:
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_compile
> (dependent Tasks ['dpkg_1.18.24.bb:do_configure'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_install
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'dpkg_1.18.24.bb:do_compile'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_populate_sysroot
> (dependent Tasks ['dpkg_1.18.24.bb:do_install',
> 'binutils-cross_2.29.bb:do_populate_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_prepare_recipe_sysroot
> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
> 'glibc_2.26.bb:do_populate_sysroot', 'bzip2_1.0.6.bb:do_fetch',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'dpkg_1.18.24.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'gcc-cross_7.2.bb:do_populate_sysroot',
> 'automake_1.15.1.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_configure
> (dependent Tasks ['bzip2_1.0.6.bb:do_patch',
> 'bzip2_1.0.6.bb:do_prepare_recipe_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_compile
> (dependent Tasks ['bzip2_1.0.6.bb:do_configure'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_install
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'bzip2_1.0.6.bb:do_compile'])
>   Task /srv/BLD/yocto/meta/recipes-extended/bzip2/bzip2_1.0.6.bb:
> do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.29.bb:do_populate_sysroot',
> 'bzip2_1.0.6.bb:do_install'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_prepare_recipe_sysroot
> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
> 'bzip2_1.0.6.bb:do_populate_sysroot',
> 'glibc_2.26.bb:do_populate_sysroot',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'dpkg_1.18.24.bb:do_fetch', 'perl_5.24.1.bb:do_populate_sysroot',
> 'gettext_0.19.8.1.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot',
> 'perl-native_5.24.1.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_populate_sysroot',
> 'xz_5.2.3.bb:do_populate_sysroot',
> 'systemd-systemctl-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_populate_sysroot',
> 'gcc-cross_7.2.bb:do_populate_sysroot',
> 'automake_1.15.1.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_configure
> (dependent Tasks ['dpkg_1.18.24.bb:do_prepare_recipe_sysroot',
> 'dpkg_1.18.24.bb:do_patch'])
>
> Dependency loop #4 found:
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_compile
> (dependent Tasks ['ncurses_6.0+20170715.bb:do_configure'])
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_install
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_compile'])
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_populate_sysroot
> (dependent Tasks ['binutils-cross_2.29.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_install'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_prepare_recipe_sysroot
> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
> 'bzip2_1.0.6.bb:do_populate_sysroot',
> 'glibc_2.26.bb:do_populate_sysroot',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'dpkg_1.18.24.bb:do_fetch', 'perl_5.24.1.bb:do_populate_sysroot',
> 'gettext_0.19.8.1.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot',
> 'perl-native_5.24.1.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_populate_sysroot',
> 'xz_5.2.3.bb:do_populate_sysroot',
> 'systemd-systemctl-native.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'zlib_1.2.11.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_populate_sysroot',
> 'gcc-cross_7.2.bb:do_populate_sysroot',
> 'automake_1.15.1.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_configure
> (dependent Tasks ['dpkg_1.18.24.bb:do_prepare_recipe_sysroot',
> 'dpkg_1.18.24.bb:do_patch'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_compile
> (dependent Tasks ['dpkg_1.18.24.bb:do_configure'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_install
> (dependent Tasks ['pseudo_1.8.2.bb:do_populate_sysroot',
> 'dpkg_1.18.24.bb:do_compile'])
>   Task /srv/BLD/yocto/meta/recipes-devtools/dpkg/dpkg_1.18.24.bb:
> do_populate_sysroot
> (dependent Tasks ['dpkg_1.18.24.bb:do_install',
> 'binutils-cross_2.29.bb:do_populate_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_prepare_recipe_sysroot
> (dependent Tasks ['libtool-cross_2.4.6.bb:do_populate_sysroot',
> 'glibc_2.26.bb:do_populate_sysroot',
> 'pkgconfig_git.bb:do_populate_sysroot',
> 'libtool-native_2.4.6.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_fetch',
> 'dpkg_1.18.24.bb:do_populate_sysroot',
> 'gcc-runtime_7.2.bb:do_populate_sysroot',
> 'ncurses_6.0+20170715.bb:do_populate_sysroot',
> 'gnu-config_git.bb:do_populate_sysroot',
> 'gcc-cross_7.2.bb:do_populate_sysroot',
> 'automake_1.15.1.bb:do_populate_sysroot',
> 'autoconf_2.69.bb:do_populate_sysroot'])
>   Task /srv/BLD/yocto/meta/recipes-core/ncurses/ncurses_6.0+20170715.bb:
> do_configure
> (dependent Tasks ['ncurses_6.0+20170715.bb:do_prepare_recipe_sysroot',
> 'ncurses_6.0+20170715.bb:do_patch'])
>
> After hitting this state, multiple re-invocations of the bitbake will
> all fail with the same type of errors.  If I clean all state
> and remove the tmp folder and start again, the build will usually work
> (until I hit my next compilation issue).  Needless to say, this
> gets old fast.  I am hitting this style of issue regardless of the
> value of PACKAGE_CLASSES.
>
> I _never_ had issues with circular dependencies in krogoth.  Is anyone
> else hitting this?  Any caveats to be aware of?
>
> Thanks,
>
> Barry
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e08265ff8a8e2f80560c2f7e1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nobody else has seen this as far as I&#39;m aware, and the=
 autobuilder doesn&#39;t see it.<div><br></div><div>Is that a pure oe-core/=
bitbake or Poky, or do you have custom layers?=C2=A0 Can you replicate with=
 a stock configuration?=C2=A0</div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On 20 December 2017 at 03:02, Barry Grussling <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:barry@grussling.com" target=3D"_blank">b=
arry@grussling.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
Hello all,<br>
<br>
I am trying to move one of my builds from Krogoth to Rocko.=C2=A0 I am<br>
attempting to build<br>
on 1c61ba0a3f bitbake: tinfoil: Ensure we clean up loggers.<br>
<br>
Generally, I can start the first build fine.=C2=A0 Unfortunately, some of<b=
r>
my code/recipes will usually fail<br>
to build due to the new compilers.=C2=A0 When I re-run bitbake to continue<=
br>
the build, most of<br>
the time I experience a build failure of circular dependencies such as:<br>
<br>
Dependency loop #1 found:<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_package<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>packagedata&#39;, &#39;glibc_2.26.bb:do_pac=
kagedata&#39;<wbr>,<br>
&#39;rpm_git.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>install&#39;,<br>
&#39;dpkg_1.18.24.bb:do_<wbr>packagedata&#39;,<br>
&#39;libtool-cross_2.4.6.bb:do_<wbr>packagedata&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_packagedata<br>
(dependent Tasks [&#39;ncurses_6.0+20170715.bb:do_<wbr>package&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_package<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>packagedata&#39;, &#39;perl_5.24.1.bb:do_<w=
br>packagedata&#39;,<br>
&#39;glibc_2.26.bb:do_packagedata&#39;<wbr>, &#39;rpm_git.bb:do_populate_<w=
br>sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>packagedata&#39;,<br>
&#39;bzip2_1.0.6.bb:do_<wbr>packagedata&#39;, &#39;dpkg_1.18.24.bb:do_insta=
ll&#39;,<br>
&#39;zlib_1.2.11.bb:do_<wbr>packagedata&#39;,<br>
&#39;libtool-cross_2.4.6.bb:do_<wbr>packagedata&#39;,<br>
&#39;xz_5.2.3.bb:do_packagedata&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_packagedata<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_package&#39;]<wbr>)<br>
<br>
Dependency loop #2 found:<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_package<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>packagedata&#39;, &#39;perl_5.24.1.bb:do_<w=
br>packagedata&#39;,<br>
&#39;glibc_2.26.bb:do_packagedata&#39;<wbr>, &#39;rpm_git.bb:do_populate_<w=
br>sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>packagedata&#39;,<br>
&#39;bzip2_1.0.6.bb:do_<wbr>packagedata&#39;, &#39;dpkg_1.18.24.bb:do_insta=
ll&#39;,<br>
&#39;zlib_1.2.11.bb:do_<wbr>packagedata&#39;,<br>
&#39;libtool-cross_2.4.6.bb:do_<wbr>packagedata&#39;,<br>
&#39;xz_5.2.3.bb:do_packagedata&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_packagedata<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_package&#39;]<wbr>)<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_package<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>packagedata&#39;, &#39;glibc_2.26.bb:do_pac=
kagedata&#39;<wbr>,<br>
&#39;rpm_git.bb:do_populate_<wbr>sysroot&#39;, &#39;dpkg_1.18.24.bb:do_<wbr=
>packagedata&#39;,<br>
&#39;libtool-cross_2.4.6.bb:do_<wbr>packagedata&#39;, &#39;bzip2_1.0.6.bb:d=
o_install&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_packagedata<br>
(dependent Tasks [&#39;bzip2_1.0.6.bb:do_package&#39;])<br>
<br>
Dependency loop #3 found:<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_compile<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_<wbr>configure&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_install<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;dpkg_1.18.24.bb:do_compile&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_populate_sysroot<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_install&#39;,<br>
&#39;binutils-cross_2.29.bb:do_<wbr>populate_sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_prepare_recipe_sysroot<br>
(dependent Tasks [&#39;libtool-cross_2.4.6.bb:do_<wbr>populate_sysroot&#39;=
,<br>
&#39;glibc_2.26.bb:do_populate_<wbr>sysroot&#39;, &#39;bzip2_1.0.6.bb:do_fe=
tch&#39;,<br>
&#39;libtool-native_2.4.6.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;dpkg_1.18.24.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gnu-config_git.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gcc-cross_7.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;automake_1.15.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;autoconf_2.69.bb:do_populate_<wbr>sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_configure<br>
(dependent Tasks [&#39;bzip2_1.0.6.bb:do_patch&#39;,<br>
&#39;bzip2_1.0.6.bb:do_prepare_<wbr>recipe_sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_compile<br>
(dependent Tasks [&#39;bzip2_1.0.6.bb:do_configure&#39;<wbr>])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_install<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;bzip2_1.0.6.bb:do_compile&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>extended/bzip2/<a href=3D"http=
://bzip2_1.0.6.bb">bzip2_1.0.6.bb</a>:<wbr>do_populate_sysroot<br>
(dependent Tasks [&#39;binutils-cross_2.29.bb:do_<wbr>populate_sysroot&#39;=
,<br>
&#39;bzip2_1.0.6.bb:do_install&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_prepare_recipe_sysroot<br>
(dependent Tasks [&#39;libtool-cross_2.4.6.bb:do_<wbr>populate_sysroot&#39;=
,<br>
&#39;bzip2_1.0.6.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;glibc_2.26.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;libtool-native_2.4.6.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;dpkg_1.18.24.bb:do_fetch&#39;, &#39;perl_5.24.1.bb:do_populate_<wbr>sy=
sroot&#39;,<br>
&#39;gettext_0.19.8.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;pkgconfig_git.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;perl-native_5.24.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;xz_5.2.3.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;systemd-systemctl-native.bb:d<wbr>o_populate_sysroot&#39;,<br>
&#39;gnu-config_git.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;zlib_1.2.11.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gcc-cross_7.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;automake_1.15.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;autoconf_2.69.bb:do_populate_<wbr>sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_configure<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_prepare_<wbr>recipe_sysroot&#39;,=
<br>
&#39;dpkg_1.18.24.bb:do_patch&#39;])<br>
<br>
Dependency loop #4 found:<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_compile<br>
(dependent Tasks [&#39;ncurses_6.0+20170715.bb:do_<wbr>configure&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_install<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>compile&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_populate_<wbr>sysroot<br>
(dependent Tasks [&#39;binutils-cross_2.29.bb:do_<wbr>populate_sysroot&#39;=
,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>install&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_prepare_recipe_sysroot<br>
(dependent Tasks [&#39;libtool-cross_2.4.6.bb:do_<wbr>populate_sysroot&#39;=
,<br>
&#39;bzip2_1.0.6.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;glibc_2.26.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;libtool-native_2.4.6.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;dpkg_1.18.24.bb:do_fetch&#39;, &#39;perl_5.24.1.bb:do_populate_<wbr>sy=
sroot&#39;,<br>
&#39;gettext_0.19.8.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;pkgconfig_git.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;perl-native_5.24.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;xz_5.2.3.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;systemd-systemctl-native.bb:d<wbr>o_populate_sysroot&#39;,<br>
&#39;gnu-config_git.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;zlib_1.2.11.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gcc-cross_7.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;automake_1.15.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;autoconf_2.69.bb:do_populate_<wbr>sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_configure<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_prepare_<wbr>recipe_sysroot&#39;,=
<br>
&#39;dpkg_1.18.24.bb:do_patch&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_compile<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_<wbr>configure&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_install<br>
(dependent Tasks [&#39;pseudo_1.8.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;dpkg_1.18.24.bb:do_compile&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>devtools/dpkg/<a href=3D"http:=
//dpkg_1.18.24.bb">dpkg_1.18.24.bb</a>:<wbr>do_populate_sysroot<br>
(dependent Tasks [&#39;dpkg_1.18.24.bb:do_install&#39;,<br>
&#39;binutils-cross_2.29.bb:do_<wbr>populate_sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_prepare_recipe_<wbr>sysroot<br>
(dependent Tasks [&#39;libtool-cross_2.4.6.bb:do_<wbr>populate_sysroot&#39;=
,<br>
&#39;glibc_2.26.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;pkgconfig_git.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;libtool-native_2.4.6.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>fetch&#39;,<br>
&#39;dpkg_1.18.24.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;gcc-runtime_7.2.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gnu-config_git.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;gcc-cross_7.2.bb:do_populate_<wbr>sysroot&#39;,<br>
&#39;automake_1.15.1.bb:do_<wbr>populate_sysroot&#39;,<br>
&#39;autoconf_2.69.bb:do_populate_<wbr>sysroot&#39;])<br>
=C2=A0 Task /srv/BLD/yocto/meta/recipes-<wbr>core/ncurses/ncurses_6.0+<wbr>=
20170715.bb:do_configure<br>
(dependent Tasks [&#39;ncurses_6.0+20170715.bb:do_<wbr>prepare_recipe_sysro=
ot&#39;,<br>
&#39;ncurses_6.0+20170715.bb:do_<wbr>patch&#39;])<br>
<br>
After hitting this state, multiple re-invocations of the bitbake will<br>
all fail with the same type of errors.=C2=A0 If I clean all state<br>
and remove the tmp folder and start again, the build will usually work<br>
(until I hit my next compilation issue).=C2=A0 Needless to say, this<br>
gets old fast.=C2=A0 I am hitting this style of issue regardless of the<br>
value of PACKAGE_CLASSES.<br>
<br>
I _never_ had issues with circular dependencies in krogoth.=C2=A0 Is anyone=
<br>
else hitting this?=C2=A0 Any caveats to be aware of?<br>
<br>
Thanks,<br>
<br>
Barry<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--089e08265ff8a8e2f80560c2f7e1--
