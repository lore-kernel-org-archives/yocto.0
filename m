Return-Path: <jack.mitchell@eumx.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76D8DE00C5D; Sun, 15 May 2016 04:25:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.82.101.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA83E00C49
	for <yocto@yoctoproject.org>; Sun, 15 May 2016 04:25:55 -0700 (PDT)
From: Jack Mitchell <ml@embed.me.uk>
To: yocto@yoctoproject.org
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
	<CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
	<CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
Message-ID: <2b5a99dd-ca48-a77f-9acd-bcfebe479884@eumx.net>
Date: Sun, 15 May 2016 12:25:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
Subject: Re: machine arch files for Jetson TX1 (Quad-core ARMCortex-A57 MPCore Processor)
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
X-List-Received-Date: Sun, 15 May 2016 11:25:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 14/05/16 23:46, Paul Knopf wrote:
> This is what I am thinking.
>
> DEFAULTTUNE = "cortexa9hf"
> require conf/machine/include/tune-cortexa9.inc
>
> Does this sound right? I am using "hf" because in the crosstools-ng
> has CT_ARCH_FLOAT="hard", and cortexa9 because of
> CT_ARCH_CPU="cortex-a9" and CT_ARCH_TUNE="cortex-a9".
>
> Sorry, I'm that familiar with embedded processors. Any guidance would
> be greatly appreciated.
> <snip>

Someone has already started having a go.

https://github.com/watatuki/meta-jetson-tx1

Easiest way to check for support in OE is to google meta + devboard 
name. Usually turns something up :)

Cheers,
Jack.

---
Jack Mitchell
Embedded Linux Consultant
www.tuxable.co.uk


