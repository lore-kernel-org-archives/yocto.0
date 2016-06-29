Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BD9EE00C70; Wed, 29 Jun 2016 08:27:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B28E008A4
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 08:27:25 -0700 (PDT)
Received: by mail-qk0-f170.google.com with SMTP id t127so93177434qkf.1
	for <yocto@yoctoproject.org>; Wed, 29 Jun 2016 08:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=PqN2Lj2lfKq2UEAi/sTykAHZzaLwVd9wz9zlDLbmHx8=;
	b=pnaHupOaZ3T9/9TgHeY4rXDQHV5pO8Pk1/VXmPGR5mIJVDfmG3x2N9BKrwJVWmlXe0
	b+d4PqbhejzC3HqKBqrQaux5NeY6ewQj1VIodEdTV05sCSBh+RLy4fIHSYhZd0Si3ifs
	/uMZaD6GJkxsuendydUjQ6GgGb3UEy4grSOgqsrkcvSRxXq6E0WceGpTWnTYkw9yEFRs
	4KHKd6qn4hn/QIsRMHcy4IzxyvbgL62bJyaa1/5p4JEWaX5l8I8TCNjUfh/W0D7PHujT
	VAWVvcoG2PfOchVtO+MaqmjfsrU4KfH1Amh6BiNot08OqyYUj/WmQ6qikAoSI0SoHWHH
	WZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=PqN2Lj2lfKq2UEAi/sTykAHZzaLwVd9wz9zlDLbmHx8=;
	b=DIzWtq3ec1z8Dzg43X25Zdj/HN6nNE94dCt1MJkeLWCME7oFWnZnqypq8lWwPSd/oP
	1aEWNmZyk7H9Gr55bOGgr0AkC3iihpRby5MffpT3a73q9bfqLqaGncjF/qyQOt0MGpab
	AsQlXoX3A1uBXtlIobQe0a5TRs9bQclK5ZGNNRkrEHP0a2VzV8TWC+DyurXLNayMqSkP
	9PkFIhuuE61ZcTKIXwtgBhhu8gmnPODL3O0Szd3g7c92KecPmpL3NwrZ/zgt7FbTGe4H
	05jZgiPZxYs4mmdVadOzYSSJI/+P59GY1Yse8yTHXoKzqPTW61XJdZ7PQBW/7+HrvZGE
	xWeQ==
X-Gm-Message-State: ALyK8tItW6xapGR5idEBgBzoHJ3kKr4CzzwYTPtI25hLG13AD6OzJ3RZx2/UdPkKODuTdqYdKov5y5bqrQr4Rw==
MIME-Version: 1.0
X-Received: by 10.55.187.4 with SMTP id l4mr11541821qkf.152.1467214044240;
	Wed, 29 Jun 2016 08:27:24 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Wed, 29 Jun 2016 08:27:24 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Wed, 29 Jun 2016 08:27:24 -0700 (PDT)
In-Reply-To: <5773AC2F.6050306@mlbassoc.com>
References: <5773AC2F.6050306@mlbassoc.com>
Date: Wed, 29 Jun 2016 08:27:24 -0700
Message-ID: <CAMKF1spxmk5G1v60bQU5QiNphd8PVVWEzTkcFeDECfNEPSsdgQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain build errors
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
X-List-Received-Date: Wed, 29 Jun 2016 15:27:29 -0000
Content-Type: multipart/alternative; boundary=94eb2c042ffaeaa46d05366c6303

--94eb2c042ffaeaa46d05366c6303
Content-Type: text/plain; charset=UTF-8

On Jun 29, 2016 4:10 AM, "Gary Thomas" <gary@mlbassoc.com> wrote:
>
> I just [successfully] built a large image for my target (details):
> BB_VERSION        = "1.31.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-15.10"
> TARGET_SYS        = "arm-amltd-linux-gnueabi"
> MACHINE           = "teton-p0382"
> DISTRO            = "amltd"
> DISTRO_VERSION    = "2.1+snapshot-20160629"
> TUNE_FEATURES     = "arm armv7a vfp thumb neon       callconvention-hard
     cortexa9"
