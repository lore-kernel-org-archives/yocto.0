Return-Path: <florian.doersch@iis.fraunhofer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31D2CE0084D; Tue, 13 Mar 2018 23:28:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [94.100.133.223 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 105 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Mar 2018 23:28:26 PDT
Received: from mx-relay47-hz1.antispameurope.com
	(mx-relay47-hz1.antispameurope.com [94.100.133.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B26CAE0084D
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 23:28:26 -0700 (PDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
	mx-relay47-hz1.antispameurope.com; Wed, 14 Mar 2018 07:26:40 +0100
Received: from mail.iis.fraunhofer.de (mail03.iis.fhg.de [153.96.171.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id 7C06D2400081
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 07:26:39 +0100 (CET)
Received: from [10.12.70.78] (153.96.171.210) by mail03.iis.fhg.de
	(2001:638:a0a:1111:314f:f22c:4a37:b25a) with Microsoft SMTP Server
	(TLS) id 15.0.1365.1; Wed, 14 Mar 2018 07:26:38 +0100
To: <yocto@yoctoproject.org>
References: <CA+NJmkdAQPMwXNN+fTw9fgBxRhVx0NDaJGA__a4iqHsQWDu9Rw@mail.gmail.com>
From: Florian Doersch <florian.doersch@iis.fraunhofer.de>
Message-ID: <28da56cd-8366-c13d-183e-f88f9957e4ea@iis.fraunhofer.de>
Date: Wed, 14 Mar 2018 07:26:38 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CA+NJmkdAQPMwXNN+fTw9fgBxRhVx0NDaJGA__a4iqHsQWDu9Rw@mail.gmail.com>
X-Originating-IP: [153.96.171.210]
X-ClientProxiedBy: mail01.iis.fhg.de (2001:638:a0a:1111:fd91:8c2a:e4a5:e74e)
	To mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a)
X-cloud-security-sender: florian.doersch@iis.fraunhofer.de
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-relay47-hz1.antispameurope.com with 9867A360075
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
	IP=153.96.172.4
X-cloud-security: scantime:.2312
Subject: Re: Targeting Windows platform
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Florian Doersch <florian.doersch@iis.fraunhofer.de>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2018 06:28:28 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Isaac,

here we also have a mixture of embedded and desktop applications. We use 
yocto for our embedded devices (Xilinx Zynq, Raspberry Pi, Gumstix).

The SDKs and images are very helpful for (cross platform) CI and deployment.

A first milestone definitly would be having a minimal platform support 
for windows, so windows binaries can be built via mingw.

I see 2 steps there:
- cross build on a unix host
- native build on windows

A real Windows SDK support would be awesome (exspecially for deploying 
library dependencies)

I think some "zip" images would be a good start for "image"-deployment. 
I see the support for WiX-Installer second.

There is already some kind of "first try" with the mingw meta layer at 
http://git.yoctoproject.org/cgit.cgi/meta-mingw - but I tried to use it 
with our windows projects and failed, since the mingw version there is 
extremly old.

Regards
Florian


Am 14.03.2018 um 05:15 schrieb Isaac Nickaein:
> I know the idea is wild and possibly not a top priority (or even
> priority) of the community, but extending the area of Yocto to support
> Windows platform can make it the ubiquitous build system for the
> enterprise, especially in embedded companies that have a mixture of
> embedded and desktop applications.
> 
> In our company, we have adopted Yocto to be our build system for
> embedded devices and are starting to use it for constant integration
> and version management. It also solves the headache of setting up an
> C++ environment  by building and provding an SDK that covers a large
> set of libraries.
> 
> Having a unified build system can hugely simplify the build
> management, version control and integration for large organizations
> where various platforms are targeted. Yocto has proven to be a great
> tool for this and I believe it has potential to cover this area too.
> 
> While Yocto is mainly used to build *images* for embedded targets, for
> Windows platform it would be enough to build the binaries for
> applications, at the first milestone at least. One can also extend it
> to build setup files with tools such as WiX installer scripts. So, it
> can be break down into:
> 
> 1. Supporting a bbclass that creates Windows-compatible binaries. With
> the help of compilers like mingw, there is the possibility.
> 
> 2. Creating an SDK that targets Windows.
> 
> 3. Adapting recipes to be able to build the sources for Windows (for
> the cross-platform sources, this would be straight-forward).
> 
> 
> I am not sure how much of effort these steps would take and what are
> the obstacles. I would be glad to hear from community on what they
> think and why this would or not happen.
> 


