Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F292E00D7F; Wed, 20 Dec 2017 02:18:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C9FEE00C0F
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:18:40 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id l19so9458414wrc.2
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 02:18:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/UOx2NCFppkJ8IOziancqsZnwJcmcmh+d8UjXytRQwA=;
	b=hmU22zOZ10fmVmY1hXVkJwy0dLEFOkErkRsKSU0MSdlT6j6iQXtLF2SfjhTWiWlPfp
	lZV0ji49RLkk1fbECfago5R1cEerpd5EDsPCltL6J7DH0XRWXxwR9p8e1tIXLe8IKMs8
	Gh1gewZg2ctwKMP4GEZLSQUhYU1EpB/8l49Yr0Hn/VuHIqljMMbArJjvqs9khnj8NfOK
	PWR9eZnVYarOdTMWdRO7NLlwyUI375Wn8xjDg8oyIf5+0b5RQ3bPgYaeCW4Ds5OhXYMJ
	EnD6JotwCzsZBDcAIClrTg0HG+rJCnfwmuOqDiKPE1cBL/uMIkrixtT/ni2Yf5m5KRmd
	Js5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/UOx2NCFppkJ8IOziancqsZnwJcmcmh+d8UjXytRQwA=;
	b=rZjyocH2WDM0o0ypdmrzd2nNqSwDfYSA2ibAKRHEHw0G9pMFjRW/8i/5UZSJhEpqs3
	bXqAy9tg8sVrw6ZeP76PXFASz74tekmXoBApMe4O4D84msoyyADPgxbCaXCwtMmwGatr
	UrM9LOeQJMKVGh9gO2fFdWHVYudymS0z2Y+CSafNmsOWLd/AqBrT/CT68dEMqhdlaaBi
	8Efbff6P0GXmJhWPnNs+9OL03KcqBRJ/zEWTECGNVT42T5n9r2OrS/LeHamU3dGEGZ9D
	R9Ac/ByzNKh+5PhHX2x694uDQeewvYK9boFqGGCK5AiDoGoSjugHVj4IPKPmsRgkbEMq
	oZVw==
X-Gm-Message-State: AKGB3mIOmh4LX5KMFuFC6mxoRkG8f7/CSbZve7kiYtIpn2R0qMs4fdXw
	rWzeAME1QncizNc9irO9yb3Dmp1WD7o1XTJd7bOG7A==
X-Google-Smtp-Source: ACJfBotnJHw9cykzNRwpohhhPxCpzfSKI2DUwcm9U7IVKhYqZ2yQ7LfSRb943cBDR4SN+TsF8EAQQgG5RIm58m02h2A=
X-Received: by 10.223.162.204 with SMTP id t12mr8280160wra.258.1513765119284; 
	Wed, 20 Dec 2017 02:18:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 20 Dec 2017 02:18:38 -0800 (PST)
In-Reply-To: <CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
	<CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Dec 2017 11:18:38 +0100
Message-ID: <CAGAf8LwXHuc6NEm+w6J40AZnSpspce=cvzzxbs956FSpq_vHUw@mail.gmail.com>
To: Sherif Omran <sherifomran2000@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: rfkill cannot open control device
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
X-List-Received-Date: Wed, 20 Dec 2017 10:18:41 -0000
Content-Type: multipart/alternative; boundary="f403045ea6a4355adb0560c2e8d1"

--f403045ea6a4355adb0560c2e8d1
Content-Type: text/plain; charset="UTF-8"

> IMAGE_INSTALL_append += "rfkill" (my best guess, easiest way).

