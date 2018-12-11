Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 868F2E00C94; Tue, 11 Dec 2018 09:39:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com
	[209.85.217.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12272E00AC5
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 09:39:50 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id x1so9345804vsc.10
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 09:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=FyjO8z44kfrO0BOBkX6nWF+X7c7aBynnX5ssuPRtn8g=;
	b=CF3vUvr0ea4TmS3vphlBRQivl66+wrK8AnvFq2GfWcMzjk+n+ph7SGbeGQbKFqDggy
	fhDp/VH8l5bnYehneuuZqABhI92OXDfUkVF7c5YbuE3p5Lvs/kPGLQ+zE4XH0Z0AuNnz
	jh32KDx+hoHaLfT/Py1MeM8KfFfZJJ/vil1asEDYMi4VKaXYAmBY2l1TrNV+DcoDE57h
	zJGBqW5BgtSFgYjwdmrdlKSMmn+Ae3Uf2pHYThpYYB3wi76RXmgohDHjN8y/+D6ubw+P
	nOoNWbOou7dS4mf7AzOJR08KFkYxtP1O3OWUmD3ZS2xC7p41TULL/XXz7wI7uWtdoI6O
	gDrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=FyjO8z44kfrO0BOBkX6nWF+X7c7aBynnX5ssuPRtn8g=;
	b=sT93HWrZmmCjPqIROlKptzAoPSUEdt4eb4VhW50eX+bCRxFH68OsQSRRr1l+sa/9SW
	GmnzSya/vMg3dDAXM2Ykmh+8u0n9uyRpOi9BxzaFaHIPCS4ydMq3RIiHunu6Pi8dSOyB
	D7KGx3ErGjnRBmKgWYN9mG2/2lED/17DQBYdrJAYcHKFKNvIKbZr033+2220m0iBEWVY
	37/GpJUnyCpHsLOhaWKangaBVkDq0oABA74CLojuRs6r2k6DUBWjV+2oI7UXTqzrbbwQ
	j4bJCnZIcypmDpo0WYl88UlPjTO595KAbiY91HqFtxlJ8sQAgdBSjoCLODD2MIeSFvKr
	iDPQ==
X-Gm-Message-State: AA+aEWYYpbnSnKGkPEYc1mMNZvMiGBxwFYrRcV7DkbDWO1aM6kKkTeJW
	oRwRA0WXE5wTJ3aqUDYp5xZme6bj+Q1XLyak1R9V1Q==
X-Google-Smtp-Source: AFSGD/XRS+GW5ejZCXs66uGHkVm3KdQw6uKm0RNKA3EQ18a0NijO1eBBCWlk0ogO+MYaF3PgwcWPYk39vsMxzskz0NU=
X-Received: by 2002:a67:c202:: with SMTP id i2mr6946170vsj.11.1544549989711;
	Tue, 11 Dec 2018 09:39:49 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNzSNFQ17H-bRdzMnrcpWRW9Y05HB=zcXNLTm0XMPedehA@mail.gmail.com>
In-Reply-To: <CAKRytNzSNFQ17H-bRdzMnrcpWRW9Y05HB=zcXNLTm0XMPedehA@mail.gmail.com>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Tue, 11 Dec 2018 18:39:37 +0100
Message-ID: <CAKRytNxLPbry=22=EhutqrJzQFv=wNSZeaYUcQdmjf-XNAS3Qg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some questions about mdns library (sumo branch, but also master)
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
X-List-Received-Date: Tue, 11 Dec 2018 17:39:51 -0000
Content-Type: multipart/alternative; boundary="0000000000007986c0057cc291ec"

--0000000000007986c0057cc291ec
Content-Type: text/plain; charset="UTF-8"

The first three are still unresolved questions for me, but I understood
question 4 thanks to avahi-autoipd without adding all avahi lib. In this
way I can use autoipd to assign link local without running the full avahi,
but mdns by apple.
However I'm having some problems because it seems that they are not
compatibile. I'm confused. I found some references about avahi compat but I
don't understand it its require or not and how to add it if not present by
default

Il lun 10 dic 2018, 11:23 Stefano Cappa <stefano.cappa.ks89@gmail.com> ha
scritto:

> Hi!
> I'm trying to use mdns library (
> https://layers.openembedded.org/layerindex/recipe/72471/), however I have
> some questions.
>
> 1) what is the purpose of "
> files/0001-nss_mdns-Do-not-include-nss.h-when-libc-glibc.patch
> <http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-protocols/mdns/files/0001-nss_mdns-Do-not-include-nss.h-when-libc-glibc.patch?h=master>"?
> Is it really necessary?
> 2) Is it possibile to update it to the latest version in open embedded? I
> updated to version 8xx.x.x and it seems to be ok, but I prefer to know if
> there is a reason why it is still at 7xx.x.x.
> 3) Inside the mdns receipe there is a reference to "libnss_mdns" but it
> seems fixed to version 0.2. On open embedded there is version 0.10. To use
> mdns should I install libnss 0.10?
> 4) How does mdns library manage IPv4 Link local? Is there something to
> configure or packages to add to receive a link local address after 60
> seconds?
>
> I'm asking about mdns and not avahi, because I want to use the official
> Apple library instead of Avahi. Do you have other additional suggestions
> about this topic?
>
> Thank you.
>
>
>

