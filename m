Return-Path: <stevep@korgrd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C22AE00AE4; Wed,  2 May 2018 15:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f169.google.com (mail-yb0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6D57E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 15:56:08 -0700 (PDT)
Received: by mail-yb0-f169.google.com with SMTP id b19-v6so1067091ybg.2
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 15:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=korgrd-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:subject:from:in-reply-to:date:cc:message-id:references
	:to; bh=+XuA78aSP9CGhXdL+LLEYYpFG/ElQFzv6e7r4ansVCs=;
	b=c2WLXbx53gx9AUsWdQlSjK3SMo7LsRlaQtCQJqtixY7X8Ah9lAQwdNaMHXszV5A9ij
	i8Kg6S0+eOPaswhoJivMZZqmnFS/XARhjPd2p8c3PU+4ZuI2i223lYPRf0svxGDfeSSr
	jVt3kkiLbl2BG3XynqfdKQ0CqdM092RDpdtHEYwaW1Nhi9Tm9ufAp4XPKCAmRDg2fnK+
	xdhY5/JLr1N9y0x6NOVTDlHnwUBQMyezdzi4SdyM+tUMfK6lE7EzQLhD4XoPrQLZuddb
	TN5UW18C33Gg8vqumHLbl400iGp+DwX2ASiKtkAj7X43M8DuQsYPgya+pmjElnKWzwof
	UGiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=+XuA78aSP9CGhXdL+LLEYYpFG/ElQFzv6e7r4ansVCs=;
	b=f4bKJRs0p8ARY4KilwWGguK0wAUybhjr+zp+sOlJ3XbsNCk1Eq/XU0DconXoR+IwPI
	dHFbBwwSrHXLUDYZpCsjqc/gORq8oKwvTMiuTKbqx4ziPHiAkoffU/S8xTHDTkgS6vYz
	3wMTbw31lw6eT1G7PDcaBhUv9DXLMKeOO37ZzaNx1puLPhQSfjN2rYquNKS/gf9OLxFW
	Itvh13aa6wFj2ffD4Ym2Wi5jg4aJakeA5a/8jToDSg5oJCTyxlKTwDS8n4F0X/DRsPU9
	66H6MLkGUXNWx9F+ZyNkc81n5LM8cHK7k67EEd22FBuIwC4GHeHy5ucjgh42tcGX3nVP
	yL8w==
X-Gm-Message-State: ALQs6tDpUDH1/iPYotHu0Q7Fz0rJ12CeC7Upkwhp7lGnr1uBPha4IxN3
	khUUGyYoEr1LRSpl61jQAIDa2slG64I=
X-Google-Smtp-Source: AB8JxZq+jn7vwcBghT+BmixuHh1h403DQYTm4OjdFOX9gjaMzOnG0hU9MtylgD3/Y1kyAVGyNcbxOw==
X-Received: by 2002:a25:414c:: with SMTP id
	o73-v6mr14289995yba.112.1525301768131; 
	Wed, 02 May 2018 15:56:08 -0700 (PDT)
Received: from [192.168.1.2] (68-112-255-18.dhcp.oxfr.ma.charter.com.
	[68.112.255.18]) by smtp.gmail.com with ESMTPSA id
	u9-v6sm5575404ywl.35.2018.05.02.15.56.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 May 2018 15:56:06 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
From: Steve Pavao <stevep@korgrd.com>
In-Reply-To: <CAK18fxEEQ3BGKqeTciFkvzUbsyFNzkHBuz+drQ5j78OuqmZi7g@mail.gmail.com>
Date: Wed, 2 May 2018 18:56:05 -0400
Message-Id: <FFE07342-58BC-4ACE-B5E4-84EA66881596@korgrd.com>
References: <05108809-5601-43F4-B1D3-5F2B8D675EFC@korgrd.com>
	<CAK18fxEEQ3BGKqeTciFkvzUbsyFNzkHBuz+drQ5j78OuqmZi7g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Compute Module 3 machine .conf questions
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
X-List-Received-Date: Wed, 02 May 2018 22:56:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FB4A68CB-6B67-40AA-AA79-7BAAA94F262F"

--Apple-Mail=_FB4A68CB-6B67-40AA-AA79-7BAAA94F262F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Andrei,

We were able to verify that we could directly use the =
raspberrypi3-64.conf for the cm3 as 64-bit, as you had suggested.  =
Thanks for that suggestion.

It just seemed a bit confusing that there is only one cm3 machine conf, =
and it tunnels through to a rpi2.  All the online doc about the cm3 =
mentions the rpi3.  A colleague wonders if there are any differences =
that=20
someone was planning to eventually use that cm3 conf to enumerate, =
otherwise - having a cm3 conf seems like unnecessary duplication.

Thanks again for your help!

- Steve Pavao
Korg R&D


> On May 1, 2018, at 9:39 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> Hi Steve,
>=20
> On Tue, May 1, 2018 at 12:40 AM, Steve Pavao <stevep@korgrd.com =
<mailto:stevep@korgrd.com>> wrote:
> Hello,
>=20
> My company has bought a Raspberry Pi Compute Module 3 for evaluation, =
and I have a 2 questions about the supplied machine .conf files for it.
>=20
> 1. Should the supplied raspberrypi-cm3.conf file internally refer to =
the Raspberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the =
hardware basis of the Compute Module 3?
>=20
> RaspberryPi 3 is currently almost the same as RaspberryPi 2 in terms =
of configuration. What is the problem you are facing?=20
> =20
> 2. Should there also be an additional .conf file supplied in the =
meta-raspberry pi layer for a 64-bit version of poky Linux for the =
Compute Module 3, just as there is a raspberrypi3-64 machine .conf for =
the RPi3?
>=20
> You can use directly raspberrypi3-64 as far as I am aware. The cm =
confs are used as aliases right now. They point to one of the =
Raspberrypi 2 or 3 machine configurations.
>=20
> --
> Andrei G.


--Apple-Mail=_FB4A68CB-6B67-40AA-AA79-7BAAA94F262F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">Hi Andrei,</div><div class=3D""><br =
class=3D""></div><div class=3D"">We were able to verify that we could =
directly use the raspberrypi3-64.conf for the cm3 as 64-bit, as you had =
suggested. &nbsp;Thanks for that suggestion.</div><div class=3D""><div =
class=3D""><br class=3D""></div><div class=3D"">It just seemed a bit =
confusing that there is only one cm3 machine conf, and it tunnels =
through to a rpi2. &nbsp;All the online doc about the cm3 mentions the =
rpi3. &nbsp;A colleague wonders if there are any differences =
that&nbsp;</div><div class=3D"">someone was planning to eventually use =
that cm3 conf to enumerate, otherwise - having a cm3 conf seems like =
unnecessary duplication.</div></div><div class=3D""><br =
class=3D""></div><div class=3D"">Thanks again for your help!</div><div =
class=3D""><br class=3D""></div><div class=3D"">- Steve Pavao</div><div =
class=3D"">Korg R&amp;D</div><div class=3D""><br class=3D""></div><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
May 1, 2018, at 9:39 AM, Andrei Gherzan &lt;<a =
href=3D"mailto:andrei@gherzan.ro" class=3D"">andrei@gherzan.ro</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><div =
class=3D"gmail_quote">Hi Steve,</div><div class=3D"gmail_quote"><br =
class=3D""></div><div class=3D"gmail_quote">On Tue, May 1, 2018 at 12:40 =
AM, Steve Pavao <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:stevep@korgrd.com" target=3D"_blank" =
class=3D"">stevep@korgrd.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br class=3D"">
<br class=3D"">
My company has bought a Raspberry Pi Compute Module 3 for evaluation, =
and I have a 2 questions about the supplied machine .conf files for =
it.<br class=3D"">
<br class=3D"">
1. Should the supplied raspberrypi-cm3.conf file internally refer to the =
Raspberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the =
hardware basis of the Compute Module 3?<br class=3D""></blockquote><div =
class=3D""><br class=3D""></div><div class=3D"">RaspberryPi 3 is =
currently almost the same as RaspberryPi 2 in terms of configuration. =
What is the problem you are facing?&nbsp;</div><div =
class=3D"">&nbsp;</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
2. Should there also be an additional .conf file supplied in the =
meta-raspberry pi layer for a 64-bit version of poky Linux for the =
Compute Module 3, just as there is a raspberrypi3-64 machine .conf for =
the RPi3?<br class=3D""></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">You can use directly raspberrypi3-64 as =
far as I am aware. The cm confs are used as aliases right now. They =
point to one of the Raspberrypi 2 or 3 machine configurations.</div><div =
class=3D""><br class=3D""></div><div class=3D""><div =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial" =
class=3D"">--</div><span =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text=
-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(2=
55,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline" class=3D"">Andrei G.</span><br =
class=3D""></div></div></div></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_FB4A68CB-6B67-40AA-AA79-7BAAA94F262F--
