Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E8CFE0073F
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 00:44:39 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-12-169.range86-170.btcentralplus.com
	[86.170.12.169]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 31AB09C07
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 08:44:37 +0100 (BST)
Message-ID: <4FEC0B65.5060104@r-finger.com>
Date: Thu, 28 Jun 2012 08:44:37 +0100
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
	<4FEACDE6.7040701@r-finger.com>
	<83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
	<4FEB69BB.2080906@r-finger.com>
	<02DD1E77-2FBE-413A-B852-6DC3EEC6A7E2@beagleboard.org>
In-Reply-To: <02DD1E77-2FBE-413A-B852-6DC3EEC6A7E2@beagleboard.org>
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
X-List-Received-Date: Thu, 28 Jun 2012 07:44:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Koen,

On 27/06/12 22:58, Koen Kooi wrote:
> I have no problem with poky-the-distro, I have a problem with
> poky-the-buildsystem. I warned mallum about this confusion years ago,
> but you know how stubborn he can be :)

The Yocto naming confusion is entirely of Yocto making, nothing at all
to do with days of yore. There was never any confusion about what Poky
was before Yocto, just unhappiness of some that Poky was not just a
distro. :)

Poky-the-buildsystem was simply necessary. OE-the-buildsystem is a
wonderful, rich, community project, but one in a constant and
unpredictable flux. This is great for tinkering, but PITA when trying to
develop and long term maintain a product (much bigger problem than what
sparked this thread for sure). In the absence of a clearly defined
process for the OE-the-buildsystem Poky had to bring sanity to the
buildsystem itself and could not be just a distro. It introduced QA,
releases, it focused on facilitating customization and manageable
upgrade paths (and even provided some documentation!).

Yocto is based on Poky; if it was not, it would need to create something
just like Poky (the alternative would be asserting complete control over
OE as a whole, not good I think). OE has benefited from the Poky effort
over the last seven years, and it is a better ecosystem for it. At the
same time, the OE systemd situation (a major system level change without
adequate consideration of the upgrade path) suggests to me that the need
for a sanitized OE-derivative remains.

I shut up now. Really. Maybe. :-)

(Perhaps I should add that I am not formally affiliated with the Yocto
project in any way, my opinions are really my own, not someone else's or
driven by a policy, I have a long history with Poky, so I am definitely
biased in a particular way, I work with Poky on daily basis, and I
tinker with Poky after hours.)

Tomas

