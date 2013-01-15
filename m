Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-08.mxes.net (mxout-08.mxes.net [216.86.168.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07E99E002AB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 13:27:00 -0800 (PST)
Received: from [192.168.0.42] (unknown [50.37.82.244])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 1BE5F509BB
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 16:26:59 -0500 (EST)
Message-ID: <50F5C999.2020307@bsmucker.eu.org>
Date: Tue, 15 Jan 2013 13:26:49 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:17.0) Gecko/20130107 Thunderbird/17.0.2
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
Subject: Busybox still old version: Still looking for a clear understanding of an old mystery.
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
X-List-Received-Date: Tue, 15 Jan 2013 21:27:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello All,

I'm a relative newbie to yocto/oe, but have got a ways down the road to 
understanding, but the gaps in my understanding cause me great grief at 
times.

I think this probably is a simple question, but somehow I'm doing 
something wrong.

I recompile busybox with a new config: bitbake -c menuconfig busybox
I make busybox: bitbake busybox
bitbake gets compiled.

Then I do a bitbake core-image-minimal.  It does the do_rootfs action 
and makes a new image.
But the busybox is not the newly-compiled one, it is old.
I expect the new version.
Maybe my expectations are wrong.  But I've struggled with this and 
similar scenarios time and time again, sometimes hitting on a 
combination of things that work or by selectively deleting a directory 
or so or by bitbake -c cleansstate -f on one target or another.

But it's always been kind of a mystery to me how to recompile a 
particular target, which then succeeds, and subsequently make sure that 
target is included in the image target (core-image-minimal). I've 
succeeded in a hit-or-miss way at times, but I would love to know a 
clear series of steps that will work definitively.

I know I can delete the entire tmp directory, but that seems far too 
extreme, not to mention slow to recover from.

Can someone help me?

I'm using Danny.

Thanks,
Brian







