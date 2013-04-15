Return-Path: <aenbacka@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E451E0140A
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 02:27:52 -0700 (PDT)
Received: by mail-lb0-f171.google.com with SMTP id v10so4329271lbd.30
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 02:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=86X2RcZqVkeTUtfZpRzaC78vdhgL7patmn8m222jhzY=;
	b=Xhs8B+ArgwV0J5eDt1Y6zPt1RxdWJUa8xCcq/1DFG2AOXhECmRBPc7uMLEcfv09d28
	bnTLyWEdqacrtmqBJZcgqb1caori85rhoKY423aFK4NmUubMm28hGLmXDkcB9C9YzVRd
	GbicoLRXI1YMG9sNfxkvef/dhwzg+dyQVM4evWxf9hRCDhGGH+pnetJOXuck0LlUXxrn
	emkGjontbKhYc745OSMr1FvFu6X1vPZb2ZdbYRgOIKNwf5rswn4kJCw9JltehGwXsKVe
	00MLxOXTEBUt1ZRXj1VdecyIHQY+N8fggfinzTfMHUql97jlwWcp/SExugmF7JN6+BhY
	hDQg==
X-Received: by 10.112.129.38 with SMTP id nt6mr9957092lbb.7.1366018071972;
	Mon, 15 Apr 2013 02:27:51 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id t20sm7561814lbi.5.2013.04.15.02.27.49
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 15 Apr 2013 02:27:50 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Bruce Ashfield'" <bruce.ashfield@windriver.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
	<001b01ce3480$ac63e850$052bb8f0$@gmail.com>
	<CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
	<001701ce35b5$708f5f40$51ae1dc0$@gmail.com>
	<51657C37.9000901@windriver.com>
	<000d01ce3742$c91dddb0$5b599910$@gmail.com>
	<CAJTo0LY4eFJDY3fPCaO-cYm_tyJSjqvGjx0HYgf84jp79P1DTg@mail.gmail.com>
	<001201ce3779$2a0c6930$7e253b90$@gmail.com>
	<5167FF48.8080601@windriver.com>
In-Reply-To: <5167FF48.8080601@windriver.com>
Date: Mon, 15 Apr 2013 12:27:31 +0300
Message-ID: <000001ce39bb$757543d0$605fcb70$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34AgDMcSEB8hSHPAG+DacFAnO58k8Bg/s4BQILAWEjApttcRIC2X9PiQKNghvsAWczuBAB3jrUlQLoXkwRl5sPaMA=
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Mon, 15 Apr 2013 09:27:53 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

Hello,

I was finally able to get evdev working with the core-image-sato image. =
First I tried to fetch the dylan branch (yocto and =
meta-intel/meta-emenlow), and did a rebuild. However, evdev support was =
still missing from the kernel (CONFIG_INPUT_EVDEV not set). Then I ran =
menuconfig, and enabled the event input interface in the kernel config, =
and performed image rebuild. After that evdev support was working fine.=20

Thanks for the help!

Best regards,
Andreas

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: 12. huhtikuuta 2013 15:34
To: Andreas Enbacka
Cc: 'Burton, Ross'; yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto =
(core-image-sato on emenlow)

On 13-04-12 08:27 AM, Andreas Enbacka wrote:
> Hi,
>
> Thanks for the suggestion, I will fetch the dylan branch and retry.
>

And I can confirm that with an atom-pc board I configured just minutes =
ago:

% grep EVDEV linux-atom-pc-standard-build/.config
CONFIG_INPUT_EVDEV=3Dy

Cheers,

Bruce


> //Andreas
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: 12. huhtikuuta 2013 13:27
> To: Andreas Enbacka
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: [yocto] Problem with mouse and keyboard detection in=20
> yocto (core-image-sato on emenlow)
>
> On 12 April 2013 06:58, Andreas Enbacka <aenbacka@gmail.com> wrote:
>> I tried to execute zcat /proc/config.gz | grep EVDEV, and it produced =

>> the following output:
>>
>> #  CONFIG_INPUT_EVDEV is not set
>> CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=3Dy
>>
>> Does the above shed some light what could be the problem with the =
image?
>
> Erm, yes.  My atom-pc kernel has CONFIG_INPUT_EVDEV set.
>
> There was a bug where kernel configuration was dropping fragments, so=20
> you may want to try fetching the dylan branch (as we're about to
> release) and trying again.
>
> Ross
>



