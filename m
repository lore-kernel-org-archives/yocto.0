Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6A872E00515
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:39:29 -0800 (PST)
Received: by mail-ea0-f172.google.com with SMTP id f13so1063863eaa.31
	for <yocto@yoctoproject.org>; Thu, 14 Feb 2013 08:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=gUEwbRvgNYZxkmKAUylBNeG2S1ENb7iEmiJ3OUJkRRw=;
	b=ETiISNHMhqtXy3Nh+xrp/wNVGG+psbydIkBgRaRqhBXU47R2TazUroZRt1gGp/jOh1
	Sim4PsklkzviYkgjzHVfTKB2W1aNWz0MKX72vSVMrmA59tcnXyUPwKRWyv67tnSY5+L4
	mkCuK4M6oi4DAspuRTIJ/9+vtYxMsBTphyeDI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=gUEwbRvgNYZxkmKAUylBNeG2S1ENb7iEmiJ3OUJkRRw=;
	b=CwEMuTEBvfSNiiwxKU2UJ6L02IYauVSNCB6kBkVsl+lQmI+33jjN/Qdz67aLgX47jU
	MIvJ7GLv6QT6J0kVhd72ignS0rVuTZkoIf1jj9bFUxDWD8jY7mM6I3lVH9bPuaL31bbr
	KC2thCn+tK+ewMau5QuaCRQMAPiQRoj3Yr+EdqhHtC/mA3ztZwe8DYZ2Fet6/u4QYWu2
	kgPTu9kD7ktzdl/zWTuGJaVJ2dSVHOZwqitJjXNUJNXguzOOvTcXu5jO6nMLYOJ8vVK4
	RB9H2nbfl1OwRiJ68rGUHkX8A9A3L+lFyELCinPPzQfJ+C0r/S2t7ADCUUFERLSJKFqT
	HXfg==
MIME-Version: 1.0
X-Received: by 10.14.3.133 with SMTP id 5mr56705830eeh.43.1360859967276; Thu,
	14 Feb 2013 08:39:27 -0800 (PST)
Received: by 10.223.197.195 with HTTP; Thu, 14 Feb 2013 08:39:26 -0800 (PST)
In-Reply-To: <CAGOhT_e+50tWt5jd4BydNdbe5gqgab9GWBaaPmWbDJq1=TFskA@mail.gmail.com>
References: <CA+YB3rZ6dj1MZBEk1taj6moeTj63qjm2LjDJb=DprYK3_=BjoA@mail.gmail.com>
	<CAGOhT_e+50tWt5jd4BydNdbe5gqgab9GWBaaPmWbDJq1=TFskA@mail.gmail.com>
Date: Thu, 14 Feb 2013 08:39:26 -0800
Message-ID: <CA+gsK-ozM16oO4tHhjRupAdsqbPZah4a=ESOSGPte8gAUPUEmA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: John Mehaffey <mehaf@gedanken.com>
X-Gm-Message-State: ALoCoQn2vdv1ImlVovOQPFXoyrjlIXHeIzAPqEFeQ7hFDM7Tjpunj9Nfjd69fd5/2BaNMUGnQCd+
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: The Yocto Project at upcoming conferences
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Feb 2013 16:39:29 -0000
Content-Type: multipart/alternative; boundary=047d7b6226a4f0475304d5b1e682

--047d7b6226a4f0475304d5b1e682
Content-Type: text/plain; charset=ISO-8859-1

> It appears that there will be a 2-day training session following the
> conference as well (Sat-Sun):
>
> See
> http://events.linuxfoundation.org/events/embedded-linux-conference/schedule
> :
>  [Add-On] Building Embedded Linux with the Yocto Project Crash Course
> (LF404)<http://embeddedlinuxconference2013.sched.org/event/e537dca881b6ba52f103be1e10f3bbc6?iframe=yes&w=900&sidebar=yes&bg=no>
>

Yes, that is right. It's a Linux Foundation offering. It is a condensed
version of our 5-day class in 2-days of action. That's why it's called a
crash course. :) The class covers pretty much everything from the Yocto
Project basics to ADT and Eclipse. And you will get a Beaglebone (yours to
keep) and learn how to make a YP BSP for it.

How would I know? I developed the class material and will teaching the
class.

Cheers,
Rudi

--047d7b6226a4f0475304d5b1e682
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><div>It appears t=
hat there will be a 2-day training session following the conference as well=
 (Sat-Sun):<br>
<br>See <a href=3D"http://events.linuxfoundation.org/events/embedded-linux-=
conference/schedule" target=3D"_blank">http://events.linuxfoundation.org/ev=
ents/embedded-linux-conference/schedule</a>:<br>
<span><span title=3D"Bernhard_Hoos@mentor.com"></span></span><span><span ti=
tle=3D"John_Cherry@mentor.com"></span></span><span><span title=3D"Sean_Huds=
on@mentor.com"></span></span> <span><a href=3D"http://embeddedlinuxconferen=
ce2013.sched.org/event/e537dca881b6ba52f103be1e10f3bbc6?iframe=3Dyes&amp;w=
=3D900&amp;sidebar=3Dyes&amp;bg=3Dno" target=3D"_blank">[Add-On] Building E=
mbedded Linux with the Yocto Project Crash Course (LF404)</a></span></div>
</div></blockquote><div><br></div><div style>Yes, that is right. It&#39;s a=
 Linux Foundation offering. It is a condensed version of our 5-day class in=
 2-days of action. That&#39;s why it&#39;s called a crash course. :) The cl=
ass covers pretty much everything from the Yocto Project basics to ADT and =
Eclipse. And you will get a Beaglebone (yours to keep) and learn how to mak=
e a YP BSP for it.</div>
<div style><br></div><div style>How would I know? I developed the class mat=
erial and will teaching the class.</div><div style><br></div><div style>Che=
ers,</div><div style>Rudi</div></div>
</div></div>

--047d7b6226a4f0475304d5b1e682--
