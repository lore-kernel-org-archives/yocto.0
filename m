Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82C01E00810; Wed, 11 Mar 2015 08:07:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDA5DE0034E
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 08:07:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t2BF7nx2027971
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 11 Mar 2015 08:07:49 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Wed, 11 Mar 2015 08:07:49 -0700
Message-ID: <55005A44.1040407@windriver.com>
Date: Wed, 11 Mar 2015 10:07:48 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CACmjmczPApw1=6jkV7wGgqjqxtti8qGppp8k_Bus-1D8Fa+gaw@mail.gmail.com>
In-Reply-To: <CACmjmczPApw1=6jkV7wGgqjqxtti8qGppp8k_Bus-1D8Fa+gaw@mail.gmail.com>
Subject: Re: : Build error while building armeb image.
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
X-List-Received-Date: Wed, 11 Mar 2015 15:07:54 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/11/15 7:15 AM, Prashant Purohit wrote:
> Hi,
> 
> I am trying to boot kernel image for 'armv7ab' using QEMU.
> 
> To do the same, I have included the 'tune-arma7.inc' (/meta/conf/machine/include/
> arm/arch-armv7a.inc) and configured DEFAULTTUNE variable to 'armv7ab'.
> But I am not able to build the image for it. I am getting error (compiled for a
> little endian system and target is big endian) while compiling kernel image.
> 
> The log for the same is attached with this mail.
> Has anyone faced the same issue previously or has any inputs for it?

Changing just the DEFAULTTUNE does not affect the kernel configuration (only
userspace compilation).  You will need to configure the kernel for the proper
big-endian target to resolve these types of items.  I've not done this on ARM
before, but most likely you'll need to define a new machine file, and associated
configuration fragment(s).

--Mark

> Thanks,
> Prashant
> 
> 