My bad! :-(

Should read: IMAGE_INSTALL_append += "Bluez5"

Zoran

On Wed, Dec 20, 2017 at 10:25 AM, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Inside poky distro (.../poky/meta/recipes-connectivity):
>
> [user@localhost recipes-connectivity]$ pwd
> /home/user/YOCTO/oe_core_embedded/poky/meta/recipes-connectivity
> [user@localhost recipes-connectivity]$ ls -al
> total 96
> drwxrwxr-x. 24 user user 4096 Oct 18 12:49 .
> drwxrwxr-x. 19 user user 4096 Nov 18 15:13 ..
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 avahi
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 bind
> *drwxrwxr-x.  3 user user 4096 Oct 18 12:49 bluez5*
> drwxrwxr-x.  5 user user 4096 Oct 18 12:49 connman
> drwxrwxr-x.  4 user user 4096 Oct 18 12:49 dhcp
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 iproute2
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 irda-utils
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 iw
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 libnss-mdns
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 libpcap
> drwxrwxr-x.  2 user user 4096 Oct 18 12:49 mobile-broadband-provider-info
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 neard
> drwxrwxr-x.  5 user user 4096 Oct 18 12:49 nfs-utils
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ofono
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 openssh
> drwxrwxr-x.  4 user user 4096 Oct 18 12:49 openssl
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ppp
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ppp-dialin
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 resolvconf
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 socat
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 wireless-tools
> drwxrwxr-x.  3 user user 4096 Oct 18 12:49 wpa-supplicant
> [user@localhost recipes-connectivity]$
>
> Or:
>
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/
> recipes-connectivity/bluez5/
>
> You should add it in .../conf/local.conf as:
>
> IMAGE_INSTALL_append += "rfkill" (my best guess, easiest way).
>
> Zoran
> _______
>
> On Tue, Dec 19, 2017 at 7:03 PM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> how can i add rfkill recipe?
>>
>> On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran <sherifomran2000@gmail.com>
>> wrote:
>>
>>> i used core-image-minimal for a raspberry pi 0w. But i get rfkill can
>>> not open control device. when i give rfkill , i get the syntanx output,
>>> this means it exists.
>>> the wifi driver is installed.
>>>
>>> What is the rfkill device? is it /dev/rfkill ?
>>>
>>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--f403045ea6a4355adb0560c2e8d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; IMAGE_INSTALL_append=
 +=3D &quot;rfkill&quot; (my best guess, easiest way).</span><br><div><span=
 style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:=
12.8px">My bad! :-(</span></div><div><span style=3D"font-size:12.8px"><br><=
/span></div><div><span style=3D"font-size:12.8px">Should read:=C2=A0</span>=
<span style=3D"font-size:12.8px">IMAGE_INSTALL_append +=3D &quot;Bluez5&quo=
t;</span></div><div><span style=3D"font-size:12.8px"><br></span></div><div>=
<span style=3D"font-size:12.8px">Zoran</span></div></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Wed, Dec 20, 2017 at 10:25 AM, Z=
oran Stojsavljevic <span dir=3D"ltr">&lt;<a href=3D"mailto:zoran.stojsavlje=
vic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;</spa=
n> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div>Insi=
de poky distro (.../poky/meta/recipes-<wbr>connectivity):<br></div><div><br=
></div><div>[user@localhost recipes-connectivity]$ pwd</div><div>/home/user=
/YOCTO/oe_core_<wbr>embedded/poky/meta/recipes-<wbr>connectivity</div><div>=
[user@localhost recipes-connectivity]$ ls -al</div><div>total 96</div><div>=
drwxrwxr-x. 24 user user 4096 Oct 18 12:49 .</div><div>drwxrwxr-x. 19 user =
user 4096 Nov 18 15:13 ..</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct =
18 12:49 avahi</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 bi=
nd</div><div><i><b><u>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 bluez=
5</u></b></i></div><div>drwxrwxr-x.=C2=A0 5 user user 4096 Oct 18 12:49 con=
nman</div><div>drwxrwxr-x.=C2=A0 4 user user 4096 Oct 18 12:49 dhcp</div><d=
iv>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 iproute2</div><div>drwxr=
wxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 irda-utils</div><div>drwxrwxr-x.=
=C2=A0 3 user user 4096 Oct 18 12:49 iw</div><div>drwxrwxr-x.=C2=A0 3 user =
user 4096 Oct 18 12:49 libnss-mdns</div><div>drwxrwxr-x.=C2=A0 3 user user =
4096 Oct 18 12:49 libpcap</div><div>drwxrwxr-x.=C2=A0 2 user user 4096 Oct =
18 12:49 mobile-broadband-provider-info</div><div>drwxrwxr-x.=C2=A0 3 user =
user 4096 Oct 18 12:49 neard</div><div>drwxrwxr-x.=C2=A0 5 user user 4096 O=
ct 18 12:49 nfs-utils</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 1=
2:49 ofono</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 openss=
h</div><div>drwxrwxr-x.=C2=A0 4 user user 4096 Oct 18 12:49 openssl</div><d=
iv>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 ppp</div><div>drwxrwxr-x=
.=C2=A0 3 user user 4096 Oct 18 12:49 ppp-dialin</div><div>drwxrwxr-x.=C2=
=A0 3 user user 4096 Oct 18 12:49 resolvconf</div><div>drwxrwxr-x.=C2=A0 3 =
user user 4096 Oct 18 12:49 socat</div><div>drwxrwxr-x.=C2=A0 3 user user 4=
096 Oct 18 12:49 wireless-tools</div><div>drwxrwxr-x.=C2=A0 3 user user 409=
6 Oct 18 12:49 wpa-supplicant</div><div>[user@localhost recipes-connectivit=
y]$=C2=A0</div></div><div><br></div><div>Or:</div><div><br></div><div><a hr=
ef=3D"https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-connect=
ivity/bluez5/" target=3D"_blank">https://git.yoctoproject.org/<wbr>cgit.cgi=
/poky/plain/meta/<wbr>recipes-connectivity/bluez5/</a><br></div><div><br></=
div><div>You should add it in .../conf/local.conf as:</div><div><br></div><=
div>IMAGE_INSTALL_append +=3D &quot;rfkill&quot; (my best guess, easiest wa=
y).<br></div><div><br></div><div>Zoran</div><div>_______</div></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div class=3D"h5">O=
n Tue, Dec 19, 2017 at 7:03 PM, Sherif Omran <span dir=3D"ltr">&lt;<a href=
=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gma=
il.com</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div><div class=3D"h5"><div dir=3D"ltr">how can i add rfkill recipe?<br></d=
iv><div class=3D"m_7880567471075345777HOEnZb"><div class=3D"m_7880567471075=
345777h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue,=
 Dec 19, 2017 at 4:23 PM, Sherif Omran <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div><div>i used core-image-minimal for a raspberry pi 0w. But i get rfk=
ill can not open control device. when i give rfkill , i get the syntanx out=
put, this means it exists. <br></div>the wifi driver is installed.<br><br><=
/div>What is the rfkill device? is it /dev/rfkill ?<br></div><br></div>
</blockquote></div><br></div>
</div></div><br></div></div><span class=3D"">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></span></blockquote></div><br></div>
</blockquote></div><br></div>

--f403045ea6a4355adb0560c2e8d1--
