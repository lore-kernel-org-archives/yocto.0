Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 508C6E00D81; Tue, 19 Dec 2017 04:17:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f50.google.com (mail-pl0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70346E00CE2
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 04:17:08 -0800 (PST)
Received: by mail-pl0-f50.google.com with SMTP id b96so6843234pli.2
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 04:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=kWyA5I2JMDIKhY+dLaDz4F2/Gfvq27O5Ch4+e6QSGO0=;
	b=CoWZEsFS+HU4Ad92vI53SE95ICLyq7qRK16/FCocfNKwYihEoBLQPUhDjrUu51f9Ys
	kNpJ5x0ydxjOGV79a9nP9F+lSk87+FyABUE4RPbu07PgVZtWWCP4zaQbpG79oPW9adNR
	BAanpVX9Mg4/cn5iqArw7ZaZWL0Shv8+/yUrT8FHaMeluPbI6975OYp5YZZIAuRrR4NW
	MwYN3Fo1gKshBNhpJfW8mGluJqgbCE/TVdxxQf6//2y+ZHn7pB9e/Am1LwtHKkZSiGoI
	LesqxA4PSNe6qKcGZHFaMQwHpg0pZyiqRoxGRf9rSSG2mvTXlJQBmClRjAjl1cEJHEK5
	SLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=kWyA5I2JMDIKhY+dLaDz4F2/Gfvq27O5Ch4+e6QSGO0=;
	b=ibiL/vFM0Y5TsppWfJauAU0NX+CsnxIke9ByMABmBI5ULaFLkhfkFiV7nBBQhO21b9
	qGS2JclN4gMBsUNpDR3m9P89tdy7/jYU0ekCIDXadE6LztVIHpcTOarjSU80xz7IsU+Q
	M4JyuzlRwNIfjXPBhG9S2R13W9wRPLSosCiQYcBoWI9hmALYESU4VSs3lnieERWeGjUB
	iwQ7sCG8EkCg0tkQDjl6YbsWPbYtdAGxN6NzxDf7gp7srCsvv0jvekyHIU2Iry/wjh7K
	r4lFzrh2JPL5bSLonUAOJcQNj3JTF6CsH/DkTkBYL3wu+xf3cYVI+WbhcohOPeI9VNN3
	e5BA==
X-Gm-Message-State: AKGB3mKYtzR/MSU8EKPC+cag3oRtkXK77HwXkFfrpmpQq/Eezd28bBbn
	nlbkqgnLwZHU1QaEjG7lRVj3/zsOFggG8DWZXb8=
X-Google-Smtp-Source: ACJfBotuS6Ji83M3PQwTdtob/NEIWVO3QdtXjX96j/3OUIB7IxHzKhx9/NlqcnvyNJ4boyup2Q5oO7mDL5QziSbj/vc=
X-Received: by 10.159.247.134 with SMTP id e6mr2988735pls.279.1513685828534;
	Tue, 19 Dec 2017 04:17:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Tue, 19 Dec 2017 04:17:08 -0800 (PST)
In-Reply-To: <CAPb0b+OAp8Bu9GvqyQfa893viP=LwVrSFCdBak-5KZ8DhGm0Ew@mail.gmail.com>
References: <CAPb0b+Oz5aKuCurvAdTu9PbRRtz=e17fczLucHfn4dEDcHTRow@mail.gmail.com>
	<CAK18fxEjpoNyrCEQyZAk250OSmNimVWF=Y0UKZ235hQr8UGtoQ@mail.gmail.com>
	<CAPb0b+OAp8Bu9GvqyQfa893viP=LwVrSFCdBak-5KZ8DhGm0Ew@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 19 Dec 2017 13:17:08 +0100
Message-ID: <CAPb0b+MTLdxt80ZbPr01gTCYdjDriXcYKtyT-qqiuyWnzzR48Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] core-image-minimal vs rpi-hwup-image
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
X-List-Received-Date: Tue, 19 Dec 2017 12:17:11 -0000
Content-Type: multipart/alternative; boundary="089e082bf1201c872f0560b0722a"

