Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32950E009BA; Fri,  2 May 2014 08:35:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EE8CE003C7
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 08:35:44 -0700 (PDT)
Received: by mail-lb0-f180.google.com with SMTP id w7so3228261lbi.11
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:35:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aOWSnUjhB1lhmbWakgOIPCP5kjlIvnGa6gjane/nQOc=;
	b=gZgPC0JfEzAWMH+IkoruV3meCx1ItBmaSiOpVZQOpJ48yoAvDtHSvfvnGlVVpPKFOv
	VK32bfI84BGSFXpc4qKjLiiKBCMgifHnWcUtroCrmQpGpx6EO5sPF7Mwqy4dZayq9Lzj
	PfqM7gTcmbOgO8F6SmU5QvjvIyY7F2X/Mf4xw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=aOWSnUjhB1lhmbWakgOIPCP5kjlIvnGa6gjane/nQOc=;
	b=l5DqoXo5QdYcFgFfJEFC/lG3wDpxW84DqQEGIynM/pDFNWqcO3HnshLwtTFAlRYQX2
	DmcDNUhbgUWeFLFCBIXwQPVJPzR14E78yV6NTVPxiuzx8Yxe0Y6BkecITn0AxJTF5YBt
	Tl/uXRIz5HluANvkOWgTtzWnUzeHq3hbpThRRU29GJVljMLQ3Fu4XZU9D27Q/Dh8/UAT
	KshIb5XEMAoUMWX9HUrJt3rebXg1JHLl9IsUxcvaAU5wwll4sSeUKDR+eI7R7cOUPPyL
	Xdk5Veia1MqYxd1vC9D35Cl7Jun33Cjs1QQtSExO/c9LNUW0oEeJScrqw/zD8/jgjLP8
	XYSQ==
X-Gm-Message-State: ALoCoQm7DzDhHkZW4S5mPynzc/zd3ozY5oNPiF0WxyhghthPGxbKNi6Id2ZGEB/44BPXFT5I62Yq
MIME-Version: 1.0
X-Received: by 10.112.137.5 with SMTP id qe5mr12286156lbb.16.1399044943118;
	Fri, 02 May 2014 08:35:43 -0700 (PDT)
Received: by 10.112.45.65 with HTTP; Fri, 2 May 2014 08:35:43 -0700 (PDT)
In-Reply-To: <CAMKF1spG-vMRCh+0MHKsRq6D4qoj6qQ9VhfAevsASJ2YvN=9CA@mail.gmail.com>
References: <alpine.LFD.2.11.1405011731520.3588@localhost>
	<CA+gsK-otGEfVxRyOtH+SXf+wCjZGcPhDWJZZ_esfKO_tQL43dA@mail.gmail.com>
	<alpine.LFD.2.11.1405012032460.2904@localhost>
	<CAMKF1spG-vMRCh+0MHKsRq6D4qoj6qQ9VhfAevsASJ2YvN=9CA@mail.gmail.com>
Date: Fri, 2 May 2014 08:35:43 -0700
Message-ID: <CA+gsK-o_oE7iXx9iv_Zw0iW9GYSGAEaqxePgJK4uoMi=RhHZ4g@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is anyone giving a yocto talk at linuxcon in chicago in august?
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
X-List-Received-Date: Fri, 02 May 2014 15:35:48 -0000
Content-Type: multipart/alternative; boundary=089e0115fd3cdc114204f86c88fe

--089e0115fd3cdc114204f86c88fe
Content-Type: text/plain; charset=UTF-8

>
>
>>   i think that's what i'm going to submit. tomorrow's the submission
>> deadline so i have to get something in quick. i figure i'll submit
>> something like "Building an Embedded Linux System Using YoctoProject",
>> using the BeagleBone Black as the platform example.
>>
>>
> I have done a POC generating very small specific appliances using OE and
> lxc, in previous life which you then launch in thousands on demands on a
> big server to do specific jobs like subscriber connections etc. I think
> such a topic would definitely interest linuxcon attendees, I don't plan to
> attend this one but if someone wants to take this and develop into a talk I
> can help.
>
>
+1, a presentation like that would be more relevant (and more likely to be
accepted by the program committee) for LinuxCon than one that evolves
around the BeagleBone. That has a better fit for ELC.

It would also be a good opportunity that YP is not limited to embedded
devices.

:rjs

--089e0115fd3cdc114204f86c88fe
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div class=3D""><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
=C2=A0 i think that&#39;s what i&#39;m going to submit. tomorrow&#39;s the =
submission<br>
deadline so i have to get something in quick. i figure i&#39;ll submit<br>
something like &quot;Building an Embedded Linux System Using YoctoProject&q=
uot;,<br>
using the BeagleBone Black as the platform example.<br>
<br></blockquote><div><br></div></div><div>I have done a POC generating ver=
y=C2=A0small specific=C2=A0appliances using OE and lxc, in previous life wh=
ich you then launch in thousands on demands on a big server to do specific =
jobs like subscriber connections etc. I think such a topic would definitely=
 interest=C2=A0linuxcon attendees, I don&#39;t plan to attend this one but =
if someone wants=C2=A0to take this and develop into a talk I can help.</div=
>
<div class=3D"HOEnZb"><div class=3D"h5">
<div>=C2=A0</div></div></div></blockquote><div>+1, a presentation like that=
 would be more relevant (and more likely to be accepted by the program comm=
ittee) for LinuxCon than one that evolves around the BeagleBone. That has a=
 better fit for ELC.</div>
<div><br></div><div>It would also be a good opportunity that YP is not limi=
ted to embedded devices.</div><div><br></div><div>:rjs</div><div>=C2=A0</di=
v></div>
</div></div>

--089e0115fd3cdc114204f86c88fe--
