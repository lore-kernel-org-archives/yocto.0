Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EBDDE00E33; Thu,  5 May 2016 20:51:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AC25E00C8D
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 20:51:54 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 1A12C68A01A; Fri,  6 May 2016 04:51:53 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7119E68A019;
	Fri,  6 May 2016 04:51:52 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 15B406740276;
	Fri,  6 May 2016 05:51:52 +0200 (CEST)
To: yocto@yoctoproject.org
References: <CABfz71eh5ONgNF2aDmZfrJ8sexms3nEv=iNWgA9ChRGfHxKS0A@mail.gmail.com>
	<CABfz71ehqZNPOqh4m2UVkNj6kRt3p6n423q5Gx8wssUO2kzSSw@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <572C14D8.1070507@mlbassoc.com>
Date: Fri, 6 May 2016 05:51:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.7.2
MIME-Version: 1.0
In-Reply-To: <CABfz71ehqZNPOqh4m2UVkNj6kRt3p6n423q5Gx8wssUO2kzSSw@mail.gmail.com>
Subject: Re: udev automount.rules not running on boot
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
X-List-Received-Date: Fri, 06 May 2016 03:51:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-05-05 21:56, Paul Knopf wrote:
> It appears that /dev isn't mounted by the time the rules fire.
>
> What I winded up doing is creating a init.d script that re-triggers an "add" command for any block device partitions.
>
> -------------------------
>
> #!/bin/sh
>
> for line in `cat /proc/partitions |grep -e [s]d[a-z][0-9]$ |awk '{print $4}'`; do
>    block_number=`expr "$line" : '[a-z]\{3\}\(.\)*'`
>    block_name=`expr "$line" : '\([a-z]\{3\}\).*'`
>    echo $block_number
>    echo $block_name
>    echo add > /sys/block/$block_name/$block_name$block_number/uevent
> done
>
> -------------------------
>
> This causes the "add' event to be re-triggered, making the USB mount on boot.
>
> On Thu, May 5, 2016 at 1:57 PM Paul Knopf <pknopf@medxchange.com <mailto:pknopf@medxchange.com>> wrote:
>
>     I am using the automount.rules in udev-extra-conf.
>
>     If I boot up with a block device plugged in, nothing is mounted. If I plug in the device AFTER the machine is
>     booted, it shows up (in /run/media/*).
>
>     How do I get these rules to be applied on boot?
>     --

What is your configuration (target, distro, repo version, etc)?
Do you have any "fine tuning" in local.conf (or elsewhere)?

This works fine for me using master (krogoth) on all the targets I use.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

