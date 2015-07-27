Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93B53E00A3B; Mon, 27 Jul 2015 09:14:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04C7CE009B8
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 09:14:24 -0700 (PDT)
Received: by iggf3 with SMTP id f3so83453657igg.1
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 09:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=QsPpEJfxFPf0JikUyNtYDVeeZ2M3Ef3+HEG7pOFoy28=;
	b=JH/YJ1Do0pDjPzSFi9Zes1ciR9Je+gU5jfwHIfXxYCbe4ceES+xBa+eZWbfb2A8RC2
	qoilmFh8q7JYw7qtH8fjFvvifv1AeFVOZlSLfxTRe3iYKEmZ9baH/JJ8aVkM+p3cSgWh
	cXYyy0JIs4jrsJJramSngmwmOM8vSxW4sEQNaMmhhOJqckbNrs2vehhSgAMpGaDbcZqd
	hzyjZbcwIPF1YFxdqtV/SLmWBsKRsNgl1h+NG6tj5V7EiztcCY9zfEP/C7Bi15//gwMW
	/NGy2wpQf8SfoOj5C/nsyt/8B8IUa45I5v4dmXfh1Hf9NziJ0ol5i8BM+gAVg8v4a3OF
	RKzw==
X-Received: by 10.50.6.79 with SMTP id y15mr19116012igy.32.1438013663650;
	Mon, 27 Jul 2015 09:14:23 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	nj11sm6170483igb.1.2015.07.27.09.14.22 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Jul 2015 09:14:23 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55B5213D.9040604@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55B658DA.6020408@gmail.com>
Date: Mon, 27 Jul 2015 12:14:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <55B5213D.9040604@gmail.com>
Subject: Re: include all kernel modules in image
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
X-List-Received-Date: Mon, 27 Jul 2015 16:14:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hey Nicolas,

Thanks for taking a poke at this and for verifying it should otherwise
work ;-)

It turns out it was a version issue (as I suspected), the "-rc1" should
have been in a variable named "LINUX_VERSION_EXTENSION" leaving the rest
in "LINUX_VERSION" as before:

    SRC_URI =
"git://github.com/TeeFirefly/linux-rockchip.git;branch=firefly;rev=cbbae6741c60c9e09f87521e3a79810abd6a2fda"
    LINUX_VERSION ?= "4.0.0"
    LINUX_VERSION_EXTENSION = "-rc1"

Best regards,
    Trevor

