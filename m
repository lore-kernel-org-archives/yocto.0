Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE07E00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 18:45:40 -0700 (PDT)
Received: by iecs9 with SMTP id s9so2629373iec.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 18:45:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=sFjN/5hPTtkO1Etx2enW2++ABZMwkhlb36InQZrTGrU=;
	b=U/Yna/ilKNHeYC3LnMNX57y0sb1/Rf2JDDqLMk6uaXdiVltLMJ2h8LuqWAWllPHH9q
	RBtYQ2jTTUXj2ZbW2nWqCpAYKpAKq7pVKJAqiR5nL/bf+b27yBKDUTbOHdv5XR8LrM+A
	URQ0Y00VZ4ykqjQ9GWhLvGIzu81WXqgdFtdDfYzeJY6yx8akBCbCxpMLHx/cTHfrH5kU
	TXNjpaUKUezLGAITiouXp6cj/Z3tEAisVCEgRI9KAgaFtxWfkoVw5o7v2Qyw0ambAQk6
	9HpOqKelrR1o6aUquH1gcmr97zNwPylN9MsCqw7KHS70zSiO0rOB+Cn8GjLGEf0tPcZ+
	UQ6w==
MIME-Version: 1.0
Received: by 10.50.161.131 with SMTP id xs3mr4875288igb.46.1346463939927; Fri,
	31 Aug 2012 18:45:39 -0700 (PDT)
Received: by 10.64.39.172 with HTTP; Fri, 31 Aug 2012 18:45:39 -0700 (PDT)
Received: by 10.64.39.172 with HTTP; Fri, 31 Aug 2012 18:45:39 -0700 (PDT)
In-Reply-To: <CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
References: <504144D8.40605@intel.com>
	<CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
Date: Fri, 31 Aug 2012 18:45:39 -0700
Message-ID: <CA+gsK-rEy9Yb8iw4oq6WDm4rumWZR3kjigf0wqXO8LcjhzxY-g@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
X-Gm-Message-State: ALoCoQmUT8QaHvTFu7JJekPvng4qIDR+3fpqvAaGxQVMwg653QZiBMDAaH2tDujyMCBIqc5Nugx8
Cc: yocto@yoctoproject.org
Subject: Re: Beaglebone BSP for denzil?
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
X-List-Received-Date: Sat, 01 Sep 2012 01:45:40 -0000
Content-Type: multipart/alternative; boundary=14dae9340defd79fbd04c89a101a

--14dae9340defd79fbd04c89a101a
Content-Type: text/plain; charset=ISO-8859-1

Typo correction: the BBone has an AM3359 CPU.
On Aug 31, 2012 6:44 PM, "Rudolf Streif" <rstreif@linuxfoundation.org>
wrote:

> Hey Scott,
>
> I am doing the same thing for a Linux Foundation class.
>
> The root filesystem that YP builds for the BBoard works just fine for the
> BBone. That's at least true for core-image-minimal. I tested that with the
> kernel that comes with the BBone.
>
> The kernel does not work. The BBoard has an OMAP3 CPU the BBoard has an
> AM3359 CPU.
>
> I built a kernel with YP from kernel.org some patches and a defconfig. My
> goal is to use linux-yocto so I started from scratch and did not use
> meta-ti. And it's educational too.
>
> I still used MLO and UBoot that came with the BBone. My next steps are to
> build the kernel using linux-yocto and then eventually also building UBoot
> with YP.
>
> I can give more info but right now I am just typing this on a mobile with
> no access to my dev box. I will follow up.
>
> Cheers,
> Rudi
> On Aug 31, 2012 4:11 PM, "Scott Garman" <scott.a.garman@intel.com> wrote:
>
>> Hello,
>>
>> Am I correct in understanding that the TI Beagleboard BSP from
>> yoctoproject.org should work with the Beaglebone, or do I need meta-ti?
>> I'm not looking for accelerated graphics or anything - this will just be
>> used in a classroom setting where there will be Beaglebones I'd like to
>> boot up to a minimal console image.
>>
>> I'll be doing this with the denzil release.
>>
>> Thanks,
>>
>> Scott
>>
>> --
>> Scott Garman
>> Embedded Linux Engineer - Yocto Project
>> Intel Open Source Technology Center
>> ______________________________**_________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>
>

--14dae9340defd79fbd04c89a101a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Typo correction: the BBone has an AM3359 CPU.</p>
<div class=3D"gmail_quote">On Aug 31, 2012 6:44 PM, &quot;Rudolf Streif&quo=
t; &lt;<a href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundati=
on.org</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">
<p>Hey Scott,</p>
<p>I am doing the same thing for a Linux Foundation class.</p>
<p>The root filesystem that YP builds for the BBoard works just fine for th=
e BBone. That&#39;s at least true for core-image-minimal. I tested that wit=
h the kernel that comes with the BBone.</p>
<p>The kernel does not work. The BBoard has an OMAP3 CPU the BBoard has an =
AM3359 CPU.</p>
<p>I built a kernel with YP from <a href=3D"http://kernel.org" target=3D"_b=
lank">kernel.org</a> some patches and a defconfig. My goal is to use linux-=
yocto so I started from scratch and did not use meta-ti. And it&#39;s educa=
tional too.</p>


<p>I still used MLO and UBoot that came with the BBone. My next steps are t=
o build the kernel using linux-yocto and then eventually also building UBoo=
t with YP. </p>
<p>I can give more info but right now I am just typing this on a mobile wit=
h no access to my dev box. I will follow up.</p>
<p>Cheers,<br>
Rudi</p>
<div class=3D"gmail_quote">On Aug 31, 2012 4:11 PM, &quot;Scott Garman&quot=
; &lt;<a href=3D"mailto:scott.a.garman@intel.com" target=3D"_blank">scott.a=
.garman@intel.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">

Hello,<br>
<br>
Am I correct in understanding that the TI Beagleboard BSP from <a href=3D"h=
ttp://yoctoproject.org" target=3D"_blank">yoctoproject.org</a> should work =
with the Beaglebone, or do I need meta-ti? I&#39;m not looking for accelera=
ted graphics or anything - this will just be used in a classroom setting wh=
ere there will be Beaglebones I&#39;d like to boot up to a minimal console =
image.<br>


<br>
I&#39;ll be doing this with the denzil release.<br>
<br>
Thanks,<br>
<br>
Scott<br>
<br>
-- <br>
Scott Garman<br>
Embedded Linux Engineer - Yocto Project<br>
Intel Open Source Technology Center<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div>
</blockquote></div>

--14dae9340defd79fbd04c89a101a--
