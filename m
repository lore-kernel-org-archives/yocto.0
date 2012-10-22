Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0392E011F3
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 00:53:22 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-114-123.range81-153.btcentralplus.com
	[81.153.114.123]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 2B9D699A4
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 08:53:20 +0100 (BST)
Message-ID: <5084FB70.9050101@r-finger.com>
Date: Mon, 22 Oct 2012 08:53:20 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <508164D0.1020408@r-finger.com> <50819565.5090604@linux.intel.com>
In-Reply-To: <50819565.5090604@linux.intel.com>
Subject: Re: why was meta-dlna submodule history stripped out?
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
X-List-Received-Date: Mon, 22 Oct 2012 07:53:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Saul

On 19/10/12 19:01, Saul Wold wrote:
> My apologies, I updated the MAINTAINER and README files.

Thanks.

>> (I am delighted Intel is finding Guacamayo useful, but the obliteration
>> of the history makes it look as if the credit for this official Yocto
>> layer goes to Intel; I am sure that was not intentional.)
>>
> No this was not intentional, the combo-layer tool seems to do that. I
> used combo layer because we wanted to pull in the kvm changes so that
> this could be shown as a VM.

Well, Poky uses the combo-layer and it maintains the commit history,
even nicely injects the original hashes into the commit messages for
reference. My basic gripe is that the 'Initial meta-dlna creation'
commit squashes some 370+ commits, which represent somewhere in the
region 500 man hours, bulk of it by sleep(5) ltd. I'd prefer if a public
layer in a Linux Foundation collaborative project did not do away with that.


> In the first pass, there were mostly minor changes to cut this down to
> what was needed for the headless media server.

This is the bit I don't get; it's not like oe-core contains just what is
needed for poky-tiny, but I don't see you creating an oe-core fork for
it. In fact this makes so little sense I doubt it was an engineering
decision, perhaps someone somewhere forgot to take their NIH pills? :)


> As I moved to 1.3 there
> were more changes that I have made, you can see what's going on in the
> 1.3wip branch of meta-dlna. 

You are already getting bitten by the fact that you are forking
meta-guacamayo. Upstream master has been updated to work with 1.3 some
time back. It took fair amount of work to do (more than I'd have
expected; lot of work to get things to build, and then quite a bit more
to get them work).


> If you want some of those changes in meta-guacamayo please take them.

Why is Intel so crap at working with upstream projects? I'll happily
take any meaningful contributions (that excludes adding
MACHINE_FEATURES='x86' into the layer.conf, though!), but please submit
them.


> Right now I am fighting a dbus/rygel segfault.

I am pretty sure I know which one, you are welcome to update to upstream
meta-guacamayo, forks really are not a cost-efficient way of doing things.

Kind regards,

Tomas



