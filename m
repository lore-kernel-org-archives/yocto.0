Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 030CB4C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 08:59:57 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA1DxsZD020344;
	Mon, 1 Nov 2010 13:59:54 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20041-04; Mon,  1 Nov 2010 13:59:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA1DxmKK020338
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 1 Nov 2010 13:59:48 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTinJYiqS9rTv6ioZUSdS5sbSob3WQ564T-6funmc@mail.gmail.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34EF5F@orsmsx501.amr.corp.intel.com>
	<AANLkTinJYiqS9rTv6ioZUSdS5sbSob3WQ564T-6funmc@mail.gmail.com>
Date: Mon, 01 Nov 2010 13:59:42 +0000
Message-ID: <1288619982.28481.12.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some photos of the four architecture demo
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
X-List-Received-Date: Mon, 01 Nov 2010 13:59:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-01 at 08:07 +0100, Frans Meulenbroeks wrote:
> Dave, the demo looked indeed quite impressive, and actually I was
> trying to fetch the sources, but ....
> git clone does not work for me. I've tried a few times and from
> different systems/locations.
> the poky master clones fine.
> 
> frans@frans-desktop:~/yocto$ git clone git://git.pokylinux.org/meta-demo
> Initialized empty Git repository in /home/frans/yocto/meta-demo/.git/
> fatal: The remote end hung up unexpectedly

These was a problem with anonymous clones of this repository but this
should be fixed now, sorry about that.

Cheers,

Richard



