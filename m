Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B092E0044A
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 14:26:29 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-62-160.range86-170.btcentralplus.com
	[86.170.62.160]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 36CA39C07
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 22:26:28 +0100 (BST)
Message-ID: <4FDBA883.8030609@r-finger.com>
Date: Fri, 15 Jun 2012 22:26:27 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4FD93175.7070202@linux.intel.com>
	<4FD98EA6.1050403@r-finger.com>	<4FDA530E.3090508@linux.intel.com>
	<4FDAD6D1.4050605@r-finger.com> <4FDB91B1.2010706@am.sony.com>
In-Reply-To: <4FDB91B1.2010706@am.sony.com>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 21:26:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 15/06/12 20:49, Tim Bird wrote:
> On 06/14/2012 11:31 PM, Tomas Frydrych wrote:
> IMHO, the whole notion of starting with a big system and
> subtracting what you don't want in order to create a minimal
> system is the wrong approach.

At no point in this discussion was such an approach advocated by anyone.


> I realize you said that with a smiley, so I'm not trying to be
> dismissive or harsh, but I do think that if you want the features
> of some other init system, then the right answer is to use them,
> and not complain about this one.

I am not complaining, I have asked what the specific, quantifiable,
objective of creating the home grown init 'procedure' is, IMHO that is
an entirely reasonable question to an RFC, the answer to which should
inform the design.

If we are talking about targeting 1MB of RAM then it is unavoidable that
the system has to be hand crafted to a fair degree. It is not what I'd
consider the typical Poky use case, but within those constrains, I'd
probably be looking at eliminating shell scripts altogether in my
customization of whatever Poky offers.

Tomas



