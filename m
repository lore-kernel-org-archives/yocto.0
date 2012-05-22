Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E415E0030B
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:04:33 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga09.intel.com with ESMTP/TLS/RC4-MD5; 22 May 2012 10:04:18 -0700
Received: by mail-pz0-f52.google.com with SMTP id o14so8586187dan.25
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:04:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=71q7zC2h7Qif3xG6NUSIKEUhGjwrBXlZ6hsDA1B1VFk=;
	b=WQEvWf7ssEe3nUD3ke4Cu/Pc5+O4qLB5Be/LVfazq+Roa3Y74AqlRZ6kukAYlstaaG
	4DNH7LV5gqb9mt536qvtwJgpuwwIkIJvvy4rsjOZopsLNqdLMXOdZ9WgGrSkLtFoSjQJ
	0w1FZiLLw963A2CtpA5J+sccAELV3IF4+5jI34AxEcRIFcIszELLEGdFOdGBNWf4Nn24
	Q9WSLderER9SbmOiMHF17zruNAIaZIQb73GMakghF4TsiyYftMZdGw7e2Fd0UiToffll
	7/IHFVa2Esi9nK194uqwIN82MooJPhN1ArfhaZCLLolAaKVoPzuyaKRMg8e/twnk8RO1
	KS0w==
Received: by 10.68.231.10 with SMTP id tc10mr414794pbc.107.1337706256906;
	Tue, 22 May 2012 10:04:16 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id iv6sm355551pbc.36.2012.05.22.10.04.14
	(version=SSLv3 cipher=OTHER); Tue, 22 May 2012 10:04:15 -0700 (PDT)
Message-ID: <4FBBC712.404@intel.com>
Date: Tue, 22 May 2012 10:04:18 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FBB7BDE.4090008@gmail.com>
	<CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
	<CANFv2Ek7Fim1tDVQcxu99GL0jriOFo=_zHCz-b7BUACXfjwyng@mail.gmail.com>
In-Reply-To: <CANFv2Ek7Fim1tDVQcxu99GL0jriOFo=_zHCz-b7BUACXfjwyng@mail.gmail.com>
X-Gm-Message-State: ALoCoQlX8J/rIxllEK5Ejk9WGVzTwkW6L12+Hj05MderfxrlDMD116HyA+XdKLvaxd8ZcudPnkno
Subject: Re: runqemu qemux86
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
X-List-Received-Date: Tue, 22 May 2012 17:04:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2012 08:15 AM, James Abernathy wrote:
>
>
> On Tue, May 22, 2012 at 10:45 AM, Autif Khan <autif.mlist@gmail.com
> <mailto:autif.mlist@gmail.com>> wrote:
>
>     On Tue, May 22, 2012 at 7:43 AM, jfabernathy <jfabernathy@gmail.com
>     <mailto:jfabernathy@gmail.com>> wrote:
>      > when testing an image using runqemu qemux86, can you get
>     networking to
>      > work?? mine comes up disabled.  I want to test an application
>     that requires
>      > Internet access.
>
>     Yes, I am able to get networking to work out of the box (bitbake
>     core-image-sato, etc.) Internetworking does not work out of the box.
>
>     This is accomplished over tun/tap devices - I do not know much about
>     these virtual networking devices - they have never failed for me :-)
>
>     The IP address of the emulated machine is 192.168.7.2 - The IP address
>     of host machine is 192.168.7.1
>
>     You can not (out of the box) communicate with machines other than the
>     host machine - so that would included internet etc.
>
>     So, if you have an ssh server or a web-server running on the host
>     machine - you can ssh to the host machine or browse a webpage using
>     the browser. Alternatively, you can run a proxy server on the build
>     machine and use it to get to the internet.
>
>     You can run ifconfig to see if the network is configured properly on
>     the emulated machine in the terminal. It should show 192.168.7.2 - if
>     you do not see this - you do not have networking working.
>
>
> I can see the tap0 interface on my host at 192.168.7.1 by using ifconfig.
> I can also see the eth0 on the qemu machine at 192.168.7.2
> However, my host has an ip of 10.0.1.54 with a AP gateway at 10.0.1.1.
> Somehow I need to connect the networks and I'm not sure exactly how to
> do that so that DNS servers get used and the traffic all flows.
> Jim A

There is some sort of routing or IP forwarding bug in the sato images 
that is due to be fixed soon. One thing I've found is you can actually 
get out to the internet for about 30 seconds or so immediately after the 
image boots. My suspicion is that some conman script is killing the 
route after boot. core-image-minimal works consistently, and since 
minimal doesn't use conman, I'm guessing that is the culprit.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2329

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

