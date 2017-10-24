Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 766C7E00AAF; Mon, 23 Oct 2017 19:18:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB70E00928
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 19:18:31 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id a192so13269693pge.9
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 19:18:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bJ3b1StYufKs6mcEHb+jVHKRxqHrjmilX+i5HdJD+Ek=;
	b=My/tk9qg9R1GPcmwgLbD0h8tuHBZHRLEArMafjsWgNRlfamrD5/lxEc2V96pgTHhhZ
	4Ew4MrV2qip/H054SxeeDa4dEVGxLY8mYEw2CmsCQ4UZEf2aI05JoWpL+eUv7b62+UcB
	4JbCewIaGFOfV2qJe9u4kYALXJKDUNgtTvNdytkEsbhO3OD2wn7T6pJ0QQpvP+/y+tJu
	DWseIWLZQ/0x9F2EQ8oVYkOasRKOapQ/p7jj7U9HoPZsObDt6sbYzTk60eRtAg8YlleP
	EB4aqUzlzLWNNCgtKowEmpwY9FQIoDvL5rZ4ilWZshdOsUL4+vReB8YZvNUFfkW5ouYr
	pCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bJ3b1StYufKs6mcEHb+jVHKRxqHrjmilX+i5HdJD+Ek=;
	b=Qm10X0Hp0gv70zEaHr6Hi+b6qkUnxlgqQSxb7BQ78F1Rde4h0EsZnq6z48e7Qn+vZi
	y7wClpAx7x6I0eUUN6R3ZGYgt6oGJkYDCqw8mfbbX+8LGTpVfkUVIRtrxVjmFyATg/mz
	6iQMlHLbeB81Y4m/7i257SuptqnomdxorKY9Gi9MmQLunC1QBOoE6xHLH75BbQVlvM9X
	B81a7mXwHE1MnUox5hPPUDOJXbRhBXeS+xX3nY0rHYDih4EKRi6O1NX+qNWZaxKDuSmX
	vurVzhV9p51QHu3ct5XWi+zqoKgeyHTRKPjzdFvX7ye/ttw0W+2VuE2AS5WgFOuFd4u5
	OPaA==
X-Gm-Message-State: AMCzsaUIKMoc+NWOydMRI0nH3PIP8wyjO+k9uaU55mX+1lbgpKBUVxY8
	EYDGeuim/LNLrmmek4J09KJLwqCCGidWPfN5DYrdYw==
X-Google-Smtp-Source: ABhQp+Ty7RC/liXX9/Ulzs5Hyn/tGwZfvit/p46I4vZbu1MAK09hmMS+cLjjiVXGbk0WsDJ8MZdu9DYOVpq+F0Kqd5w=
X-Received: by 10.84.184.12 with SMTP id l12mr3964802plc.404.1508811511050;
	Mon, 23 Oct 2017 19:18:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Mon, 23 Oct 2017 19:18:00 -0700 (PDT)
In-Reply-To: <CAAWyHB+XapnVy-a4im+==iJHN7GUKtEVXwrkNhGHatX7fmJt2A@mail.gmail.com>
References: <CAAWyHBL094mGuwrWkcO4GhCEp+honQ+9zV8Y04bEugGjV3uhSQ@mail.gmail.com>
	<CAAWyHBKp8tNACEFR6xfDp6qKAzUKYyVrH9PuG0xajLz=FHyUMA@mail.gmail.com>
	<CAAWyHBLAwfw-JDA8HFqAeUWJyCysv2Bn3RcswfTqftHxZ+USXA@mail.gmail.com>
	<CAAWyHB+vgT1nZmpXXqWoF4iME-VVYtGeLsoSF7dRqwdfEniuwg@mail.gmail.com>
	<CAAWyHBJiYDx=+90--zJrEoPFUcU=3c0J3-qkXjjiFj_eu6pftQ@mail.gmail.com>
	<CAMKF1sqLnq1pGKjjnNNgN=j+kqX-QBFVFpsGC4zSa8Rvqn7hQQ@mail.gmail.com>
	<40186177-fde5-1edc-63ac-4e88b83c3004@windriver.com>
	<CAAWyHBL0Z4Pnm2HX861Cnuin7gwvvKwnE=LBek=uhSfO9TMduQ@mail.gmail.com>
	<CAAWyHB+XapnVy-a4im+==iJHN7GUKtEVXwrkNhGHatX7fmJt2A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 23 Oct 2017 19:18:00 -0700
Message-ID: <CAMKF1sqO_wmaH7XeVaw0Agxtux-fbC2BuQUekX714AGUGBg0wA@mail.gmail.com>
To: vishal ashapur <vishalashapur@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling_gcc
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
X-List-Received-Date: Tue, 24 Oct 2017 02:18:32 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 23, 2017 at 4:57 PM, vishal ashapur <vishalashapur@gmail.com> wrote:
> Ya, I want gcc compiler to be on target image. I'm using raspberry pi3
> board.

In local.conf add.

EXTRA_IMAGE_FEATURES_append = " tools-sdk tools-debug dbg-pkgs"

if you are using an image which does not inherit core-image then you can add
the needed bits to image as Randy suggested.


>
> On 24-Oct-2017 1:14 AM, "Randy MacLeod" <randy.macleod@windriver.com> wrote:
>
> On 2017-10-23 01:17 PM, Khem Raj wrote:
>>
>> On Mon, Oct 23, 2017 at 4:52 AM, vishal ashapur <vishalashapur@gmail.com>
>> wrote:
>>>
>>> Hi
>>> I'm building a Linux kernel from yocto, on which I have to enable gcc.
>>> Can u
>>> please tell me how to enable gcc. And also usb_modeswitch package
>>
>>
>> it uses gcc, I think you need to clarify your question a bit so
>> someone can provide you help.
>>
>
> Do you mean that you want the compiler in the target image?
>
> If so, add:
>   IMAGE_INSTALL += "packagegroup-core-buildessential"
> to your conf/local.conf file.
>
>
> ../Randy
>
>
> FYI, I looked-up that up in WR's distro feature:
>
> https://github.com/WindRiver-OpenSourceLabs/wr-base/blob/LB21_7.0_RCPL0002/templates/feature/target-toolchain/image.inc
> since I know it well. :)
>
> I didn't quickly find it in the YP manual:
>   http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html
> but it should be there.
>
> --
> # Randy MacLeod.  WR Linux
> # Wind River an Intel Company
>
>

