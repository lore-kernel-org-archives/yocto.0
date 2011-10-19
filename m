Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2F4EE004E9
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 08:49:15 -0700 (PDT)
Received: from dlep36.itg.ti.com ([157.170.170.91])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id p9JFnAiv001069
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 19 Oct 2011 10:49:11 -0500
Received: from dlep26.itg.ti.com (smtp-le.itg.ti.com [157.170.170.27])
	by dlep36.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9JFnAuD006740;
	Wed, 19 Oct 2011 10:49:10 -0500 (CDT)
Received: from DFLE70.ent.ti.com (localhost [127.0.0.1])
	by dlep26.itg.ti.com (8.13.8/8.13.8) with ESMTP id p9JFnAoW022241;
	Wed, 19 Oct 2011 10:49:10 -0500 (CDT)
Received: from dlelxv22.itg.ti.com (172.17.1.197) by dfle70.ent.ti.com
	(128.247.5.40) with Microsoft SMTP Server id 14.1.323.3;
	Wed, 19 Oct 2011 10:49:10 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.100.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	p9JFn9at004935;	Wed, 19 Oct 2011 10:49:10 -0500
Message-ID: <4E9EF175.1050605@ti.com>
Date: Wed, 19 Oct 2011 11:49:09 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11
MIME-Version: 1.0
To: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
References: <4E9EC5ED.6050503@ts.fujitsu.com>
In-Reply-To: <4E9EC5ED.6050503@ts.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions from a greenhorn about build problems
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
X-List-Received-Date: Wed, 19 Oct 2011 15:49:16 -0000
Content-Type: text/plain; charset="ISO-8859-15"; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/2011 08:43 AM, Rainer Koenig wrote:
> Hi all,
>
> I'm using yoctoproject since one week now and got the latest
> yocto-1.1/edison-6.0 git tree. I have been able to build core-image-sato
> for the Beagleboard xM rev. A and the image works fine.
>
> Now my next goal is to build an image for the TI 8148 EVM board. Since
> Yocto is based on OE-core I thought it was a good idea to get the
> meta-texasinstruments layer that is listed in the OE wiki:
> http://www.openembedded.org/wiki/LayerIndex
>
> So I cloned my git tree for meta-texasinstruments from
> git://git.angstrom-distribution.org/meta-texasinstruments
>
> and looked a bit around in that. conf/machine shows a conf for
> c6a814x-evm so I replaced the machine "beagleboard" with "c6a814x-evm"
> in my local conf.

Rainer:

I think your probably running a bit ahead of us.

Keep in mind that at this point meta-texasinstruments has not been 
tested with the poky layer stack.  It is a work in progress and is being 
tested with a layer stack that includes oe-core + meta-oe + meta-angstrom.

It is certainly in scope for meta-ti (new name) to work w/ a stock poky 
release or snapshot, were just not verified that yet.  As of now our 
plan includes building and testing the following layer combinations:

oe-core + meta-ti
oe-core + meta-ti + meta-openembedded + meta-angstrom
poky + meta-ti
oe-core + meta-ti + meta-openembedded + meta-arago <= TI SDKs

[layer names and order not to scale]

We will keep a mirror of meta-ti active at the angstrom URL are using so 
no worries.  We are also working to publish a mirror on yoctoproject.org.

I would encourage you to subscribe to our brand spanking new meta-ti 
mailing list to discuss, monitor and prod.

https://lists.yoctoproject.org/listinfo/

I don't think any of this explains why you are having proxy issues and 
we will let the rest of the thread play out for that.  I just wanted to 
set your expectations.

>
> I started `bitbake -k core-image-sato` and after builing around 4100 of
> the 4221 recipes I got an error on a kernel tree from the arago-project
> and from the u-boot compilation. I guess the second error occurs because
> of the first error, so I had a better look at the first error.
>
> The buildstats for this packet show, that fetch failed. I tried to fetch
> the SRC_URL by hand and it worked without any problem. Note: I'm behind
> a firewall, so to clone git://... I need to go over a SOCKS proxy.
> Therefore I created an /etc/gitconfig that works fine and the downloads
> show, that lots of git-repos from the yocto recipes worked without any
> probem, but now those from the meta-texasinstruments layer seem not to
> work. I tried a bit around with bitbake -b -D and saw long commandlines
> with lots of export before.
>
> It exports a GIT_CONFIG which points to
> poky/tmp/sysroots/x86_64linux/usr/etc/gitconfig.
>
> First I replaced this gitconfig with my own gitconfig from /etc, but
> that didn't work. Looking at the file structure there it seems that
> ../sysroots/x86_64linux/ is chroot'ed somehow so I put gitconfig under
> that chroot's /etc and now it seems that fetch is working.
>
> So stupid question: Is there a documentation that explains how that
> build process is working on the machine/script level and why are the
> recipes from yocto behaving different than to the ones that I imported
> with the meta-texasinstruments layer?
>
> Best regards
> Rainer

