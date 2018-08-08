Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6C7AE0090C; Wed,  8 Aug 2018 00:26:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1800 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Aug 2018 00:26:31 PDT
Received: from wp465.webpack.hosteurope.de (wp465.webpack.hosteurope.de
	[80.237.133.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7119AE00804
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 00:26:31 -0700 (PDT)
Received: from p578ab399.dip0.t-ipconnect.de ([87.138.179.153]
	helo=post.iseg.site); authenticated
	by wp465.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1fnIOU-00076y-S0; Wed, 08 Aug 2018 08:56:30 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id 63AC84C004B
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2018 08:56:30 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <71833f0b-4684-9a86-8a6d-fa51d49007a4@iseg-hv.de>
Date: Wed, 8 Aug 2018 08:52:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;yv@iseg-hv.de;1533713191;54a86c34;
X-HE-SMSGID: 1fnIOU-00076y-S0
Subject: Copy git hashes of recipes during the image build
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
X-List-Received-Date: Wed, 08 Aug 2018 07:26:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hi,

I am building the custom yocto image regularly so that I do have so may 
versions of the image. But when an bug occured in older version images, 
I could not find the changes in source code because of AUTOREV. Is there 
any possibility to copy the hashes during the build and store in another 
recipe, so that I can have all my hashes in my target system.

Thank You,

Regards,

Rajesh





