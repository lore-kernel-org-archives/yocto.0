Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68CF8E0030D
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 14:23:31 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBFMNMQH010314;
	Thu, 15 Dec 2011 22:23:22 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09879-06; Thu, 15 Dec 2011 22:23:18 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBFMND2A010308
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 15 Dec 2011 22:23:14 GMT
Message-ID: <1323987793.4568.72.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Tapp <opensource@keylevel.com>
Date: Thu, 15 Dec 2011 22:23:13 +0000
In-Reply-To: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Thu, 15 Dec 2011 22:23:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-15 at 21:47 +0000, Chris Tapp wrote:
> Is anyone on this list considering (or working on) a BSP for the  
> Raspberry Pi (http://www.raspberrypi.org/faqs) ?
> 
> For those that haven't seen it, it's a credit-card sized 'home pc'  
> aimed primarily at educational users that includes a 700MHz ARM11  
> core, HDMI, OpenGL ES 2.0, ethernet and audio for about $35. It will  
> be supporting Debian, Fedora and ArchLinux at launch.
> 
> Looks like a good board for people that want to get in to Yocto /  
> embedded linux. Also looks like it's a good platform for some of my  
> stuff...
> 
> I would be interested in working on a BSP / distro if anyone is  
> working on it or would like to work on it.

I'm not aware of anyone working on this but I like the idea of a BSP for
it and it shouldn't be too hard to do. I'd be happy to ensure we have a
repository somewhere on git.yoctoproject.org to support this (and any
other similar BSP efforts) if that would help?

Cheers,

Richard


