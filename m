Return-Path: <drew.moseley@mender.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AC03E00BC0; Thu, 22 Jun 2017 05:16:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B054EE00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:16:21 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id l75so5119107ywc.3
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 05:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mender-io.20150623.gappssmtp.com; s=20150623;
	h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
	:references; bh=WcEmE+XoMYRCz/OfOnPKNIGMSj9qxKXV0y8cKQXde+4=;
	b=Vc9/cem9FxxyrEPwJnmFIN1MWAdk5AHeN8QS52Zg9BKy05rdzQKhbw/X0K3fqBG9bJ
	NxlfOJrbc21Y71gPvMvsnnlSMS38UT4zCCFIP0M6HJ/l116XVXoZPDi8e6p7q7Rmfuls
	ymE6KG7PyHdGILNMUE44SVtvVOuGL7O0j+VwfWD5YXa1Mkz+Inc1MK2uByTj+DUj3ACn
	V/50Rbr8ccmxL4aT7PxJN1TyXlZ80D+KuR9k8cN2K59eIa9P5VEFXv1ifwLCCwBAJqoD
	VccFHvDExEBtLKs2KiHMJzyTq1O84Fmrs2827j+HpEZlhlkAXkQeXnBi3qO9hEO5CeR5
	eQRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:mime-version:subject:date
	:in-reply-to:cc:to:references;
	bh=WcEmE+XoMYRCz/OfOnPKNIGMSj9qxKXV0y8cKQXde+4=;
	b=PADA07iTC4IJ/MSSWeYlMnEnJxfL8wZvOfN2djihIm4dMT7X3h+bAkwl/khXctObfA
	+ck/tcafM6MPOKLKdbwd5lkA8I7W/oeVRPoHEF+dUKkZW4t6BIg+m4kEPJofr3rmCAmT
	S+Qajuvnd5xbgvA9pN2lj1hHkDH4i4lxGOVQLA1xxZCtSlqI4z4HPe1LxQnbWUnitkfR
	EBt0dTdQsA09dl+6O7zcF/9IY8LUnGwpbNrSQkuSap99zRCHHtwf/dVo9KycJi4ZsyNx
	z19xeqdpraLvZUwneegBIOiRq8aI2S9n2GlgR1pa0UYs0+ZCqZWVUOaQMqg8m1wfdcFJ
	VYcA==
X-Gm-Message-State: AKS2vOxbXqeoHCdtEkLzaLNrAg2UOO96oPXT4x/LB6PPIO8J8oRdz5HI
	0/R1+vtPnaslMRD5SeIqpQ==
X-Received: by 10.13.207.198 with SMTP id r189mr1471152ywd.308.1498133780872; 
	Thu, 22 Jun 2017 05:16:20 -0700 (PDT)
Received: from [192.168.1.33] (65-35-172-144.res.bhn.net. [65.35.172.144])
	by smtp.gmail.com with ESMTPSA id l21sm467432ywh.10.2017.06.22.05.16.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 22 Jun 2017 05:16:20 -0700 (PDT)
From: Drew Moseley <drew.moseley@mender.io>
Message-Id: <1DC8063B-E765-4528-AA1C-982E2BE35636@mender.io>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 22 Jun 2017 08:16:19 -0400
In-Reply-To: <c74cfb7b27f71ae5573c5b776fda7c99@technux.se>
To: petter@technux.se
References: <cover.1497646644.git.drew.moseley@mender.io>
	<195a92fc1faa49495d1a2b6cda0134f07ce72189.1497646644.git.drew.moseley@mender.io>
	<20170619054832.GA7840@linux-uys3>
	<826973B0-DCFF-435C-87F0-44FD8B82817C@mender.io>
	<CAHUNapTWt21mhdcVJEUh+8xVZYbSjejnhykD8qszcAoJrM97Rw@mail.gmail.com>
	<c74cfb7b27f71ae5573c5b776fda7c99@technux.se>
X-Mailer: Apple Mail (2.3273)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][RFC PATCH 3/3] chip: Add chip-u-boot-scr recipe and flash script
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
X-List-Received-Date: Thu, 22 Jun 2017 12:16:36 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_76032624-24FD-45EF-BB46-DF5687087896"

