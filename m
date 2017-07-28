Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D478FE00D11; Fri, 28 Jul 2017 06:16:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAB76E00CEF
	for <yocto@yoctoproject.org>; Fri, 28 Jul 2017 06:16:23 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v6SDGG9J001129
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 28 Jul 2017 06:16:16 -0700 (PDT)
Received: from [172.25.44.7] (172.25.44.7) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.294.0;
	Fri, 28 Jul 2017 06:16:14 -0700
To: Riko Ho <antonius.riko@gmail.com>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
	<3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
	<118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
	<515b47cb-90af-21e0-7e40-2af2be9326ce@windriver.com>
	<CAByQQ_pBh0RLbsk8f+-nHD_OZ2BnKF59R9z_EdntX9HfOXDUVg@mail.gmail.com>
	<8a379ee0-7123-947e-3a1c-f9413bb3d604@windriver.com>
	<4c5a5433-0ffe-a2a4-77e1-a5466890a804@gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <0bdfd9f8-4ec3-10ae-6c1e-57d6aa978885@windriver.com>
Date: Fri, 28 Jul 2017 09:16:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <4c5a5433-0ffe-a2a4-77e1-a5466890a804@gmail.com>
X-Originating-IP: [172.25.44.7]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Fri, 28 Jul 2017 13:16:24 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 2017-07-27 09:22 PM, Riko Ho wrote:
> /usr/bin/install: cannot create regular file 
> '/usr/local/lib/libicecc.la': Permission denied

Riko,

http://lmgtfy.com/?q=%2Fusr%2Fbin%2Finstall%3A+cannot+create+regular+file+%27%2Fusr%2Flocal%2Flib%2Flibicecc.la%27%3A+Permission+denied

:)

I assume you have to be root to install under /usr/local on your system.


We're happy to help with Yocto specific questions here but general
introductory linux questions should go to google/baidu or some other
forum; perhaps this link will help:
 
https://www.reddit.com/r/linux/comments/1hzz03/what_is_the_best_irc_channel_for_discussing/

I'd be happy to answer one or two question offline to get you started.

Good luck.

-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
Canada, K2K 2W5

