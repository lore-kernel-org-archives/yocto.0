Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1A8EE00805; Mon, 16 Jan 2017 07:05:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.51 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B7FE0078F
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:05:39 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id w204so102591364oiw.0
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 07:05:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=a7vdd59z8JQwOFiibTNo8t9c+g2X1zYJnT347nZ0F0s=;
	b=HPKV5piERqGVn4i9jTG++wTaQ4GD0XE/hRW+o8yytRqZPK1obwsKJfLQW9n4QwUaIz
	yJ3GI33s4Cbrnu+FuTNyiJdH5ell9dnFWmbA2uxo6hZSjh7oI+zkOpxR2/Alu/skuRbP
	YBzZlDT1D4gc7Es8kTeQGkhuGVGsp0igi+sxqeHBO2OhAJhrZQJ6/jDHPVUQv+S3Teez
	YGZGEqlZxE5177Y192aUOJuz1C7LUVBpjvuI8KvlBqn4ZkOtXwiJndNeAb9xxDfomQfb
	JQwNs2+cIpfK6TH0M2f3YpsCxNgi8KjluYAdO3bXJcc7iUt5Mt8bp3DEo/9xbKUh0C8j
	PLJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=a7vdd59z8JQwOFiibTNo8t9c+g2X1zYJnT347nZ0F0s=;
	b=uf9w+rmxTKPovf7yIZJlCntB37vXLTfKvkoh5O1w5xJZ7DVhRBTlFWimIZRD1GG2Zb
	zx2bYM8H0R20Xb5TTaUA6q8XNky2E9w7e51KsXPXA3Gptw2JGP3b+mbE0WwTmTzJaEhv
	JGH4ba7Sq7baaYX/5/OVXuCG7PxjzAFXm35B4wIzFm6C0eTa4tmJ71+2C2zSfgbeNpXd
	zOPdL+dTphuNt9JdNtgIp1ZgCTErbQmZpyytbLEC0mCpSuADwaz96hZ3S31aQKAjO7rR
	yHNXfHR8Ss3Bf+524iv8T2kiP4QCRr3paaWO9PquzoPxuyH5qO2IHK7dshI9rPzAr935
	emaw==
X-Gm-Message-State: AIkVDXLeD7HIMgTknOz2y9kYOPyG9WCxNDEV+59KSxUwYcDBiUf2Y0HxdKOkOsG8xp0wj3m1mt/8f1NXvnaLlg==
X-Received: by 10.157.11.14 with SMTP id a14mr18017165ota.121.1484579139390;
	Mon, 16 Jan 2017 07:05:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.48.108 with HTTP; Mon, 16 Jan 2017 07:05:39 -0800 (PST)
In-Reply-To: <MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
References: <MMXP123MB0125266F42AF93B43F4F1BD7DA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
	<CAMjhiJh+bbE1v1FRSWtaRoY+ncCxhr7Oqgb07soTfiipU6Qy8Q@mail.gmail.com>
	<MMXP123MB0125453F658E5DDFDDBD3FECDA7D0@MMXP123MB0125.GBRP123.PROD.OUTLOOK.COM>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Mon, 16 Jan 2017 16:05:39 +0100
Message-ID: <CAMjhiJipKv0_-ZMYHY6NLxsjj_pMLnck3=pWis11PXEF6x6THQ@mail.gmail.com>
To: Chris Trobridge <christrobridge@hotmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Illegal Instruction Generate for Intel Atom
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
X-List-Received-Date: Mon, 16 Jan 2017 15:05:42 -0000
Content-Type: multipart/alternative; boundary=001a113db6503ea2ec0546378462

--001a113db6503ea2ec0546378462
Content-Type: text/plain; charset=UTF-8

Hi Chris,

there is a hint here how you can find out what gcc is actually using; you
could try with and without the -march=native:

http://en.chys.info/2010/04/what-exactly-marchnative-means/

On Mon, Jan 16, 2017 at 3:47 PM, Chris Trobridge <christrobridge@hotmail.com
> wrote:

> the initial args are "-m32 -march=i586" but there is "-march=native"
> appended to the end of the line.
>

Regards,

Leon.

--001a113db6503ea2ec0546378462
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi Chris,<br><br></div><div cla=
ss=3D"gmail_extra">there is a hint here how you can find out what gcc is ac=
tually using; you could try with and without the -march=3Dnative:<br><br><a=
 href=3D"http://en.chys.info/2010/04/what-exactly-marchnative-means/">http:=
//en.chys.info/2010/04/what-exactly-marchnative-means/</a><br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jan 16, 2017 at =
3:47 PM, Chris Trobridge <span dir=3D"ltr">&lt;<a href=3D"mailto:christrobr=
idge@hotmail.com" target=3D"_blank">christrobridge@hotmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>the initi=
al args are &quot;<span>-m32 -march=3Di586&quot; but</span>=C2=A0there is &=
quot;<span>-march=3Dnative&quot; appended to the end of the line.</span></p=
></blockquote></div><br></div><div class=3D"gmail_extra">Regards,<br><br></=
div><div class=3D"gmail_extra">Leon.<br></div><div class=3D"gmail_extra"><b=
r><br></div></div>

--001a113db6503ea2ec0546378462--
