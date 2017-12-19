Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 482FAE00D81; Tue, 19 Dec 2017 07:41:01 -0800 (PST)
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
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB224E00CEF
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 07:41:00 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id b18so10665030pgv.10
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 07:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rptQDTql3q7ISOtxRXyyzkv2GeTrqGV5WKBpVlUXu8Q=;
	b=d/258IeDH0kk6gsIPv0Ao0mR333J/5iAVkMZy/pUzaOpt6EBFH5g9D5i5r7JO1szPr
	gtPBzwH9hXP/hrfjj2DsU1am7cNQkNix43uRGEktxCU7fvxagA4ZiiAHrn5pDQfyWUXy
	gXkGfagVDvyky7No4iVpAImdtL2X6eAsZRpTkKVTBM/L5q3GBwiC06Bk7HffRSav46X4
	4u47oGZBcQYWMdJXX2GqilCAz36dloV7x5A1mvrpSrXQPL+NbsFkLeFlnc/SqOT3ZUMX
	mBss1YCBmqCIbHiCBM3klxH8Izvv8Mv2ITVZHwr4I9xBTvat0rSn3sBirUWUYDKkPBsl
	7Mzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rptQDTql3q7ISOtxRXyyzkv2GeTrqGV5WKBpVlUXu8Q=;
	b=AYdphhdUO64+CXz+dX8cwBjec7KMV6rY7rDCLQZyj3tUL7+KnRjpTXdgMO+wLbo8NJ
	ePOFavArFUyFHfi9curNfJhHEKyozbXsEmLtVRcqdoRicTsd42lOWiJ1717x9Wbn2t/g
	SWN12W3bM0SnAqZcIuF3HQ5UmQ8i0UbkW6u3lRN/D/Xmmu9sWJ08qm1NLoaYoYyMh0nY
	ALRH6SEd66gbF1GGaB2nVet4jHSaIXFXAw6PcIfFwstbQK1/J9r3SleWOLNYXeuumaPE
	neDn35kw28aHnOv0Pr6zsTlPAu+FYNGGHwPUfl71m4Ye37Xkzwm+qtBMCvaq7VZHE9IA
	WkYw==
X-Gm-Message-State: AKGB3mJDlD1LFJzxs+T7kwiZB0qtQGOZOuFiyjmWJp9iwruRih48Rfdk
	lB0WNkRecwNFEu+/IX2KicklOa5Ll1NE9/KpsEY=
X-Google-Smtp-Source: ACJfBouInO8ji2eMPanx+e2YzLFwASIo5zYgSzm6bx9JaH3XnFiSy19+Yz89j4Im/ztirPwfl8tm1Bt2YVhYC/wC9fI=
X-Received: by 10.98.150.221 with SMTP id s90mr3623366pfk.151.1513698060300;
	Tue, 19 Dec 2017 07:41:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Tue, 19 Dec 2017 07:40:59 -0800 (PST)
In-Reply-To: <CAMRMzCCkbJ4RQh03_wNoTK20Gg2fKwioC0Jk3DhoJuNq9d3LTg@mail.gmail.com>
References: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
	<CAMRMzCCkbJ4RQh03_wNoTK20Gg2fKwioC0Jk3DhoJuNq9d3LTg@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 19 Dec 2017 16:40:59 +0100
Message-ID: <CAPb0b+NA5Do7x1KrUKU0-8dZM1WXWbYrVXA-At2WUSnMDKnPtQ@mail.gmail.com>
To: Marc Ferland <marc.ferland@gmail.com>
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
X-List-Received-Date: Tue, 19 Dec 2017 15:41:01 -0000
Content-Type: multipart/alternative; boundary="94eb2c0be9b42e76550560b34b83"

--94eb2c0be9b42e76550560b34b83
Content-Type: text/plain; charset="UTF-8"

when i search for rfkill using an image that works
find / -name 'rfkill'

I get some files in /lib/ and other folders.
when i search with core-image-basic for rfkill, it does not exist.

how to add it ? is it a feature or sw package?

On Tue, Dec 19, 2017 at 4:31 PM, Marc Ferland <marc.ferland@gmail.com>
wrote:

> On Tue, Dec 19, 2017 at 10:23 AM, Sherif Omran
> <sherifomran2000@gmail.com> wrote:
> > i used core-image-minimal for a raspberry pi 0w. But i get rfkill can not
> > open control device. when i give rfkill , i get the syntanx output, this
> > means it exists.
> > the wifi driver is installed.
> >
> > What is the rfkill device? is it /dev/rfkill ?
> >
> Use
>
> rfkill list
>
> to list all devices. Then (for example):
>
> rfkill unblock bluetooth
> or
> rfkill unblock all
>
> to unblock the bluetooth device or all devices (resp.).
>
> Marc
>

--94eb2c0be9b42e76550560b34b83
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>when i search for rfkill using an image that wor=
ks<br></div>find / -name &#39;rfkill&#39;<br><br></div><div>I get some file=
s in /lib/ and other folders.<br></div><div>when i search with core-image-b=
asic for rfkill, it does not exist.<br><br></div>how to add it ? is it a fe=
ature or sw package?</div><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Tue, Dec 19, 2017 at 4:31 PM, Marc Ferland <span dir=3D"ltr">&l=
t;<a href=3D"mailto:marc.ferland@gmail.com" target=3D"_blank">marc.ferland@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, =
Dec 19, 2017 at 10:23 AM, Sherif Omran<br>
<div><div class=3D"h5">&lt;<a href=3D"mailto:sherifomran2000@gmail.com">she=
rifomran2000@gmail.com</a>&gt; wrote:<br>
&gt; i used core-image-minimal for a raspberry pi 0w. But i get rfkill can =
not<br>
&gt; open control device. when i give rfkill , i get the syntanx output, th=
is<br>
&gt; means it exists.<br>
&gt; the wifi driver is installed.<br>
&gt;<br>
&gt; What is the rfkill device? is it /dev/rfkill ?<br>
&gt;<br>
</div></div>Use<br>
<br>
rfkill list<br>
<br>
to list all devices. Then (for example):<br>
<br>
rfkill unblock bluetooth<br>
or<br>
rfkill unblock all<br>
<br>
to unblock the bluetooth device or all devices (resp.).<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Marc<br>
</font></span></blockquote></div><br></div>

--94eb2c0be9b42e76550560b34b83--
