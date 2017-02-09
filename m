Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C1E8E009DA; Thu,  9 Feb 2017 01:48:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.194 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f194.google.com (mail-qk0-f194.google.com
	[209.85.220.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F83E006C6
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 01:48:12 -0800 (PST)
Received: by mail-qk0-f194.google.com with SMTP id 11so21587499qkl.0
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2017 01:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=R7Sfjesc8Vatsyp6W+YdOQlLUuUmiVU12DouYxUcqoo=;
	b=uV4aiSUr+I5CvuiUPoC8Sc66h33UCZM5iDEc2RzakVnGeMSjsaPimJ6LLMQUTB5CPk
	HkHCusP/aOwEKhSFlJWxTcxq4QM68oVOXIZLeTms9AyAtMOk/F1iCZjnBG6GYl52dHcj
	nm9Gpz5ql59di9oIN9m6w/U5VqWGiXKClozC81mpbJfanum/Sd9fOXVfWlEcJgE0xY+K
	6QieE4XYiU84L6wzUDgyLqV3PLXe4VQ9fozLlp/f1lTSBb2ccptwEv0oe/H4m3L9OEL9
	HcoSnUMWsfUmz5C2Mr60A/Gy2sTybUmRhEg9Oa1oXCZrc3iU1zollm2LEl3gV3p80+Dd
	DMDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=R7Sfjesc8Vatsyp6W+YdOQlLUuUmiVU12DouYxUcqoo=;
	b=gCN6u2s5JkBfmcwYmFYtHELb1DXsiYQx35/QUcSFvICqYGxI5sc4Z7jthfQviMW2Z0
	3Q+G5OeBLeZnEcVmGP/hwfoQX/9ZQNRlO+74xUMOXwJ6hVbMh0aizwDAFFUTp/Q56G1N
	9TNzY1moE3dHHz6ADraZ1NW9Z4xJG6bhYVD8Dl5ZkUiCqW2+blxDkFBER5VbScTUSU/D
	vIxTy5VxqXNapUQZk6nXTWEVeODZtvCJCet19pBg2xkYuRuf0dHFqHXNnNRLvBz3a2BJ
	Xnixgk9uMXkf+C4BxYME2JlwDAGmDXXX4uxI9Ys8voaVIUgXrCROUSgnDrLQhTMnhPCn
	yunA==
X-Gm-Message-State: AMke39nSA6lW3p3bOGVfqw+5Z4uNWtwxx/le1ZiLOf1phHArNLqxgppeiw//UcUlqwAC7Qr1hfJ3bVORKk0+IA==
X-Received: by 10.55.177.133 with SMTP id a127mr1840113qkf.301.1486633691752; 
	Thu, 09 Feb 2017 01:48:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.71 with HTTP; Thu, 9 Feb 2017 01:48:11 -0800 (PST)
In-Reply-To: <26d9dd9e-8276-d414-f892-bbd91e134b5e@rock-chips.com>
References: <1484834687-15746-1-git-send-email-jacob-chen@iotwrt.com>
	<1484834687-15746-3-git-send-email-jacob-chen@iotwrt.com>
	<CABgxDo+5x6-ByOUikkG45S6Yo5NO+=L4S3GRX7firgpMqQQiAA@mail.gmail.com>
	<CAHUNapS5cAGbdbkHcTOaEJM9SKhHOJb8naqFxacbCvBj24crUw@mail.gmail.com>
	<33ec9539-bc2b-064f-a5c2-5b761841af00@rock-chips.com>
	<CAJrj+DME6M2NydRpVk3ks5QqsO0m8mKGC6BaT+vnVQXcvgPCDA@mail.gmail.com>
	<26d9dd9e-8276-d414-f892-bbd91e134b5e@rock-chips.com>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Thu, 9 Feb 2017 17:48:11 +0800
Message-ID: <CAJrj+DPLi6AjXsYxoerAgVdnJvbndCuvRSZNDjHrNhRv_NK9sw@mail.gmail.com>
To: Jacob Chen <jacob2.chen@rock-chips.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Eddie Cai <eddie.cai@rock-chips.com>
Subject: Re: [meta-rockchip][PATCH 2/7] machine: Add machine file for the rk3288 linux Boards
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
X-List-Received-Date: Thu, 09 Feb 2017 09:48:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi

2017-02-09 17:18 GMT+08:00 Jacob Chen <jacob2.chen@rock-chips.com>:
> Hi,
>
>
>
> Eddie Cai wrote on 2017=E5=B9=B402=E6=9C=8809=E6=97=A5 16:20:
>>
>> HI
>>
>> 2017-02-09 14:49 GMT+08:00 Jacob Chen <jacob2.chen@rock-chips.com>:
>>>
>>> Hi
>>>
>>>
>>> Trevor Woerner wrote on 2017=E5=B9=B401=E6=9C=8828=E6=97=A5 03:41:
>>>
>>> On Fri, Jan 27, 2017 at 9:37 AM, Romain Perier <romain.perier@gmail.com=
>
>>> wrote:
>>>
>>> Could you:
>>> - Make one patch per new machine file and not one patch for all new add=
ed
>>> machine
>>>
>>> Agreed.
>>>
>>> Are all of these machines actual devices? The evb one doesn't sound rea=
l.
>>>
>>> Are all of these machines released and available for purchase? I've
>>> heard of the tinkerboard (although I can't seem to find one I can
>>> actually buy) but I haven't heard of the fennec.
>>>
>>>
>>> I think i should only leave tinker board here.
>>> We have a lot of boards which are not open to the public,  it's not
>>> suitable
>>> to push them to the community.
>>>
>>> - Add a clear @DESCRIPTION for each board, see an example here:
>>>
>>> https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/tree/conf/mach=
ine/firefly-rk3288.conf
>>> - Write a clear and an understandable commit message for your new patch=
es
>>>
>>> @Trevor: What do you think about this rk-linux.inc ? I don't like this,
>>> either its name and what it contains.
>>>
>>> First off, I think it's really great to see people contributing to
>>> meta-rockchip! :-)
>>>
>>> This entire set of patches seems to be adding "official" support for
>>> the rockchip devices; in other words, these recipes will help you to
>>> create builds that use the official rockchip sources. That is great.
>>> But I think a good BSP gives a user all the possibilities but then
>>> leaves the final decision up to them.
>>>
>>>
>>> : ) That's the reason why we try to push patches to here, we want that
>>> "meta-rockchip" can
>>> build between vendor old kernel/new kernel/old u-boot/new u-boot and
>>> mainline kernel/u-boot
>>>   well.  Community people might help develop mainline things.
>>>
>>> So I agree with Romain, I think the name could use more work. It would
>>> be nice if this set of patches included something in the name that let
>>> the user know these build from official sources. Then the user could
>>> decide whether they want to use the official rockchip sources, or
>>> whether they want to build from upstream. So I'm not opposed to the
>>> idea of adding recipes for official sources, I'd like like to see them
>>> added in a way that leaves the decision with the user.
>>>
>>>
>>>
>>> I added rk-linux.inc because i need a place to set up verndor-BSP defau=
lt
>>> settings.
>>> I want that the user can choose various combinations by change the
>>> include
>>> file in machine file.
>>> e.g:
>>>      rk-linux.inc for linux-rockchip 4.4 + u-boot-rockchip-nex-dev
>>>      rk-linux.inc + rk-uboot.inc for linux-rockchip + u-boot-rockchip
>>>
>>>      rk-linux.inc for linux-mainline + u-boot-mainline
>
> I send the wrong draft due to the poor network... Please ignore the e.g..=
.
>
> What i think it's that the users should always get image with  all featur=
es
> enabled  with default settings.
> I will be killed if i let them to set each settings one by one in local.c=
onf
> to enable features....
> ok to change name and split file, but i think the things it contianed is
> needed.
>
>>> BTW, which name you think is better?
>>
>> What about follow raspberrypi?
>> =E2=94=9C=E2=94=80=E2=94=80 include
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-base.inc
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-default-providers.inc
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-default-settings.inc
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 rpi-default-versions.inc
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 tune-arm1176jzf-s.inc
>> =E2=94=9C=E2=94=80=E2=94=80 raspberrypi0.conf
>> =E2=94=9C=E2=94=80=E2=94=80 raspberrypi2.conf
>> =E2=94=9C=E2=94=80=E2=94=80 raspberrypi3.conf
>> =E2=94=94=E2=94=80=E2=94=80 raspberrypi.conf
>>
>
> split rk-linux.inc into
> rk-base.inc
> rk-vendor-providers.inc
> rk-vendor-settings.inc
> rk-vendor-versions.inc
> rk-community-providers.inc
> rk-community-settings.inc
> rk-community-versions.inc
Why we need a vendor version and a community version?
>
> ?
>
> Hmmm, it look more clearly than rk-linux.inc.
>
>
>>>
>>> That's it for now.
>>> Thanks for your patches
>>>
>>> +1 :-)
>>>
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>

