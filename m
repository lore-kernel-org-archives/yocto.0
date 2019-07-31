Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65502E00CD5; Wed, 31 Jul 2019 08:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
	[209.85.128.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 253FAE008E3
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 08:04:37 -0700 (PDT)
Received: by mail-wm1-f68.google.com with SMTP id l2so60125189wmg.0
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 08:04:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dynamicdevices-co-uk.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=NFmgq8wV9vZ+p+7vlf4DIKo8zFlE9hbcM3n+IQeukRY=;
	b=BC/7LtJLp2lLUaErPhw+MQDZyxDbzzGZbqaSeTBwSP6PqyXV0xIGdx3c2X5wswz7Fc
	n5IjGQRnd3SgsC8MaVmriP3uMS8CNDJs3CcYK56fxfYF1nhVr8ydC9FyXG3uJAyYQFgk
	EkystnchISf/5y4DHfSyRTFmb5C9dNYK/WFkSdok3zAuzrlmM9rkvwkZGd/e7lZFeu9h
	YmgR8AcLzlul7AZnCIesSpUOqlpb7PiqogNQ7e0Qe9JeDgU0KgHF/4rxMgXOVINAZAHb
	znAjQCVLlFukNrEOvxJHRAp/CR6d9hKAenfgKYrJujiBI95FmAHmoqcAFvWbhGKIpt1u
	7CzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=NFmgq8wV9vZ+p+7vlf4DIKo8zFlE9hbcM3n+IQeukRY=;
	b=lpuZMDsVJVaMu7C2G8P8IBI3k0RpzKNqg3OkFQmjgqjC5FJCXNavBvJMT3r648asou
	L44Qmwjz/YY8wA3S4rKpfnPZ9joMVPKPjik8UMjylaeYZUu8g8tKO5KDgV+HYknacY1B
	1qznnmQ7HpigLpHL//psU7TLJlez/FiaYgyyEJI1TVF4pYnzV02XnenVXQ4k8aDNzam/
	Kn2ORj+SThlXR2xv6B2JfaNREYJynoP0O7cIZsoApHuKrdlRDI3TzQ0kY2iQczFsEEJr
	JpFmeE9Ctpr2LdSQ+bF3p+bURuglOgum9ZqqMSHmu66zQsUt9mIhtft+Sfs2I7u0ngwM
	lXsA==
X-Gm-Message-State: APjAAAXriaLw6YCm6uKnJVlCS7N4Si7zeyltbrKYXMVzTPxfoezGe1b1
	kn6xvnPFO2GoVhI7vbz1CHsGc1PngB4=
X-Google-Smtp-Source: APXvYqzlREYgF4iaZPe7OtV/WGTpBhpoFhCEcxOpejaunQDwmZCH6f8cAEsoP2gpHx0+eR8ThqCm9g==
X-Received: by 2002:a1c:b706:: with SMTP id h6mr108237015wmf.119.1564585476820;
	Wed, 31 Jul 2019 08:04:36 -0700 (PDT)
Received: from [10.0.30.229] ([185.135.107.82])
	by smtp.gmail.com with ESMTPSA id a2sm72190097wmj.9.2019.07.31.08.04.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 31 Jul 2019 08:04:35 -0700 (PDT)
To: Alexander Kanavin <alex.kanavin@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <20190513162531.45297-1-alex.kanavin@gmail.com>
	<CANNYZj8MvEUjB-w+JjBRtbTnjw=B--L36+nXOVDAjzf+suxtcw@mail.gmail.com>
	<c545bc49-effe-629d-213c-55d52adcf5c8@dynamicdevices.co.uk>
	<CANNYZj8jy+r9k3WhgpbkzOBKtGoUdiM2PD5Sng_8GgiQ3Z_7sQ@mail.gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <ada9f29d-a922-d7db-a62f-a41ec5ac7cc4@dynamicdevices.co.uk>
Date: Wed, 31 Jul 2019 16:04:33 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CANNYZj8jy+r9k3WhgpbkzOBKtGoUdiM2PD5Sng_8GgiQ3Z_7sQ@mail.gmail.com>
X-Mailman-Approved-At: Thu, 01 Aug 2019 08:12:34 -0700
Subject: Re: [meta-mono][PATCH] mono-5.xx: fix an issue with too long paths in doltlibtool
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
X-List-Received-Date: Wed, 31 Jul 2019 15:04:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-GB


On 18/06/2019 11:58, Alexander Kanavin wrote:
> Ping #2!
>
> Alex


Apologies for the long delay! The patch is in finally...



