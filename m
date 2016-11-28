Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42F0AE00C25; Mon, 28 Nov 2016 08:00:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25BADE00C2A
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 08:00:16 -0800 (PST)
Received: by mail-qt0-f180.google.com with SMTP id w33so126134305qtc.3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 08:00:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3DNgcJqqv5ProOuV3sYdQql8soXQVwLGzO/DEjRUmFY=;
	b=m3piX8IU7z0n2amqzw4ZkW9KkOdVB2yEjlo56hOT5Mz3yjSlw6D5PGDZf/Ayiox1nX
	aIJmxKTOUEIO7n+hrprVTLM+3z6e/FxueGQUOb8aNgZIAhcm1ZlWpRYz6ZwvD1uMVsTi
	Uw8+BqYMj23HqK1ON6ZdG5bHzkfrgaOVQdfbGLu1VbZxqG5DUsY1dHScNv/djNrQi/4d
	FpbA/ae4iSLg6KV+6n4pOpUnv33sJzWUtWVLz12eanJqUIOS6Ot5Fp5s2kHU2rFHvPFi
	lltPW8Is3XxONFQSS1h3le+egHeYNhULxwjkeOAWFYqDaoCCrK4ZAlIaknFVg2VGeTdR
	wrBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3DNgcJqqv5ProOuV3sYdQql8soXQVwLGzO/DEjRUmFY=;
	b=EMvQ6rao8TIULze2PaLxNQT+bJrfsDt2c2amydt5jwhr+hhwzLGIoE8bXrtBNhRr3y
	OEL0uiL44PXdQKlAAUCn8jg/iUCxHfFWgbW16uGDxPclazyvslmR1T4Ycyx66fiFVU86
	25RImOlcZM3ChQcJF5mC+Z5uuMkK8ggUp3NyQbyNydVECZQ8Y7XtQI74A14oubKDRkEi
	fsnMPC3PhDrtiTY6ViKY2KQDXczhDfCydY9mt9dukPfm3Ks7ZFNnZ9OcA2ZaOunxGPnW
	8GuS8+rmwkJUiEtYPzwUvMM2mQpuYHO2HZrQg5H+49gJgW8gZRSoLp47xLI/NmZn3J6X
	86hA==
X-Gm-Message-State: AKaTC004cBs5sTKR9htThm6xG+PPaLx/EcURUpkvcElcgLPUrFr6eG3JSUA2Ha4dN7yoVouGDCewPkK0k5S1H/NS
X-Received: by 10.237.34.46 with SMTP id n43mr21083014qtc.105.1480348816059;
	Mon, 28 Nov 2016 08:00:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Mon, 28 Nov 2016 07:59:55 -0800 (PST)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377987FF86286@AZ-US1EXMB02.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377987FF86286@AZ-US1EXMB02.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 28 Nov 2016 15:59:55 +0000
Message-ID: <CAJTo0LaSCbZH75s_n=wURx1aNe1HKRN=EajOvw13hu_h=GpSAA@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What source is included in sstate hash, how to change?
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
X-List-Received-Date: Mon, 28 Nov 2016 16:00:25 -0000
Content-Type: multipart/alternative; boundary=001a11377e1853405605425e91d1

--001a11377e1853405605425e91d1
Content-Type: text/plain; charset=UTF-8

On 28 November 2016 at 15:02, Vuille, Martin (Martin) <vmartin@avaya.com>
wrote:

> Or am I completely off-track?
>
>
It will track the md5 of files mentioned in SRC_URI, but if a file is
generated dynamically then bitbake may not be aware of it.

Can you share a minimal example?

Ross

--001a11377e1853405605425e91d1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 November 2016 at 15:02, Vuille, Martin (Martin) <span dir=3D"ltr">&lt=
;<a href=3D"mailto:vmartin@avaya.com" target=3D"_blank">vmartin@avaya.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">Or am I completely off-track?<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"></p></blockquote></div><br></div><div class=3D"gmail=
_extra">It will track the md5 of files mentioned in SRC_URI, but if a file =
is generated dynamically then bitbake may not be aware of it.</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Can you share a min=
imal example?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--001a11377e1853405605425e91d1--