--Apple-Mail=_76032624-24FD-45EF-BB46-DF5687087896
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jun 22, 2017, at 12:22 AM, Petter Mab=C3=A4cker <petter@technux.se> =
wrote:
>=20
> 2017-06-19 16:40 skrev Trevor Woerner:
>=20
>> On Mon, Jun 19, 2017 at 7:22 AM, Drew Moseley <drew.moseley@mender.io =
<mailto:drew.moseley@mender.io>> wrote:
>>>> On Jun 19, 2017, at 1:48 AM, Trevor Woerner <twoerner@gmail.com =
<mailto:twoerner@gmail.com>> wrote:
>>>>>=20
>>>>> If you have a serial console connected to +your board, you will =
see the progress and a message on the console will indicate when +the =
flashing is completed.
>>>> hmmm, never saw this. I have a console connected, the moment the =
script started, on the console I got: U-Boot SPL 2016.01 (Jun 19 2017 - =
00:32:19) DRAM: 512 MiB CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2 Trying to =
boot from which looks right, the date+time are good.
>>> Did you see the proper serial output after using a smaller image?
>> Yes. With a smaller image (~90MB) the flash update worked. Maybe
>> another improvement for a v2 would be for the script to look at the
>> size of /full/path/to/UBI_IMAGE and issue a warning/error if it's too
>> big?
>>=20
>> I think the wording of what to expect on the host and over the serial
>> console could use some updating. Not to mention you say: "the status
>> LED on the CHIP board will flash 30 times per second..." which =
doesn't
>> seem to be the case, it looks more like the LED is toggled every 2
>> seconds (??), in any case, it's a lot slower than 30/sec.
> I also had the same experience as Trevor, that the led seems to flash =
every 2 seconds. Also the code indicate that 2 x 1 sec sleep is used in =
this area, so please go through the above description when it comes to =
led experience during flashing. Another minor comment is that I believe =
you should update the UBI_IMAGE example in README to use the "default" =
meta-chip hwup image (chip-hwup-image-chip.ubi).
>=20
> BR Petter
>=20
> Petter Mab=C3=A4cker
>=20
> Technux <petter@technux.se>
> www.technux.se

Indeed.  The comment was intended to say that it flashes 30/min.  =
Obviously flashing 30/sec would not be a very easy thing for people to =
spot.

I=E2=80=99ll work through the comments and submit V2.  It will take me a =
few days.

Many thanks for the feedback.

Drew


--Apple-Mail=_76032624-24FD-45EF-BB46-DF5687087896
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jun 22, 2017, at 12:22 AM, Petter Mab=C3=A4cker &lt;<a =
href=3D"mailto:petter@technux.se" class=3D"">petter@technux.se</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D"">
<div style=3D"font-family: Helvetica,Arial,sans-serif" class=3D""><p =
class=3D"">2017-06-19 16:40 skrev Trevor Woerner:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff =
2px solid; margin-left:5px; width:100%" class=3D""><!-- html ignored =
--><!-- head ignored --><!-- meta ignored -->
<pre class=3D"">On Mon, Jun 19, 2017 at 7:22 AM, Drew Moseley &lt;<a =
href=3D"mailto:drew.moseley@mender.io" =
class=3D"">drew.moseley@mender.io</a>&gt; wrote:</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff =
2px solid; margin-left:5px; width:100%" class=3D"">
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff =
2px solid; margin-left:5px; width:100%" class=3D"">On Jun 19, 2017, at =
1:48 AM, Trevor Woerner &lt;<a href=3D"mailto:twoerner@gmail.com" =
class=3D"">twoerner@gmail.com</a>&gt; wrote:
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff =
2px solid; margin-left:5px; width:100%" class=3D"">If you have a serial =
console connected to +your board, you will see the progress and a =
message on the console will indicate when +the flashing is =
completed.</blockquote>
hmmm, never saw this. I have a console connected, the moment the script =
started, on the console I got: U-Boot SPL 2016.01 (Jun 19 2017 - =
00:32:19) DRAM: 512 MiB CPU: 1008000000Hz, AXI/AHB/APB: 3/2/2 Trying to =
boot from which looks right, the date+time are good.</blockquote>
Did you see the proper serial output after using a smaller =
image?</blockquote>
<pre class=3D"">Yes. With a smaller image (~90MB) the flash update =
worked. Maybe
another improvement for a v2 would be for the script to look at the
size of /full/path/to/UBI_IMAGE and issue a warning/error if it's too
big?

I think the wording of what to expect on the host and over the serial
console could use some updating. Not to mention you say: "the status
LED on the CHIP board will flash 30 times per second..." which doesn't
seem to be the case, it looks more like the LED is toggled every 2
seconds (??), in any case, it's a lot slower than 30/sec.</pre>
</blockquote><p class=3D"">I also had the same experience as Trevor, =
that the led seems to flash every 2 seconds. Also the code indicate that =
2 x 1 sec sleep is used in this area, so please go through the above =
description when it comes to led experience during flashing. Another =
minor comment is that I believe you should update the UBI_IMAGE example =
in README to use the "default" meta-chip hwup image =
(chip-hwup-image-chip.ubi).</p><p class=3D"">BR Petter</p>
<div class=3D"">
<pre class=3D"">Petter Mab=C3=A4cker

Technux &lt;<a href=3D"mailto:petter@technux.se" =
class=3D"">petter@technux.se</a>&gt;
<a href=3D"http://www.technux.se" class=3D"">www.technux.se</a></pre>
</div>
</div>
</div></blockquote></div><div class=3D"">Indeed. &nbsp;The comment was =
intended to say that it flashes 30/min. &nbsp;Obviously flashing 30/sec =
would not be a very easy thing for people to spot.</div><div =
class=3D""><br class=3D""></div><div class=3D"">I=E2=80=99ll work =
through the comments and submit V2. &nbsp;It will take me a few =
days.</div><div class=3D""><br class=3D""></div><div class=3D"">Many =
thanks for the feedback.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Drew</div><div class=3D""><br class=3D""></div></body></html>=

--Apple-Mail=_76032624-24FD-45EF-BB46-DF5687087896--
