Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C994AE009B3; Thu, 23 Jul 2015 15:52:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76A7FE0087F
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:52:26 -0700 (PDT)
Received: by qkfc129 with SMTP id c129so4634677qkf.1
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 15:52:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Rv4ZePHsY9wiwZIDdXtxHutZCz+xM0HR7SxlpH0771Q=;
	b=apkaVEvAeq7qh3nkq1Nyxqp+P8o8kpYmX4h/40T2J/s1QACa1+KFTK9LoWRrLNCsh5
	KxnNVQpYk8fQgfnuSNomP+kYtm64o8K6CtpEx+2Sl19YIN6vxMQQMtRKtPAIGTJRVV4T
	lc7cp3q2WmrqOgttLvK70ADC+rv8A/Osx9xZ/STFsai3hzlXz4vRXT8vL2qghF55cN77
	lP2cSnn7HevalpcCCRkXv9PH0t3DuqUGDUjJkey3eZ3NF2rYeB/JtwV0QdozCH7tv9lD
	pKRRXcOaqtNkAerRZNKXZ+4CicqNcRfn44i0OXJUGXNCfDv06WIm3vtu4YVuAClzqd20
	RETQ==
X-Gm-Message-State: ALoCoQlPHF9QEvUROMeuzqT8iWpDUGcwOb6xXGNh4wSn1DyiHKUp+c1eRa6C9DcjuLryGnsO2qgR
X-Received: by 10.140.43.199 with SMTP id e65mr15760077qga.80.1437691946295;
	Thu, 23 Jul 2015 15:52:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 23 Jul 2015 15:52:06 -0700 (PDT)
In-Reply-To: <021e01d0c599$4a106140$de3123c0$@neuf.fr>
References: <004101d0c55c$d068da20$713a8e60$@neuf.fr>
	<20150723130029.1268067b@recife.lan>
	<007301d0c564$360d30e0$a22792a0$@neuf.fr>
	<20150723152821.352e1a52@recife.lan>
	<021e01d0c599$4a106140$de3123c0$@neuf.fr>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 Jul 2015 23:52:06 +0100
Message-ID: <CAJTo0LbeLX3wNYb9af=_QNk4Q2KJxRcBGYoUBW3Tc_mS0619rA@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH] Add networkd as default for RaspberryPi
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
X-List-Received-Date: Thu, 23 Jul 2015 22:52:32 -0000
Content-Type: multipart/alternative; boundary=001a113a9baac17e14051b92bd0c

--001a113a9baac17e14051b92bd0c
Content-Type: text/plain; charset=UTF-8

On 23 July 2015 at 23:45, Herve Jourdain <herve.jourdain@neuf.fr> wrote:

> But there might be a reason why it's not included there, I believe.
>

Because Poky is a reference distribution, primarily for QA, that doesn't
explicitly support the Raspberry Pi and certainly doesn't expect to be used
outside of QA purposes.

Inventing your own distribution is trivial (in fact, you don't even need
one) and is exactly the sort of place that this sort of logic belongs.

Ross

--001a113a9baac17e14051b92bd0c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 July 2015 at 23:45, Herve Jourdain <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:herve.jourdain@neuf.fr" target=3D"_blank">herve.jourdain@neuf.fr</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":iy" class=
=3D"a3s" style=3D"overflow:hidden">But there might be a reason why it&#39;s=
 not included there, I believe.<br></div></blockquote></div><br>Because Pok=
y is a reference distribution, primarily for QA, that doesn&#39;t explicitl=
y support the Raspberry Pi and certainly doesn&#39;t expect to be used outs=
ide of QA purposes.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Inventing your own distribution is trivial (in fact, you don&=
#39;t even need one) and is exactly the sort of place that this sort of log=
ic belongs.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a113a9baac17e14051b92bd0c--
