Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F5DE01A4C; Mon, 14 May 2018 09:22:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FB0EE0110A
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 09:22:33 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id a3-v6so8752638uad.8
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 09:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2YJSdiBKEZq/UCtjMgHpjat3aNIW7DDCpGOkMKpgxbs=;
	b=eI/UkJ30vNqtm9qbR3wJ5ILx0iZd5Gk1dXiGPFEC8h25ftjK1NJ7BicRCK/prJ3tGY
	NUAD4VmIydPRODp1gWUPbdTO3nBOtjwGYZIYKZbUvcWrsMwGuRHFShtA+gfxgovk5R2c
	Rv4WfESIYnL7UtUTL3bWBLDR+LFaWkkmiidHaFHDSIJ6Re9FVr4Sn1klsAWW8DyrFIH6
	fGBwHegJuMOWJ+gO4ixDPBegrrfJMnwg4sMJMXckpOxvZj5ipIar2xrP2Oz8z3iVWN5y
	WmqPUzDCyf8oig2VvHHpG68QcLQEJRhQ5h0mtNrxxJmhyFaOal5JcTTwhRZpIviMmoq8
	OyJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2YJSdiBKEZq/UCtjMgHpjat3aNIW7DDCpGOkMKpgxbs=;
	b=YUHrhSXCOzMv7iAjR+JDzg6+Ye10HUlmkLtyxjch3f5JDr+Gs7caT8TwRc1V2vgOma
	FsUCIwkHDk3ysefkJ1SPpniSD5p29xovIRqCAa8I1KoWHV10YBmmHTG19SHrNQ9estqG
	dL2mDe46XPVQfUpbiaQJBkYmfgFNtmKEoHZcbdnPDOV9oLEdF02k4Verkm7ZZ8FJbfxa
	yQQ3w8VVxV0PrX8QThfTr8lU4b/mwvUyAQeeigG5pxWzvh5iEYh6mW7Bk1wsogLcKEBC
	IV2NI7PLaBMYuaSiOOZ+9Lux3tb2oLG3dodKZD88l5nxAjdno97diY5Bts/z1L8p9+iG
	DRlQ==
X-Gm-Message-State: ALKqPweYVOLxb6gWAwTjOQSeo8OHJz9tbgcfTEqgXgeQVRQh0qnsxAE5
	UlZlbRvYNocY9Y22MFW8L6sXovMtGqo19zIZPKIDNPh7
X-Google-Smtp-Source: AB8JxZp4I274she6k2ID8Kqqhu1uLjZdmchjRMut3iEGYcWp1SoUQWmX997U2KBZQYOr3HWK8BbgEk2uO95k3Z4mUzw=
X-Received: by 2002:ab0:1795:: with SMTP id
	r21-v6mr12627120uaf.133.1526314953225; 
	Mon, 14 May 2018 09:22:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.4.108 with HTTP; Mon, 14 May 2018 09:21:52 -0700 (PDT)
X-Originating-IP: [90.152.4.98]
In-Reply-To: <FFE07342-58BC-4ACE-B5E4-84EA66881596@korgrd.com>
References: <05108809-5601-43F4-B1D3-5F2B8D675EFC@korgrd.com>
	<CAK18fxEEQ3BGKqeTciFkvzUbsyFNzkHBuz+drQ5j78OuqmZi7g@mail.gmail.com>
	<FFE07342-58BC-4ACE-B5E4-84EA66881596@korgrd.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 14 May 2018 17:21:52 +0100
Message-ID: <CAK18fxEfhzZfyvuQ6Fyw6CAw+RraKGyEKRjEnZ_MUxsBqn+UKA@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
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
X-List-Received-Date: Mon, 14 May 2018 16:22:35 -0000
Content-Type: multipart/alternative; boundary="0000000000009a49f8056c2ce417"

--0000000000009a49f8056c2ce417
Content-Type: text/plain; charset="UTF-8"

Currently, the cm3 machine is only there as for people to see clearly what
machine as supported. As well, in some cases, we need some machine specific
tweaks so we need a new machine - it's not the case here.

--
Andrei Gherzan

On Wed, May 2, 2018 at 11:56 PM, Steve Pavao <stevep@korgrd.com> wrote:

