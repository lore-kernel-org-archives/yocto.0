Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 606E6E00D6A; Wed,  6 Dec 2017 23:36:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0A35E00D61
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:36:54 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id n138so11296949wmg.2
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 23:36:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ClNOaC0JmXSuGZK88trRl9n4XTsWYFpTs2K1gv1amJY=;
	b=ZEPSQ0JgVrpWQodfyHFzrw3vbsqfz5XrrqguRHSRF7c0lqigValpL4yRERc38pBwE8
	IeE/bSPE+0t8vjNqfdBsoWrynYEvc6y5tA2g9jxkurQL+Tme4Iw4eSQXMfSdOsRRnQYv
	8JEEtj3jVXnulJS2KcRLYrwTLxJBV7/Hj9hPAd9BKobdR70GTNUzw+hAjYRqW0tMCckk
	mM9Un6jKlp67BcqG1H8zK90gE2dj1a6aUmfJ5sAmzG3L0KNXppHzvNDQnqZSbvzjDMcw
	SFpJa7yU2mTYvymu7rSMkTMUpGhLOMwXbNIWtepso5NayieFr0RupwWkD9GOFsX5j0VX
	3qkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ClNOaC0JmXSuGZK88trRl9n4XTsWYFpTs2K1gv1amJY=;
	b=IZP/wUMxzkGmGjQrhCSksBxLdh9mn8IL7vWkS9ZLlxCcdXbQYdR44PdWeRvzRGHOSN
	wWLil13/DUOVbi11zcx3PKfJ9PPBQEXtgZIjYNDehkDIt0dG8mKLz+tln/cooHSJm3pj
	h2Tgktdp9SfkieSSp6wir8P1iRFbonhISI2USn2L+rI7Me4cVR3V06M96kvrBqiVXicd
	OP9hkdZpsaZlCfHmB1lWFMAU2iIIoHy/KOLnmfwRS0CVTe+dPBtO7KCCkV3+FfW2uBdF
	GLAdDsfRVtIajLFWWManD+zh/I+CGBwkhoIoXPcj9rhm1R4Y7mHKe0/pqNdvm4YW8Y9d
	MRQg==
X-Gm-Message-State: AKGB3mJr36/gI5t5qqyag1fZsUO66dlSuJMkUTau9eUWFRnTDuPXBwK7
	Qdl9V+8ZN4B9F7on/o4FS/+84bwSphNxcoaH3mk=
X-Google-Smtp-Source: AGs4zMbBkaFgi2vjzJMlHJpSnMxLx/zT4Y9I0kJ62UhNTxw7i495cXeSFDWf3/j0fAfTGN2rK4QBZDgMcY/Kfp6WwMw=
X-Received: by 10.28.103.68 with SMTP id b65mr255158wmc.117.1512632213305;
	Wed, 06 Dec 2017 23:36:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.122.19 with HTTP; Wed, 6 Dec 2017 23:36:52 -0800 (PST)
In-Reply-To: <f6cc998fff629c30ebcbe2791a66e6d1@sw-optimization.com>
References: <CAE0QtjMkS-hWknAiO1s0n8H=_6iA8YAJQqRCj7mDj4kGFum16A@mail.gmail.com>
	<f6cc998fff629c30ebcbe2791a66e6d1@sw-optimization.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 7 Dec 2017 08:36:52 +0100
Message-ID: <CA+chaQcz-cKBOHGg5FEEAf-op+u7EJj+umwYU62GAtSAE1SXuw@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: Jerry Lian <jerry.lian@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Build error: "u-boot-imx_2017.03.bb:do_compile" failed ( freescale I.MX 6 on Ubuntu 16.04) ?
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
X-List-Received-Date: Thu, 07 Dec 2017 07:36:55 -0000
Content-Type: multipart/alternative; boundary="001a114b2faabffd6a055fbb2131"

--001a114b2faabffd6a055fbb2131
Content-Type: text/plain; charset="UTF-8"

