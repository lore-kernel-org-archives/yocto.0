Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE706E00924; Thu,  2 Mar 2017 08:58:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20DE2E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:58:04 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id B255120B64;
	Thu,  2 Mar 2017 16:48:44 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo03-pco.easydns.vpn [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id zAi2PabtFMzZ; Thu,  2 Mar 2017 16:48:44 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-95-79.washdc.fios.verizon.net
	[100.15.95.79])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 82E2B207AD;
	Thu,  2 Mar 2017 16:48:41 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id C41471623A1; Thu,  2 Mar 2017 11:48:40 -0500 (EST)
Date: Thu, 2 Mar 2017 11:48:40 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20170302164840.GN7350@denix.org>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<CAF1M0z463Yg9KWPW8pvm+8svGxPrhGbqx8X+gurvO_VxmxOeCA@mail.gmail.com>
	<CAJTo0LYKK6HGgvg-qV4BgXxf5=43X=tEv8y-ncnpV6nC8S5M4A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LYKK6HGgvg-qV4BgXxf5=43X=tEv8y-ncnpV6nC8S5M4A@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	SatyaNarayana Sampangi <satya.2891@gmail.com>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:58:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Mar 02, 2017 at 04:26:32PM +0000, Burton, Ross wrote:
> On 2 March 2017 at 16:25, SatyaNarayana Sampangi <satya.2891@gmail.com>
> wrote:
> 
> >
> > Pls go through this link,
> >
> > https://www.yoctoproject.org/product/meta-ti-bsp-layer
> >
> > very clearly mentioned
> >
> 
> Clearly the meta-ti maintainers should update the site.

meta-ti maintainers have no control over that page.

It says "compatible" as defined in "Yocto Project Compatible 1.0":
https://www.yoctoproject.org/ecosystem/yocto-project-branding-program

That program has been in the process of upgrading and I've been asked to 
wait for the new and improved "Yocto Project Compatible 2.0" process...

So, technically, meta-ti is still following the rules and adhering to the 
compatibility guidelines all the way to version 2.2, just not running the 
official review process for the old program...


BTW, meta-ti says compatible with version 1.6, while meta-intel is 1.5:
https://www.yoctoproject.org/product/meta-intel-bsp-layer

So, clearly, the process has been abandoned by everyone...

-- 
Denys

