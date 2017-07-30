Return-Path: <pierre.ficheux@smile.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DA33E00C28; Sun, 30 Jul 2017 05:10:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.216.209.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from idris.smile.fr (idris.smile.fr [91.216.209.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E36ABE00825
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 05:10:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by idris.smile.fr (Postfix) with ESMTP id 5D3141EE2BFA;
	Sun, 30 Jul 2017 14:10:20 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at smile.fr
Received: from idris.smile.fr ([127.0.0.1])
	by localhost (bluemind-mta.prod.vitry.intranet [127.0.0.1])
	(amavisd-new, port 10024)
	with ESMTP id XsRqm44bdbZ0; Sun, 30 Jul 2017 14:10:20 +0200 (CEST)
Received: from bluemind.smile.fr (bluemind.prod.vitry.intranet [10.10.1.35])
	by idris.smile.fr (Postfix) with ESMTPS id 3B4BB1EE2BF7;
	Sun, 30 Jul 2017 14:10:20 +0200 (CEST)
Received: from localhost.localdomain (localhost [127.0.0.1])
	by bluemind.smile.fr (Postfix) with ESMTP id 36EBD5460120;
	Sun, 30 Jul 2017 14:10:20 +0200 (CEST)
MIME-Version: 1.0
Date: Sun, 30 Jul 2017 14:10:20 +0200
From: Pierre FICHEUX <pierre.ficheux@smile.fr>
To: Einar Vading <yocto-ml@vading.se>
In-Reply-To: <CAB6-VtKE+yj2ODVzwBnA-6PkYfq_d-ysLaVsByQSW2yPEZvbOg@mail.gmail.com>
References: <1500278455-5712-1-git-send-email-pierre.ficheux@smile.fr>
	<1500300247.5349.105.camel@linux.intel.com>
	<CAJTo0LYvGfA-QxNt42AQrT71ExA5Raf=VP6mxTOwPua8TCViZA@mail.gmail.com>
	<1500302882.5349.110.camel@linux.intel.com>
	<CAB6-VtKE+yj2ODVzwBnA-6PkYfq_d-ysLaVsByQSW2yPEZvbOg@mail.gmail.com>
Message-ID: <7bcfe2db1fb55e00c7362455a772602b@smile.fr>
X-Sender: pierre.ficheux@smile.fr
User-Agent: Roundcube Webmail/0.8.5
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Added missing CPPFLAGS/CFLAGS/LDFLAGS in sample recipe for morty branch
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
X-List-Received-Date: Sun, 30 Jul 2017 12:10:23 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi,

So do you want a new patch with LDFLAGS only?

regards

-- 
Pierre FICHEUX -/- CTO Smile-ECS, France -\- pierre.ficheux@smile.fr
                                     http://www.smile.fr
                                     http://ingenierie.openwide.fr
I would love to change the world, but they won't give me the source 
code

Le 2017-07-26 08:06, Einar Vading a écrit :
> On Mon, Jul 17, 2017 at 4:48 PM, Leonardo Sandoval
> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> 
>> On Mon, 2017-07-17 at 15:30 +0100, Burton, Ross wrote:
>>> 
>>> On 17 July 2017 at 15:04, Leonardo Sandoval
>>> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>>          master has the second line (LDFLAGS) but not the first one
>>>          (CPPFLAGS and
>>>          CFLAGS) so the problem may also be present on master. Would
>>>          you mind
>>>          checking this and sent patches to the poky mailing list?
>>> 
>>> 
>>> The GNU_HASH warning is triggered by ignoring LDFLAGS.
>> 
>> Got it, so definitely LDFLAGS var is missing, not sure if the rest 
>> are
>> necessary for this simple hello world recipe.
>> Leo
> 
> I had this problem to and IIRC i fixed it by moving the LDFLAGS
> variable to the end of the line
>> +          ${CC} helloworld.o -o helloworld  ${LDFLAGS}
> 
>>> 
>>> 
>>> Ross
> 
> Einar 

