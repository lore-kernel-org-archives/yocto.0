Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFB08E008EC; Wed,  8 Apr 2015 23:54:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BE75E007A0
	for <yocto@yoctoproject.org>; Wed,  8 Apr 2015 23:54:49 -0700 (PDT)
Received: by pdea3 with SMTP id a3so142837136pde.3
	for <yocto@yoctoproject.org>; Wed, 08 Apr 2015 23:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=HNODNj1txDvdF5aTK/PcWaGrpG05cxHiwN+SSLB0c5s=;
	b=lRTzYXOaa8XCpUetMrwnN5zfcdHuslkeTWvGuDOQx4HFQ6vjg24OpRtHYxGKx1GtZM
	TS2J9ruV67jOcRGL4LqXSc7FJGvD4wCc9AeMN6ZoaGelPdJySA+0S3lEUoSDoPOeZjZH
	bEYF0hS55pA66KGk8q29eOUgwhbA35Lytqpp1ioSrafLZcujljc/QQeJ0nvznH4kcxDT
	liUOUuihL0PUHljFYKTri/LS0mUnFUyN4Uy7KKEiBxJ/lLkPkrEMw2gygzUdZyvLP2vm
	jMQ92EChSb921jWN1tRbcGmP8HfvjQpHJ89V98aDk7N9DMnnGaTsQB4x7wFKX93KuSkg
	cIFg==
X-Received: by 10.68.203.66 with SMTP id ko2mr52238863pbc.156.1428562489717;
	Wed, 08 Apr 2015 23:54:49 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:68c8:2a57:ea69:48da?
	([2601:9:3580:84c:68c8:2a57:ea69:48da])
	by mx.google.com with ESMTPSA id
	gy3sm13126583pbb.42.2015.04.08.23.54.48
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 08 Apr 2015 23:54:48 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAK8F28=tmVPsTSr24Ccv634cOx5UQkikFjasWDajygJg0P-_UQ@mail.gmail.com>
Date: Wed, 8 Apr 2015 23:54:47 -0700
Message-Id: <31362591-246B-4224-BA78-9A65EBA53317@gmail.com>
References: <CAK8F28=tmVPsTSr24Ccv634cOx5UQkikFjasWDajygJg0P-_UQ@mail.gmail.com>
To: Ash Charles <ashcharles@gmail.com>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: False dependency on non-existent libgettextlib-dev
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
X-List-Received-Date: Thu, 09 Apr 2015 06:54:54 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


> On Apr 8, 2015, at 7:24 PM, Ash Charles <ashcharles@gmail.com> wrote:
> 
> Hi,
> 
> In my Yocto build, the RPM package for gettext-dev has a depency on an
> apparently non-existent package "libgettextlib-dev".  In the generated
> pkgdata/runtime/gettext-dev  file, I see
> "RRECOMMENDS_gettext-dev: libgettextlib-dev libgettextsrc-dev
> glibc-dev expat-dev".
> 
> From the gettext recipe, it seems clear that there is not supposed to
> be a libgettextlib-dev package.  How might such a dependency come
> about?

its probably due to solib name renaming, which is debian thing.
you just might kill this -dev package completely and just have gettext-dev
have everything development related.

> 
> --Ash
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


