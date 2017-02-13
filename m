Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5106BE0082E; Mon, 13 Feb 2017 02:09:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_10_20,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32F81E00726
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 02:09:55 -0800 (PST)
Received: by mail-yw0-f181.google.com with SMTP id w75so47641390ywg.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 02:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=BhX4tUYVtrL1D0G20can7zO3I1bEGBXlmNdXkobLxV0=;
	b=g9Mh67GbEtCGew6yWeT5NOw0WB+NhzfMO2yG9Ufg2rWCfo9JyZZFLCFI1VIqJ6iOtZ
	TerVIEcxONJLxxM+2eo/pPu0BMJOizPEWcEUeMA3+8EIKXAmqFFCTI056o7OSBB+wY7X
	aGr/kZhX8AEQ4fUrJjpgDkDSD+7XESc6Q30KeZdRT8xKKQUKWrZPUveEhjgPqfUMI6+Q
	asNJ1r3zNVpnkuxc3JdCUfw8Ec3FsnC6jhDHRV86EzJonIeumdKPEm8iIYLIYDFY883H
	N0/nhgsbOPPN237IvcE0YOLwVuAgLDI99/iwz02N9RsnYfOYLNX3d0jRQQSMMjJflDpa
	Ckew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=BhX4tUYVtrL1D0G20can7zO3I1bEGBXlmNdXkobLxV0=;
	b=bDF0nYVLOD0k0fRqBpYqLaomIkKPnDm+MOLTr6aAGcybRqCI3Gf/VOhAGvvUopovOt
	uTbaDMlycbeXw2L5qEqn1a3v9pc9amT6ouhSlNwEcswsQRnpm7Y6duQ2FIWhAgtBkkNs
	Iqv4XsAZs9dMPFdRjpr8+RCfKTfHtvgtY5kSGJlVcu2uaMkJK70GQf8hApZLFRe9bS2x
	ASD2ABvE5WnwJcH/KUxPNHKYH8k6omtRFNvWG1fKgjIXpqexSl67rz/6CFArc8wMr5KH
	dwlZQn88KZsWGIl023Y5XMJ01dyaWlYyQgswuyZQkAtZq7YJ9NHj2RfOODeYl4u7nndD
	46kg==
X-Gm-Message-State: AMke39kkrQ2Znr6pqy1JF6229rmASYqwDaoZgYs5oHgIHLnBJnAu8l6A5fT2VY0mftDrDBKNmbXetyCJdjFdeiQu
X-Received: by 10.13.211.70 with SMTP id v67mr15799961ywd.260.1486980594852;
	Mon, 13 Feb 2017 02:09:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.13.234.11 with HTTP; Mon, 13 Feb 2017 02:09:24 -0800 (PST)
In-Reply-To: <9c692488-5c82-bd81-734d-74266648aef8@mlbassoc.com>
References: <9c692488-5c82-bd81-734d-74266648aef8@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 13 Feb 2017 12:09:24 +0200
Message-ID: <CAHiDW_FO2Z=bM11T2i3kG_fESxrQg3nCRKCZHmsLZZvVb1VpDw@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Getting build dependencies correct
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
X-List-Received-Date: Mon, 13 Feb 2017 10:09:57 -0000
Content-Type: multipart/alternative; boundary=001a114d83ea25190c054866a695

--001a114d83ea25190c054866a695
Content-Type: text/plain; charset=UTF-8

