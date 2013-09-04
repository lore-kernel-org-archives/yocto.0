Return-Path: <jc@vtkloud.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05E84E00405
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 12:58:31 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id m14so860864wgh.19
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 12:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=+vcqcah1UhMloAs5ZFfGBsF/fmeNORsLW0EsbaoqMNY=;
	b=cSWYxfLyhuRHVeJ37Re1CXMUOfgD9SPZw9sG78EO0HYv4Qu1ipAhbSGn7SglBGZTnq
	pSzEBs5WvngrPq0v/PtRpfzc5R0fIHd2Nw+wSf1Zw+g5AMTvI6GSXGolj8wCdAuLjlsd
	Twe3stKEWu2KPqrudUV21TJiCCa8d9Xyaee6ZyYOYOS6Y/D3HsvAchfUvTYXxxlZPyuY
	jS3iaXU/VRpXNxlRSkzRfeOaWVnnnsHpyRq8j6uvWEc7IwTgZGmnbMOtWhA5of8NK15+
	MnuOJn4jAVOduFR+sYawYqd55IDH/8SQ5w7nXRJ+prlrNMd9vin4s+0xh3Pt5lYqTeZd
	6TNQ==
X-Gm-Message-State: ALoCoQmLrEnzG9z1mAy8VB468Hv40iZfOJvvAdK1IufTjKxqhlcoV6EKNWaQcCOLMWfvXC46iw/y
X-Received: by 10.180.231.40 with SMTP id td8mr3482702wic.16.1378324710801;
	Wed, 04 Sep 2013 12:58:30 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id mb7sm6600686wic.10.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 12:58:29 -0700 (PDT)
Message-ID: <522790E3.5080708@vtkloud.com>
Date: Wed, 04 Sep 2013 21:58:27 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <522782E7.8080509@vtkloud.com>
In-Reply-To: <522782E7.8080509@vtkloud.com>
Subject: Re: adding specific config files
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
X-List-Received-Date: Wed, 04 Sep 2013 19:58:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2013 20:58, JC wrote:
> Hi,
>
> In my project, we have our own rpm repository and we use smartpm on 
> the target.
> In order to have the target setup with the repo out of the box, we of 
> course have added "package-management" in IMAGE_FEATURES. Now I'd like 
> the target to have our repo address already configured.
>
> The best way I found was to create a recipe in my overlay and hacking 
> the system a little bit this way :
> do_install() {
>    if 
> ${@base_contains('IMAGE_FEATURES','package-management','true','false',d)}; 
> then
>         install -d ${D}/${sysconfdir}
>         install -m 644 ${WORKDIR}/config.in ${D}/var/lib/smart/config
>    fi
> }
>
> where "config.in" is a simple copy of the non-human readable version 
> of smartpm config file, generated manually on the target.
>
> I was wondering if there would be a better way such as do not test in 
> the do_install, but rather make the recipe dependent on the 
> "package-management" image feature ? (so that do_install wouldn't even 
> be considered if the option is not set), or any other smarter idea.
>

Actually I _need_ a better idea because mine doesn't work: it actually 
creates what I want (/var/lib/smart/config) but since do_rootfs also 
uses this directory to install packages, it wipes it out at the end of 
the process... so my installation is removed :(

I'm sure someone else did something like this (but succeeded) ?

Regards
Jay



