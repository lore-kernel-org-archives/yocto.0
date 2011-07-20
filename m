Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id 569774C80A53
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2011 15:33:42 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6KKXW2A003854;
	Wed, 20 Jul 2011 15:33:33 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <4E270AF4.3050401@linux.intel.com>
Date: Wed, 20 Jul 2011 15:33:34 -0500
Message-Id: <40CB4CC7-500E-4976-82BD-400979681CEE@kernel.crashing.org>
References: <1311097296-17200-1-git-send-email-galak@kernel.crashing.org>
	<4E270AF4.3050401@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH v2 0/5] Add support for PowerPC e500v2/SPE
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
X-List-Received-Date: Wed, 20 Jul 2011 20:33:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Jul 20, 2011, at 12:05 PM, Saul Wold wrote:

> On 07/19/2011 10:41 AM, Kumar Gala wrote:
>> The majority of support for the PowerPC e500v2/SPE target already
>> exists.  However some minor cleans are required to get things working
>> completely.
>> 
>> The e500v2 utilizes a unique floating point programming model / ABI from
>> other PowerPC targets and thus requires special handling.
>> 
>> - k
>> 
>> _______________________________________________
>> Openembedded-core mailing list
>> Openembedded-core@lists.openembedded.org
>> http://lists.linuxtogo.org/cgi-bin/mailman/listinfo/openembedded-core
>> 
> 
> Merged into OE-Core
> 
> Thanks
> 	Sau!

Thanks, how does this propagate to poky?

- k

