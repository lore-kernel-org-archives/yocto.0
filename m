Return-Path: <bradleyb@fuzziesquirrel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B4F8E00D98; Thu, 22 Aug 2019 18:09:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bajor.fuzziesquirrel.com (mail.fuzziesquirrel.com
	[173.167.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB01E0082A
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 18:09:47 -0700 (PDT)
X-Virus-Scanned: amavisd-new at fuzziesquirrel.com
Received: from brads-mbp.dyn.fuzziesquirrel.com
	(Brads-MBP.dyn.fuzziesquirrel.com [192.168.253.30])
	by bajor.fuzziesquirrel.com (Postfix) with ESMTPSA id 9850B14E0C8;
	Thu, 22 Aug 2019 21:09:45 -0400 (EDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Brad Bishop <bradleyb@fuzziesquirrel.com>
In-Reply-To: <628d5b4c-63d4-78b6-83d8-1781cbc86e0f@linux.intel.com>
Date: Thu, 22 Aug 2019 21:09:45 -0400
Message-Id: <7694CCA3-89BD-44FE-90D1-99569476E980@fuzziesquirrel.com>
References: <038f49d9-099e-dabd-2957-d31e7b8bbf41@linux.intel.com>
	<628d5b4c-63d4-78b6-83d8-1781cbc86e0f@linux.intel.com>
To: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
 akuster808@gmail.com
X-Mailer: Apple Mail (2.3445.104.11)
Cc: yocto@yoctoproject.org, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
	James Feist <james.feist@linux.intel.com>
Subject: Re: Build break in the latest openbmc tree.
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
X-List-Received-Date: Fri, 23 Aug 2019 01:09:50 -0000
Content-Type: text/plain;
	charset=utf-8;
	delsp=yes;
	format=flowed
Content-Transfer-Encoding: quoted-printable

at 6:38 PM, James Feist <james.feist@linux.intel.com> wrote:

> On 8/22/19 3:35 PM, Jae Hyun Yoo wrote:
>> Hi brad,
>
> + The mailing list
>
>> We met a build break while making Intel platform builds.
>> ERROR: No recipes available for:
>> /home/yoojae/workspace/openbmc/meta-security/recipes-kernel/linux/linu=
x-stable_5.2.bbappend =20
>> It was added by the subtree update patch but there is no main recipe f=
or =20
>> it. Did we miss something?
>> Thanks,
>> Jae

Hi Jae

linux-stable is in meta-odroid:
https://lists.yoctoproject.org/pipermail/yocto/2019-August/046424.html

It isn=E2=80=99t clear to me if meta-security is supposed to have a hard =
dependency =20
on meta-odroid or not.

Hi Armin

Could you suggest what the right thing to do here might be?

thx!
brad

