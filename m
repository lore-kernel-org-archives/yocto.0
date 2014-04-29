Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90B70E00C26
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 09:43:50 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id CA52927E00F;
	Tue, 29 Apr 2014 16:43:47 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id XHTP1E0-F--d; Tue, 29 Apr 2014 16:43:46 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 0F36027E006;
	Tue, 29 Apr 2014 16:43:45 +0000 (UTC)
Message-ID: <535FD6BF.4040004@dynamicdevices.co.uk>
Date: Tue, 29 Apr 2014 17:43:43 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: rpjday@crashcourse.ca
References: <alpine.LFD.2.11.1404291231440.3997@localhost>
In-Reply-To: <alpine.LFD.2.11.1404291231440.3997@localhost>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: can one lay hands on a galileo-based dev kit?
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
X-List-Received-Date: Tue, 29 Apr 2014 16:43:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 29/04/2014 17:34, Robert P. J. Day wrote:
>   i've just been asked to design a linux device drivers course based
> on the arduino-compatible intel galileo processor, so my first TODO
> item is to lay hands on a galileo-based dev kit, for which this looks
> like the obvious choice:
>
> https://software.intel.com/en-us/iotdevkit
>
> but that page says "upcoming". does it exist? my normal go-to source
> up here, digikey.ca, shows zero in stock. where can i lay hands on
> one (if possible)? thanks.

If it helps I had a Galileo Dev Kit delivered from RS (UK) a couple of
days ago.

http://uk.rs-online.com/web/p/processor-microcontroller-development-kits/7919611/

(I'm actually a bit confused about how the Galileo IoT collection of
meta-foo layers relates to the primary meta-foo
 sources, as I can't seem to find an independent meta-clanton ;ayer
which I guess I'd need. Early days yet, but am planning
 on working through this as soon as I get some time as I want to test a
build with meta-moo support on Galileo)

Cheers, Alex

> rday
>


