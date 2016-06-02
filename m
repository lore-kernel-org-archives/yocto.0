Return-Path: <ionelbadisor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0E72E00C5B; Thu,  2 Jun 2016 01:00:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ionelbadisor[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f68.google.com (mail-lf0-f68.google.com
	[209.85.215.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D349E00B11
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 01:00:47 -0700 (PDT)
Received: by mail-lf0-f68.google.com with SMTP id w16so4268884lfd.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 01:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:to:references:cc:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=Z5mGrfbfa7tjns+mmjSghEjbxS+g7jDUzOI4sRapzTM=;
	b=Jq03z6fcPpk8aUfP07Z73Hp7y0f3Cj9MgUaXiBHPzL63BJ+EGzwfXx4hWo4Nu/m1ZA
	04TflkauEvFGGGZ6gWH4upaN3zg/2iZ9hEOFTrgiALVOHxY/6cSpnKuLQ7/Kv70n5OZC
	kpOsPPJag1YgwhdMD9KVQNKJ41sqStE+4WdWsv2Tu6VMFWwXlay0AFcmldaXbZmztSlP
	O8yeaCsfxpZ+fbEj/oVM3c7iL4dwqtItDz91WPl8glpsOiM9leGx8wV2zsVh0khmZrqM
	AiAHj3kisVBDozfgPSvMr+qyBgWgewEVkUb1OxMqYA+kjzNB6dShjOMSSAQfNDQMtSuS
	rfgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:to:references:cc:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=Z5mGrfbfa7tjns+mmjSghEjbxS+g7jDUzOI4sRapzTM=;
	b=OQyn36/tLhCmkgxDbSmuNC125dMWQ57Fxnrp2ofsKnN0aaBTdmagHJawly4D4NJYnq
	rgN+GWYzLALl/mjFSYnzOR0qowduT/9ufA9jxTMofW+p0/w+mpX+16jUTnbcC0nWi2hS
	mW/xozzCvJ1Bpq+XZOnOAfHwnXh8ndmcI8G1Iw56AUBMYywo/LOAPdDJkTMJtqxftBTV
	Z+6RymAmcJ/CxchznCO3VpOLtLV9k09i2Q8n3gU0UPgrcbgcBudY6D/ZqhHMYSDkQx7x
	XFIJfBjIjrv0yKe0SUM8EADjc/6gxX0Omr9W5WFoS7UdAYDiwqhabODdZAiTcom7MZFV
	ISkg==
X-Gm-Message-State: ALyK8tL5DXFGbUvPEu9OyTVlMJlnEB7KxsNWXAArxjQpqmgjjmKAp+W8npbNtL+frhqpmA==
X-Received: by 10.25.19.161 with SMTP id 33mr3035482lft.24.1464854446159;
	Thu, 02 Jun 2016 01:00:46 -0700 (PDT)
Received: from [172.168.0.70] ([217.10.196.2])
	by smtp.googlemail.com with ESMTPSA id
	g69sm3891986ljg.25.2016.06.02.01.00.44
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Jun 2016 01:00:45 -0700 (PDT)
From: Ionel Badisor <ionelbadisor@gmail.com>
X-Google-Original-From: Ionel Badisor <ionel.badisor@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
	<CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
	<20160530231646.7557d3b4@nuc.betafive.co.uk>
	<CAMKF1sry_vLP59S+FJyHtUpEYBxdnQ-QUMJcSjdPu4TQ7y5D7Q@mail.gmail.com>
	<20160601185500.30c54bd7@nuc.betafive.co.uk>
Message-ID: <9933cb0e-fccc-1b87-134d-06a9ca273b12@gmail.com>
Date: Thu, 2 Jun 2016 10:59:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160601185500.30c54bd7@nuc.betafive.co.uk>
X-Mailman-Approved-At: Mon, 06 Jun 2016 07:18:26 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Thu, 02 Jun 2016 08:00:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/01/2016 08:55 PM, Paul Barker wrote:
> On Tue, 31 May 2016 10:39:03 +0300
> Khem Raj <raj.khem@gmail.com> wrote:
>
>> On May 30, 2016 3:15 PM, "Paul Barker" <paul@paulbarker.me.uk> wrote:
>>>
>>>
>>> I'm trying to build from a source archive instead of a git
>>> repository (to avoid a ~1.3GB git clone operation) so the use of
>>> ${SRCPV} is causing me trouble.
>>>
>>
>> Can you override the whole PV
>
> I've given this another look and I can get the recipe to parse if I
> require linux-raspberrypi.inc before setting PV instead of afterwards.
> However do_kernel_configme then gets confused looking for a
> "standard/raspberrypi" configuration. It only works if I modify
> linux-raspberrypi.inc as per my patch and set PV before requiring that
> include file.
>
> I'm starting to think that I might be doing something wrong here - is
> there a supported way to build a kernel from an archive instead of a
> git repository within OE?
>
> Thanks,
> Paul Barker
>
Are you trying to avoid repeated cloning operation to save bandwith and 
time or you are trying to save disk space?

