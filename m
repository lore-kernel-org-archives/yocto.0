Return-Path: <wmills@ti.com>
Received: from arroyo.ext.ti.com (arroyo.ext.ti.com [192.94.94.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10382E00303
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 14:19:10 -0800 (PST)
Received: from dlep26.itg.ti.com ([157.170.170.121])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id q05MJ84L014216;
	Thu, 5 Jan 2012 16:19:08 -0600
Received: from DFLE71.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id q05MJ8h0010457;
	Thu, 5 Jan 2012 16:19:08 -0600 (CST)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle71.ent.ti.com
	(128.247.5.62) with Microsoft SMTP Server id 14.1.323.3; Thu, 5 Jan 2012
	16:19:08 -0600
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q05MJ7nE027265;	Thu, 5 Jan 2012 16:19:07 -0600
Message-ID: <4F0621DB.7030201@ti.com>
Date: Thu, 5 Jan 2012 17:19:07 -0500
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Jack Mitchell <ml@communistcode.co.uk>
References: <4F058D02.2050707@communistcode.co.uk>
In-Reply-To: <4F058D02.2050707@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Integrating 3rd Party BSP Layers
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
X-List-Received-Date: Thu, 05 Jan 2012 22:19:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/05/2012 06:44 AM, Jack Mitchell wrote:
> Good morning everyone,
>
> I am currently trying to figure out the best way to integrate the
> meta-texasinstruments layer with the Yocto provided layers. According to
> the meta-texasinstruments readme, it requires the meta-oe, meta-angstrom
> and meta-oe-core. Now Yocto provides the stable meta-oe-core (correct?),
> so I would clone the meta-oe and meta-angstrom, add them and the
> meta-texasinstruments layer to my bblayers.conf then build away, yes?
>
> However, what implications does adding these new layers bring when using
> them in the Yocto environment?
>
> Any thoughts would be greatly appreciated on the consequences and/or my
> methodology!
>
> The main aim of the game is trying to build an image for the beagleboard
> using the meta-texasinstruments layer as to get the latest and greatest
> support - with the possibility of using it later in the day when the
> beaglebones start appearing but with the stability and additional
> support that is acquired through the Yocto umbrella.

Yes, all good goals and within the scope of the plans for meta-ti (aka 
meta-texasinstruments).  However meta-ti is still a work in progress.

By the yocto 1.2 release time frame we plan to support and show the 
following layer combinations:

core stack: oe-core + meta-ti
yocto stack: poky layer set + meta-ti
angstrom stack: oe-core + meta-oe + meta-ti + meta-angstrom
arago stack: oe-core + meta-oe + meta-ti + meta-arago

However at this time the only stack being built is the angstrom 
configuration.

