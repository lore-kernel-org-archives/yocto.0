Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE73BE00D85; Thu, 25 Jul 2019 18:48:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71575E00D30
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 18:48:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6Q1ldgR020821
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 25 Jul 2019 18:47:49 -0700
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Thu, 25 Jul 2019 18:47:28 -0700
To: "Tg, Harish" <harish.tg@aptiv.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <MWHP197MB0045719E8455D080537BF7A1FBC10@MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <24c3e950-edde-8c0e-0adb-31afbf2ae145@windriver.com>
Date: Thu, 25 Jul 2019 21:47:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <MWHP197MB0045719E8455D080537BF7A1FBC10@MWHP197MB0045.NAMP197.PROD.OUTLOOK.COM>
X-Originating-IP: [172.25.44.5]
Subject: Re: how to stop applying patches in yocto project
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
X-List-Received-Date: Fri, 26 Jul 2019 01:48:16 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 7/25/19 7:19 AM, Tg, Harish wrote:
> Hi,
> 
>           I have requirement that I shall not apply patches to the yocto 
> project and then build u-boot, kernel and the images. Can u please help 
> me? Basically I need to revert back to PSDKLA-3.02 Release and without 
> patches. Please guide me.

PSDKLA-3.02 seems to be a TI distro that is apparently based on oe-core:
 
http://processors.wiki.ti.com/index.php/Category:Processor_SDK_Linux_Automotive

You should contact who ever your vendor or support organization is.

If you can formulated and explain your question in fairly generic
oe-core/yocto terms ideally with links to public git repos, then
perhaps someone will help you out here.

Good luck,
../Randy

> 
> Thanks,
> 
> Harish.
> 
> 


-- 
# Randy MacLeod
# Wind River Linux

