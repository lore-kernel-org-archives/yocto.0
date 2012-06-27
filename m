Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EA13E0070C
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 02:10:00 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-68-253.range86-170.btcentralplus.com
	[86.170.68.253]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 7724D9C07
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 10:09:59 +0100 (BST)
Message-ID: <4FEACDE6.7040701@r-finger.com>
Date: Wed, 27 Jun 2012 10:09:58 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
In-Reply-To: <4FEA0505.6010108@am.sony.com>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Wed, 27 Jun 2012 09:10:00 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Tim,

On 26/06/12 19:52, Tim Bird wrote:
> On 06/26/2012 10:18 AM, Tomas Frydrych wrote:
> For example, after reading various FAQs
> I still have no idea what kind of thing "Poky" is.  I know
> that bitbake is a build tool.  I know that OE is a package
> meta-information project.  Yocto Project is an umbrella project
> for a lot of tools and technologies (Poky among them).  But is
> Poky a distro (sample/reference or otherwise?) or something else?

For those of us who have been around Poky well before Yocto came around,
we know what Poky used to be, have some inkling what it is, but we are
not always entirely clear what Yocto is. :-)


> When I ran my recently-built image, my target /etc/issue had this content:
> "Yocto (Built by Poky 7.0) 1.2"

My understanding (with the above disclaimer!) is that Poky is a build
system, Yocto is a distro, so I read the above 'Yocto v1.2 image built
by the Poky v7.0 tool'. I think the point of maintaining the distinction
is that you can use Poky without the Yocto Distro (/meta-yocto).

Tomas

