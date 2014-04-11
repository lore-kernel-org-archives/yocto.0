Return-Path: <joaohf@gmail.com>
Received: from mail-yh0-f43.google.com (mail-yh0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF6C9E00CD6
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 19:20:31 -0700 (PDT)
Received: by mail-yh0-f43.google.com with SMTP id b6so4720393yha.2
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 19:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=KHwG3Z1xD5lsbHwUlDpgIDAH6HfK/1S2x5bwdsZalpc=;
	b=tdo6h+nuwFO9WSZrBHJ63iwyQcWyfl3rD5sdSb4lq6q9SuUCKIQftU28gkhpufN/ye
	XmkozbVNwfWm8t995OyOgjWfjuwZy8Wj0Yi3yteDmpPqSM4tR3wdlzafAb3mEBg3fGG8
	2kbMavAC2xIgEx2yNOIeJlDy3NdlezJKdyVbKVGet9R9XceKpWyB32WokM4LGivKNT7a
	GGUB0xGlasEInRbILYJC/KV5KLLzQrNNLjlzr6QzBBDp0TP75KZKPEx2eDfZ0q3tj5rk
	6S9hNyY+QLJMMPzYanD/vikPs/vbZ02S9Lwevl6mcECZHpUYb4OyNuwkCoGrqG/f95w7
	BINw==
X-Received: by 10.236.117.174 with SMTP id j34mr28130303yhh.13.1397182830242; 
	Thu, 10 Apr 2014 19:20:30 -0700 (PDT)
Received: from [192.168.1.3] ([187.106.6.19]) by mx.google.com with ESMTPSA id
	m23sm11081142yho.15.2014.04.10.19.20.28 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 10 Apr 2014 19:20:29 -0700 (PDT)
Message-ID: <5347516B.2020601@gmail.com>
Date: Thu, 10 Apr 2014 23:20:27 -0300
From: =?ISO-8859-1?Q?Jo=E3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Vali Cobelea <valentin.cobelea@enea.com>, 
	Yocto list discussion <yocto@yoctoproject.org>
References: <534416F0.10109@enea.com>
In-Reply-To: <534416F0.10109@enea.com>
Cc: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Fri, 11 Apr 2014 02:20:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Hi Vali,

I took a look into meta-cgl and I've builded with all master (lots of 
warning) layers described in README file. Good initiative.

I noted that in README file you mention about 'meta-openclovis'. I 
believed that you got openipmi recipe from meta-openclovis, because
meta-cgl has a .bbappend to it. Am I right?

Indeed meta-openclovis has three recipes that could stay in meta-cgl: 
openhpi, openhpi-subagent and openipmi.

What about the quality of recipes that meta-cgl will use from others 
layers? For instance the patchs/stable code release/features in net-snmp 
recipe
is aligned with CGL requirements? My concern is about the scope and 
stability of meta-cgl.

Thanks.

PS:

Build Configuration:
BB_VERSION        = "1.23.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "Ubuntu-13.10"
TARGET_SYS        = "i586-poky-linux"
MACHINE           = "qemux86"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6+snapshot-20140411"
TUNE_FEATURES     = "m32 i586"
TARGET_FPU        = ""
meta              = "master:863cc7483f5ee43189537940de8ee5c0964d24cc"
meta-cgl          = "master:63a890e8513ff50279a1ce53e45a0394fd05b2b6"
meta-qt3          = "master:3016129d90b7ac8517a5227d819f10ad417b5b45"
meta-networking
meta-filesystems
meta-oe
meta-perl         = "master:477ccd867cc71f8277f2670b7be34b3b15300052"
meta-yocto
meta-yocto-bsp    = "master:863cc7483f5ee43189537940de8ee5c0964d24cc"
meta-virtualization = "master:7544bfb6ec7efd283e7e7ff712e91452fdffb534"
meta-openclovis   = "master:68f9a9c4ab01590d63506126660e3316ba668f99"
meta-selinux      = "master:0362287928bc0a58b755488ebd74441c28eeeee2"
meta-security     = "master:7e8c7918d9ff8fc89579502cc136e37deecdfd96"
meta-openstack    = "master:940e7d24c418a9cbb93850c31d00e4f1edeaf764"

-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil


