Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DC76E00A44; Thu, 15 May 2014 13:43:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from dan.rpsys.net (unknown [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA32E0053B
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 13:43:47 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s4FKhYiL002509; Thu, 15 May 2014 21:43:34 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id teefN-UmALO4; Thu, 15 May 2014 21:43:33 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s4FKhQwr002497
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Thu, 15 May 2014 21:43:28 +0100
Message-ID: <1400186599.28353.5.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Neuer User <auslands-kv@gmx.de>
Date: Thu, 15 May 2014 21:43:19 +0100
In-Reply-To: <lkvvbt$jss$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>
	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<lkvsj2$vof$1@ger.gmane.org>
	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
	<lkvt3i$bhu$1@ger.gmane.org>
	<CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>
	<lkvu7b$qf$1@ger.gmane.org>
	<CAJTo0LZM1BAkH4BHS8=nn86MfVPah5U-HxCGbHyCLjR5XjZXwg@mail.gmail.com>
	<lkvuuu$eil$1@ger.gmane.org> <lkvvbt$jss$1@ger.gmane.org>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Thu, 15 May 2014 20:43:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2014-05-14 at 16:42 +0200, Neuer User wrote:
> Probably solved. It should be
> 
> include conf/distro/poky.conf
> 
> instead of
> 
> include poky.conf.
> 
> (Stupid newbie error).

FWIW if you said "require" instead of "include" you'd have got a useful
error saying it couldn't find the file.

Cheers,

Richard


