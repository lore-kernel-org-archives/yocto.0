Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45208E00D2A; Mon,  9 Oct 2017 03:30:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 946DBE00CD3
	for <yocto@yoctoproject.org>; Mon,  9 Oct 2017 03:30:30 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id f20so2055247ioj.9
	for <yocto@yoctoproject.org>; Mon, 09 Oct 2017 03:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9wggYac6dw5svXNNoE/lWOoZC1t/MrzXfV5Vl+uOGf4=;
	b=z5ltSfONqNueDLoORWO5SWO98zD26OFu1tw6V1FHJtqrIY00dUDnnDbO5UNQepseDn
	NFkWzC03194OJVmQyVrV+86yMY4btkDGoffob+QF5U5YDOGRlN7wpshEISrr6cJo5PT6
	KC8jpZpqWcafwnOAYTIB2CQWnigMzoH4c3ehf0HyEhJcO0ik899MYg8TOXUI7/WWFLpU
	WDnzNcZPb11A+hVh/hRJiRWf99V52Kt29xgK+AhQk2xoCf7FRtQGQDgVNvKUqd6jZfBE
	Ip23yp5NsmnGJcwVSupkGhUIr8etWCY85+0Z8vEBFkp0gb3CGMY0PA2TM0BMagAtfqIr
	+d9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9wggYac6dw5svXNNoE/lWOoZC1t/MrzXfV5Vl+uOGf4=;
	b=ju6JAMNcHineFfVIQhkRYRfmtUVbAxMhd4lA1VHnklt9vQQjGc7JIpkR5HRVsUglX2
	1TDSqblqt7j2H1PE48wfcp8KrCsSNLMvOZkqar3jwmzFdei3s1dnDwNKfV9G7cFf87YR
	U5L6+MP6fM2NIcfwi/Mfr+8Vo8XACTJNj2t1v1YqSqOK88SbkA40CKyIdJzKW7SuZc6e
	CSHl6e4mLAEX7KJo2ijpc89tj0nmgfnXFXHfoFOWxdx7I2OQTDq2r3XSArzwdXeokHcc
	2YEBtKkBPMIydBlPCIIqgdvSDUxKvU2A09LA0akkPZEJqG7kdxd42TwCN7riOD7airvg
	8/HA==
X-Gm-Message-State: AMCzsaVE00DtP0+arkZl3rGpDFvobXKt0uLcTgVtRMOuwYKyI/5TFvkK
	WSjAJmpXG0VmivxEMLQ/xhK4EjSLcjSkY3s1wcR2iA==
X-Google-Smtp-Source: AOwi7QDTs2nBsLVtAIgRPCLJwVITTcXR4CZqBJ3b3cLDbv0gNOgZYneS/03Nd79lSicgRdsAQAUip6vlMz6YDYenjq0=
X-Received: by 10.107.164.76 with SMTP id n73mr4355111ioe.175.1507545029918;
	Mon, 09 Oct 2017 03:30:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Mon, 9 Oct 2017 03:30:09 -0700 (PDT)
In-Reply-To: <68a10b257f64bd9c808c96de999e19f0@sw-optimization.com>
References: <1e416606941630df1aab3c738aab7c66@sw-optimization.com>
	<CAJTo0LY6iJ=OYvxbMb-Bt_z3ahfsy0eGiCpvxvjSnEGNGiKGrw@mail.gmail.com>
	<68a10b257f64bd9c808c96de999e19f0@sw-optimization.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Oct 2017 11:30:09 +0100
Message-ID: <CAJTo0LZT_hfFH4e+9gQi6e4+FLPQh2Q-U8jdx=8aKHj-k4WK2g@mail.gmail.com>
To: Eric Schwarz <eas@sw-optimization.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: u-boot recipe: Missing dependencies
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
X-List-Received-Date: Mon, 09 Oct 2017 10:30:32 -0000
Content-Type: multipart/alternative; boundary="001a1142249cfdd4af055b1aadb2"

--001a1142249cfdd4af055b1aadb2
Content-Type: text/plain; charset="UTF-8"

On 8 October 2017 at 18:04, Eric Schwarz <eas@sw-optimization.com> wrote:

> Don't _append when you can just extend the assignment above.
>>
>
> I just did it that way for the moment since I wanted to circumvent merge
> conflicts when I upgrade the underlying recipes from openembedded.


Well it's ugly, so if you want a patch in oe-core then don't introduce ugly
for your convenience.


> Depending on python-native does nothing as the binary isn't in $PATH still.
>>
>
> I thought any Yocto native binaries built are in the PATH automatically. -
> How
> to fix this/do it correctly?
>

You need to inherit python3native, as python (and some others) are opt-in.


> Can you provide a configuration to make U-Boot build on x86 for testing?
>>
>
> I put now some patches in ordered manner on top of the original recipes
> from
> openembedded.
> However, before sending I would like to fix two issues so the recipes can
> go
> into mainline immediately.
>
> 1.) I am working w/ -morty Yocto branch at the moment. The 'u-boot.inc'
> from
>     openembedded does not work w/ -morty.
>     I get the following error "AttributeError: module 'bb.utils' has no
>     attribute 'filter'". Building w/ the original -morty 'u-boot.inc'
> works.
>

Yes, bb.utils.filter() is a new function that isn't in morty.

Ross

--001a1142249cfdd4af055b1aadb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 8 October 2017 at 18:04, Eric Schwarz <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:eas@sw-optimization.com" target=3D"_blank">eas@sw-op=
timization.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cla=
ss=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">Don&#39;t _append when you can just extend the assig=
nment above.<br>
</blockquote>
<br></span>
I just did it that way for the moment since I wanted to circumvent merge<br=
>
conflicts when I upgrade the underlying recipes from openembedded.</blockqu=
ote><div><br></div><div>Well it&#39;s ugly, so if you want a patch in oe-co=
re then don&#39;t introduce ugly for your convenience.</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><span class=3D"">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Depending on python-native does nothing as the binary isn&#39;t in $PATH st=
ill.<br>
</blockquote>
<br></span>
I thought any Yocto native binaries built are in the PATH automatically. - =
How<br>
to fix this/do it correctly?<br></blockquote><div><br></div><div>You need t=
o inherit python3native, as python (and some others) are opt-in.</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Can you provide a configuration to make U-Boot build on x86 for testing?<br=
>
</blockquote>
<br>
I put now some patches in ordered manner on top of the original recipes fro=
m<br>
openembedded.<br>
However, before sending I would like to fix two issues so the recipes can g=
o<br>
into mainline immediately.<br>
<br>
1.) I am working w/ -morty Yocto branch at the moment. The &#39;u-boot.inc&=
#39; from<br>
=C2=A0 =C2=A0 openembedded does not work w/ -morty.<br>
=C2=A0 =C2=A0 I get the following error &quot;AttributeError: module &#39;b=
b.utils&#39; has no<br>
=C2=A0 =C2=A0 attribute &#39;filter&#39;&quot;. Building w/ the original -m=
orty &#39;u-boot.inc&#39; works.<br></blockquote><div><br></div><div>Yes, b=
b.utils.filter() is a new function that isn&#39;t in morty.</div><div><br><=
/div><div>Ross</div></div></div></div>

--001a1142249cfdd4af055b1aadb2--
