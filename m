Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A09E00B18; Thu, 15 Jun 2017 18:32:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.46 listed in list.dnswl.org]
Received: from mail-pg0-f46.google.com (mail-pg0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5393EE009A5
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 18:32:14 -0700 (PDT)
Received: by mail-pg0-f46.google.com with SMTP id v18so14007795pgb.1
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 18:32:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=/T8/VpyMK9IDWZUPZNRCVhl9DPXVfMvojtT5XAzdjtA=;
	b=hpc6So7w9CQA5DpQo+RBHpfl70lUGqAltTj23g9A0XhzcdkIMf65gGbRwEP97Qq959
	VGYdk0m2Ojidn6C00MLiRYbcLMiHFpRPdMZOStrJ3fcrHfSqlU44dHCYqg2ndfqT6P3e
	G/mfJXCj3j429pZE0Nz+1G1+hrvJirmB1+D4SoNyd7ceXiEgVCURUEatmJO8YTd1B/o2
	B8ZJL1b+kZosDKy1gHYU1SsGANfgzsTWX7NX6oSrDR3c28JjYd0avue9SBgZ3nv67AI1
	LI2/CCsD1du+qaXuRnFP6QafiDtb86vlyfuFJCVklLIORE7P8u8WSliy+NfXTyCph4EI
	iuLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/T8/VpyMK9IDWZUPZNRCVhl9DPXVfMvojtT5XAzdjtA=;
	b=ulcUuENMuhpicZLd5dkVVZgji2bXtPJLr9+in5PstHUGSkpslZLIg7OjZB9MIawL4l
	Kqm9Ic3MF7ldBR+gTpE9KxWJoPIAF6/c8FMT4/paMiQ+uGPxWjj6yz2lfFzvsGUze3Um
	iNwU19UXZ5LwAJt2HLbQ6td+Ii4ndHJckQtIWP1D30q/gtpt6sVCOG7jOvvZqCeQ6edg
	EHn/pX7WlneIZzTKnQbFChH/M/ZSsac6A+KDCHWerAJuZ8YhVB5kfsqX/yddr+N3fpLh
	SRTQRMmFzCaeosGNY791yr/vfxNkejmlTySlISnNpliPBY+CstU68FVeVpjmUQWV31dW
	mq6A==
X-Gm-Message-State: AKS2vOx8jW7SPy1sh7tWJmxYfHBpcm7+G1xumaAk8gv8SIKDWcHMEYBz
	WLYLqa4w4UemTJVi
X-Received: by 10.99.53.197 with SMTP id c188mr8362296pga.165.1497576734303;
	Thu, 15 Jun 2017 18:32:14 -0700 (PDT)
Received: from [10.0.0.2] (CPE-124-178-9-113.lns1.pie.bigpond.net.au.
	[124.178.9.113])
	by smtp.gmail.com with ESMTPSA id t2sm891856pfi.76.2017.06.15.18.32.12
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 15 Jun 2017 18:32:13 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <ed57e154-cbd7-176a-02fb-496c6f730d2a@gmail.com>
	<CAMKF1sp9ESKxDiarsNTu89BXLpk8nBNZXefwYs-6dYHpVnBMFg@mail.gmail.com>
	<1bfe90cd-590a-47e6-95d1-3ad77ec3a46b@gmail.com>
	<CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <9db5bb7d-7005-a7d8-5ca4-1bac94456c3f@gmail.com>
Date: Fri, 16 Jun 2017 09:32:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAAfyv348RhuesS-suUGnVgquxVX0Gv2625Qd1Lw5NJH6FMXMQQ@mail.gmail.com>
Subject: Image type on bitbake ?
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
X-List-Received-Date: Fri, 16 Jun 2017 01:32:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi Everyone,

What parameter do I add to bitbake for getting *.hddimg or *.wic image ?

for example bitbake -??? core-image-sato
Thanks

