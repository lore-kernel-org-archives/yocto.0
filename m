Return-Path: <psanchez@fosstel.com>
Received: from a2s40.a2hosting.com (a2s40.a2hosting.com [216.119.135.130])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD5304C800E0
	for <yocto@yoctoproject.org>; Mon, 16 May 2011 09:19:24 -0500 (CDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=default; d=fosstel.com;
	h=Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:References:In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=iKjNZwqETygDR/GGmNeQjVmQy0qRXEt72xBqAhgQctgDHtta1981sRBE5zl+rwukOatMzMGx6XdJoi6amt1QBNR0VOfOpxWEkd2d5/cZkq2ajUgMSGZrlnVnPexG9mtg;
Received: from [207.35.173.122] (helo=[192.168.220.100])
	by a2s40.a2hosting.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <psanchez@fosstel.com>)
	id 1QLydm-001uPl-Ls
	for yocto@yoctoproject.org; Mon, 16 May 2011 10:19:23 -0400
Message-ID: <4DD13269.7080606@fosstel.com>
Date: Mon, 16 May 2011 10:19:21 -0400
From: Pedro Sanchez <psanchez@fosstel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
	<4DD0CDCE.4000108@intel.com>
In-Reply-To: <4DD0CDCE.4000108@intel.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a2s40.a2hosting.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - fosstel.com
Subject: Re: about how to port YOCTO
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
X-List-Received-Date: Mon, 16 May 2011 14:19:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 03:10 AM, Yu Ke wrote:
> on 2011-5-16 11:31, wangyang wrote:
>> Hello!
>>
>> Because YOCTO supports x86, arm and so on MCU. I just want to know
>> about how to
>> port YOCTO to other MCU. Is it difficult, what's kind of knowledge
>> needed?
>> Thanks
>>
>
> Add another machine is not that difficult, as Yocto is designed to be
> highly customizable for different H/W. What you need is a BSP layer for
> your H/W, it is basically the H/W specific configuration, e.g. the
> kernel config, graphics config.
>
> the BSP Guide
> (http://www.yoctoproject.org/docs/bsp-guide/bsp-guide.html) has good
> info on how to write BSP. Also you can find some example from existing
> BSP, like meta-intel BSP
> (http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/)
>
> Regards
> Ke
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

When I clone the yocto git repo (git://git.pokylinux.org/poky.git) I 
don't get any of these meta-xxx directories that the BSP guide talks 
about. They seem to be kept in a separate git repository.

My question is then, once I create my meta-xxx directory structure, how 
is it hooked up to the overall poky build infrastructure? I've failed to 
find an answer in the BSP guide so far.

Thanks,

-- 
Pedro

