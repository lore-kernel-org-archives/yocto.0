Return-Path: <christian.fuchs@fos4x.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5DABE00DA5; Wed, 13 Jul 2016 05:18:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49F40E00CFA
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 05:18:03 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id f126so26498011wma.1
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 05:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fos4x.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=V+eQyXex6Sf+fTqxFMgUbDnwuSQWW8DJnvXuyaDo+Zc=;
	b=GX9KbfskGBtS5LGLuDiG3sIMBxoJNwadR0xWcuqK0r2jdF1r4KAYIRVmTkpuPSF8zk
	D9KeHeTDgdgPIXX8PwYfooYtj+4liQUO9KM4PDrGvrrHxxsSWs2Q9//RAHL3nLl5IA9U
	EkorwFbM3wuimmNsIpjpy9+23ojSzxIJZGhRs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=V+eQyXex6Sf+fTqxFMgUbDnwuSQWW8DJnvXuyaDo+Zc=;
	b=QTsnw6RK4ASIfztlwx2+PNI8SL9pH9Tam96LUFgOBwtdxYujYkvwyvFk1lbSxXCxF8
	jBT+lqorG6EpZXbUyzQRdCwRWhcb5EX7Izg58wKZzFiy6Gd0Oys1C4GWyLbS9hQazezJ
	4k7BiV7F6KYhW6JBxm+kMUHBOOrBwfUtqt2WKBFTquRJ94U/A54k4EXn9fw1NzzN3Ccn
	mu73e22hipa+LlpXO3eRVEab+OO1zF2I+iWCq/+qqB5OXShJ/sEX9k+REaGb93eKGt1M
	yfQYT5frm1qvmiVU8ie08pCLjvj8a7jselTDwwIK9robfKPuZvsctr5DqbpSK4xwILqD
	mZMw==
X-Gm-Message-State: ALyK8tIdrjm2/qG5hhBJGDyp/UXH1esU6kSkYP7DFh7aFPojei5Nx16et7BxEFL2i6WGww==
X-Received: by 10.194.111.5 with SMTP id ie5mr638727wjb.76.1468412282962;
	Wed, 13 Jul 2016 05:18:02 -0700 (PDT)
Received: from [10.0.102.17] (pd907f7af.dip0.t-ipconnect.de. [217.7.247.175])
	by smtp.googlemail.com with ESMTPSA id
	ke8sm633944wjb.42.2016.07.13.05.18.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 05:18:02 -0700 (PDT)
To: "Burton, Ross" <ross.burton@intel.com>
References: <7d83b2b9-98e1-c612-9e52-df5674fa9ff5@fos4x.de>
	<CAJTo0Laa+9CL1k_nn9PRDyAKZOExBVoJ8otoikC4DD4pYVfeyw@mail.gmail.com>
From: Christian Fuchs <christian.fuchs@fos4x.de>
Message-ID: <b70ae176-b9d4-a012-c798-998fa8193fb8@fos4x.de>
Date: Wed, 13 Jul 2016 14:18:01 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0Laa+9CL1k_nn9PRDyAKZOExBVoJ8otoikC4DD4pYVfeyw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding dependency for rrdtool-perl to recipe
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
X-List-Received-Date: Wed, 13 Jul 2016 12:18:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thank you. After adding inherit perlnative the library is found.

Regards,
Christian

Am 13.07.2016 um 11:39 schrieb Burton, Ross:
>
> On 13 July 2016 at 08:37, Christian Fuchs <christian.fuchs@fos4x.de 
> <mailto:christian.fuchs@fos4x.de>> wrote:
>
>     From the error message I guess that the perl library for RRD is
>     missing in sysroot. The library is built as part of the rrdtool
>     recipe, but it is moved to a separate package called
>     "rrdtool-perl". How can I tell bitbake to install this package
>     before building my recipe?
>
>
> If you want to actually use the perl module that rrdtool built, then 
> DEPENDS=rrdtool is right (you depend on recipes, not packages) but 
> you'll also need to inherit nativeperl so the sysroot perl is used 
> instead of the host perl.
>
> Ross

-- 
Christian Fuchs, M.Sc. - Software-Developer
fos4X GmbH - www.fos4x.de - T +49 89 999 542 15 - F +49 89 999 542 01
Thalkirchner Str. 210, Geb. 6 - D-81371 München; AG München HRB 189 218
Managing Directors: Dr. Lars Hoffmann, Dr. Mathias Müller


