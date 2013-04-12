Return-Path: <aenbacka@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5F87E0146C
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 05:28:13 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id eg20so1672878lab.16
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 05:28:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:references:in-reply-to:subject:date
	:message-id:mime-version:content-type:content-transfer-encoding
	:x-mailer:thread-index:content-language;
	bh=DT9y1Rb5edxDdmlsAsjT7wiz1If1ZihHwvd2J/dzrTg=;
	b=X6dMQlrNZhn2sLy+QkrJDhjRebjEZOjg/NqN2yL0gYfcQWXlcXrgFYsarB4/1s8Cz8
	vm6zFdlJNFYK99ogVOysQSuR4xc4woofIx87NfPMxJDUFVWsJ/dNEtvGoQCoAhsi1Li1
	aQSE05/Fh8mmuQ9fnzOfTzR/kg279m2MdQNHdaCcDRyMlyUy/kMvcp2bKi3Y62uDfnDY
	WEHyWzPdcOofOpIHL4Z58nI2cp6mBcDJDPNIW0dmshy+h+KDMHUKnQ7qAe1BxxrT0hBx
	YWyy5BMlr1lqB0ROLRx+fOT0LMOd3DneJHRme9KGPJn/KUC87JkVf1xMQGQzwjCB71r0
	q0tA==
X-Received: by 10.112.3.202 with SMTP id e10mr5388892lbe.84.1365769692014;
	Fri, 12 Apr 2013 05:28:12 -0700 (PDT)
Received: from LAPTOP (mail.embedo.fi. [194.100.97.18])
	by mx.google.com with ESMTPS id v7sm3220477laz.4.2013.04.12.05.28.10
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 12 Apr 2013 05:28:11 -0700 (PDT)
From: "Andreas Enbacka" <aenbacka@gmail.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
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
In-Reply-To: <CAJTo0LY4eFJDY3fPCaO-cYm_tyJSjqvGjx0HYgf84jp79P1DTg@mail.gmail.com>
Date: Fri, 12 Apr 2013 15:27:55 +0300
Message-ID: <001201ce3779$2a0c6930$7e253b90$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQH944JhdSdZ2SxfUz8SRR72F7dePwGwEU34AgDMcSEB8hSHPAG+DacFAnO58k8Bg/s4BQILAWEjApttcRIC2X9PiQKNghvsAWczuBCXvMBdsA==
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
X-List-Received-Date: Fri, 12 Apr 2013 12:28:14 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: fi

Hi,

Thanks for the suggestion, I will fetch the dylan branch and retry.

//Andreas

-----Original Message-----
From: Burton, Ross [mailto:ross.burton@intel.com]=20
Sent: 12. huhtikuuta 2013 13:27
To: Andreas Enbacka
Cc: Bruce Ashfield; yocto@yoctoproject.org
Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto =
(core-image-sato on emenlow)

On 12 April 2013 06:58, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I tried to execute zcat /proc/config.gz | grep EVDEV, and it produced=20
> the following output:
>
> #  CONFIG_INPUT_EVDEV is not set
> CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=3Dy
>
> Does the above shed some light what could be the problem with the =
image?

Erm, yes.  My atom-pc kernel has CONFIG_INPUT_EVDEV set.

There was a bug where kernel configuration was dropping fragments, so =
you may want to try fetching the dylan branch (as we're about to
release) and trying again.

Ross


