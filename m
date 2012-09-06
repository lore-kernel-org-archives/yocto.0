Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A536EE01400
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 15:53:41 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q86MrVeM023202;
	Thu, 6 Sep 2012 23:53:31 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22770-04; Thu,  6 Sep 2012 23:53:27 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q86MrNXG023195
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 6 Sep 2012 23:53:24 +0100
Message-ID: <1346972003.7493.31.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Conlon <chris@yassl.com>
Date: Thu, 06 Sep 2012 23:53:23 +0100
In-Reply-To: <611E7277-9841-4B9C-A664-329376DCF9FF@yassl.com>
References: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
	<ADD6A3980E8C39419A432FF422031B4C0CCBAAD9@ORSMSX106.amr.corp.intel.com>
	<A1E9071B-69AC-4306-ADEB-3C24FAC448C6@yassl.com>
	<50492051.8020109@linux.intel.com>
	<611E7277-9841-4B9C-A664-329376DCF9FF@yassl.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 06 Sep 2012 22:53:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-09-06 at 16:38 -0600, Chris Conlon wrote:
> Hi Saul,
> 
> On Sep 6, 2012, at 4:14 PM, Saul Wold wrote:
> 
> > On 09/06/2012 02:59 PM, Chris Conlon wrote:
> >> Adding a direct link to the CyaSSL recipe file for review:
> >> 
> >> www.yassl.com/files/yocto/cyassl_2.3.0.bb
> >> <http://www.yassl.com/files/yocto/cyassl_2.3.0.bb>
> >> 
> > Chris,
> > 
> > On initial inspection of this recipe it looks OK, what
> package/libraries does it provide?  Are they the same as the openssl
> package?
>
> It provides the CyaSSL embedded SSL library, specifically called
> "libcyassl".  Although it offers similar functionality as the openssl
> package (SSL and crypto support), it shouldn't conflict naming wise.
> OpenSSL's library names are "libssl" and "libcrypto".
>
> > 
> > You may need RCONFLICTS_${PN} and/or RPROVIDES_${PN}, where the
> ${PN} may need to be the package names in openssl, I need to check
> that.
>
> CyaSSL shouldn't conflict with OpenSSL, as it has a different library
> name and header location.  Thanks for the suggestion about RPROVIDES.
> I'm new to writing recipe files, so your feedback is very appreciated.
>
> > 
> > I would suggest that initially you make this available as a standard
> > layer, possibly called meta-cyassl, it could be hosted on GitHub.
> You can add it to the OpenEmbedded Layer Index. See
> http://www.openembedded.org/wiki/LayerIndex
> > 
> > Distributions that want to use this instead of OpenSSL can then use
> your layer and select your recipe, if it's setup correctly it will
> provide what they need.
>
> Ok, thanks for the pointer.  Any chance of the recipe getting rolled
> into the OpenEmbedded/Yocto meta/recipes-connectivity layer?

This looks like an interesting piece of software and a quick read
through your webpages suggests there may be some interesting
applications of this within OE which I'd love to explore.

We are however quite careful about what goes into OE-Core and you've
picked about the worst possible point of the cycle to have this
discussion (just after feature freeze which was six days ago).

So I certainly think this could make OE-Core but probably not in the 1.3
release timeframe. I would also want to see some kind of demo that we
could replace some of our openssl/gnutls usage with this too which so
far I've not seen. There is discussion in the OE-Core archives about
making the SSL/TLS provider selectable though so there is certainly
interest.

So I think this is a good idea, a layer is a great place to start
experimenting and if its shown to be successful it would make the core.
We've got to be realistic about the development process and this isn't
going to happen overnight though (a layer is much easier/faster to start
with).

Cheers,

Richard

-- 
Yocto Project Architect
Linux Foundation Fellow



