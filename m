Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6211E00EC1; Thu, 30 Jun 2016 08:05:20 -0700 (PDT)
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
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7859DE00EBC
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 08:05:17 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id f89so43647889qtd.2
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 08:05:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=SHmAyzIso7apCwukcq4iybufBb5/y/QCKWwODF0WhjI=;
	b=CbXsbF1c51976CN5fQR/7A9cBir+Co6TbsEv232a8ZJ05JpdNRnCed5ieN1/N4yPwA
	cKx81sW3opwUGGmw0895DCKg3KFBMgFlrkm7A/nLpLjnGLes1xVouiFJErqlNqx8c4EO
	9A9O4e2WQIKT9fDd/84eLFTVbyH6mVPP9ekD2E6JlKXeGtgPSdUcxVzYZc+MmqGgm2Pb
	CBz/pxXXi/pu6eiQ0ktVPjUuViXzIBzn7EzcYu7fH50mXCvFILPciD2JjEcSLJirLnKt
	aPbxZaug5OVH+g++iEFz6XmyRwHKVHKIz2KcDzEOk9Srxl+nQ4M2KVfF4mKgj3EncOt4
	yK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=SHmAyzIso7apCwukcq4iybufBb5/y/QCKWwODF0WhjI=;
	b=NU8qs7nbA5gEmNZgpfVsdDZlVXAgMazBCCzjx9nOKWFos57rV2Uz5PlxFZAG9W0pRD
	cYSVtAmoGQoP2ItDkNU0quupiCu2C4i56VdzNFzO0fPjFgsDWF8IhNJcSBcR552QlHFE
	bJz2E/xURmgQphF112Fd+xBJRwtCtUCEFokNWG/RK6kP15NJbBrchFisDZkK7BKGfceS
	rwl4dOl2oikjVQibRfGsJeJWyzUmx8ft1eNWQbw06x5rTaUZWvsRUYpwg+fExs/311oH
	icuWCktW5w56YJ5BHNHuN3S+CzrPxpaEJETLwG3fZKbcXf70gDZIcQmGlwSH7I7lCFO+
	Ed8w==
X-Gm-Message-State: ALyK8tLCd784xPgrIHg1G7OmfN542yRWkjgMKypJf3R41D4o2aMQCcG91Lrnjuu29gq8jO63B6vjfUlWXuZQJw==
MIME-Version: 1.0
X-Received: by 10.200.33.172 with SMTP id 41mr24339013qty.26.1467299117278;
	Thu, 30 Jun 2016 08:05:17 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Thu, 30 Jun 2016 08:05:17 -0700 (PDT)
In-Reply-To: <5774D301.3050801@mlbassoc.com>
References: <5773AC2F.6050306@mlbassoc.com>
	<CAMKF1spxmk5G1v60bQU5QiNphd8PVVWEzTkcFeDECfNEPSsdgQ@mail.gmail.com>
	<5774D301.3050801@mlbassoc.com>
Date: Thu, 30 Jun 2016 08:05:17 -0700
Message-ID: <CAMKF1sp3=sahXPx1LsxbkFt+eyW-SQuYOYLS80VKcj0WX41oRA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 30 Jun 2016 15:05:21 -0000
Content-Type: multipart/alternative; boundary=001a113f495eaa31e60536803223

--001a113f495eaa31e60536803223
Content-Type: text/plain; charset=UTF-8

