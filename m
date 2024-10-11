Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 825B4D0EE28
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 19:34:12 +0000 (UTC)
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
 by mx.groups.io with SMTP id smtpd.web11.20708.1728675244687318673
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Oct 2024 12:34:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=m2W/Y2Y6;
 spf=pass (domain: gmail.com, ip: 209.85.161.50, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5e8010de1caso1643542eaf.0
        for <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 12:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728675244; x=1729280044; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=17nSdP7yy+v414Ar3tjsYD0Fwd/1pRN8tdrz3rfcKb8=;
        b=m2W/Y2Y65VzFRluPYDK6FpUsbrlqvdQbzi5OE7iyozB1UZzyJ7QWD2MGqDsLo1ncoC
         AWLxuZ2VMfjdzzyq8kWYdOJnJDOOhMaPcy6YwbbRkPXvavyAsITEKtynil8cr8a4fowX
         kbEU8ys1bxJUaIIleE2HdnHtLey9zeeIutuO4FtaYBIDNtnYSRL1yGvkMD1lMtr2+vl2
         oR2lndqmV+e0nCT5It3RHkbMRA6sJVCQZ/WkPkQToMLy5BZrjI9+jZOXa2AAuhpbhDny
         RGr9TSbLMqcpXnspHxRTK178QFogknqmL0FKd2yQS3BHp/pcUHGskPNQl/nbKpZTODJo
         jLOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728675244; x=1729280044;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=17nSdP7yy+v414Ar3tjsYD0Fwd/1pRN8tdrz3rfcKb8=;
        b=sw5L7fDpH3+i6qk1pAQu+pMMpiDXJat6lSjRGidofcxxTJf1Wggr2XvAy6SWAKQGRn
         jfTISoKLT79VpjX8sd4azNYXmpHo5VVdKvwP1Ill6bK3YfVo7H5LWtEepo+8kIfOXSFS
         RuD2gTx71IWLFhf2FhyCu01+YJC8qdiqqGctqbiH39whvynYmvNpZwakWLmA5067iUPc
         COsabTRXKjvaJS/zzL3NkUFgxa62PIID/MGmQErvSRRyEh/aKNpQpZSeKIh45G4J9iLF
         2ch3AE/8hnrnKG7phKLE5aTdGI4mSWQoI9/TyEtTxwrEqgQfHGcUcKfNpHnrln2+EqcU
         4ozA==
X-Gm-Message-State: AOJu0YyyRV316mcnSJ7bdms+AID7JsgRHqpwr7GQ4EXXxIx5xV/qk4p4
	wxYHN/sv0nNKBvaYV6H9j6NjrZ+DdIctx3AUwzMuyeifdMJG26BoAUIJwHjFiO4Bz8B9ms5l2xn
	VP87H9o8851RRqYwckD6DohP8XVLFwA==
X-Google-Smtp-Source: AGHT+IE6DiHWvdcsMDHuFslHE8if26JY6TN9YMiaO4X/JZaFZ3iBAisDETVs59vEFezi2A8iskZDOelzAoF2vMdTu+w=
X-Received: by 2002:a05:6820:995:b0:5e3:b691:5ee4 with SMTP id
 006d021491bc7-5eb1a307985mr2137394eaf.3.1728675243724; Fri, 11 Oct 2024
 12:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <vIaT.1728662245920397641.q3bQ@lists.yoctoproject.org>
In-Reply-To: <vIaT.1728662245920397641.q3bQ@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Fri, 11 Oct 2024 21:33:52 +0200
Message-ID: <CAB3asfh_gM0HPFPV1jA=DZk+h_ctNpBQaHMri-WezdZg05-Ohg@mail.gmail.com>
Subject: Re: [yocto] How to install a debian package in the host. Having
 problems with tar subprocess with dpkg-native
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, jairo.mejiaaponte@belden.com
Content-Type: multipart/alternative; boundary="000000000000d5969706243891bd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 19:34:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64010

--000000000000d5969706243891bd
Content-Type: text/plain; charset="UTF-8"

Hi JM

Maybe you can extract the Deb file independently from bitbake with tar and
provide the binaries as a simple tar archive. This would allow to use
bitbake's fetcher to download the tar and unpack the binaries into WORKDIR
as usual. Then you can write a do_install task which installs the binaries
the Yocto way.
Calling dpkg from bitbake is probably not the best approach.

There is no need for all the fakeroot related code in your recipe. This
should just work by default.

Adrian

jairo.mejiaaponte via lists.yoctoproject.org <jairo.mejiaaponte=
belden.com@lists.yoctoproject.org> schrieb am Fr., 11. Okt. 2024, 17:57:

> Dear Yocto community,
>
> I know it is not ideal, but I need to install a package in the building
> host that is close source. Because of it, I just received the deb package
> without the source code. This deb package only needs to run on the building
> host aka native, but I am unable to achieve it. This is how the recipe look
> like:
>
> SUMMARY = "Recipe for installing deb package"
> DESCRIPTION = "It installs own deb package"
> HOMEPAGE = ""
> LICENSE = "CLOSED"
>
> DEPENDS = "dpkg-native ldconfig-native virtual/fakeroot-native"
>
> SRC_URI = "file://close-source-deb-file.amd64.deb;unpack=0"
>
> fakeroot do_install:append() {
> touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/status
> ${STAGING_BINDIR_NATIVE}/dpkg --force architecture --instdir=${D}/ \
> --admindir=${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> -i ${WORKDIR}/close-source-deb-file.amd64.deb
> }
> do_install[depends] += "virtual/fakeroot-native:do_populate_sysroot"
>
> FILES:${PN} += " \
> /usr/* \
> /etc/* \
> "
> However, when I tried to run this recipe I got stuck in the extraction
> part of the process with the error "Cannot change ownership":
>
> | NOTE: Skipping as already exists in sysroot: ['glibc', 'ldconfig-native'
> , 'gcc-cross-aarch64',
> 'gcc-runtime', 'quilt-native', 'dpkg-native', 'patch-native',
> 'pseudo-native', 'xz-native',
> 'linux-libc-headers', 'libgcc', 'libtool-native', 'attr-native',
> 'gettext-minimal-native',
> 'bzip2-native', 'gettext-native', 'perl-native', 'zlib-native',
> 'opkg-utils-native', 'libmpc-native',
> 'binutils-cross-aarch64', 'zstd-native', 'gnu-config-native', 'gmp-native'
> , 'flex-native', 'mpfr-native',
> 'texinfo-dummy-native', 'make-native', 'gdbm-native', 'm4-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | tar: ./conffiles: Cannot change ownership to uid 0, gid 0: Invalid
> argument
> | tar: ./control: Cannot change ownership to uid 0, gid 0: Invalid
> argument
> | tar: ./md5sums: Cannot change ownership to uid 0, gid 0: Invalid
> argument
> | tar: ./postinst: Cannot change ownership to uid 0, gid 0: Invalid
> argument
> | tar: ./shlibs: Cannot change ownership to uid 0, gid 0: Invalid argument
> | tar: ./triggers: Cannot change ownership to uid 0, gid 0: Invalid
> argument
> | tar: .: Cannot change ownership to uid 0, gid 0: Invalid argument
> | tar: Exiting with failure status due to previous errors
> | dpkg-deb: error: tar subprocess returned error exit status 2
> | dpkg: error processing archive pwd/close-source-deb-file.amd64.deb (--
> install):
> | dpkg-deb --control subprocess returned error exit status 2
> | Errors were encountered while processing:
>
> I know this error is typical of tar when the uid and gid of the user and
> the owner are not the same but I cannot use the flag "--no-same-owner" as
> far as I know using dpkg. I also tried with pseudo and fakeroot, but the
> result is the same. I have been looking the code of dpkg but adding the
> flag to the variable TAR seems not to be working because it will not find
> the binary $PATH.
>
> So I do not know what else kind I tried to make it work. Have I something
> missed? Could you maybe point me into the right direction?
>
> Thanks for your help.
>
> Happy coding,
>
> JM
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64009):
> https://lists.yoctoproject.org/g/yocto/message/64009
> Mute This Topic: https://lists.yoctoproject.org/mt/108951488/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d5969706243891bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi JM</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Maybe you can extract the Deb file independently from bitbake with tar=
 and provide the binaries as a simple tar archive. This would allow to use =
bitbake&#39;s fetcher to download the tar and unpack the binaries into WORK=
DIR as usual. Then you can write a do_install task which installs the binar=
ies the Yocto way.</div><div dir=3D"auto">Calling dpkg from bitbake is prob=
ably not the best approach.</div><div dir=3D"auto"><br></div><div dir=3D"au=
to">There is no need for all the fakeroot related code in your recipe. This=
 should just work by default.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Adrian<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr=
" class=3D"gmail_attr">jairo.mejiaaponte via <a href=3D"http://lists.yoctop=
roject.org">lists.yoctoproject.org</a> &lt;jairo.mejiaaponte=3D<a href=3D"m=
ailto:belden.com@lists.yoctoproject.org">belden.com@lists.yoctoproject.org<=
/a>&gt; schrieb am Fr., 11. Okt. 2024, 17:57:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div>Dear Yocto community,=C2=A0</div>
<div>=C2=A0</div>
<div>I know it is not ideal, but I need to install a package in the buildin=
g host that is close source. Because of it, I just received the deb package=
 without the source code. This deb package only needs to run on the buildin=
g host aka native, but I am unable to achieve it. This is how the recipe lo=
ok like:=C2=A0<br><br>
<div style=3D"color:#a9b1d6;background-color:#1a1b26;font-family:&#39;Droid=
 Sans Mono&#39;,&#39;monospace&#39;,monospace;font-weight:normal;font-size:=
14px;line-height:19px;white-space:pre-wrap">
<div><span style=3D"color:#e0af68">SUMMARY</span><span style=3D"color:#a9b1=
d6"> </span><span style=3D"color:#89ddff">=3D</span><span style=3D"color:#a=
9b1d6"> </span><span style=3D"color:#9ece6a">&quot;Recipe for installing de=
b package&quot;</span></div>
<div><span style=3D"color:#e0af68">DESCRIPTION</span><span style=3D"color:#=
a9b1d6"> </span><span style=3D"color:#89ddff">=3D</span><span style=3D"colo=
r:#a9b1d6"> </span><span style=3D"color:#9ece6a">&quot;It installs own deb =
package&quot;</span></div>
<div><span style=3D"color:#e0af68">HOMEPAGE</span><span style=3D"color:#a9b=
1d6"> </span><span style=3D"color:#89ddff">=3D</span><span style=3D"color:#=
a9b1d6"> </span><span style=3D"color:#9ece6a">&quot;&quot;</span></div>
<div><span style=3D"color:#e0af68">LICENSE</span><span style=3D"color:#a9b1=
d6"> </span><span style=3D"color:#89ddff">=3D</span><span style=3D"color:#a=
9b1d6"> </span><span style=3D"color:#9ece6a">&quot;CLOSED&quot;</span></div=
>
<br>
<div><span style=3D"color:#e0af68">DEPENDS</span><span style=3D"color:#a9b1=
d6"> </span><span style=3D"color:#89ddff">=3D</span><span style=3D"color:#a=
9b1d6"> </span><span style=3D"color:#9ece6a">&quot;dpkg-native ldconfig-nat=
ive virtual/fakeroot-native&quot;</span></div>
<br>
<div><span style=3D"color:#e0af68">SRC_URI</span><span style=3D"color:#a9b1=
d6"> </span><span style=3D"color:#89ddff">=3D</span><span style=3D"color:#a=
9b1d6"> </span><span style=3D"color:#9ece6a">&quot;file://close-source-deb-=
file.amd64.deb;unpack=3D0&quot;</span></div>
<br>
<div><span style=3D"color:#bb9af7">fakeroot</span><span style=3D"color:#a9b=
1d6"> </span><span style=3D"color:#7aa2f7">do_install</span><span style=3D"=
color:#89ddff">:</span><span style=3D"color:#bb9af7">append</span><span sty=
le=3D"color:#a9b1d6">() {</span></div>
<div><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#7aa2f7">to=
uch</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#7dcff=
f">${</span><span style=3D"color:#bb9af7">STAGING_DIR_NATIVE</span><span st=
yle=3D"color:#7dcfff">}</span><span style=3D"color:#a9b1d6">/</span><span s=
tyle=3D"color:#c0caf5">var</span><span style=3D"color:#a9b1d6">/</span><spa=
n style=3D"color:#c0caf5">lib</span><span style=3D"color:#a9b1d6">/</span><=
span style=3D"color:#c0caf5">dpkg</span><span style=3D"color:#a9b1d6">/</sp=
an><span style=3D"color:#c0caf5">status</span></div>
<div><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#7aa2f7">${=
</span><span style=3D"color:#7aa2f7">STAGING_BINDIR_NATIVE</span><span styl=
e=3D"color:#7aa2f7">}</span><span style=3D"color:#7aa2f7">/</span><span sty=
le=3D"color:#7aa2f7">dpkg</span><span style=3D"color:#a9b1d6"> --</span><sp=
an style=3D"color:#c0caf5">force</span><span style=3D"color:#a9b1d6"> </spa=
n><span style=3D"color:#c0caf5">architecture</span><span style=3D"color:#a9=
b1d6"> --</span><span style=3D"color:#c0caf5">instdir</span><span style=3D"=
color:#89ddff">=3D</span><span style=3D"color:#7dcfff">${</span><span style=
=3D"color:#bb9af7">D</span><span style=3D"color:#7dcfff">}</span><span styl=
e=3D"color:#a9b1d6">/ \</span></div>
<div><span style=3D"color:#a9b1d6"> --</span><span style=3D"color:#c0caf5">=
admindir</span><span style=3D"color:#89ddff">=3D</span><span style=3D"color=
:#7dcfff">${</span><span style=3D"color:#bb9af7">STAGING_DIR_NATIVE</span><=
span style=3D"color:#7dcfff">}</span><span style=3D"color:#a9b1d6">/</span>=
<span style=3D"color:#c0caf5">var</span><span style=3D"color:#a9b1d6">/</sp=
an><span style=3D"color:#c0caf5">lib</span><span style=3D"color:#a9b1d6">/<=
/span><span style=3D"color:#c0caf5">dpkg</span><span style=3D"color:#a9b1d6=
">/ \</span></div>
<div><span style=3D"color:#a9b1d6"> -</span><span style=3D"color:#c0caf5">i=
</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#7dcfff">=
${</span><span style=3D"color:#bb9af7">WORKDIR</span><span style=3D"color:#=
7dcfff">}</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:=
#c0caf5">close</span><span style=3D"color:#a9b1d6">-</span><span style=3D"c=
olor:#c0caf5">source</span><span style=3D"color:#a9b1d6">-</span><span styl=
e=3D"color:#c0caf5">deb</span><span style=3D"color:#a9b1d6">-</span><span s=
tyle=3D"color:#c0caf5">file</span><span style=3D"color:#89ddff">.</span><sp=
an style=3D"color:#c0caf5">amd64</span><span style=3D"color:#89ddff">.</spa=
n><span style=3D"color:#c0caf5">deb</span></div>
<div><span style=3D"color:#a9b1d6">}</span></div>
<div><span style=3D"color:#e0af68">do_install</span><span style=3D"color:#a=
9b1d6">[</span><span style=3D"color:#c0caf5">depends</span><span style=3D"c=
olor:#a9b1d6">] </span><span style=3D"color:#89ddff">+=3D</span><span style=
=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece6a">&quot;virtual/fake=
root-native:do_populate_sysroot&quot;</span></div>
<br>
<div><span style=3D"color:#e0af68">FILES</span><span style=3D"color:#a9b1d6=
">:</span><span style=3D"color:#7dcfff">${</span><span style=3D"color:#e0af=
68">PN</span><span style=3D"color:#7dcfff">}</span><span style=3D"color:#a9=
b1d6"> </span><span style=3D"color:#89ddff">+=3D</span><span style=3D"color=
:#a9b1d6"> </span><span style=3D"color:#9ece6a">&quot; \</span></div>
<div><span style=3D"color:#9ece6a"> /usr/* \</span></div>
<div><span style=3D"color:#9ece6a"> /etc/* \</span></div>
<div><span style=3D"color:#9ece6a">&quot;</span></div>
</div>
</div>
<div>However, when I tried to run this recipe I got stuck in the extraction=
 part of the process with the error &quot;Cannot change ownership&quot;:=C2=
=A0<br><br>
<div style=3D"color:#a9b1d6;background-color:#1a1b26;font-family:&#39;Droid=
 Sans Mono&#39;,&#39;monospace&#39;,monospace;font-weight:normal;font-size:=
14px;line-height:19px;white-space:pre-wrap">
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">N=
OTE</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0ca=
f5">Skipping</span><span style=3D"color:#a9b1d6"> </span><span style=3D"col=
or:#bb9af7">as</span><span style=3D"color:#a9b1d6"> </span><span style=3D"c=
olor:#c0caf5">already</span><span style=3D"color:#a9b1d6"> </span><span sty=
le=3D"color:#c0caf5">exists</span><span style=3D"color:#a9b1d6"> </span><sp=
an style=3D"color:#bb9af7">in</span><span style=3D"color:#a9b1d6"> </span><=
span style=3D"color:#c0caf5">sysroot</span><span style=3D"color:#a9b1d6">: =
[</span><span style=3D"color:#9ece6a">&#39;glibc&#39;</span><span style=3D"=
color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D=
"color:#9ece6a">&#39;ldconfig-native&#39;</span><span style=3D"color:#89ddf=
f">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece=
6a">&#39;gcc-cross-aarch64&#39;</span><span style=3D"color:#89ddff">,</span=
><span style=3D"color:#a9b1d6"> </span></div>
<div><span style=3D"color:#9ece6a">&#39;gcc-runtime&#39;</span><span style=
=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><span styl=
e=3D"color:#9ece6a">&#39;quilt-native&#39;</span><span style=3D"color:#89dd=
ff">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ec=
e6a">&#39;dpkg-native&#39;</span><span style=3D"color:#89ddff">,</span><spa=
n style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;patch-=
native&#39;</span><span style=3D"color:#89ddff">,</span><span style=3D"colo=
r:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;pseudo-native&#39;</s=
pan><span style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </=
span><span style=3D"color:#9ece6a">&#39;xz-native&#39;</span><span style=3D=
"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span></div>
<div><span style=3D"color:#9ece6a">&#39;linux-libc-headers&#39;</span><span=
 style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><spa=
n style=3D"color:#9ece6a">&#39;libgcc&#39;</span><span style=3D"color:#89dd=
ff">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ec=
e6a">&#39;libtool-native&#39;</span><span style=3D"color:#89ddff">,</span><=
span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;att=
r-native&#39;</span><span style=3D"color:#89ddff">,</span><span style=3D"co=
lor:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;gettext-minimal-nat=
ive&#39;</span><span style=3D"color:#89ddff">,</span><span style=3D"color:#=
a9b1d6"> </span></div>
<div><span style=3D"color:#9ece6a">&#39;bzip2-native&#39;</span><span style=
=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><span styl=
e=3D"color:#9ece6a">&#39;gettext-native&#39;</span><span style=3D"color:#89=
ddff">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9=
ece6a">&#39;perl-native&#39;</span><span style=3D"color:#89ddff">,</span><s=
pan style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;zlib=
-native&#39;</span><span style=3D"color:#89ddff">,</span><span style=3D"col=
or:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;opkg-utils-native&#3=
9;</span><span style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6=
"> </span><span style=3D"color:#9ece6a">&#39;libmpc-native&#39;</span><span=
 style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span></di=
v>
<div><span style=3D"color:#9ece6a">&#39;binutils-cross-aarch64&#39;</span><=
span style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span>=
<span style=3D"color:#9ece6a">&#39;zstd-native&#39;</span><span style=3D"co=
lor:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"c=
olor:#9ece6a">&#39;gnu-config-native&#39;</span><span style=3D"color:#89ddf=
f">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece=
6a">&#39;gmp-native&#39;</span><span style=3D"color:#89ddff">,</span><span =
style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;flex-nat=
ive&#39;</span><span style=3D"color:#89ddff">,</span><span style=3D"color:#=
a9b1d6"> </span><span style=3D"color:#9ece6a">&#39;mpfr-native&#39;</span><=
span style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span>=
</div>
<div><span style=3D"color:#9ece6a">&#39;texinfo-dummy-native&#39;</span><sp=
an style=3D"color:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><s=
pan style=3D"color:#9ece6a">&#39;make-native&#39;</span><span style=3D"colo=
r:#89ddff">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"col=
or:#9ece6a">&#39;gdbm-native&#39;</span><span style=3D"color:#89ddff">,</sp=
an><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#9ece6a">&#39=
;m4-native&#39;</span><span style=3D"color:#a9b1d6">]</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">D=
EBUG</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0c=
af5">Python</span><span style=3D"color:#a9b1d6"> </span><span style=3D"colo=
r:#c0caf5">function</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">extend_recipe_sysroot</span><span style=3D"color:#a9b1d6=
"> </span><span style=3D"color:#c0caf5">finished</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">D=
EBUG</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0c=
af5">Executing</span><span style=3D"color:#a9b1d6"> </span><span style=3D"c=
olor:#c0caf5">shell</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">function</span><span style=3D"color:#a9b1d6"> </span><sp=
an style=3D"color:#c0caf5">do_install</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0ca=
f5">conffiles</span><span style=3D"color:#a9b1d6">: </span><span style=3D"c=
olor:#c0caf5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span styl=
e=3D"color:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><spa=
n style=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </=
span><span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> =
</span><span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6=
"> </span><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddf=
f">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0ca=
f5">gid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#f=
f9e64">0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:=
#c0caf5">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D=
"color:#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0ca=
f5">control</span><span style=3D"color:#a9b1d6">: </span><span style=3D"col=
or:#c0caf5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </s=
pan><span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> <=
/span><span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6"=
> </span><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddff=
">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0caf=
5">gid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#ff=
9e64">0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#=
c0caf5">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"=
color:#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0ca=
f5">md5sums</span><span style=3D"color:#a9b1d6">: </span><span style=3D"col=
or:#c0caf5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </s=
pan><span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> <=
/span><span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6"=
> </span><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddff=
">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0caf=
5">gid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#ff=
9e64">0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#=
c0caf5">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"=
color:#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0ca=
f5">postinst</span><span style=3D"color:#a9b1d6">: </span><span style=3D"co=
lor:#c0caf5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </s=
pan><span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> <=
/span><span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6"=
> </span><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddff=
">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0caf=
5">gid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#ff=
9e64">0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#=
c0caf5">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"=
color:#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0ca=
f5">shlibs</span><span style=3D"color:#a9b1d6">: </span><span style=3D"colo=
r:#c0caf5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </s=
pan><span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> <=
/span><span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6"=
> </span><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddff=
">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0caf=
5">gid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#ff=
9e64">0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#=
c0caf5">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"=
color:#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0ca=
f5">triggers</span><span style=3D"color:#a9b1d6">: </span><span style=3D"co=
lor:#c0caf5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </s=
pan><span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> <=
/span><span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6"=
> </span><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddff=
">,</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0caf=
5">gid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#ff=
9e64">0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#=
c0caf5">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"=
color:#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#89ddf=
f">.</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0c=
af5">Cannot</span><span style=3D"color:#a9b1d6"> </span><span style=3D"colo=
r:#c0caf5">change</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">ownership</span><span style=3D"color:#a9b1d6"> </span><s=
pan style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> </span>=
<span style=3D"color:#c0caf5">uid</span><span style=3D"color:#a9b1d6"> </sp=
an><span style=3D"color:#ff9e64">0</span><span style=3D"color:#89ddff">,</s=
pan><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0caf5">gid=
</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#ff9e64">=
0</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0caf5=
">Invalid</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:=
#c0caf5">argument</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">t=
ar</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0caf=
5">Exiting</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color=
:#bb9af7">with</span><span style=3D"color:#a9b1d6"> </span><span style=3D"c=
olor:#c0caf5">failure</span><span style=3D"color:#a9b1d6"> </span><span sty=
le=3D"color:#c0caf5">status</span><span style=3D"color:#a9b1d6"> </span><sp=
an style=3D"color:#c0caf5">due</span><span style=3D"color:#a9b1d6"> </span>=
<span style=3D"color:#c0caf5">to</span><span style=3D"color:#a9b1d6"> </spa=
n><span style=3D"color:#c0caf5">previous</span><span style=3D"color:#a9b1d6=
"> </span><span style=3D"color:#c0caf5">errors</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">d=
pkg</span><span style=3D"color:#a9b1d6">-</span><span style=3D"color:#c0caf=
5">deb</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c=
0caf5">error</span><span style=3D"color:#a9b1d6">: </span><span style=3D"co=
lor:#c0caf5">tar</span><span style=3D"color:#a9b1d6"> </span><span style=3D=
"color:#c0caf5">subprocess</span><span style=3D"color:#a9b1d6"> </span><spa=
n style=3D"color:#c0caf5">returned</span><span style=3D"color:#a9b1d6"> </s=
pan><span style=3D"color:#c0caf5">error</span><span style=3D"color:#a9b1d6"=
> </span><span style=3D"color:#c0caf5">exit</span><span style=3D"color:#a9b=
1d6"> </span><span style=3D"color:#c0caf5">status</span><span style=3D"colo=
r:#a9b1d6"> </span><span style=3D"color:#ff9e64">2</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">d=
pkg</span><span style=3D"color:#a9b1d6">: </span><span style=3D"color:#c0ca=
f5">error</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:=
#c0caf5">processing</span><span style=3D"color:#a9b1d6"> </span><span style=
=3D"color:#c0caf5">archive</span><span style=3D"color:#a9b1d6"> pwd</span><=
span style=3D"color:#a9b1d6">/</span><span style=3D"color:#c0caf5">close</s=
pan><span style=3D"color:#a9b1d6">-</span><span style=3D"color:#c0caf5">sou=
rce</span><span style=3D"color:#a9b1d6">-</span><span style=3D"color:#c0caf=
5">deb</span><span style=3D"color:#a9b1d6">-</span><span style=3D"color:#c0=
caf5">file</span><span style=3D"color:#89ddff">.</span><span style=3D"color=
:#c0caf5">amd64</span><span style=3D"color:#89ddff">.</span><span style=3D"=
color:#7aa2f7">deb</span><span style=3D"color:#a9b1d6"> (--</span><span sty=
le=3D"color:#c0caf5">install</span><span style=3D"color:#a9b1d6">):</span><=
/div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">d=
pkg</span><span style=3D"color:#a9b1d6">-</span><span style=3D"color:#c0caf=
5">deb</span><span style=3D"color:#a9b1d6"> --</span><span style=3D"color:#=
c0caf5">control</span><span style=3D"color:#a9b1d6"> </span><span style=3D"=
color:#c0caf5">subprocess</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">returned</span><span style=3D"color:#a9b1d6"> </sp=
an><span style=3D"color:#c0caf5">error</span><span style=3D"color:#a9b1d6">=
 </span><span style=3D"color:#c0caf5">exit</span><span style=3D"color:#a9b1=
d6"> </span><span style=3D"color:#c0caf5">status</span><span style=3D"color=
:#a9b1d6"> </span><span style=3D"color:#ff9e64">2</span></div>
<div><span style=3D"color:#a9b1d6">| </span><span style=3D"color:#c0caf5">E=
rrors</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:#c0c=
af5">were</span><span style=3D"color:#a9b1d6"> </span><span style=3D"color:=
#c0caf5">encountered</span><span style=3D"color:#a9b1d6"> </span><span styl=
e=3D"color:#bb9af7">while</span><span style=3D"color:#a9b1d6"> </span><span=
 style=3D"color:#c0caf5">processing</span><span style=3D"color:#a9b1d6">:</=
span></div>
</div>
<br>I know this error is typical of tar when the uid and gid of the user an=
d the owner are not the same but I cannot use the flag &quot;--no-same-owne=
r&quot; as far as I know using dpkg. I also tried with pseudo and fakeroot,=
 but the result is the same. I have been looking the code of dpkg but addin=
g the flag to the variable TAR seems not to be working because it will not =
find the binary $PATH.=C2=A0<br><br>So I do not know what else kind I tried=
 to make it work. Have I something missed? Could you maybe point me into th=
e right direction?<br><br>Thanks for your help.=C2=A0<br><br>Happy coding,<=
br><br>JM</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64009): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64009" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/64009</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108951488/445=
4582" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/108951488/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000d5969706243891bd--

