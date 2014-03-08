Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 336CDE0097A
	for <yocto@yoctoproject.org>; Sat,  8 Mar 2014 01:18:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B76D0862DB;
	Sat,  8 Mar 2014 09:18:30 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id OCIThP_TFcvT; Sat,  8 Mar 2014 09:18:29 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 6D4538610D;
	Sat,  8 Mar 2014 09:18:29 +0000 (UTC)
Message-ID: <531AE05C.1070209@dynamicdevices.co.uk>
Date: Sat, 08 Mar 2014 09:18:20 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Bryan Evenson <bevenson@melinkcorp.com>
References: <5319BBD3.2040703@dynamicdevices.co.uk>
	<d7a9bc4b1fb345ba80df198abb7138e3@BLUPR05MB037.namprd05.prod.outlook.com>
In-Reply-To: <d7a9bc4b1fb345ba80df198abb7138e3@BLUPR05MB037.namprd05.prod.outlook.com>
X-Enigmail-Version: 1.6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remote management of embedded devices
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
X-List-Received-Date: Sat, 08 Mar 2014 09:18:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

+
On 07/03/2014 13:41, Bryan Evenson wrote:
> Alex,
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Alex J Lennon
>> Sent: Friday, March 07, 2014 7:30 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] Remote management of embedded devices
>>
>> Hi,
>>
>> I'm looking into remote management solutions for an upcoming headless
>> mesh edge router running Poky. I think, at least in the initial rollout we're
>> going to need something more than, say, a cron-based package update
>> facility.
>>
>> I'm currently thinking of going down the route of a cloud based server
>> providing SSH port forwarding to the embedded devices, and then perhaps
>> putting some scripting together on top of that to enable monitoring,
>> configuration, and control.
> This is similar to what we have running.  We're using opkg for the package management system and allow firmware upgrade through the USB stick or through remote access.  We have an SSH server for remote access, and each device has its own private key for access into the server.  If the device is in the middle of an SSH session with the remote access server, we can then SSH into the device from our server if we want to do some deeper diagnostics on an issue with a device.  We have separate HTTP server which each device queries to see if it needs to check in.  So instead of having to do an ssh login each time to check if there's a firmware upgrade available, it just needs to do a HTTP GET to see if there's firmware available or if we want to check on its status.
>
> The biggest issues we've had have been due to our network setup and handling upgrade both through the network and the USB stick.  We are using "opkg upgrade --download-only" as the first step of the upgrade process to make sure that we don't do a partial upgrade.  opkg-0.1.8 doesn't do --download-only for file:// sources; why download a file that is already on the filesystem?  So I had to add a patch so it would download files from the USB stick.  We also had an issue with DNS names because the server has a different name when the device finds it locally on our intranet then when it connects remotely, so we had to setup separate mirrors.  Other than that it's been working pretty well.  

Thanks Bryan, thanks really interesting. We do something similar with
HTTP requests on various projects and that might well be something to
apply here. I guess the limitation of this approach is that you are
limited in when you can obtain your back channel to the device to the
frequency with which they connect to the HTTP server. I do wonder just
how much load there would be on a server handling a lot of SSH
connections if almost all of those connections were just idling, sending
keep alives now and again. I keep meaning to try to put together some
metrics on that as, if I'm right and the load is low (as long as we
ensure connections from devices are never synchronised, e.g. power
failure) then I'd like to have an "always on" back-channel available

Interestesting about opkg too - thanks for that!

> I'd also love to hear other people's solutions to see if they have done something similar or came up with a different solution.

Me too

