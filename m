Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25977E01404
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 05:48:02 -0700 (PDT)
Received: by yenl5 with SMTP id l5so9977887yen.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 05:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=4g6J0U8sDFKj0yun0Fz3dkja8+W1tCFeuPtLFQ3dGqQ=;
	b=fxIyQPIFWlBz7uBgCp4GNGaLG1SUiQxtcwNymwNv+yOoyHp3+mLqJ06M3UdlJmihI/
	8tyJMyBaXv8TW/ooGjS/USfKI59fFpM6txFVS7uL04dObG09OgPUJvpnTvHqlq4yLf4K
	EKj9/IuBwmjlqFeQiU20/DTBF5IUdojQ+gOBo4B66pXabSLfA8F/DX1rSUREnyvmbL7y
	S5ija2lWROHuItO7hfW8+FqovOCc2v4twcjKzEByZ/keY94cXpGfpLMt8Vala+h/f9HY
	K6nw5wQVCsjECCov6+9XYyRi+geGs995BYgJ+P9WObW4jc4TUPHtows2Mferz3ylhwRF
	TOBQ==
Received: by 10.236.114.72 with SMTP id b48mr12460666yhh.7.1343911681697;
	Thu, 02 Aug 2012 05:48:01 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id a4sm10770689yhj.11.2012.08.02.05.48.00
	(version=SSLv3 cipher=OTHER); Thu, 02 Aug 2012 05:48:00 -0700 (PDT)
Message-ID: <501A76FF.20102@gmail.com>
Date: Thu, 02 Aug 2012 08:47:59 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1343847593.30566.YahooMailNeo@web121606.mail.ne1.yahoo.com>
In-Reply-To: <1343847593.30566.YahooMailNeo@web121606.mail.ne1.yahoo.com>
Subject: Re: build error pandaboard on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Aug 2012 12:48:02 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/01/2012 02:59 PM, maniacbug wrote:
> Yup, I can verify that denzil builds and runs on Pandaboard with meta-ti 30fb40ebc13614a74c2e237927c60ac43e01d1bc.  Haven't tried master, but don't see a need if denzil is going to work.  BTW, I did not find it necessary to use meta-oe.
>
>
> Both core-image-base and core-image-sato are working swell, except for sound.  Though the latest omap4 kernel has lots of improvements in that area, so I'm in the midst of upgrading it to see if thatfind helps.
>
I got core-image-minimal to build and boot, but not core-image-sato.  
pulseaudio issues/ couln't build at all.

Jim A

>> Yes, this is a rather touch ball of twine with all these layers - they
>> have to
>> be properly aligned to get something that builds.
> Wow, try it WITHOUT Yocto/Poky.  Yocto project seems to add stabilization and documentation to OE, which is about the only thing that makes it possible to get started at all :)
>
>> Work arounds:
>>     * You could checkout meta-ti to something that matches denzil
>>       Revision 30fb40ebc13614a74c2e237927c60ac43e01d1bc works for me.
>
> I would actually call this the CORRECT solution, not just a workaround.  meta-ti should create a denzil-tracking branch from this commit.
>> How in the world you knew how to find that commit number is the part that amazes me
> This commit was identified and discussed on the meta-ti list as the point of departure from denzil, that's how I found it, myself.
>
> m.b
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