On 13 February 2017 at 08:02, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm trying to work with a new tool that creates executables
> for my target.  This tool has a shared library and some include
> files.  What I need to figure out is how to run the tool in my
> build environment such that it uses those files to create an
> executable for my target board.
>
> The tool is created by some recipe xxx.  I have enabled both
> the target version and the xxx-native version (using BBCLASSEXTEND)
> and end up with these files in the tmp/sysroots
>
> gthomas@europa:p8701_2016-10-22$ find tmp/sysroots-components/armv7a
> hf-neon/am335x-pru-support
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/sysroot-providers
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/
> sysroot-providers/am335x-pru-support
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/lib
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/
> usr/lib/libprussdrv.so.0
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/
> usr/lib/libprussdrv.so.0.0
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/include
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/usr/include/pruss
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/
> usr/include/pruss/pruss_intc_mapping.h
> tmp/sysroots-components/armv7ahf-neon/am335x-pru-support/
> usr/include/pruss/prussdrv.h
> gthomas@europa:p8701_2016-10-22$ find tmp/sysroots-components/x86_64
> /am335x-pru-support-native/
> tmp/sysroots-components/x86_64/am335x-pru-support-native/
> tmp/sysroots-components/x86_64/am335x-pru-support-native/sysroot-providers
> tmp/sysroots-components/x86_64/am335x-pru-support-native/sys
> root-providers/am335x-pru-support-native
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/lib
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr
> /lib/libprussdrv.so.0
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr
> /lib/libprussdrv.so.0.0
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/include
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/include/pruss
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr
> /include/pruss/pruss_intc_mapping.h
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr
> /include/pruss/prussdrv.h
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/bin
> tmp/sysroots-components/x86_64/am335x-pru-support-native/usr/bin/pasm
>
> The question becomes how to make use of this in a separate recipe
> that wants to use both the 'pasm' tool, as well as the include files
> and library from the 'pruss' support.
>
> I tried to use
>   DEPENDS="am335x-pru-support"
> as well as
>   DEPENDS="am335x-pru-support-native"
> in my recipe, but the correct sysroot is never found (e.g.
> <pruss/prussdrv.h>
> is not in my search path).
>

You should probably depend on both: am335x-pru-support-native because you
want to run the binary, am335x-pru-support because if want to get the
target library to link with.

You should check the actual  recipe sysroots in WORKDIR/recipe-sysroot* to
see what is available during the build.

- Jussi

--001a114d83ea25190c054866a695
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
3 February 2017 at 08:02, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">I&#39;m trying to=
 work with a new tool that creates executables<br>
for my target.=C2=A0 This tool has a shared library and some include<br>
files.=C2=A0 What I need to figure out is how to run the tool in my<br>
build environment such that it uses those files to create an<br>
executable for my target board.<br>
<br>
The tool is created by some recipe xxx.=C2=A0 I have enabled both<br>
the target version and the xxx-native version (using BBCLASSEXTEND)<br>
and end up with these files in the tmp/sysroots<br>
<br>
gthomas@europa:p8701_2016-10-2<wbr>2$ find tmp/sysroots-components/armv7a<w=
br>hf-neon/am335x-pru-support<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>sysroot-=
providers<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>sysroot-=
providers/am335x-pru-<wbr>support<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/usr<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/lib<=
br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/lib/=
libprussdrv.so.0<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/lib/=
libprussdrv.so.0.0<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/incl=
ude<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/incl=
ude/pruss<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/incl=
ude/pruss/pruss_intc_<wbr>mapping.h<br>
tmp/sysroots-components/armv7a<wbr>hf-neon/am335x-pru-support/<wbr>usr/incl=
ude/pruss/prussdrv.h<br>
gthomas@europa:p8701_2016-10-2<wbr>2$ find tmp/sysroots-components/x86_64<w=
br>/am335x-pru-support-native/<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/sys<wbr>root-=
providers<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/sys<wbr>root-=
providers/am335x-pru-supp<wbr>ort-native<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/lib<=
br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/lib/=
libprussdrv.so.0<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/lib/=
libprussdrv.so.0.0<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/incl=
ude<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/incl=
ude/pruss<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/incl=
ude/pruss/pruss_intc_mapp<wbr>ing.h<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/incl=
ude/pruss/prussdrv.h<br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/bin<=
br>
tmp/sysroots-components/x86_64<wbr>/am335x-pru-support-native/usr<wbr>/bin/=
pasm<br>
<br>
The question becomes how to make use of this in a separate recipe<br>
that wants to use both the &#39;pasm&#39; tool, as well as the include file=
s<br>
and library from the &#39;pruss&#39; support.<br>
<br>
I tried to use<br>
=C2=A0 DEPENDS=3D&quot;am335x-pru-support&quot;<br>
as well as<br>
=C2=A0 DEPENDS=3D&quot;am335x-pru-support-na<wbr>tive&quot;<br>
in my recipe, but the correct sysroot is never found (e.g. &lt;pruss/prussd=
rv.h&gt;<br>
is not in my search path).<br></blockquote><div><br></div><div>You should p=
robably depend on both: am335x-pru-support-native because you want to run t=
he binary, am335x-pru-support because if want to get the target library to =
link with.</div><div><br></div><div>You should check the actual =C2=A0recip=
e sysroots in WORKDIR/recipe-sysroot* to see what is available during the b=
uild.</div><div><br></div><div>- Jussi</div><div><br></div><div><br></div><=
/div></div></div>

--001a114d83ea25190c054866a695--