--0000000000007986c0057cc291ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The first three are still unresolved questions for me, but I understood que=
stion 4 thanks to avahi-autoipd without adding all avahi lib. In this way I=
 can use autoipd to assign link local without running the full avahi, but m=
dns by apple.=C2=A0<div>However I&#39;m having some problems because it see=
ms that they are not compatibile. I&#39;m confused. I found some references=
 about avahi compat but I don&#39;t understand it its require or not and ho=
w to add it if not present by default<br><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr">Il lun 10 dic 2018, 11:23 Stefano Cappa &lt;<a href=3D"mailto=
:stefano.cappa.ks89@gmail.com">stefano.cappa.ks89@gmail.com</a>&gt; ha scri=
tto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>Hi!</div=
><div>I&#39;m trying to use mdns library (<a href=3D"https://layers.openemb=
edded.org/layerindex/recipe/72471/" target=3D"_blank">https://layers.openem=
bedded.org/layerindex/recipe/72471/</a>), however I have some questions.</d=
iv><div><br></div><div>1) what is the purpose of &quot;<a href=3D"http://cg=
it.openembedded.org/meta-openembedded/tree/meta-networking/recipes-protocol=
s/mdns/files/0001-nss_mdns-Do-not-include-nss.h-when-libc-glibc.patch?h=3Dm=
aster" style=3D"box-sizing:border-box;background-color:rgb(255,255,255);col=
or:rgb(51,122,183);text-decoration:none;font-family:&quot;Helvetica Neue&qu=
ot;,Helvetica,Arial,sans-serif;font-size:14px;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px" target=3D"_blank">files/0001-nss_mdns-Do-not-include-=
nss.h-when-libc-glibc.patch</a>&quot;? Is it really necessary?</div><div>2)=
 Is it possibile to update it to the latest version in open embedded? I upd=
ated to version 8xx.x.x and it seems to be ok, but I prefer to know if ther=
e is a reason why it is still at 7xx.x.x.</div><div>3) Inside the mdns rece=
ipe there is a reference to &quot;libnss_mdns&quot; but it seems fixed to v=
ersion 0.2. On open embedded there is version 0.10. To use mdns should I in=
stall libnss 0.10?</div><div>4) How does mdns library manage IPv4 Link loca=
l? Is there something to configure or packages to add to receive a link loc=
al address after 60 seconds?<br></div><div><br></div><div>I&#39;m asking ab=
out mdns and not avahi, because I want to use the official Apple library in=
stead of Avahi. Do you have other additional suggestions about this topic?<=
br></div><div><br></div><div>Thank you.<br></div><div><br></div><div><br></=
div></div>
</blockquote></div></div>

--0000000000007986c0057cc291ec--
