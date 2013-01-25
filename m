Return-Path: <tb@travelping.com>
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DDBAE006CB
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 09:14:29 -0800 (PST)
Received: from office.tpip.net (port-87-193-171-186.static.qsc.de
	[87.193.171.186])
	by mail.tpip.net (Postfix) with ESMTP id 322164F64B;
	Fri, 25 Jan 2013 17:14:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 8BE7B478A4;
	Fri, 25 Jan 2013 18:14:27 +0100 (CET)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l4L11B_0Nsvj; Fri, 25 Jan 2013 18:14:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 22E85478A8;
	Fri, 25 Jan 2013 18:14:27 +0100 (CET)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id wrGXM0v0FDcF; Fri, 25 Jan 2013 18:14:25 +0100 (CET)
Received: from [192.168.14.111] (p4FEA4865.dip.t-dialin.net [79.234.72.101])
	by office.tpip.net (Postfix) with ESMTPSA id AD459478A4;
	Fri, 25 Jan 2013 18:14:24 +0100 (CET)
Message-ID: <5102BD6F.4000104@travelping.com>
Date: Fri, 25 Jan 2013 18:14:23 +0100
From: Tino Breddin <tb@travelping.com>
Organization: Travelping GmbH
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130109 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
References: <51026D40.6000201@travelping.com>
	<33115ABC4887814E8A92A08FBC93416B08DC5EDF@IRSMSX103.ger.corp.intel.com>
In-Reply-To: <33115ABC4887814E8A92A08FBC93416B08DC5EDF@IRSMSX103.ger.corp.intel.com>
X-Enigmail-Version: 1.5
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to build the build appliance?
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
X-List-Received-Date: Fri, 25 Jan 2013 17:14:30 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Great, building and testing it now.

Thanks for the pointer!

On 01/25/2013 04:17 PM, Stoicescu, CorneliuX wrote:
> Hello Tino,
> 
> Here is what I know on the matter: 
> 1) you need to set MACHINE = "qemux86-64" in local.conf
> 2) run "bitbake build-appliance-image"
> 3) check the tmp/deploy/images folder for the output
> 
> Regards,
> Cornel
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Tino Breddin
> Sent: Friday, January 25, 2013 1:32 PM
> To: yocto
> Subject: [yocto] How to build the build appliance?
> 
> Hi there,
> 
> I've seen some work already went into building a Yocto build appliance which runs on VMware [1]. I think that's a great tool to get started.
> Has the appliance been built by hand or is the process somewhat automated? I couldn't find any references in Poky.
> 
> Cheers,
> Tino
> 
> [1] https://www.yoctoproject.org/documentation/build-appliance-manual
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 