I don't know what version of Yocto you're using, but if it's older than 2.3
(which does filter what binaries are seen from the host system with
HOSTTOOLS), then your build is probably autodetecting swig from host and
you can easily disable that with:

do_compile_prepend () {
    sed 's@\(^always += $(if $(shell which swig 2>
/dev/null),_libfdt.so)$\)@# do not autodetect swig, there is no swig-native
dependency \1@g' -i ${S}/tools/Makefile
}

Then it won't try to rebuild libfdt python library and it won't fail.

On Thu, Dec 7, 2017 at 8:21 AM, Eric Schwarz <eas@sw-optimization.com>
wrote:

> Hello Jerry,
>
> U-Boot depends on Python but the dependency is not included in the U-Boot
> recipe AFAIK.
> I have already sent a patchset which was not complete at that time to the
> yocto mailinglist. Ross meant one needs to inherit from Python U-Boot class
> in the recipe not just include a dependency o/w it will not be in path.
> The error only comes up because you do not have Python installed on your
> system I think.
>
> Cheers
> Eric
>
> Am 06.12.2017 18:13, schrieb Jerry Lian:
>
> I got an error when trying to build for freescale I.MX6 on Ubuntu
>> 16.04.(see below)
>> (I just follow the guide from http://freescale.github.io)
>>
>> Anybody got hints?
>>
>> Thanks!
>>
>> Jerry
>>
>> =======================================================================
>> ................
>> | tools/libfdt_wrap.c:147:21: fatal error: Python.h: No such file or
>> directory
>> | compilation terminated.
>> | error: command 'x86_64-linux-gnu-gcc' failed with exit status 1
>> | /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-
>> poky-linux-gnueabi/u-boot-imx/2017.03-r0/git/tools/Makefile:123: recipe
>> for target 'tools/_libfdt.so' failed
>> | make[2]: *** [tools/_libfdt.so] Error 1
>> | /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-
>> poky-linux-gnueabi/u-boot-imx/2017.03-r0/git/Makefile:1229: recipe for
>> target 'tools' failed
>> | make[1]: *** [tools] Error 2
>> | make[1]: Leaving directory '/home/jerry/fsl-release-bsp/b
>> uild-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-
>> imx/2017.03-r0/build/mx6qsabresd_config'
>> | Makefile:150: recipe for target 'sub-make' failed
>> | make: *** [sub-make] Error 2
>> | make: Leaving directory '/home/jerry/fsl-release-bsp/b
>> uild-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-
>> imx/2017.03-r0/git'
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_compile (log file is located at
>> /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-
>> poky-linux-gnueabi/u-boot-imx/2017.03-r0/temp/log.do_compile.9339)
>> ERROR: Task (/home/jerry/fsl-release-bsp/sources/meta-fsl-bsp-release/im
>> x/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:do_compile) failed
>> with exit code '1'
>> NOTE: Tasks Summary: Attempted 4851 tasks of which 3009 didn't need to be
>> rerun and 1 failed.
>>
>> Summary: 1 task failed:
>> /home/jerry/fsl-release-bsp/sources/meta-fsl-bsp-release/imx
>> /meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:do_compile
>> ..........................
>> ========================================================================
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114b2faabffd6a055fbb2131
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I don&#39;t know what version of Yocto you&#39;r=
e using, but if it&#39;s older than 2.3 (which does filter what binaries ar=
e seen from the host system with HOSTTOOLS), then your build is probably au=
todetecting swig from host and you can easily disable that with:</div><div>=
<br></div><div>do_compile_prepend () {</div><div>=C2=A0 =C2=A0 sed &#39;s@\=
(^always +=3D $(if $(shell which swig 2&gt; /dev/null),_libfdt.so)$\)@# do =
not autodetect swig, there is no swig-native dependency \1@g&#39; -i ${S}/t=
ools/Makefile</div><div>}</div></div><div><br></div>Then it won&#39;t try t=
o rebuild libfdt python library and it won&#39;t fail.</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Thu, Dec 7, 2017 at 8:21 AM, =
Eric Schwarz <span dir=3D"ltr">&lt;<a href=3D"mailto:eas@sw-optimization.co=
m" target=3D"_blank">eas@sw-optimization.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex">Hello Jerry,<br>
<br>
U-Boot depends on Python but the dependency is not included in the U-Boot r=
ecipe AFAIK.<br>
I have already sent a patchset which was not complete at that time to the y=
octo mailinglist. Ross meant one needs to inherit from Python U-Boot class =
in the recipe not just include a dependency o/w it will not be in path.<br>
The error only comes up because you do not have Python installed on your sy=
stem I think.<br>
<br>
Cheers<br>
Eric<br>
<br>
Am 06.12.2017 18:13, schrieb Jerry Lian:<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I got an error when trying to build for freescale I.MX6 on Ubuntu 16.04.(se=
e below)<br>
(I just follow the guide from <a href=3D"http://freescale.github.io" rel=3D=
"noreferrer" target=3D"_blank">http://freescale.github.io</a>)<br>
<br>
Anybody got hints?<br>
<br>
Thanks!<br>
<br>
Jerry<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<=
br>
................<br>
| tools/libfdt_wrap.c:147:21: fatal error: Python.h: No such file or direct=
ory<br>
| compilation terminated.<br>
| error: command &#39;x86_64-linux-gnu-gcc&#39; failed with exit status 1<b=
r>
| /home/jerry/fsl-release-bsp/bu<wbr>ild-x11/tmp/work/imx6qsabresd-<wbr>pok=
y-linux-gnueabi/u-boot-imx/<wbr>2017.03-r0/git/tools/Makefile:<wbr>123: rec=
ipe for target &#39;tools/_libfdt.so&#39; failed<br>
| make[2]: *** [tools/_libfdt.so] Error 1<br>
| /home/jerry/fsl-release-bsp/bu<wbr>ild-x11/tmp/work/imx6qsabresd-<wbr>pok=
y-linux-gnueabi/u-boot-imx/<wbr>2017.03-r0/git/Makefile:1229: recipe for ta=
rget &#39;tools&#39; failed<br>
| make[1]: *** [tools] Error 2<br>
| make[1]: Leaving directory &#39;/home/jerry/fsl-release-bsp/b<wbr>uild-x1=
1/tmp/work/imx6qsabresd<wbr>-poky-linux-gnueabi/u-boot-<wbr>imx/2017.03-r0/=
build/<wbr>mx6qsabresd_config&#39;<br>
| Makefile:150: recipe for target &#39;sub-make&#39; failed<br>
| make: *** [sub-make] Error 2<br>
| make: Leaving directory &#39;/home/jerry/fsl-release-bsp/b<wbr>uild-x11/t=
mp/work/imx6qsabresd<wbr>-poky-linux-gnueabi/u-boot-<wbr>imx/2017.03-r0/git=
&#39;<br>
| WARNING: exit code 1 from a shell command.<br>
| ERROR: Function failed: do_compile (log file is located at /home/jerry/fs=
l-release-bsp/bu<wbr>ild-x11/tmp/work/imx6qsabresd-<wbr>poky-linux-gnueabi/=
u-boot-imx/<wbr>2017.03-r0/temp/log.do_<wbr>compile.9339)<br>
ERROR: Task (/home/jerry/fsl-release-bsp/s<wbr>ources/meta-fsl-bsp-release/=
im<wbr>x/meta-bsp/recipes-bsp/u-boot/<wbr>u-boot-imx_2017.03.bb:do_compi<wb=
r>le) failed with exit code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 4851 tasks of which 3009 didn&#39;t need to =
be rerun and 1 failed.<br>
<br>
Summary: 1 task failed:<br>
/home/jerry/fsl-release-bsp/so<wbr>urces/meta-fsl-bsp-release/imx<wbr>/meta=
-bsp/recipes-bsp/u-boot/<wbr>u-boot-imx_2017.03.bb:do_compi<wbr>le<br>
..........................<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<span class=3D"HOEnZb"><font color=3D"#888888"><br>
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a114b2faabffd6a055fbb2131--
