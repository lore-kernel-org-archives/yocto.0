Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0726DE00D7F; Wed, 20 Dec 2017 01:25:21 -0800 (PST)
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
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63F0BE00D79
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:25:20 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id g130so14850661wme.0
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 01:25:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hAY5Ch8mFbVHsEKRXVK9SGId3Zk6Oc2aGZG8/UTWoQk=;
	b=OF5P8xZY0xkyIYjYyZgOAiOWbRtvtN8oM3q7WkWCi/VGKkddJ7CQoOkiqUAJAN7BfP
	K/WmQ5wz81TzXJLA4u05nqryC+5vcc7kdkb/z6tB1jjEf4uw5dkIxMhp42KdnQuZbxuB
	kuTTkjQzdSKXyeGXmjre9MhbOLJf4M4ZoGIFtGTiM8ebIwm2Fb1OWU/M+xTjii/ntgI+
	oQhGkr1fbXOmASos1sGL5TWK9Co+ybz8QY827MOcvG7NRygWPdqGA4xjkVI4a/WWBfEk
	Be3tm4/pOrPOWz4vHR2UIskUjj8uZTL44mp/rkagmTyodiS4sJmelw3dHNNfJq8Wb1C9
	1i0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hAY5Ch8mFbVHsEKRXVK9SGId3Zk6Oc2aGZG8/UTWoQk=;
	b=hKrq5/BtzONUTY3++HpZcSygtLqRM3Zkje8+nKP5gQoNTcmmHSmU4ROntayKA+jwJ9
	A2Ex03sGB5lX6fccMDVC278CFLDXhU1epSuTBYK0WT6auOVOvFWWt0GRcFBCGN3RgfE2
	2DEDAK5NSwzpAhVPPyP/zduLCe1IexTzkQFDtpmF8Id/LFpIAfEmM/RqSSDbU/I3eHcU
	Rfg3TRy1WZKWhgKs4iZqPs+h0Le07TsafwxOONRjPGsJrvWba983Yo3BG6ohJgKsHG1C
	DODT5wPzjKjAlXFvE+YKTdtrgG6Mwwlet5ZDMLCjTS2x1ciWLJOJTeWLZYBn0TNWJu+e
	US1g==
X-Gm-Message-State: AKGB3mKJjWkzVs+BI/5+USyjSnw3jjDD4JZm0OmeEDbAvZKyJnbyyQzR
	gYXLVRAz6jEIFIIqKcVYd2lGa2jCUq7dDVciz7s=
X-Google-Smtp-Source: ACJfBotqZJJPuFyzK2zrbG6EVD3UmahxunZQ9/4w4/tII5qbatikdboBuXHhidnx3/PNmpqbwgKUBCydCZg2+GzYcCs=
X-Received: by 10.28.234.87 with SMTP id i84mr6495704wmh.65.1513761919256;
	Wed, 20 Dec 2017 01:25:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.97.215 with HTTP; Wed, 20 Dec 2017 01:25:18 -0800 (PST)
In-Reply-To: <CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAPb0b+ODNZ1k2rH6+CJYbCPzLtXFmHB76NnWK4yVSDEQ68skdA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 20 Dec 2017 10:25:18 +0100
Message-ID: <CAGAf8LzbvdQ3HaYnkojw3TrQdUdOgZQ123kfZqe_8D+nw7YzwA@mail.gmail.com>
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
X-List-Received-Date: Wed, 20 Dec 2017 09:25:21 -0000
Content-Type: multipart/alternative; boundary="001a1146def878ce900560c22918"

--001a1146def878ce900560c22918
Content-Type: text/plain; charset="UTF-8"

Inside poky distro (.../poky/meta/recipes-connectivity):

[user@localhost recipes-connectivity]$ pwd
/home/user/YOCTO/oe_core_embedded/poky/meta/recipes-connectivity
[user@localhost recipes-connectivity]$ ls -al
total 96
drwxrwxr-x. 24 user user 4096 Oct 18 12:49 .
drwxrwxr-x. 19 user user 4096 Nov 18 15:13 ..
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 avahi
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 bind
*drwxrwxr-x.  3 user user 4096 Oct 18 12:49 bluez5*
drwxrwxr-x.  5 user user 4096 Oct 18 12:49 connman
drwxrwxr-x.  4 user user 4096 Oct 18 12:49 dhcp
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 iproute2
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 irda-utils
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 iw
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 libnss-mdns
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 libpcap
drwxrwxr-x.  2 user user 4096 Oct 18 12:49 mobile-broadband-provider-info
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 neard
drwxrwxr-x.  5 user user 4096 Oct 18 12:49 nfs-utils
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ofono
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 openssh
drwxrwxr-x.  4 user user 4096 Oct 18 12:49 openssl
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ppp
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 ppp-dialin
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 resolvconf
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 socat
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 wireless-tools
drwxrwxr-x.  3 user user 4096 Oct 18 12:49 wpa-supplicant
[user@localhost recipes-connectivity]$

