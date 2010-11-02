Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6281C4C803A5
	for <yocto@yoctoproject.org>; Tue,  2 Nov 2010 07:07:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2C7Il4003774;
	Tue, 2 Nov 2010 12:07:18 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03364-05; Tue,  2 Nov 2010 12:07:14 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA2C79XR003768
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 2 Nov 2010 12:07:09 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Hector Oron <hector.oron@gmail.com>
In-Reply-To: <AANLkTi=HhFALrXhirP5d_SS98KARKbEQh14FLFE5Pb7d@mail.gmail.com>
References: <AANLkTinu_38Fo9yC1Hpkgf_JN5FqW-WFfFxfxztvOhJr@mail.gmail.com>
	<AANLkTik7jWT2WiQJbAYNQKyN+ywGW9xG5soW2ms5AeVa@mail.gmail.com>
	<1288691504.28481.905.camel@rex>
	<AANLkTi=CmEr8AM952_2T0bYb0UWymJiU+Q0o4nELQ_Rq@mail.gmail.com>
	<1288697349.28481.1131.camel@rex>
	<AANLkTi=HhFALrXhirP5d_SS98KARKbEQh14FLFE5Pb7d@mail.gmail.com>
Date: Tue, 02 Nov 2010 12:07:00 +0000
Message-ID: <1288699620.28481.1213.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Build failures on yocto
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Nov 2010 12:07:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-11-02 at 11:39 +0000, Hector Oron wrote:
> 2010/11/2 Richard Purdie <rpurdie@linux.intel.com>:
> > So to be clear, you set MACHINE="balloon3"? You're therefore building
> > with some layer or additional metadata? I'd suggest trying a supported
> > machine like "atom-pc" first before trying to add your own.
> 
> Yes and yes. I'll attempt "atom-pc" later on, but that is not much of
> interest for me. Thanks.

I'd just appreciate people being a little clearer about what they're
attempting to do. 

Obviously I don't know how you've setup this balloon3 target but knowing
this isn't an out the box configuration might help me target my replies
to you. 

There would appear to be a problem with the kernel provision for your
board. As a hint, either have a kernel recipe and point to it with
PREFERRED_PROVIDER_virtual/kernel setting in the machine configuration
or ensure the machine in question is listed in COMPATIBLE_MACHINE of the
kernel recipe you want to use.

Cheers,

Richard




