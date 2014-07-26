Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B1BE006C4; Fri, 25 Jul 2014 20:03:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2735E0043F
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 20:03:21 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id at20so4384391iec.25
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 20:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=o4s6S+FJK+JBLPXvEvdAUHCRRlKXGTSKwVZHCR+TP9Y=;
	b=Rz+meXw0H6PnTvmE0fAL1EKHZ20Um1B0kN2VMjDbaE0lzrTfEJYWwFavhbTmulF8Bq
	ar35cxcvIolR55hWn81flUGDUfNwRK0J9uc2MlcoHHUsQc1ae/DytpZoCxRw+ghRW5pX
	PhZQ9hK7wqeIcjNN7l+A+FT8NwgaTFmgfjYIfWZw1eoW1xv8ldA1yh3Ihg/koWDCli/H
	3JJ/bgIYVCnoC/3C/sc3ZT6Vp0CyXY557Y4isxAUp0Yvi2YJwIp/bDxRS0kSb/Ux9a99
	xY2osnns1dolWmBCoLOWI8vUnDHWpzS7jRe8Zk/oPoitB5j8r7gu677fR/STi/gv0LF3
	dNBg==
X-Received: by 10.50.43.134 with SMTP id w6mr10816044igl.17.1406343800374;
	Fri, 25 Jul 2014 20:03:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 25 Jul 2014 20:02:50 -0700 (PDT)
In-Reply-To: <53D2DE13.9010007@mvista.com>
References: <53D2DE13.9010007@mvista.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Jul 2014 20:02:50 -0700
Message-ID: <CAMKF1son3T9fsuF9X0Px4hirfk7Ezguy4s5Zit6-0JvfmXDV5A@mail.gmail.com>
To: akuster <akuster@mvista.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] libpcap-ng
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
X-List-Received-Date: Sat, 26 Jul 2014 03:03:25 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 25, 2014 at 3:45 PM, akuster <akuster@mvista.com> wrote:
> Meta-security and Meta-selinux both have libcap-ng. Instead of maintaining
> the same package in both places, can we get it into OE where libcap resides?

I think at very least you can propose it for meta-oe if not or-core.
But I also wonder why meta-selinux is not a sub-layer under
meta-security,

