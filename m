Return-Path: <jc@vtkloud.com>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE8AFE01549
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 13:10:14 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id q59so897117wes.34
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 13:10:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=OGW0NuC6S588DVSi50HSUKhytDOjHxb9LvSvVNYdE4k=;
	b=bwJzvqFjEaLVPNNsgvJmZSxYC264UiYu11T/HBgc8vGg+U+qNe9N3TNpNypVx6BGMV
	tt8BlLz+xBn2TsG1fdlvre92bTgcStc+bGlmpwmp+jjS2yo0cmD0wLz+oDpPsnoazBXz
	cetJB8nqXZjGhrm6AUDDEY4gtuu81wmSp+9q1LAPJmSwYfWZjoXG2u36sOa4RFvkylcA
	9od1xZzvHirDTGlk43BzFT6YHG3iEJHo4rco2VtGXoulAhxO3ZcQgI6nBoQL/6JSXF5n
	Mia8xNMRiSDD3sD6bpDi9XL3G5hlF4GbD+mkglRxydn83JsYqM5t46563lL8N3wVAZSH
	VzIA==
X-Gm-Message-State: ALoCoQmzUFyRKUYfRiULPj/QQlfwzDS0lLT94Wm4Nx0xS48ZjSTaRmT5DjFi0dMsNhq5OmLCYVBE
X-Received: by 10.194.19.5 with SMTP id a5mr3121300wje.48.1378325413716;
	Wed, 04 Sep 2013 13:10:13 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id p8sm6662454wij.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 04 Sep 2013 13:10:12 -0700 (PDT)
Message-ID: <522793A2.3000207@vtkloud.com>
Date: Wed, 04 Sep 2013 22:10:10 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <522782E7.8080509@vtkloud.com> <522790E3.5080708@vtkloud.com>
In-Reply-To: <522790E3.5080708@vtkloud.com>
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
X-List-Received-Date: Wed, 04 Sep 2013 20:10:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2013 21:58, JC wrote:
> On 04/09/2013 20:58, JC wrote:
>> Hi,
>>
>> In my project, we have our own rpm repository and we use smartpm on 
>> the target.
>> In order to have the target setup with the repo out of the box, we of 
>> course have added "package-management" in IMAGE_FEATURES. Now I'd 
>> like the target to have our repo address already configured.
>>
>> The best way I found was to create a recipe in my overlay and hacking 
>> the system a little bit this way :
>> do_install() {
>>    if 
>> ${@base_contains('IMAGE_FEATURES','package-management','true','false',d)}; 
>> then
>>         install -d ${D}/${sysconfdir}
>>         install -m 644 ${WORKDIR}/config.in ${D}/var/lib/smart/config
>>    fi
>> }
>>
>> where "config.in" is a simple copy of the non-human readable version 
>> of smartpm config file, generated manually on the target.
>>
>> I was wondering if there would be a better way such as do not test in 
>> the do_install, but rather make the recipe dependent on the 
>> "package-management" image feature ? (so that do_install wouldn't 
>> even be considered if the option is not set), or any other smarter idea.
>>
>
> Actually I _need_ a better idea because mine doesn't work: it actually 
> creates what I want (/var/lib/smart/config) but since do_rootfs also 
> uses this directory to install packages, it wipes it out at the end of 
> the process... so my installation is removed :(
>
> I'm sure someone else did something like this (but succeeded) ?
>

The guilty line is in /sources/poky/meta/classes/rootfs_rpm.bbclass

145:         rm -rf ${IMAGE_ROOTFS}/var/lib/smart

:(

Whatever I want to do with packages, It'll be removed. There's probably 
an alternate way :(

Jay

