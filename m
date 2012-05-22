Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DA7DE01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:42:43 -0700 (PDT)
Received: from mail-pz0-f52.google.com ([209.85.210.52])
	by mga09.intel.com with ESMTP/TLS/RC4-MD5; 22 May 2012 10:42:43 -0700
Received: by dano14 with SMTP id o14so8626646dan.25
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 10:42:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Q/jv/oBzRua6/KcFS7h0eSS2GaWK3CY97+4eMFC4mBk=;
	b=AdHgW5tJo1h3+J7ku2jp++/jMlJQkmwmDqS4Y7OVsqtGbvkJnEoTLepYluXVhDpr7Z
	7zy6xoFX+OcXv7qSkqqqcb7lJYUqNmNiLR1Q6y94CmJNj0y/gg14rNINBnI1/o2mzcNs
	j+rwsARnwPuz0f5QbtC9kZihTWY46f+lm0h9+wALbdqqyNmM7HceCMFedZiYd2Vqrw/5
	v9K3WZVN5e1Qe5JlUUyZw1/kS8xb9Eud3PfJKKUsu3Az78fp9H9EikkwFhTMeNFZW5Z3
	UXOn8zfOAziLmOKU4r65vThhplYXCZXpYdM2Y5t58iJ0If3rhs7dygDobItcrZNDBMYj
	KMJQ==
Received: by 10.68.238.134 with SMTP id vk6mr669616pbc.128.1337708562362;
	Tue, 22 May 2012 10:42:42 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id rv5sm27347973pbc.56.2012.05.22.10.42.40
	(version=SSLv3 cipher=OTHER); Tue, 22 May 2012 10:42:41 -0700 (PDT)
Message-ID: <4FBBD014.2060407@intel.com>
Date: Tue, 22 May 2012 10:42:44 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FBB7BDE.4090008@gmail.com>
	<CADzUK1JN25KdSu3QbjFO1ike1ZQ=82Nk8m_F2VrgZpaS8eG=uA@mail.gmail.com>
	<CANFv2Ek7Fim1tDVQcxu99GL0jriOFo=_zHCz-b7BUACXfjwyng@mail.gmail.com>
	<4FBBC712.404@intel.com>
	<CANFv2EnvW6E_MfQ7FM8gOEo19qz1ACA57brMTMedUqkxo-DcLQ@mail.gmail.com>
In-Reply-To: <CANFv2EnvW6E_MfQ7FM8gOEo19qz1ACA57brMTMedUqkxo-DcLQ@mail.gmail.com>
X-Gm-Message-State: ALoCoQl24DE5N/Cjpo0lWFfPcaaTajcMwpbtMT21xghCg+kJi2P0+l9MrWlJhFPVuzYxbo+es9p1
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
X-List-Received-Date: Tue, 22 May 2012 17:42:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/22/2012 10:26 AM, James Abernathy wrote:
>
>
> On Tue, May 22, 2012 at 1:04 PM, Scott Garman <scott.a.garman@intel.com
> <mailto:scott.a.garman@intel.com>> wrote:
>
>     On 05/22/2012 08:15 AM, James Abernathy wrote:
>
>
>
>         On Tue, May 22, 2012 at 10:45 AM, Autif Khan
>         <autif.mlist@gmail.com <mailto:autif.mlist@gmail.com>
>         <mailto:autif.mlist@gmail.com <mailto:autif.mlist@gmail.com>>__>
>         wrote:
>
>             On Tue, May 22, 2012 at 7:43 AM, jfabernathy
>         <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>
>         <mailto:jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>__>
>         wrote:
>          > when testing an image using runqemu qemux86, can you get
>             networking to
>          > work?? mine comes up disabled.  I want to test an application
>             that requires
>          > Internet access.
>
>             Yes, I am able to get networking to work out of the box (bitbake
>             core-image-sato, etc.) Internetworking does not work out of
>         the box.
>
>             This is accomplished over tun/tap devices - I do not know
>         much about
>             these virtual networking devices - they have never failed
>         for me :-)
>
>             The IP address of the emulated machine is 192.168.7.2 - The
>         IP address
>             of host machine is 192.168.7.1
>
>             You can not (out of the box) communicate with machines other
>         than the
>             host machine - so that would included internet etc.
>
>             So, if you have an ssh server or a web-server running on the
>         host
>             machine - you can ssh to the host machine or browse a
>         webpage using
>             the browser. Alternatively, you can run a proxy server on
>         the build
>             machine and use it to get to the internet.
>
>             You can run ifconfig to see if the network is configured
>         properly on
>             the emulated machine in the terminal. It should show
>         192.168.7.2 - if
>             you do not see this - you do not have networking working.
>
>
>         I can see the tap0 interface on my host at 192.168.7.1 by using
>         ifconfig.
>         I can also see the eth0 on the qemu machine at 192.168.7.2
>         However, my host has an ip of 10.0.1.54 with a AP gateway at
>         10.0.1.1.
>         Somehow I need to connect the networks and I'm not sure exactly
>         how to
>         do that so that DNS servers get used and the traffic all flows.
>         Jim A
>
>
>     There is some sort of routing or IP forwarding bug in the sato
>     images that is due to be fixed soon. One thing I've found is you can
>     actually get out to the internet for about 30 seconds or so
>     immediately after the image boots. My suspicion is that some conman
>     script is killing the route after boot. core-image-minimal works
>     consistently, and since minimal doesn't use conman, I'm guessing
>     that is the culprit.
>
>     https://bugzilla.yoctoproject.__org/show_bug.cgi?id=2329
>     <https://bugzilla.yoctoproject.org/show_bug.cgi?id=2329>
>
>     Scott
>
> So if I read this right,  I don't need any route or bridge commands to
> make this work. If the bug gets fixed runqemu qemux86 should setup the
> environment correctly so the web-webkit should get out to the internet
> via the host machine connection?
> JIm A

Correct.

I'm hesitant to say this, but I'm hoping to have the bug fixed and patch 
submitted by the end of this week. Hopefully I haven't just jinxed 
myself. :)

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

