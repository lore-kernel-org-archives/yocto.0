Return-Path: <jhagen@lithetechnology.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DA2EE007B3; Wed, 21 Dec 2016 09:44:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f48.google.com (mail-pg0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 889F0E0049D
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:44:34 -0800 (PST)
Received: by mail-pg0-f48.google.com with SMTP id f188so87674383pgc.3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 09:44:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=lithetechnology-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:date:from:organization:user-agent:mime-version:to
	:subject:content-transfer-encoding;
	bh=sS3qMQUQ4ZO/hHl9rJw7xwYukdnoSvpCKDdgoJZQZ4c=;
	b=x9xaP9eNtSOUxtmeNMUAJYmhdGSr3XqGdKFDlxSdlwYeh0qKVxqBykHXfMt2mM50Eq
	ZxJEI692hi9uv8LZgGCs20kcYEcN8CYYiM6QjomwPb06P0ATpIM3fUtNZJ90CMeKdNG/
	MbEzoXyrIxTOl01hlVo5CQeMKeWs46UFZYxr97tWUKR4vFCkJaxtro9Pep328zpPpeR8
	dydYgkuAYn9kSEJC96Io5ugrxr7FW7hBPE/IPPFny5w8CavUVvweX8Ysz0f/pmZB6S+j
	84ZhsCNtGVtv0uVHvi5J46aC7KgBauxqGmB1rjQR1dsae1rA+skSx+OwI3FBd3+73bym
	9iPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:date:from:organization:user-agent
	:mime-version:to:subject:content-transfer-encoding;
	bh=sS3qMQUQ4ZO/hHl9rJw7xwYukdnoSvpCKDdgoJZQZ4c=;
	b=eFgwq90ew16d7uNaPlGyifCJYZwa28koU7fBhQRQWEr2eR9WSuEK8gnr9p9q310/vi
	yJWGrRPod2d484U/P7KYSunvfNUD2ql5ZGNW9//EHvsIQ25KHyHmuD5m4f54+3bb8Eac
	TU1lMvTZ0JIXFhnBKG16xcmxzM0ySIa99Q4czrCjmIZFC5bVo7QnF42H+H7hFIJHLj3+
	7Gxe1GBZklzQa95Hf+mJFNGavkvGziqdD0uyc0p0C0/YiQ3pRkrCf1e7ML8eAV+qIXtP
	HRopq+i8lt/XkUyMxnuRTKl3IvTxLps5uHvELNo830CA3fe3cOLOBuTW1mD9WNLpePgM
	aXMA==
X-Gm-Message-State: AIkVDXIH2yrd1tpn+bXl9KLGbZU097EpDtO3FhbLcRxmq7XmS6l+cr+IQXjQbxPGy6qbaQ==
X-Received: by 10.84.216.25 with SMTP id m25mr10841889pli.117.1482342273507;
	Wed, 21 Dec 2016 09:44:33 -0800 (PST)
Received: from [192.168.2.5] (wsip-68-110-169-14.ph.ph.cox.net.
	[68.110.169.14]) by smtp.googlemail.com with ESMTPSA id
	t15sm4337569pgn.18.2016.12.21.09.44.32 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Dec 2016 09:44:32 -0800 (PST)
Message-ID: <585ABF7F.5070104@lithetechnology.com>
Date: Wed, 21 Dec 2016 10:44:31 -0700
From: Jeff Hagen <jhagen@lithetechnology.com>
Organization: Lithe Technology LLC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: question about variables/parameters
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
X-List-Received-Date: Wed, 21 Dec 2016 17:44:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


I am completely confused about bitbake variables how and when to set 
them to get the desired result in the poky/yocto environment.

For context, I am just a user but I have been around awhile. I have been 
using yocto/poky for several years now. I have written a number of 
simple recipes and successfully deployed embedded linux builds on a 
number of custom projects and architectures (x86 x86_64 zync and 
alterasoc ). This stuff works. My hat is off to the architects.

The problem comes when I want to change something. Frankly, I dont 
understand the documentation. Its way too generic. I end up wandering 
around the recipes and web searching and trying everything until I find 
some seemingly random combination of bbappend or conf file or 
variable_name that works. Once found, it works no sweat, but there has 
to be a better way.

So here is an example of a problem I am trying to solve. I need to add a 
boot parameter to the kernel.
When I run bitbake -v -f core-image-minimal for an x86 system I notice 
that (at least in the old version I am using) uses syslinux as the boot 
agent.  So I look at syslinux it needs a file called syslinux.cfg. There 
is a parameter there called APPEND that I need to add the keyword to. 
Then I find the syslinux.cfg file in a yocto build and I see that its 
created by a python script inside of syslinux.bbclass. I look there and 
sure enough there is a big comment there telling me to set the APPEND 
variable for the class. I also notice that the python script that 
creates syslinux.cfg runs when I run bitbake -v -f core-image-minimal

Also in the documentation there is a class called syslinux and it lists 
the variables that I found in the comments bbclass file. This is no 
doubt some clever auto-doc feature.

But thats where it ends. How do I know how to set that APPEND variable 
for my custom build?
The answer is either a bbappend file in my layer, a conf file, or 
something I can put in local.conf.

Rather than just telling me the answer, can someone please describe the 
reasoning that would go into figuring it out so I can figure out other 
similar issues on my own later? Or perhaps this was already done and I 
am missing some documentation somewhere. Can you please direct me? 
Thanks for your patience.

Jeff Hagen

-- 
Jeffrey R Hagen
Lithe Technology LLC
jhagen@lithetechnology.com
(520) 488-1155 (mobile)
(520) 477-6066 (office)
http://www.lithetechnology.com