> TARGET_FPU        = "hard"
> meta              = "master:c6d50b272936b61b98a056ea2e1de5d0f4ef53ce"
>   ... platform specifics removed ...
>
> Then I tried 'bitbake meta-toolchain' immediately afterwards, only
> to be assaulted by a barrage of messages like this:
>
> ERROR: nativesdk-libsdl-1.2.15-r3 do_populate_sysroot: Taskhash mismatch
8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses b05a369a00869fc70fe9ba2cc28e7259
for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
> ERROR: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses
b05a369a00869fc70fe9ba2cc28e7259 for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
> ERROR: nativesdk-bash-completion-2.1-r0 do_compile: Taskhash mismatch
2e063c5bac7bf922fbff59be5120a62e verses 0223876e7a4bc1e57f93a44631b4e4aa
for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
> ERROR: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses
0223876e7a4bc1e57f93a44631b4e4aa for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
> ERROR: nativesdk-bash-completion-2.1-r0 do_install: Taskhash mismatch
a9932697b29f5fbd06feafedea44d7d4 verses 0b4e83ecda4ce5560e50891715d6a5d1
for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
> ERROR: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses
0b4e83ecda4ce5560e50891715d6a5d1 for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
> ERROR: nativesdk-bash-completion-2.1-r0 do_package: Taskhash mismatch
3cdba66cd643484bed95676b5a4cdc21 verses fe3108a63774b61b3910e75495fb4d5d
for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
> ERROR: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses
fe3108a63774b61b3910e75495fb4d5d for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
> ERROR: nativesdk-qemu-2.6.0-r1 do_configure: Taskhash mismatch
c8c576da0ae11886e518efa4bc406f18 verses ad6e2e5d7704e6002f3b4ec56bc2d92b
for
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/qemu/qemu_2.6.0.bb.do_configure
>    ...
> NOTE: Tasks Summary: Attempted 2047 tasks of which 865 didn't need to be
rerun and all succeeded.
> Summary: There were 1212 ERROR messages shown, returning a non-zero exit
code.
>
> There were too many error lines to copy :-(
>
> What does this mean and how do I get my toolchain?

Bitbake -cpopulate_sdk your-image
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--94eb2c042ffaeaa46d05366c6303
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"></p>
<p dir=3D"ltr">On Jun 29, 2016 4:10 AM, &quot;Gary Thomas&quot; &lt;<a href=
=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I just [successfully] built a large image for my target (details):<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.31.0&quot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linux&quot=
;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-15.10&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-amltd-linux-gnueab=
i&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;teton-p0382&=
quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;amltd&quot;<=
br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.1+snapshot-20160629&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7a vfp thumb neon=
=C2=A0 =C2=A0 =C2=A0 =C2=A0callconvention-hard=C2=A0 =C2=A0 =C2=A0 =C2=A0co=
rtexa9&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
&gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:=
c6d50b272936b61b98a056ea2e1de5d0f4ef53ce&quot;<br>
&gt; =C2=A0 ... platform specifics removed ...<br>
&gt;<br>
&gt; Then I tried &#39;bitbake meta-toolchain&#39; immediately afterwards, =
only<br>
&gt; to be assaulted by a barrage of messages like this:<br>
&gt;<br>
&gt; ERROR: nativesdk-libsdl-1.2.15-r3 do_populate_sysroot: Taskhash mismat=
ch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses b05a369a00869fc70fe9ba2cc28e7259=
 for virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsd=
l/libsdl_1.2.15.bb.do_populate_sysroot<br>
&gt; ERROR: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses b05a3=
69a00869fc70fe9ba2cc28e7259 for virtual:nativesdk:/local/poky-cutting-edge/=
meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot<br>
&gt; ERROR: nativesdk-bash-completion-2.1-r0 do_compile: Taskhash mismatch =
2e063c5bac7bf922fbff59be5120a62e verses 0223876e7a4bc1e57f93a44631b4e4aa fo=
r virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comp=
letion/bash-completion_2.1.bb.do_compile<br>
&gt; ERROR: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses 02238=
76e7a4bc1e57f93a44631b4e4aa for virtual:nativesdk:/local/poky-cutting-edge/=
meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile<br>
&gt; ERROR: nativesdk-bash-completion-2.1-r0 do_install: Taskhash mismatch =
a9932697b29f5fbd06feafedea44d7d4 verses 0b4e83ecda4ce5560e50891715d6a5d1 fo=
r virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comp=
letion/bash-completion_2.1.bb.do_install<br>
&gt; ERROR: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses 0b4e8=
3ecda4ce5560e50891715d6a5d1 for virtual:nativesdk:/local/poky-cutting-edge/=
meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install<br>
&gt; ERROR: nativesdk-bash-completion-2.1-r0 do_package: Taskhash mismatch =
3cdba66cd643484bed95676b5a4cdc21 verses fe3108a63774b61b3910e75495fb4d5d fo=
r virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comp=
letion/bash-completion_2.1.bb.do_package<br>
&gt; ERROR: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses fe310=
8a63774b61b3910e75495fb4d5d for virtual:nativesdk:/local/poky-cutting-edge/=
meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package<br>
&gt; ERROR: nativesdk-qemu-2.6.0-r1 do_configure: Taskhash mismatch c8c576d=
a0ae11886e518efa4bc406f18 verses ad6e2e5d7704e6002f3b4ec56bc2d92b for virtu=
al:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/qemu/qemu_2.6.0=
.bb.do_configure<br>
&gt; =C2=A0 =C2=A0...<br>
&gt; NOTE: Tasks Summary: Attempted 2047 tasks of which 865 didn&#39;t need=
 to be rerun and all succeeded.<br>
&gt; Summary: There were 1212 ERROR messages shown, returning a non-zero ex=
it code.<br>
&gt;<br>
&gt; There were too many error lines to copy :-(<br>
&gt;<br>
&gt; What does this mean and how do I get my toolchain?</p>
<p dir=3D"ltr">Bitbake -cpopulate_sdk your-image<br>
&gt;<br>
&gt; -- <br>
&gt; ------------------------------------------------------------<br>
&gt; Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 Consulting for the<br>
&gt; MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0=
 =C2=A0 Embedded world<br>
&gt; ------------------------------------------------------------<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
</p>

--94eb2c042ffaeaa46d05366c6303--
