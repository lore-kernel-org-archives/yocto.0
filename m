Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 131BBE00C27; Thu, 15 Mar 2018 02:10:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yw0-f182.google.com (mail-yw0-f182.google.com
	[209.85.161.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36B88E00752
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 02:10:10 -0700 (PDT)
Received: by mail-yw0-f182.google.com with SMTP id w12so4095941ywa.8
	for <yocto@yoctoproject.org>; Thu, 15 Mar 2018 02:10:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=WrX5/Q20cL+LtBGFe9QCl0vkTkCDTL5FBvNmwN2rSas=;
	b=DNJt4fQpg2Snn15tPHHQfN42LNgMYN4kktgqU7gQKfqhaCa7ff0jR0mrclRd+/4+ca
	eGNhjmMxjZ3GiwRo4eY+Vd3IWhjafmQg/VReK5ZOJgbbxMUw786d/n+ESQU2tMbpcBRS
	UxCUtJH4CzQHsqE3kRSkqg4LxNc1YYqHUp+0BCCesO+FyMHrQGx2pNOjgkn0TFLDHw0v
	J+5WniANLycAs8mVxpilIOJd57ab72+QttZBNNlWILBW0KUcoaHY8qkGvd67fcAtf6+a
	ftswHzce6yDECmCUoVPzfyujReoZaI5VoRdn9e8FzP5W+hURkZ+jUupdGgYfyZ3eqTEA
	5/CA==
X-Gm-Message-State: AElRT7HJ7AO4pngg2DmqwLAbVJacn2Hb3Zu5r5lHAc8rzBnLMdfn5y8I
	NlX0uLePJASfi8BK4Y2cgpA=
X-Google-Smtp-Source: AG47ELsk4p042VzKAcUSVHaVy3WiiGcoBgz+Zsxs2ND7EHT4xfhO6qudl1jCXWDgLbjvriJIRJsgOg==
X-Received: by 10.13.207.1 with SMTP id r1mr5330524ywd.454.1521105009684;
	Thu, 15 Mar 2018 02:10:09 -0700 (PDT)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id w4sm1646575ywe.72.2018.03.15.02.10.06
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 15 Mar 2018 02:10:08 -0700 (PDT)
Message-ID: <1521105005.6779.44.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: "Maxin B. John" <maxin.john@intel.com>
Date: Thu, 15 Mar 2018 09:10:05 +0000
In-Reply-To: <20180313161037.GA20946@mbabyjoh-desk.ger.corp.intel.com>
References: <20180312163806.16943-1-git@andred.net>
	<20180313161037.GA20946@mbabyjoh-desk.ger.corp.intel.com>
X-Mailer: Evolution 3.26.5-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-java][PATCH 1/2] openjdk-8: fix MAKE detection patch
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
X-List-Received-Date: Thu, 15 Mar 2018 09:10:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2018-03-13 at 18:10 +0200, Maxin B. John wrote:
> Hi André,
> 
> On Mon, Mar 12, 2018 at 04:38:05PM +0000, André Draszik wrote:
> > From: André Draszik <andre.draszik@jci.com>
> > 
> > The patch had a few typos, leading to errors during ./configure
> >    ../jdk8u-4be07cb28b21/common/autoconf/configure: line 8408: test: too
> > many arguments
> > 
> > Change-Id: I867eba7aae3390aa869e69c86f29e77b505043e7
> > ---
> >  recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-make.patch
> > | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-
> > for-make.patch b/recipes-core/openjdk/patches-openjdk-8/dont-expect-
> > fqpn-for-make.patch
> > index 6454237..5192d1a 100644
> > --- a/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-
> > make.patch
> > +++ b/recipes-core/openjdk/patches-openjdk-8/dont-expect-fqpn-for-
> > make.patch
> > @@ -6,7 +6,7 @@
> >       # User has supplied a make, test it.
> >  -    if test ! -f "$MAKE"; then
> >  -      AC_MSG_ERROR([The specified make (by MAKE=$MAKE) is not found.])
> > -+    if test -a `dirname "$MAKE"` = "." -a ! -f "$MAKE"; then
> > ++    if test `dirname "$MAKE"` = "." && ! test -f "$MAKE"; then
> >  +      AC_PATH_PROGS(CHECK_MAKE, $MAKE)
> >  +    else
> >  +      CHECK_MAKE="${MAKE}"
> > --
> 
> Merged, Thanks.

Thanks Maxin.

Did you forget the 2nd patch, or is there an issue with it?

BTW, I just noticed that master and master-next have diverged quite a lot -
what is the plan wrt that?

Cheers,
Andre'


