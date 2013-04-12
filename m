Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3089E0146C
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 05:34:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r3CCYOMh007302
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 12 Apr 2013 05:34:25 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Fri, 12 Apr 2013 05:34:24 -0700
Message-ID: <5167FF48.8080601@windriver.com>
Date: Fri, 12 Apr 2013 08:34:16 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: Andreas Enbacka <aenbacka@gmail.com>
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
In-Reply-To: <001201ce3779$2a0c6930$7e253b90$@gmail.com>
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
X-List-Received-Date: Fri, 12 Apr 2013 12:34:34 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-12 08:27 AM, Andreas Enbacka wrote:
> Hi,
>
> Thanks for the suggestion, I will fetch the dylan branch and retry.
>

And I can confirm that with an atom-pc board I configured just
minutes ago:

% grep EVDEV linux-atom-pc-standard-build/.config
CONFIG_INPUT_EVDEV=y

Cheers,

Bruce


> //Andreas
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: 12. huhtikuuta 2013 13:27
> To: Andreas Enbacka
> Cc: Bruce Ashfield; yocto@yoctoproject.org
> Subject: Re: [yocto] Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
>
> On 12 April 2013 06:58, Andreas Enbacka <aenbacka@gmail.com> wrote:
>> I tried to execute zcat /proc/config.gz | grep EVDEV, and it produced
>> the following output:
>>
>> #  CONFIG_INPUT_EVDEV is not set
>> CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y
>>
>> Does the above shed some light what could be the problem with the image?
>
> Erm, yes.  My atom-pc kernel has CONFIG_INPUT_EVDEV set.
>
> There was a bug where kernel configuration was dropping fragments, so you may want to try fetching the dylan branch (as we're about to
> release) and trying again.
>
> Ross
>