> Hi Andrei,
>
> We were able to verify that we could directly use the raspberrypi3-64.conf
> for the cm3 as 64-bit, as you had suggested.  Thanks for that suggestion.
>
> It just seemed a bit confusing that there is only one cm3 machine conf,
> and it tunnels through to a rpi2.  All the online doc about the cm3
> mentions the rpi3.  A colleague wonders if there are any differences that
> someone was planning to eventually use that cm3 conf to enumerate,
> otherwise - having a cm3 conf seems like unnecessary duplication.
>
> Thanks again for your help!
>
> - Steve Pavao
> Korg R&D
>
>
> On May 1, 2018, at 9:39 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> Hi Steve,
>
> On Tue, May 1, 2018 at 12:40 AM, Steve Pavao <stevep@korgrd.com> wrote:
>
>> Hello,
>>
>> My company has bought a Raspberry Pi Compute Module 3 for evaluation, and
>> I have a 2 questions about the supplied machine .conf files for it.
>>
>> 1. Should the supplied raspberrypi-cm3.conf file internally refer to the
>> Raspberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the
>> hardware basis of the Compute Module 3?
>>
>
> RaspberryPi 3 is currently almost the same as RaspberryPi 2 in terms of
> configuration. What is the problem you are facing?
>
>
>> 2. Should there also be an additional .conf file supplied in the
>> meta-raspberry pi layer for a 64-bit version of poky Linux for the Compute
>> Module 3, just as there is a raspberrypi3-64 machine .conf for the RPi3?
>>
>
> You can use directly raspberrypi3-64 as far as I am aware. The cm confs
> are used as aliases right now. They point to one of the Raspberrypi 2 or 3
> machine configurations.
>
> --
> Andrei G.
>
>
>

--0000000000009a49f8056c2ce417
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Currently, the cm3 machine is only there as for people to =
see clearly what machine as supported. As well, in some cases, we need some=
 machine specific tweaks so we need a new machine - it&#39;s not the case h=
ere.=C2=A0</div><div class=3D"gmail_extra"><br clear=3D"all"><div><div clas=
s=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div></div></d=
iv>
<br><div class=3D"gmail_quote">On Wed, May 2, 2018 at 11:56 PM, Steve Pavao=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:stevep@korgrd.com" target=3D"_blan=
k">stevep@korgrd.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div style=3D"word-wrap:break-word"><div>Hi Andrei,</div><div><br></div><=
div>We were able to verify that we could directly use the raspberrypi3-64.c=
onf for the cm3 as 64-bit, as you had suggested.=C2=A0 Thanks for that sugg=
estion.</div><div><div><br></div><div>It just seemed a bit confusing that t=
here is only one cm3 machine conf, and it tunnels through to a rpi2.=C2=A0 =
All the online doc about the cm3 mentions the rpi3.=C2=A0 A colleague wonde=
rs if there are any differences that=C2=A0</div><div>someone was planning t=
o eventually use that cm3 conf to enumerate, otherwise - having a cm3 conf =
seems like unnecessary duplication.</div></div><div><br></div><div>Thanks a=
gain for your help!</div><span class=3D""><div><br></div><div>- Steve Pavao=
</div><div>Korg R&amp;D</div><div><br></div><br></span><div><div class=3D"h=
5"><div><blockquote type=3D"cite"><div>On May 1, 2018, at 9:39 AM, Andrei G=
herzan &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gh=
erzan.ro</a>&gt; wrote:</div><br class=3D"m_-5555034468793731250Apple-inter=
change-newline"><div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=
=3D"gmail_quote">Hi Steve,</div><div class=3D"gmail_quote"><br></div><div c=
lass=3D"gmail_quote">On Tue, May 1, 2018 at 12:40 AM, Steve Pavao <span dir=
=3D"ltr">&lt;<a href=3D"mailto:stevep@korgrd.com" target=3D"_blank">stevep@=
korgrd.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<b=
r>
<br>
My company has bought a Raspberry Pi Compute Module 3 for evaluation, and I=
 have a 2 questions about the supplied machine .conf files for it.<br>
<br>
1. Should the supplied raspberrypi-cm3.conf file internally refer to the Ra=
spberry Pi 3 instead of the Raspberry Pi 2, since the RPi3 is the hardware =
basis of the Compute Module 3?<br></blockquote><div><br></div><div>Raspberr=
yPi 3 is currently almost the same as RaspberryPi 2 in terms of configurati=
on. What is the problem you are facing?=C2=A0</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">
2. Should there also be an additional .conf file supplied in the meta-raspb=
erry pi layer for a 64-bit version of poky Linux for the Compute Module 3, =
just as there is a raspberrypi3-64 machine .conf for the RPi3?<br></blockqu=
ote><div><br></div><div>You can use directly raspberrypi3-64 as far as I am=
 aware. The cm confs are used as aliases right now. They point to one of th=
e Raspberrypi 2 or 3 machine configurations.</div><div><br></div><div><div =
style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;white-space:normal;word-spacing:0px;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial">--</di=
v><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;white-space:normal;word-spacing:0px;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">Andrei G.</span><br></div></div></div></div>
</div></blockquote></div><br></div></div></div></blockquote></div><br></div=
>

--0000000000009a49f8056c2ce417--
