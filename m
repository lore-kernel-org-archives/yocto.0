Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F018E004A0; Thu, 19 Jan 2017 00:38:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9917E0033D
	for <yocto@yoctoproject.org>; Thu, 19 Jan 2017 00:38:02 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 19 Jan 2017 00:37:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,253,1477983600"; d="scan'208";a="215162255"
Received: from mbadrulh-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.14])
	by fmsmga004.fm.intel.com with ESMTP; 19 Jan 2017 00:37:54 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 19 Jan 2017 21:37:52 +1300
Message-ID: <25169164.g673BZtE8Y@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.8.13-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <53dace6e-9334-13e1-c963-eb27428e27f3@gmail.com>
References: <f5df85a01eecd22894f83c66b3c3884c@reliableembeddedsystems.com>
	<53dace6e-9334-13e1-c963-eb27428e27f3@gmail.com>
MIME-Version: 1.0
Cc: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Subject: Re: "external"/"internal" SDK
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
X-List-Received-Date: Thu, 19 Jan 2017 08:38:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 17 Jan 2017 20:54:14 Joshua Watt wrote:
> > external SDK:
> > everything the same as above, but for some packages there should be
> > only libraries - no header files.
> 
> Is there a reason why you want the libraries without the headers? It
> doesn't seem particularly useful to be able to link a program against a
> library, but not have the header to use its API (especially in an SDK,
> where the point is to build program against the libraries). If you are
> just worried about including the source code in the external SDK, you
> might be able to get by with simply removing "dbg-pkgs" from
> SDKIMAGE_FEATURES. This would still include the development headers for
> the libraries (i.e. the API), but would remove the source code for
> debugging (I think, I haven't actually tried it).
> 
> As an alternative, there might be a way to completely exclude those
> particular packages from the external SDK instead of removing the header
> files (see below)?
> 
> > I guess I'm not the first one who needs something like this.
> > 
> > How would you do something like this the "Yocto way"?
> 
> We have to do something similar to this where I work. We actually
> accomplish this by having multiple "image" recipes dedicated to the
> SDK(s) that are distinct from our actual main image that goes on our
> final product. This allows us to add whatever we want to the SDK image,
> but keep our final image paired down to only what is necessary. For
> example, our (internal) SDK image has many libraries included in it that
> aren't going to necessarily be used by our final product, but we may
> want to use in the future. Having a separate SDK image allows us to
> (more or less) start using the library without having to go through the
> hassle of updating and re-releasing the SDK to add support (granted, we
> *do* have to install the new library on our product before it works, but
> that is generally easier in our particular work flow). To reduce
> duplicate maintenance, between the internal SDK and our product image,
> we make judicious use of bitbake include files to make sure that they
> both get all the packages that should be common.
> 
> Using a external SDK is a similar exercise, except we are much more
> careful about what libraries end up on that one. We make sure that none
> of our "special sauce" (i.e. proprietary) libraries end up there if we
> can help it. This might work for you if you can pare down what packages
> are including to keep the libraries you don't want from getting included
> in the SDK.
> 
> Finally, failing all that, you can probably create an external SDK image
> but remove "dev-pkgs" and "dbg-pkgs" from SDKIMAGE_FEATURES. This would
> create an SDK that isn't very exciting because you wouldn't have the
> headers for *any* libraries, but you could manually add the ones you did
> want back into the image by including the corresponding "-dev" package
> in IMAGE_INSTALL. It would be a lot of manual work, but you could
> probably get exactly what you wanted.

So I haven't tried it, but in theory PACKAGE_EXCLUDE_COMPLEMENTARY should let 
you exclude one or more packages from the "complementary" package processing 
(which is how we add -dev and -dbg packages based on SDKIMAGE_FEATURES). That 
should avoid you having to drop those features and add everything back in 
explicitly.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

