Return-Path: <public@plane.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4B10E0080C; Sat, 18 Oct 2014 14:46:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED, FREEMAIL_FROM, NML_ADSP_CUSTOM_MED, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS, T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tylerwhall[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Sat, 18 Oct 2014 14:46:37 PDT
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DB3E007C0
	for <yocto@yoctoproject.org>; Sat, 18 Oct 2014 14:46:37 -0700 (PDT)
Received: from public by plane.gmane.org with local (Exim 4.69)
	(envelope-from <public@plane.gmane.org>) id 1Xfbau-0004SR-9n
	for yocto@yoctoproject.org; Sat, 18 Oct 2014 23:31:24 +0200
Received: from public by plane.gmane.org with local (Exim 4.69)
	(envelope-from <tylerwhall@gmail.com>) id 1Xfbaj-0004O0-PQ
	for public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org;
	Sat, 18 Oct 2014 23:31:13 +0200
Received: from mail-qc0-f179.google.com ([209.85.216.179])
	by plane.gmane.org with esmtp (Exim 4.69)
	(envelope-from <tylerwhall@gmail.com>) id 1XfbQq-0007sc-Qu
	for public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org;
	Sat, 18 Oct 2014 23:21:00 +0200
Received: by mail-qc0-f179.google.com with SMTP id x3so2090806qcv.24
	for <public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>;
	Sat, 18 Oct 2014 14:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8K5vIUT5VGIeJgdrN9vEM3qIwPt5aFzfRShcA7PgHVo=;
	b=Pzh2gBn5WadYQpdCmitgPPnGVhKe7qf4WGvW95Wb/tV0v31QjBOKGDUGJdM150AOea
	dpsm1IRNFw/tZkSVx5HXmIQVcSgSGqBWzqNnHFE12lY8HbkqkWea96kBr5tz0NVSjYWr
	2Zhi3d8ek2hl4cLlGV2jfw6tXKQO+E1OrLZDIGmuQklw0NNOUn94Cd6GyyAMnx4xXJss
	vBXvuh0wezxG+FHz69fpdNdiN2dA66nVbfdlb6WVBEu5HjGC9EQrnamGwmfnUn8j9S8v
	JfmXLxWjl1gutXhZ0rJuRRxbWPjoDRv3qTjEO/mK8J5Eo4Ba+RJ8NncU7epWxe9c/1yr
	Oa2A==
X-Received: by 10.224.75.7 with SMTP id w7mr23807901qaj.26.1413667259456; Sat,
	18 Oct 2014 14:20:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.143.10 with HTTP; Sat, 18 Oct 2014 14:20:39 -0700 (PDT)
In-Reply-To: <20141018100300.GG2437@jama>
References: <9690622.nYuOPMAxm8@peggleto-mobl5.ger.corp.intel.com>
	<m1rb0r$ucm$1@ger.gmane.org>
	<2231298.4P3ZM5y4CY@peggleto-mobl5.ger.corp.intel.com>
	<m1rc1u$cvb$1@ger.gmane.org> <m1rf00$l0m$1@ger.gmane.org>
	<m1t3rp$aj2$1@ger.gmane.org>
	<20141018084423.GB2437@jama> <m1t9ml$43g$1@ger.gmane.org>
	<20141018091009.GD2437@jama>
	<544233BF.8020007@gmx.de> <20141018100300.GG2437@jama>
From: Tyler Hall <tylerwhall@gmail.com>
Date: Sat, 18 Oct 2014 17:20:39 -0400
Message-ID: <CAOjnSCauFzt4kdWc73EmfpW4GDA802KjfK7C_DJ0byhEFUsTbQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-TMDA-Confirmed: Sat, 18 Oct 2014 23:31:13 +0200
Cc: yocto@yoctoproject.org, Neuer User <auslands-kv@gmx.de>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: SOLUTION: Re: Updating daisy -> Python.h not found
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
X-List-Received-Date: Sat, 18 Oct 2014 21:46:43 -0000
Content-Type: text/plain; charset=UTF-8




That patch changed python3-config to use distutils.sysconfig to get
paths. That was already patched by OE to use environment variables to
substitute the correct path, but it seems there's nothing guaranteeing
those variables are exported.

> PREFIX = os.path.normpath(sys.prefix).replace( os.getenv("BUILD_SYS"),
> os.getenv("HOST_SYS") )
>
> This gives error
>
> TypeError: Can't convert 'NoneType' object to str implicitly

It may have worked previously because python3-config returned the path
to the native sysroot and it compiled successfully despite picking up
the header from the wrong place.

There are a few python recipes that export these variables explicitly,
but it doesn't seem like something that clients should have to know
about.

From python-pycurl:
>
> # need to export these variables for python-config to work
> export BUILD_SYS
> export HOST_SYS
> export STAGING_INCDIR
> export STAGING_LIBDIR

This is also done in python-pygobject and python-dbus. Is this
something that distutils.bbclass should do?

-Tyler