Or:

https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-connectivity/bluez5/

You should add it in .../conf/local.conf as:

IMAGE_INSTALL_append += "rfkill" (my best guess, easiest way).

Zoran
_______

On Tue, Dec 19, 2017 at 7:03 PM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> how can i add rfkill recipe?
>
> On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran <sherifomran2000@gmail.com>
> wrote:
>
>> i used core-image-minimal for a raspberry pi 0w. But i get rfkill can not
>> open control device. when i give rfkill , i get the syntanx output, this
>> means it exists.
>> the wifi driver is installed.
>>
>> What is the rfkill device? is it /dev/rfkill ?
>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1146def878ce900560c22918
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Inside poky distro (.../poky/meta/recipes-connec=
tivity):<br></div><div><br></div><div>[user@localhost recipes-connectivity]=
$ pwd</div><div>/home/user/YOCTO/oe_core_embedded/poky/meta/recipes-connect=
ivity</div><div>[user@localhost recipes-connectivity]$ ls -al</div><div>tot=
al 96</div><div>drwxrwxr-x. 24 user user 4096 Oct 18 12:49 .</div><div>drwx=
rwxr-x. 19 user user 4096 Nov 18 15:13 ..</div><div>drwxrwxr-x.=C2=A0 3 use=
r user 4096 Oct 18 12:49 avahi</div><div>drwxrwxr-x.=C2=A0 3 user user 4096=
 Oct 18 12:49 bind</div><div><i><b><u>drwxrwxr-x.=C2=A0 3 user user 4096 Oc=
t 18 12:49 bluez5</u></b></i></div><div>drwxrwxr-x.=C2=A0 5 user user 4096 =
Oct 18 12:49 connman</div><div>drwxrwxr-x.=C2=A0 4 user user 4096 Oct 18 12=
:49 dhcp</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 iproute2=
</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 irda-utils</div>=
<div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 iw</div><div>drwxrwxr-=
x.=C2=A0 3 user user 4096 Oct 18 12:49 libnss-mdns</div><div>drwxrwxr-x.=C2=
=A0 3 user user 4096 Oct 18 12:49 libpcap</div><div>drwxrwxr-x.=C2=A0 2 use=
r user 4096 Oct 18 12:49 mobile-broadband-provider-info</div><div>drwxrwxr-=
x.=C2=A0 3 user user 4096 Oct 18 12:49 neard</div><div>drwxrwxr-x.=C2=A0 5 =
user user 4096 Oct 18 12:49 nfs-utils</div><div>drwxrwxr-x.=C2=A0 3 user us=
er 4096 Oct 18 12:49 ofono</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct=
 18 12:49 openssh</div><div>drwxrwxr-x.=C2=A0 4 user user 4096 Oct 18 12:49=
 openssl</div><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 ppp</div=
><div>drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 ppp-dialin</div><div>=
drwxrwxr-x.=C2=A0 3 user user 4096 Oct 18 12:49 resolvconf</div><div>drwxrw=
xr-x.=C2=A0 3 user user 4096 Oct 18 12:49 socat</div><div>drwxrwxr-x.=C2=A0=
 3 user user 4096 Oct 18 12:49 wireless-tools</div><div>drwxrwxr-x.=C2=A0 3=
 user user 4096 Oct 18 12:49 wpa-supplicant</div><div>[user@localhost recip=
es-connectivity]$=C2=A0</div></div><div><br></div><div>Or:</div><div><br></=
div><div><a href=3D"https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/r=
ecipes-connectivity/bluez5/">https://git.yoctoproject.org/cgit.cgi/poky/pla=
in/meta/recipes-connectivity/bluez5/</a><br></div><div><br></div><div>You s=
hould add it in .../conf/local.conf as:</div><div><br></div><div>IMAGE_INST=
ALL_append +=3D &quot;rfkill&quot; (my best guess, easiest way).<br></div><=
div><br></div><div>Zoran</div><div>_______</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Tue, Dec 19, 2017 at 7:03 PM, Sheri=
f Omran <span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" =
target=3D"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><div dir=3D"ltr">how can i add rfkill recipe?<br><=
/div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Tue, Dec 19, 2017 at 4:23 PM, Sherif Omran <=
span dir=3D"ltr">&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D=
"_blank">sherifomran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div><div><div>i used core-image-minimal f=
or a raspberry pi 0w. But i get rfkill can not open control device. when i =
give rfkill , i get the syntanx output, this means it exists. <br></div>the=
 wifi driver is installed.<br><br></div>What is the rfkill device? is it /d=
ev/rfkill ?<br></div><br></div>
</blockquote></div><br></div>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1146def878ce900560c22918--