On Thursday, June 30, 2016, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2016-06-29 17:27, Khem Raj wrote:
>
>> On Jun 29, 2016 4:10 AM, "Gary Thomas" <gary@mlbassoc.com <mailto:
>> gary@mlbassoc.com>> wrote:
>>  >
>>  > I just [successfully] built a large image for my target (details):
>>  > BB_VERSION        = "1.31.0"
>>  > BUILD_SYS         = "x86_64-linux"
>>  > NATIVELSBSTRING   = "Ubuntu-15.10"
>>  > TARGET_SYS        = "arm-amltd-linux-gnueabi"
>>  > MACHINE           = "teton-p0382"
>>  > DISTRO            = "amltd"
>>  > DISTRO_VERSION    = "2.1+snapshot-20160629"
>>  > TUNE_FEATURES     = "arm armv7a vfp thumb neon
>>  callconvention-hard       cortexa9"
>>  > TARGET_FPU        = "hard"
>>  > meta              = "master:c6d50b272936b61b98a056ea2e1de5d0f4ef53ce"
>>  >   ... platform specifics removed ...
>>  >
>>  > Then I tried 'bitbake meta-toolchain' immediately afterwards, only
>>  > to be assaulted by a barrage of messages like this:
>>  >
>>  > ERROR: nativesdk-libsdl-1.2.15-r3 do_populate_sysroot: Taskhash
>> mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses
>> b05a369a00869fc70fe9ba2cc28e7259 for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
>>  > ERROR: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses
>> b05a369a00869fc70fe9ba2cc28e7259 for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
>>  > ERROR: nativesdk-bash-completion-2.1-r0 do_compile: Taskhash mismatch
>> 2e063c5bac7bf922fbff59be5120a62e verses
>> 0223876e7a4bc1e57f93a44631b4e4aa for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
>>  > ERROR: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses
>> 0223876e7a4bc1e57f93a44631b4e4aa for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
>>  > ERROR: nativesdk-bash-completion-2.1-r0 do_install: Taskhash mismatch
>> a9932697b29f5fbd06feafedea44d7d4 verses
>> 0b4e83ecda4ce5560e50891715d6a5d1 for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
>>  > ERROR: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses
>> 0b4e83ecda4ce5560e50891715d6a5d1 for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
>>  > ERROR: nativesdk-bash-completion-2.1-r0 do_package: Taskhash mismatch
>> 3cdba66cd643484bed95676b5a4cdc21 verses
>> fe3108a63774b61b3910e75495fb4d5d for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
>>  > ERROR: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses
>> fe3108a63774b61b3910e75495fb4d5d for
>>
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
>>  > ERROR: nativesdk-qemu-2.6.0-r1 do_configure: Taskhash mismatch
>> c8c576da0ae11886e518efa4bc406f18 verses
>> ad6e2e5d7704e6002f3b4ec56bc2d92b for
>> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/qemu/
>> qemu_2.6.0.bb.do_configure
>>  >    ...
>>  > NOTE: Tasks Summary: Attempted 2047 tasks of which 865 didn't need to
>> be rerun and all succeeded.
>>  > Summary: There were 1212 ERROR messages shown, returning a non-zero
>> exit code.
>>  >
>>  > There were too many error lines to copy :-(
>>  >
>>  > What does this mean and how do I get my toolchain?
>>
>> Bitbake -cpopulate_sdk your-image
>>
>
> I tried that and it seems to have worked, but I still got similar error
> messages:
> ERROR: imx6-demo-image-1.0-r0 do_populate_sdk: Taskhash mismatch
> 5313c03c1d0cdd396e6128d6400e41e7 verses 96756bc7f74f66f35df9cb2fe9a596d0
> for
> /local/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.do_populate_sdk
> ERROR: Taskhash mismatch 5313c03c1d0cdd396e6128d6400e41e7 verses
> 96756bc7f74f66f35df9cb2fe9a596d0 for
> /local/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.do_populate_sdk
>
> What file(s) can I look at to see why the mismatch happened?
>
>
There could be some time related variable coming into checksum. I have seen
such errors in other cases. You need to see why signature data contains
these variables. One way is delete your tmp and rebuild

> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--001a113f495eaa31e60536803223
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, June 30, 2016, Gary Thomas &lt;<a href=3D"mailto:gary@=
mlbassoc.com">gary@mlbassoc.com</a>&gt; wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">On 2016-06-29 17:27, Khem Raj wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Jun 29, 2016 4:10 AM, &quot;Gary Thomas&quot; &lt;<a>gary@mlbassoc.com</=
a> &lt;mailto:<a>gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
=C2=A0&gt;<br>
=C2=A0&gt; I just [successfully] built a large image for my target (details=
):<br>
=C2=A0&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.31.0&quot;<br>
=C2=A0&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x86_64-linu=
x&quot;<br>
=C2=A0&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-15.10&quot;<br>
=C2=A0&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;arm-amltd-linux-=
gnueabi&quot;<br>
=C2=A0&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;teton-=
p0382&quot;<br>
=C2=A0&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;amltd&=
quot;<br>
=C2=A0&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;2.1+snapshot-20160629&quot=
;<br>
=C2=A0&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;arm armv7a vfp thumb =
neon=C2=A0 =C2=A0 =C2=A0 =C2=A0callconvention-hard=C2=A0 =C2=A0 =C2=A0 =C2=
=A0cortexa9&quot;<br>
=C2=A0&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;hard&quot;<br>
=C2=A0&gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;m=
aster:c6d50b272936b61b98a056ea2e1de5d0f4ef53ce&quot;<br>
=C2=A0&gt;=C2=A0 =C2=A0... platform specifics removed ...<br>
=C2=A0&gt;<br>
=C2=A0&gt; Then I tried &#39;bitbake meta-toolchain&#39; immediately afterw=
ards, only<br>
=C2=A0&gt; to be assaulted by a barrage of messages like this:<br>
=C2=A0&gt;<br>
=C2=A0&gt; ERROR: nativesdk-libsdl-1.2.15-r3 do_populate_sysroot: Taskhash =
mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses<br>
b05a369a00869fc70fe9ba2cc28e7259 for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/lib=
sdl_1.2.15.bb.do_populate_sysroot<br>
=C2=A0&gt; ERROR: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses=
 b05a369a00869fc70fe9ba2cc28e7259 for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/lib=
sdl_1.2.15.bb.do_populate_sysroot<br>
=C2=A0&gt; ERROR: nativesdk-bash-completion-2.1-r0 do_compile: Taskhash mis=
match 2e063c5bac7bf922fbff59be5120a62e verses<br>
0223876e7a4bc1e57f93a44631b4e4aa for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comple=
tion/bash-completion_2.1.bb.do_compile<br>
=C2=A0&gt; ERROR: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses=
 0223876e7a4bc1e57f93a44631b4e4aa for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comple=
tion/bash-completion_2.1.bb.do_compile<br>
=C2=A0&gt; ERROR: nativesdk-bash-completion-2.1-r0 do_install: Taskhash mis=
match a9932697b29f5fbd06feafedea44d7d4 verses<br>
0b4e83ecda4ce5560e50891715d6a5d1 for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comple=
tion/bash-completion_2.1.bb.do_install<br>
=C2=A0&gt; ERROR: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses=
 0b4e83ecda4ce5560e50891715d6a5d1 for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comple=
tion/bash-completion_2.1.bb.do_install<br>
=C2=A0&gt; ERROR: nativesdk-bash-completion-2.1-r0 do_package: Taskhash mis=
match 3cdba66cd643484bed95676b5a4cdc21 verses<br>
fe3108a63774b61b3910e75495fb4d5d for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comple=
tion/bash-completion_2.1.bb.do_package<br>
=C2=A0&gt; ERROR: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses=
 fe3108a63774b61b3910e75495fb4d5d for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-comple=
tion/bash-completion_2.1.bb.do_package<br>
=C2=A0&gt; ERROR: nativesdk-qemu-2.6.0-r1 do_configure: Taskhash mismatch c=
8c576da0ae11886e518efa4bc406f18 verses<br>
ad6e2e5d7704e6002f3b4ec56bc2d92b for<br>
virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/qemu/<a hr=
ef=3D"http://qemu_2.6.0.bb" target=3D"_blank">qemu_2.6.0.bb</a>.do_configur=
e<br>
=C2=A0&gt;=C2=A0 =C2=A0 ...<br>
=C2=A0&gt; NOTE: Tasks Summary: Attempted 2047 tasks of which 865 didn&#39;=
t need to be rerun and all succeeded.<br>
=C2=A0&gt; Summary: There were 1212 ERROR messages shown, returning a non-z=
ero exit code.<br>
=C2=A0&gt;<br>
=C2=A0&gt; There were too many error lines to copy :-(<br>
=C2=A0&gt;<br>
=C2=A0&gt; What does this mean and how do I get my toolchain?<br>
<br>
Bitbake -cpopulate_sdk your-image<br>
</blockquote>
<br>
I tried that and it seems to have worked, but I still got similar error mes=
sages:<br>
ERROR: imx6-demo-image-1.0-r0 do_populate_sdk: Taskhash mismatch 5313c03c1d=
0cdd396e6128d6400e41e7 verses 96756bc7f74f66f35df9cb2fe9a596d0 for /local/p=
oky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.d=
o_populate_sdk<br>
ERROR: Taskhash mismatch 5313c03c1d0cdd396e6128d6400e41e7 verses 96756bc7f7=
4f66f35df9cb2fe9a596d0 for /local/poky-cutting-edge/meta-teton-imx6-p0382/p=
ackages/images/imx6-demo-image.bb.do_populate_sdk<br>
<br>
What file(s) can I look at to see why the mismatch happened?<br>
<br></blockquote><div><br></div><div>There could be some time related varia=
ble coming into checksum. I have seen such errors in other cases. You need =
to see why signature data contains these variables. One way is delete your =
tmp and rebuild=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
</blockquote>

--001a113f495eaa31e60536803223--
