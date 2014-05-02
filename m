Return-Path: <obi@opendreambox.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA8E0E003C7; Fri,  2 May 2014 08:46:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 481 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 May 2014 08:46:37 PDT
Received: from mail.dream-property.net (mail.dream-property.net
	[82.149.226.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EC3BE003C7
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 08:46:37 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.dream-property.net (Postfix) with ESMTP id 3277B314BDB5;
	Fri,  2 May 2014 17:38:34 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at mail.dream-property.net
Received: from mail.dream-property.net ([127.0.0.1])
	by localhost (mail.dream-property.net [127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id kNeSH7KFX-S7; Fri,  2 May 2014 17:38:25 +0200 (CEST)
Received: from [10.200.6.10] (unknown [82.149.226.166])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dream-property.net (Postfix) with ESMTPSA id BD6D2314BDB4;
	Fri,  2 May 2014 17:38:24 +0200 (CEST)
Message-ID: <5363BBEF.4090706@opendreambox.org>
Date: Fri, 02 May 2014 17:38:23 +0200
From: Andreas Oberritter <obi@opendreambox.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>, yocto@yoctoproject.org, 
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <CAB3sqtZbtJGsh_jMUnvJAyFmXJVHZT2bvZ=DJ0N-fSB-VYu4Tg@mail.gmail.com>
In-Reply-To: <CAB3sqtZbtJGsh_jMUnvJAyFmXJVHZT2bvZ=DJ0N-fSB-VYu4Tg@mail.gmail.com>
X-Mailman-Approved-At: Mon, 05 May 2014 08:05:44 -0700
Subject: Re: [OE-core] DNS when using Static IP
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
X-List-Received-Date: Fri, 02 May 2014 15:46:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hello Tarek,

On 02.05.2014 13:04, Tarek El-Sherbiny wrote:
> Hi.
> 
> I'm trying to set my IP config to a static address.
> 
> iface eth0 inet static
>      address 192.168.55.45
>      network 192.168.55.0
>      netmask 255.255.255.0
>      broadcast 192.168.55.255
>      gateway 192.168.55.1
>      dns-nameservers 192.168.10.2

FWIW, in Debian-based systems, which is where ifupdown comes from, you
need to install the resolvconf package in order to handle
dns-nameservers entries. I don't know whether that's compatible with
busybox' implementation of ifupdown, though.

Regards,
Andreas

> 
> But I don't get the DNS server address to be included in /etc/resolv.conf
> 
> If I run in dchp mode, then the resolv.conf is updated with my DNS address.
> Is there something I'm missing here in my setup?
> 
> 
> -- 
> /Tarek/
> 
> 


