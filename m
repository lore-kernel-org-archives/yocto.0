Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2898BE0080C; Fri,  6 Feb 2015 07:04:35 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D558E00757
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 07:04:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id t16F4M3B025121
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 6 Feb 2015 07:04:22 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.234) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Fri, 6 Feb 2015 07:04:22 -0800
Message-ID: <54D4D7F5.3010002@windriver.com>
Date: Fri, 6 Feb 2015 09:04:21 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<448358.208.1423126569683.JavaMail.kraghavendra@Raghavendra>
In-Reply-To: <448358.208.1423126569683.JavaMail.kraghavendra@Raghavendra>
Subject: Re: MIPS32r2 little endian bsp
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
X-List-Received-Date: Fri, 06 Feb 2015 15:04:35 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 2/5/15 2:56 AM, Raghavendra Kakarla wrote:
> Hi,
> 
> I need to create a bsp layer for my board which is having mips32r2 little endian processor.
> 
> I gone through the YOCTO BSP user manual bit there is no information for little endian.
> 
> When I create with the yoct-bsp command is taking the mips32 big endian only.
> 
> Could you please help me in resolving this issue.

You will need to define a BSP that is little endian capable.

The BSP should define:

 DEFAULTTUNE ?= "mips32r2el"

You can verify the setting using bitbake -e and inspecting the value of
DEFAULTTUNE.  The BSP should set that value -before- the necessary line:

require conf/machine/include/tune-mips32r2.inc


(Note, Little endian is not nearly as well tested as big endian for mips.  I
expect you will find some bugs, we'll be happy to take back any fixes for those
issues.)

--Mark

> 
> Thanks and regards,
> 
> Raghavendra.
> 