--089e082bf1201c872f0560b0722a
Content-Type: text/plain; charset="UTF-8"

hi Andrei,

but when i do core-image-minimal and use the linux-firmware-bcm43430
i get the following:
configuring network interfaces : sucessfully initialized wpa_supplicant
rfkill : cannot open rfkill control device
could not read interface wlan0 flags: no such device
WEXT: could not set interface wlan0 up.

it looks like additional packages are mandatory

thanks


On Wed, Dec 13, 2017 at 3:38 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> to include it, I added
> IMAGE_INSTALL += "linux-firmware-bcm43430"
>
> is there a bluetooth driver to be added as well?
>
> in raspberrzpi0-wifi.conf : the line SERIAL_CONSOLE is causing respawning
> too fast. is it needed for bluetooth communication?
>
> thank you
>
> On Wed, Dec 13, 2017 at 12:54 PM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
>
>> Hi,
>> On Wed, Dec 13, 2017 at 6:12 AM, Sherif Omran <sherifomran2000@gmail.com>
>> wrote:
>>
>>> hello guys,
>>>
>>> Core-image-minimal has 75 MB and boots in max 12 sec but lacks wifi
>>> drivers.
>>> rpi-hwup-image has 142.MB and boots in 18 sec.
>>>
>>> how to add wifi drivers to core-image-minimal?
>>>
>>
>> All you need to do is include in core-image-minimal the package
>> linux-firmware-bcm43430 .
>>
>> --
>> Andrei Gherzan
>>
>
>

--089e082bf1201c872f0560b0722a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>hi Andrei,<br><br>=
</div>but when i do core-image-minimal and use the linux-firmware-bcm43430<=
br></div>i get the following:<br></div>configuring network interfaces : suc=
essfully initialized wpa_supplicant<br></div>rfkill : cannot open rfkill co=
ntrol device<br></div>could not read interface wlan0 flags: no such device<=
br></div>WEXT: could not set interface wlan0 up.<br><br></div>it looks like=
 additional packages are mandatory<br><br></div>thanks<br><div><div><br></d=
iv></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Wed, Dec 13, 2017 at 3:38 PM, Sherif Omran <span dir=3D"ltr">&lt;<a href=
=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"=
ltr"><div><div>to include it, I added <br>IMAGE_INSTALL +=3D &quot;linux-fi=
rmware-bcm43430&quot; <br></div><br></div><div>is there a bluetooth driver =
to be added as well?<br><br></div><div>in raspberrzpi0-wifi.conf : the line=
 SERIAL_CONSOLE is causing respawning too fast. is it needed for bluetooth =
communication?<br></div><div><br></div>thank you<br></div><div class=3D"HOE=
nZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Wed, Dec 13, 2017 at 12:54 PM, Andrei Gherzan <span dir=3D"ltr">&l=
t;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi=
,<br><div><span><div class=3D"gmail_extra"><div class=3D"gmail_quote">On We=
d, Dec 13, 2017 at 6:12 AM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div><div><div><div>hello guys,<br><br></div>Core-image-=
minimal has 75 MB and boots in max 12 sec but lacks wifi drivers.<br></div>=
rpi-hwup-image has 142.MB and boots in 18 sec.<br><br></div>how to add wifi=
 drivers to core-image-minimal?<br></div></div></blockquote></div></div><di=
v class=3D"gmail_extra"><br></div></span><div class=3D"gmail_extra">All you=
 need to do is include in core-image-minimal the package linux-firmware-bcm=
43430 .<br></div><div class=3D"gmail_extra"><br clear=3D"all"><div><div cla=
ss=3D"m_-8841031750570009803m_-1643188493997472279gmail_signature"><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei Gherzan</div></div></div=
></div></div></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--089e082bf1201c872f0560b0722a--
