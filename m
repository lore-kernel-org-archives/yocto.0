Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1287EE00BAF; Sun, 20 Nov 2016 11:33:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A207E00CA3
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 11:33:02 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id 12so23226049uas.3
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 11:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=e5Sl7fPUE++OTFCChQi/762IXsjkJCi0ErMjfi3YGvo=;
	b=IFtgR5Ef31ZAFQYmCfQrrDsqqpPBjgA+Qyd1PYLI+FE1neAdcbfE1lbZp8ZqWuW8TF
	QCuGcf0WsBQnYtAg+rKkB3aOKLGQybju/Fem+ga4WM9OkTxTzus3iBB4tc8JMn1eT+ZU
	i65bw/l0Bajnplny6lY5Phv0M1/WTR5VL1qpOHW6DMu6wglc0fudN4elOzXqsCSv/lyu
	kHRdqIwwg81La2cPIV2AKfeO3pnTj/4THn7gURFWL9Yl057LQ0k/eIUpv7LQV8wlARQA
	3yBIPSNTUwlhtI0dXddgTOUmcOvmkTb/aL3AV4JK7CHfy4rTcIRHVAsxg2xFbFwYl7ly
	OYzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=e5Sl7fPUE++OTFCChQi/762IXsjkJCi0ErMjfi3YGvo=;
	b=mWhDXYC5ME5CnT2OFaaBRrb4idlCoU67S7XFWZzNk1zHAIkO5nfYxSfgdnxkxy2Tet
	zWkQe/33tAnj34xmdmIOii0kVHBR2/7KgKEsPfOlhOguA9fwEZvcxp7cYjNAteNu4Ktp
	NKfBiDAQahJH6PImPgOVyklF9I1Htg1lYMeSqNV60e1mLW0ky02DIh8wD5lDwlNzqqqT
	YYWVhlnaCUZqaDZIxDE1st2WgV4hRdsJ3CAFDvl+5wLKSYGPTMeaPtRsZxUBNhk4vtzg
	stcfk64opMW9CFb2CGoyRaTnsWzJvaqMzUhH8QcR1q8561otso1XJdTnUtPcKH7WQyDw
	Wh2w==
X-Gm-Message-State: AKaTC03Ma4TQz2bmrAJRZQEVujzzzRjif5C/RQoF5ITXhMG7/NIYK0ngh84MTdWBXXNSp1tvbPVs1rd/MMSLAg==
X-Received: by 10.176.84.8 with SMTP id n8mr5160094uaa.29.1479670381586; Sun,
	20 Nov 2016 11:33:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sun, 20 Nov 2016 11:32:31 -0800 (PST)
In-Reply-To: <003e01d2432d$d42d17c0$7c874740$@neuf.fr>
References: <1479388433-130851-1-git-send-email-herve.jourdain@neuf.fr>
	<1479388433-130851-2-git-send-email-herve.jourdain@neuf.fr>
	<29ca6996-3502-26ef-fc30-a04e7fd97814@gmail.com>
	<003e01d2432d$d42d17c0$7c874740$@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Nov 2016 11:32:31 -0800
Message-ID: <CAMKF1sp4AA_z=m8o3v5Gupj6ZKZNOW4uKGLVk=yZQ2wyyv4QQw@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb: upgrade to latest good version
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
X-List-Received-Date: Sun, 20 Nov 2016 19:33:07 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 20, 2016 at 4:58 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi Khem,
>
> If I may, I have an interest in keeping 4.7 for a few more months (2 or 3 I
> guess).
> I'm using it for a few things, and I don't currently plan to switch to 4.8,
> but rather to 4.9 when it's more stable (hence the 2 or 3 additional
> months).
> As you already know, 4.9 is supposed to be the next LTS (if Greg
> Kroah-Hartman doesn't change his mind), and I'd like to wait for it while
> keep using the version I already use.
>
> This said, given the recent rebasing on the raspberrypi github, at least for
> version 4.7, it definitely is a maintenance burden.
> If that can help, I'm volunteering to maintain the revision for the 4.7
> raspberrypi linux kernel, for the next 2 to 3 months.
>
> After that, the question that will remain is what revisions do we keep: we
> currently have 4.1, 4.4, 4.7 and 4.8.
> We will soon have 4.9.
> 4.1 and 4.4 are LTS (EOL = 09/2017 & 02/2018), neither 4.7 nor 4.8 will be,
> and 4.9 is supposed to be.
> What do you think we should do, scrap 4.1 and 4.7, leaving 4.4, 4.8 and 4.9?
> Or keep only the LTS ones?

Two LTS and one latest version of given time should be sufficient. I
should have deleted
4.7 when 4.8 came out.

>
> Herve
>
> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: jeudi 17 novembre 2016 18:17
> To: Herve Jourdain <herve.jourdain@neuf.fr>; yocto@yoctoproject.org
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/1] linux-raspberrypi_4.7.bb:
> upgrade to latest good version
>
>
>
> On 11/17/16 5:13 AM, Herve Jourdain wrote:
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi_4.7.bb | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
>> b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
>> index 0315f8f..4a8fe36 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi_4.7.bb
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.7.bb
>> @@ -1,8 +1,8 @@
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>>
>> -LINUX_VERSION ?= "4.7.7"
>> +LINUX_VERSION ?= "4.7.10"
>
> I think, we should abandon all non-lts recipes except one which will be
> latest release ( 4.8 ) as of today.
>
>>
>> -SRCREV = "a45a35c08598b23f9fd82e49c83b46c7d536244f"
>> +SRCREV = "e7fa325a40f260ed9fb86391a0b65150eba8c112"
>>  SRC_URI =
> "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y \
>>             file://0001-fix-dtbo-rules.patch \  "
>>
>
>

