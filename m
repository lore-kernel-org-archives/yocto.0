Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 70FD94C800BA
	for <yocto@yoctoproject.org>; Mon, 16 May 2011 06:19:44 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 109D8166019D; Mon, 16 May 2011 05:19:43 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 3C688166019B;
	Mon, 16 May 2011 05:19:42 -0600 (MDT)
Message-ID: <4DD1084E.30509@mlbassoc.com>
Date: Mon, 16 May 2011 05:19:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: wangyang <wangyang01@cn.panasonic.com>
References: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
	<4DD0CDCE.4000108@intel.com>
In-Reply-To: <4DD0CDCE.4000108@intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 16 May 2011 11:19:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 01:10 AM, Yu Ke wrote:
> on 2011-5-16 11:31, wangyang wrote:
>> Hello!
>>
>> Because YOCTO supports x86, arm and so on MCU. I just want to know about how to
>> port YOCTO to other MCU. Is it difficult, what's kind of knowledge needed?
>> Thanks
>>
>
> Add another machine is not that difficult, as Yocto is designed to be highly customizable for different H/W. What you need is a BSP layer for your H/W, it is basically the H/W
> specific configuration, e.g. the kernel config, graphics config.
>
> the BSP Guide (http://www.yoctoproject.org/docs/bsp-guide/bsp-guide.html) has good info on how to write BSP. Also you can find some example from existing BSP, like meta-intel BSP
> (http://git.pokylinux.org/cgit/cgit.cgi/meta-intel/)

Beyond that, there are some bigger issues.  Remember that Yocto is
just packaging for a Linux kernel and the user tools that surround
it.  Before you can add a new machine, especially one with a different
architecture as the original email hints, you have to have a working
toolchain (GCC and friends), Linux kernel, GLIBC, etc.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

