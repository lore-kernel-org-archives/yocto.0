Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B40E00A86; Mon, 20 Aug 2018 08:17:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DF09E003D7
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 08:17:02 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id k12-v6so26404303oiw.8
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 08:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S+MOIP6Z2maMt8fWl2nfzy3BuOy45MyxxKZcE20FGSU=;
	b=ELN+EfhYVA9nB+VYWzSrHK35Qax2Kc8NjY4zYo2HJSVL4m7CQLS2Myqv2Aknl5/v7v
	GFc39HoPTJbzv6MHDc/E+tWKWkLfjL0ruh+6ey6ON/KPxNkjrmoqSZHhUfY2QyPorkBO
	mCFtvIhPVZLVbMY866Ypj8ea6Db20vgj+iByJzeP1PB1UOXEg0Ls774lhYs2jn/KAItF
	nJMvXCz/AEl2XI2BoTQcwrdrpjwnus8u06v/QQ23fSsWQClwmKXypgRNnwgR6x8eYr3p
	1AmScggEpMh6WRygrpzkuxws8vz96qqanwIF+4pK8ec5PDGFOMtIHIfzN+rN5bSkanfG
	K9yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S+MOIP6Z2maMt8fWl2nfzy3BuOy45MyxxKZcE20FGSU=;
	b=qTCvFF27l2PXjOCTkklxAWNDqPyfqjtbUE5kehpULJ/8Z02B59JHa+rgf377BOc6iG
	ZNYyNpCXQQDHxuUqEYrvMX4W5qUPyZxI93HwMIoxUhaoKunCWoCgFfFz2Uy9jXUa5Px7
	k3+xZfL3WQEtIU3lGu8C1dgebgRYo2xAibXwBSlv963i2A0upd830cnOOHRnjIrY+nPw
	6POWeZxFprDHf+1QMzHANPJOUTf7yCmQOlnTBnUiYrt3p/HbvLTO2lPiqj/ClLIAHjqL
	zNC4h0/NvwEBOI/ywEnqsBiYdiNuO/KmMausSpxnHPah9heSlV1F0hL9suIMb96Z9D1V
	2pfQ==
X-Gm-Message-State: AOUpUlEtCTSJNhe0D/rKeE4chx5u0jF8nuP2l+u//2yfsLvX10y2Ob6s
	28SV+5W9AfkuSmMsIoYTpCDa/R5X7HIjL99sDJ/DDqSr
X-Google-Smtp-Source: AA+uWPzlzwuNlaWub/hVXs7XcGIlTZZ+wy5EIdHBEpeotY8wJAqCsTeyDsbl5X90Xtbz8FSEPnh1Tc4txJT/DtdDHaQ=
X-Received: by 2002:aca:a8c1:: with SMTP id
	r184-v6mr14742310oie.215.1534778222654; 
	Mon, 20 Aug 2018 08:17:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 08:17:02
	-0700 (PDT)
In-Reply-To: <0e7ab86ac1dc4ef2a81f178ff2f54d92@ifm.com>
References: <0e7ab86ac1dc4ef2a81f178ff2f54d92@ifm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Aug 2018 17:17:02 +0200
Message-ID: <CANNYZj88Oc1y-NzZ_pk+G_JomTYUpp3uK9wMRjj5XLVL=zq0DQ@mail.gmail.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake firefox using meta-browser layer
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
X-List-Received-Date: Mon, 20 Aug 2018 15:17:03 -0000
Content-Type: multipart/alternative; boundary="000000000000c5383b0573df6639"

--000000000000c5383b0573df6639
Content-Type: text/plain; charset="UTF-8"

2018-08-20 15:56 GMT+02:00 Pandey, Kamal <Kamal.Pandey@ifm.com>:

> cd
> /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/firefox-build-dir
>
>
> | /home/iepl/work/yocto_build/poky/build/tmp/work/aarch64-
> pdm3-linux/firefox/52.9.0esr-r0/firefox-52.9.0esr/configure
> --target=aarch64-pdm3-linux --host=x86_64-linux --with-toolchain-prefix=aarch64-pdm3-linux-
> --build=x86_64-linux --prefix=/usr
> | mozbuild.configure.options.InvalidOptionError: Unknown option: --build
>
> | *** Fix above errors and then restart with\
> Can anybody provide me a solution or at least a  hint, so that I can move
> forward.
>
>
>
>

The hint is in these lines. Mozilla's configure script thinks --build is
not a valid option, so you need to figure out where it's coming from, and
why it doesn't work.

Alex

--000000000000c5383b0573df6639
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">2018-08-20 15:56 GMT+02:00 Pandey, Kamal <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:Kamal.Pandey@ifm.com" target=3D"_blank">Kamal.Pandey=
@ifm.com</a>&gt;</span>:<br><div class=3D"gmail_extra"><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">





<div link=3D"#0563C1" vlink=3D"#954F72" lang=3D"EN-IN">
<div class=3D"m_-1834361897274842709WordSection1">cd /home/iepl/work/yocto_=
build/poky/build/tmp/work/aarch64-pdm3-linux/firefox/52.9.0esr-r0/firefox-5=
2.9.0esr/firefox-build-dir
<p class=3D"MsoNormal">| /home/iepl/work/yocto_build/<wbr>poky/build/tmp/wo=
rk/aarch64-<wbr>pdm3-linux/firefox/52.9.0esr-<wbr>r0/firefox-52.9.0esr/conf=
igure --target=3Daarch64-pdm3-linux --host=3Dx86_64-linux --with-toolchain-=
prefix=3D<wbr>aarch64-pdm3-linux- --build=3Dx86_64-linux --prefix=3D/usr<u>=
</u><u></u></p>| mozbuild.configure.options.InvalidOptionError: Unknown opt=
ion: --build
<p class=3D"MsoNormal">| *** Fix above errors and then restart with\<u></u>=
<u></u></p>Can anybody provide me a solution or at least a=C2=A0 hint, so t=
hat I can move forward.
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:10.0pt;font-family:&quot;Trebuchet MS&quot;,sans-serif;color:black" lang=
=3D"EN-US"><u></u>=C2=A0<u></u></span></p><br></div></div></blockquote><div=
><br></div><div><br></div><div>The hint is in these lines. Mozilla&#39;s co=
nfigure script thinks --build is not a valid option, so you need to figure =
out where it&#39;s coming from, and why it doesn&#39;t work.</div><div><br>=
</div><div>Alex<br></div></div></div></div>

--000000000000c5383b0573df6639--
