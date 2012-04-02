Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD394E01304
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 04:27:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q32BRnxk007932;
	Mon, 2 Apr 2012 12:27:49 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03987-06; Mon,  2 Apr 2012 12:27:45 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q32BRZu4007925
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 2 Apr 2012 12:27:38 +0100
Message-ID: <1333366056.647.21.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Matthew McClintock <msm-fsl@mcclintock.net>
Date: Mon, 02 Apr 2012 12:27:36 +0100
In-Reply-To: <CAEsOVNfEF9aUr4hEbaptuGoPJxyEshKxrdhRHqFXVWS-_pkUhA@mail.gmail.com>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
	<1333177590.18082.160.camel@ted>
	<CAEsOVNfEF9aUr4hEbaptuGoPJxyEshKxrdhRHqFXVWS-_pkUhA@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Chris Larson <clarson@kergoth.com>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Mon, 02 Apr 2012 11:27:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-04-01 at 21:08 -0700, Matthew McClintock wrote:
> I think we should consider a "standard way" of integrating layers and
> other bits. One method is (and I'm not recommending it) using 'git
> submodules' - another is 'androids repo command'. If all the distros
> (poky, angstrom, MEL, etc) could at least consider standardizing on
> something like this it starts to becoming more obvious what exactly is
> going on and what version of what is being pulled in and from where...

I don't think there is common ground in this area to work with. There is
a certain class of users who really need a single repo with all the
pieces in to get started with. Poky and some of the solutions provided
by various people on this list look like that. There is also the
"scripts" approach taken by Angstrom and others and also the different
commercial offerings from the OSVs which are different again.

None of the implementations I've seen are wrong, they just help people
in different ways (and have some downsides too). Maybe in time we'll see
some standardisation in this area (we already have a small number of
approaches rather than everyone being different) but at the moment,
people are generally happy with their own solutions. I don't see much
value in trying to force a standard way of doing things. Its orders of
magnitude more important we share bitbake, OE-Core and make the layer
model a success.

Cheers,

Richard




