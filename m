Return-Path: <philip@balister.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 600EAE00DD3; Mon, 16 May 2016 06:09:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.168.135.167 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CDD40E00DD0
	for <yocto@yoctoproject.org>; Mon, 16 May 2016 06:09:42 -0700 (PDT)
Received: (qmail 28787 invoked by uid 1003); 16 May 2016 13:09:41 -0000
Received: from unknown (HELO ?192.168.11.140?)
	(philip@opensdr.com@108.44.118.32)
	by mail.geekisp.com with (DHE-RSA-AES128-SHA encrypted) SMTP;
	16 May 2016 13:09:40 -0000
To: Matt Madison <matt@madison.systems>, Jack Mitchell <ml@embed.me.uk>
References: <CABfz71dsLkf5W9LDsEewXj2Rmw715jqqMFvwKE7WYT=83iAs6g@mail.gmail.com>
	<CAMKF1so7vzL4iKu5LiBKNK2cNBbV_0fuRoD_c7aVaN8x+kAh3Q@mail.gmail.com>
	<CABfz71dAJ4L6rKFgCOQgYNdqmr9jk5UaSLkMO=2PJ58gMBCLkw@mail.gmail.com>
	<CABfz71e32ixS10u7Wyr+XnZm+N93s6tPNorYNRqf276xh5ay9Q@mail.gmail.com>
	<CAMKF1srhr1uYJq53LZ+CKUNqYPAv3uq2onv3PtY=nVVyz7+bgA@mail.gmail.com>
	<CABfz71fcyMhkU3oH7msO8p2rAp1x4wozU9ordW2ZP7dqQVCNGQ@mail.gmail.com>
	<CABfz71c3eZDAXRJ-2RcqjnwAe9bhfkqz8aF1FHFiPYSVwA5ZBg@mail.gmail.com>
	<2b5a99dd-ca48-a77f-9acd-bcfebe479884@eumx.net>
	<0F4D52DD-BB7E-4449-B5B2-5D90A683ABC3@madison.systems>
From: Philip Balister <philip@balister.org>
Message-ID: <d8eca3ae-86db-35c1-951e-696dbab4b901@balister.org>
Date: Mon, 16 May 2016 09:09:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.0
MIME-Version: 1.0
In-Reply-To: <0F4D52DD-BB7E-4449-B5B2-5D90A683ABC3@madison.systems>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 16 May 2016 13:09:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 05/15/2016 01:29 PM, Matt Madison wrote:
> On 15 May 2016, at 04:25 , Jack Mitchell <ml@embed.me.uk> wrote:
>>
>> On 14/05/16 23:46, Paul Knopf wrote:
>>> This is what I am thinking.
>>>
>>> DEFAULTTUNE = "cortexa9hf"
>>> require conf/machine/include/tune-cortexa9.inc
>>>
>>> Does this sound right? I am using "hf" because in the crosstools-ng
>>> has CT_ARCH_FLOAT="hard", and cortexa9 because of
>>> CT_ARCH_CPU="cortex-a9" and CT_ARCH_TUNE="cortex-a9".
>>>
>>> Sorry, I'm that familiar with embedded processors. Any guidance would
>>> be greatly appreciated.
>>> <snip>
>>
>> Someone has already started having a go.
>>
>> https://github.com/watatuki/meta-jetson-tx1
>>
>> Easiest way to check for support in OE is to google meta + devboard name. Usually turns something up :)
> 
> There’s also https://github.com/madisongh/meta-tegra. 

Please add your layers to the layer index as soon as possible so people
can search there. This helps prevent duplicate layers.

Any chance the TX1 people can combine efforts so we only have one bsp
for this board?

Philip




> 
> -Matt
> 
> 
>>
>> Cheers,
>> Jack.
>>
>> ---
>> Jack Mitchell
>> Embedded Linux Consultant
>> www.tuxable.co.uk
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> 

