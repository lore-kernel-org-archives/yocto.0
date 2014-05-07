Return-Path: <jeremy@rhtech.co.nz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D31E8E00770; Tue,  6 May 2014 21:41:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [119.47.118.13 listed in list.dnswl.org]
Received: from linuxplesk9.openhost.net.nz (linuxplesk9.openhost.net.nz
	[119.47.118.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 481B8E006C0
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 21:41:49 -0700 (PDT)
Received: (qmail 1411 invoked from network); 7 May 2014 16:41:47 +1200
Received: from 122-61-40-229.jetstream.xtra.co.nz (HELO ?192.168.1.98?)
	(122.61.40.229)
	by linuxplesk9.openhost.net.nz with (DHE-RSA-AES128-SHA encrypted) SMTP;
	7 May 2014 16:41:47 +1200
Message-ID: <5369B98F.2050502@rhtech.co.nz>
Date: Wed, 07 May 2014 16:41:51 +1200
From: Jeremy Cole-Baker <jeremy@rhtech.co.nz>
Organization: Riverhead Technology
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Yi Zhao <yi.zhao@windriver.com>, yocto@yoctoproject.org
References: <mailman.16489.1397995243.26702.yocto@yoctoproject.org>
	<53684B1B.7030804@rhtech.co.nz> <53699C30.8050007@windriver.com>
In-Reply-To: <53699C30.8050007@windriver.com>
Subject: Re: Anybody managed to get Beagleboard xM to work?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jeremy@rhtech.co.nz
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 May 2014 04:41:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 7/05/2014 2:36 p.m., Yi Zhao wrote:
> Hi
> 于 2014年05月06日 10:38, Jeremy Cole-Baker 写道:
>> Hi,
>>
>> Has anyone else been successful in getting a Beagleboard xM to work?
>>
>> I have built with Yocto, using the beagleboard-dora-10.0.0 package and
>> "core-image-basic". I installed everything to the uSD card as per
>> instructions, including root filesystem, modules, .dtb, kernel image
>> and boot loader.
>
> There are some issues with dtb file. And it is not necessary for the
> board. Just remove the dtb section in your uEnv.txt.
>
> Thanks,
> Yi

That worked! Awesome, thanks!

I now have the ethernet working as it should, and it looks like it 
recognises USB flash drives.

Cool!




-- 
Jeremy Cole-Baker


