Return-Path: <chris@yassl.com>
Received: from p3plsmtpa01-06.prod.phx3.secureserver.net
	(p3plsmtpa01-06.prod.phx3.secureserver.net [72.167.82.86])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 2F2ABE00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 13:26:32 -0700 (PDT)
Received: (qmail 12947 invoked from network); 9 Oct 2012 20:26:31 -0000
Received: from unknown (174.45.76.142)
	by p3plsmtpa01-06.prod.phx3.secureserver.net (72.167.82.86) with ESMTP;
	09 Oct 2012 20:26:31 -0000
Mime-Version: 1.0 (Apple Message framework v1084)
From: Chris Conlon <chris@yassl.com>
In-Reply-To: <1346972003.7493.31.camel@ted>
Date: Tue, 9 Oct 2012 14:26:34 -0600
Message-Id: <C9CD368C-34D5-4779-8535-9E094B56733F@yassl.com>
References: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
	<ADD6A3980E8C39419A432FF422031B4C0CCBAAD9@ORSMSX106.amr.corp.intel.com>
	<A1E9071B-69AC-4306-ADEB-3C24FAC448C6@yassl.com>
	<50492051.8020109@linux.intel.com>
	<611E7277-9841-4B9C-A664-329376DCF9FF@yassl.com>
	<1346972003.7493.31.camel@ted>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1084)
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
X-List-Received-Date: Tue, 09 Oct 2012 20:26:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

On Sep 6, 2012, at 4:53 PM, Richard Purdie wrote:

> This looks like an interesting piece of software and a quick read
> through your webpages suggests there may be some interesting
> applications of this within OE which I'd love to explore.
>=20
> We are however quite careful about what goes into OE-Core and you've
> picked about the worst possible point of the cycle to have this
> discussion (just after feature freeze which was six days ago).
>=20
> So I certainly think this could make OE-Core but probably not in the =
1.3
> release timeframe. I would also want to see some kind of demo that we
> could replace some of our openssl/gnutls usage with this too which so
> far I've not seen. There is discussion in the OE-Core archives about
> making the SSL/TLS provider selectable though so there is certainly
> interest.
>=20
> So I think this is a good idea, a layer is a great place to start
> experimenting and if its shown to be successful it would make the =
core.
> We've got to be realistic about the development process and this isn't
> going to happen overnight though (a layer is much easier/faster to =
start
> with).

As suggested, we have created a yaSSL layer (meta-yassl) which includes =
a recipe for the CyaSSL embedded SSL library.  The layer can be found on =
GitHub, here:

https://github.com/cconlon/meta-yassl

Any comments or suggestions on improving the layer would be greatly =
appreciated.  Going forward from here, what would make the most sense as =
a next step?

Thanks,

Chris Conlon
www.yassl.com
chris@yassl.com
Skype: chris_conlon_07
+1 406 209 0601=

