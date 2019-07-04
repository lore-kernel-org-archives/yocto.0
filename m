Return-Path: <devendradevadiga01@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4199EE00BE9; Thu,  4 Jul 2019 10:03:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (devendradevadiga01[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2909E008CA
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 10:03:00 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id i10so13949867iol.13
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 10:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ubp5ApPaLlwoJnjIrqnFZYsrJ43jUey/VZzLtBeK67M=;
	b=qbEDgzZytj5iOMoBigh4fneOCNetIht24ggK0XrhWKqn5Ck/+okb5hZCtW4Owl7z2Z
	Wq7anbRPAS5IiX9fx+oWj3c3J4Pl1pLotJSK2y1JFvSRAuG/SkRRkefFb9zkikQKjzbM
	aXxcNHUygm1Jyy1yr1T6HsYaQI/9WkXyXyeBPTs439OhajwlkA+dnUp0VrybZ58y7mN7
	SFIFXAmusWBh2jF18xU45hP0Tph5HPGT3RGyqDtmC+SSKeELyZOAjgq5g/qYfkvXktVA
	SDo/qNYUZf0C6AeYcj+Mj/aa6X3AtwNtdz+k0Y6EYUYCbxW5fQMXm6S4v0rk3O5iXkBY
	g/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ubp5ApPaLlwoJnjIrqnFZYsrJ43jUey/VZzLtBeK67M=;
	b=fEY/McxX43zLBcji0xefB3cm29LAOFS1avd7Fp5PExb2X9TmV3gxb93vNSvIzVEIja
	cv+rcamOQzs5ybJzy+Q9sC6f/Pz/XgndBiD3yIcdYyj5QADYYaEzmKp6lEaOwCJMe8w8
	TKPf4kKgjvgA5Po1FPSKLWzXA1vjTwSkU7dddmG4RN9uzgiWgZqCXOrhrIjsqBzEMljB
	DypOh7cUAfiAVLlRcv42yZ15frwD2euOV/rloURJiMhQbZlgVZRxV601yU6pbJUOu0bA
	O23wCIYOb/dIvOsDfYoTlmf89IqdNGxochEPG8PY8ez0ErsM5kkKcEart2hilLz22gXt
	yelw==
X-Gm-Message-State: APjAAAUWCDE3I1h9umiXewNNHORWs4eQv5+qK3YdwLAExQ1QXVTsaI/v
	PKi1J2F/JDYgnMewXjf8yLB0/t1vj/oy7OWnlwZ8
X-Google-Smtp-Source: APXvYqzbXzhVI79F/TX13+RnzkUvdQzvyrQi9kjTk/hcNSEd6K3BUPMOR/fqfDt7MHw50QZK8KtIUhrYxNXy4JNCXxo=
X-Received: by 2002:a02:394c:: with SMTP id w12mr51017136jae.126.1562259779995;
	Thu, 04 Jul 2019 10:02:59 -0700 (PDT)
MIME-Version: 1.0
From: Devendra Devadiga <devendradevadiga01@gmail.com>
Date: Thu, 4 Jul 2019 22:32:48 +0530
Message-ID: <CAPS7gLxyG+AXjcDOe9m4j-fqPBRXN2CfVgCmmB3jhntLwYhNAA@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 08 Jul 2019 02:27:29 -0700
Subject: Ddcutil
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
X-List-Received-Date: Thu, 04 Jul 2019 17:03:01 -0000
Content-Type: multipart/alternative; boundary="0000000000003bcd6f058cddf32c"

--0000000000003bcd6f058cddf32c
Content-Type: text/plain; charset="UTF-8"

Hi,

I am working on i.MX6 platform.
I got the BSP by yocto build.
I need the "ddcutil" package.
By yocto how I can get this package?
In openembedded, layers list I checked for ddcutil, but I didn't get that.
If source code for "ddcutil" is available can you share it with me?
If you share the source then it will be more helpful for me.

In the below mailing list, I came to know that someone built the recipes
for "ddcutil".
https://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.html

But I can't able to get that.
Please can you share the source code of "ddcutil"?

Thanks and regards,
Devendra

--0000000000003bcd6f058cddf32c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br><div dir=3D"auto">I am working o=
n i.MX6 platform.</div><div dir=3D"auto">I got the BSP by yocto build.</div=
><div dir=3D"auto">I need the &quot;ddcutil&quot; package.</div><div dir=3D=
"auto">By yocto how I can get this package?</div><div dir=3D"auto">In opene=
mbedded, layers list I checked for ddcutil, but I didn&#39;t get that.</div=
><div dir=3D"auto">If source code for &quot;ddcutil&quot; is available can =
you share it with me?</div><div dir=3D"auto">If you share the source then i=
t will be more helpful for me.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">In the below mailing list, I came to know that someone built the rec=
ipes for &quot;ddcutil&quot;.=C2=A0</div><div dir=3D"auto"><a href=3D"https=
://lists.yoctoproject.org/pipermail/yocto/2017-April/035740.html">https://l=
ists.yoctoproject.org/pipermail/yocto/2017-April/035740.html</a><br></div><=
div dir=3D"auto"><br></div><div dir=3D"auto">But I can&#39;t able to get th=
at.</div><div dir=3D"auto">Please can you share the source code of &quot;dd=
cutil&quot;?</div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks and =
regards,</div><div dir=3D"auto">Devendra</div></div></div>

--0000000000003bcd6f058cddf32c--
