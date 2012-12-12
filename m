Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E930E011CC
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 07:30:43 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id qBCFUQ6R022544;
	Wed, 12 Dec 2012 15:30:26 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22293-02; Wed, 12 Dec 2012 15:30:20 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id qBCFUHIR022538
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 12 Dec 2012 15:30:18 GMT
Message-ID: <1355326216.6771.52.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Conlon <chris@yassl.com>
Date: Wed, 12 Dec 2012 15:30:16 +0000
In-Reply-To: <C9CD368C-34D5-4779-8535-9E094B56733F@yassl.com>
References: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
	<ADD6A3980E8C39419A432FF422031B4C0CCBAAD9@ORSMSX106.amr.corp.intel.com>
	<A1E9071B-69AC-4306-ADEB-3C24FAC448C6@yassl.com>
	<50492051.8020109@linux.intel.com>
	<611E7277-9841-4B9C-A664-329376DCF9FF@yassl.com>
	<1346972003.7493.31.camel@ted>
	<C9CD368C-34D5-4779-8535-9E094B56733F@yassl.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, Scott Garman <scott.a.garman@intel.com>
Subject: Re: CyaSSL Yocto Recipe
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
X-List-Received-Date: Wed, 12 Dec 2012 15:30:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-09 at 14:26 -0600, Chris Conlon wrote:
> On Sep 6, 2012, at 4:53 PM, Richard Purdie wrote:
> 
> > This looks like an interesting piece of software and a quick read
> > through your webpages suggests there may be some interesting
> > applications of this within OE which I'd love to explore.
> > 
> > We are however quite careful about what goes into OE-Core and you've
> > picked about the worst possible point of the cycle to have this
> > discussion (just after feature freeze which was six days ago).
> > 
> > So I certainly think this could make OE-Core but probably not in the 1.3
> > release timeframe. I would also want to see some kind of demo that we
> > could replace some of our openssl/gnutls usage with this too which so
> > far I've not seen. There is discussion in the OE-Core archives about
> > making the SSL/TLS provider selectable though so there is certainly
> > interest.
> > 
> > So I think this is a good idea, a layer is a great place to start
> > experimenting and if its shown to be successful it would make the core.
> > We've got to be realistic about the development process and this isn't
> > going to happen overnight though (a layer is much easier/faster to start
> > with).
> 
> As suggested, we have created a yaSSL layer (meta-yassl) which
> includes a recipe for the CyaSSL embedded SSL library.  The layer can
> be found on GitHub, here:
> 
> https://github.com/cconlon/meta-yassl
> 
> Any comments or suggestions on improving the layer would be greatly
> appreciated.  Going forward from here, what would make the most sense
> as a next step?

I did finally get around to looking at this, sorry about the delay. The
release and some travel commitments all combined against me time wise. I
must admit I thought the layer was going to do a little more than it
does. The layer in itself is fine and I was able to build it
successfully. I did notice the library is a little larger than your
30-100kb quoted on the website. I also noticed it builds with the
default configuration with lot of pieces disabled.

I think as this stands its interesting but you might not get many people
using it. What would get people much more interested is if you could
build a system where openssl/gnutls was replaced with cyassl.

Initially, I think a proof of concept using .bbappend files to
reconfigure recipes to use cyassl would be a good place to start. Once
proved to work, we could then incorporate generic ssl providers code
into the project core, allowing people to select the ssl provider at
will. Is this a direction you'd be willing/able to take the layer?

Cheers,

Richard



