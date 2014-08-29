Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B51E5E007B9; Thu, 28 Aug 2014 17:42:04 -0700 (PDT)
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
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62E31E00796
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 17:42:03 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id h18so8910959igc.12
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 17:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=19juPVEq+LL7m2sakrAvCRZcl88I5NVWteUPmFrtG2o=;
	b=B3j/fNTWBsI0kiTsc2QexEHur0h5MQAXTowsVuh6RQamPADPR4cej172FMueLKgL2t
	ta31Is5aWCuJ2w1TatX1iq5aV8ueqdmTUQGv9Olz/r9BKM1LfCurbR2DU0j6PVybuoFp
	QbO8Q1EyeY1J4ryAvQWYTdK/nrOR5n3StgAGps2pPiGtkvSgdqFjIAy4JVJrhokSWiUz
	He9pov8bRN9CcjhZqN/UsKUSDDuddM1bTcPJy50DX0cg11Img1VZLnXXRELlDa4NH8Tp
	r9XQQbc29DVWIgXF0LauKJ0YZawQM2XMjQfxjppeHSG7mIEjYjRSwpwDLNzdcq7Budlf
	Z3LQ==
X-Received: by 10.50.85.74 with SMTP id f10mr586910igz.4.1409272922233; Thu,
	28 Aug 2014 17:42:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Thu, 28 Aug 2014 17:41:32 -0700 (PDT)
In-Reply-To: <1409266291.29296.147.camel@ted>
References: <20140828064051.GA13139@haswell> <1409266291.29296.147.camel@ted>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Aug 2014 17:41:32 -0700
Message-ID: <CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] Moving on from eglibc to glibc 2.20
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
X-List-Received-Date: Fri, 29 Aug 2014 00:42:04 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 28, 2014 at 3:51 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> We're also seeing:
>
> https://autobuilder.yoctoproject.org/main/builders/build-appliance/builds/15/steps/BuildImages_1/logs/stdio
>
> which turns out to be triggered by the libc change (I confirmed on a
> local build). I haven't looked into why. There is also a similar issue
> from the synaptics driver.
>

reproduced. will apprise as I have some fix.

