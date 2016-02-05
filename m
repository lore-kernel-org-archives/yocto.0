Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0B73E00CF0; Fri,  5 Feb 2016 03:58:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 379 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Feb 2016 03:57:59 PST
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A443E00CEE
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 03:57:59 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 08B1D20B29
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 06:51:40 -0500 (EST)
Received: from frontend2 ([10.202.2.161])
	by compute6.internal (MEProxy); Fri, 05 Feb 2016 06:51:40 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=Jv/ZT6BEM3WJeyS
	BIgIRqFddqJo=; b=NKOdaGjNDgf0syKXWqoa8TSM/mOSl/UluhuDMqLIQUilYGv
	eYlVatVhsMYqDiNf8vCjlP94r674OAzQ5QnxqrAD4P128hYPuVPy1uPu8C39ZE48
	nHP7kGTEpjo0L8xOQzXMhhdX1kXMhNiFmpzhUvzlI6ryF+Qgw3NsetkdrG5Y=
X-Sasl-enc: MUR8r6muEhUnNItfU466szfsxC88KtT3p22OOXOalm+Y 1454673099
Received: from laptop (a88-114-110-232.elisa-laajakaista.fi [88.114.110.232])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5446E680124;
	Fri,  5 Feb 2016 06:51:39 -0500 (EST)
Message-ID: <1454673097.3947.4.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: Nathan Sowatskey <nathan@nathan.to>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 05 Feb 2016 13:51:37 +0200
In-Reply-To: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
X-Mailer: Evolution 3.18.3-1 
Mime-Version: 1.0
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 11:58:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-02-05 at 12:40 +0100, Nathan Sowatskey wrote:
> Hi
> 
> I am working with a test program which has a dependency on libgcc_s. 
> 
> On Ubuntu that is available, for example from a 14.04 Ubuntu desktop build:
> 
> find /usr/lib -name "*gcc*”
> ...
> /usr/lib/gcc/x86_64-linux-gnu/4.8/libgcc_s.so
> ...
> 
> On the Yocto image I am building (see below for conf files), I don’t see that library. What I do see is:
> 
> find /usr/lib -name "*gcc*"
> /usr/lib/gcc
> /usr/lib/gcc/gcc
> /usr/lib/gcc/x86_64-poky-linux/5.2.0/include/stdint-gcc.h
> /usr/lib/x86_64-poky-linux/5.2.0/libgcc.a
> /usr/lib/x86_64-poky-linux/5.2.0/libgcc_eh.a
> 
> The build configuration files are here:
> 
> https://github.com/DevOps4Networks/iox-yocto-build/tree/master/conf
> 
> Is there a way to get the libgcc_s library on a Yocto image? Is that even the right thing to do?

libgcc_s is new to me, but out of curiosity I looked it up. I found
this: https://gcc.gnu.org/onlinedocs/gccint/Libgcc.html

Based on that page, you already have the library on the image, since
libgcc_s.so and libgcc.a are the same thing, the only difference is
that libgcc_s.so is a shared library and libgcc.a is a static library.
It seems to me that you should never have an explicit dependency to
that library; GCC will link to the library automatically when
necessary.

-- 
Tanu

