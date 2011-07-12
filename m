Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7B26D4C80A5B
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2011 03:44:55 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6C8ipWH018701;
	Tue, 12 Jul 2011 09:44:51 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18595-02; Tue, 12 Jul 2011 09:44:47 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6C8ijEQ018694
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 12 Jul 2011 09:44:46 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Turner Randy <Randy.Turner@technicolor.com>
In-Reply-To: <CAE727EC-4F3C-4FD2-BCEE-F14BC42E981F@technicolor.com>
References: <CAE727EC-4F3C-4FD2-BCEE-F14BC42E981F@technicolor.com>
Date: Tue, 12 Jul 2011 09:43:58 +0100
Message-ID: <1310460238.20015.1024.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Menu configuration
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
X-List-Received-Date: Tue, 12 Jul 2011 08:44:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-07-11 at 10:00 -0700, Turner Randy wrote:
> Hello list,
> 
> Is there a interactive menu-based configuration for yocto/poky builds
> similar to that provided in Buildroot? Or is someone working on this?

At present there is not any interactive menu based configuration but
there is work ongoing on a UI called hob which allows you to select
packages and construct images of those packages so its a graphical front
end to the system.

We're also in the process of starting to better markup configuration
variables in the metadata so that writing some kind of menu based
configuration system would be easier in the future.

We're certainly open to any help in those areas too!

Cheers,

Richard




