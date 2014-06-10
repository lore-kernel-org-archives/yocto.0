Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC213E00BAE; Tue, 10 Jun 2014 07:23:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74AB7E00B78
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:23:35 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id id10so6220179vcb.10
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 07:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=+xhGnrYA11xcL7dLYZLnN1sBd6hcoEeHmLAVutsvuIo=;
	b=BYjbLJc4uxZjZK/UMDnEtR7MVexwtuSWZekLDtAc1qWQqF8t3eiyQvM1fBsAekBuxy
	8LhewmjIFrNuA7oc2N851qEGyV/tZfBwmZmqAtvohdoJn4KjTAD19UWx5GW9aO+YPmuV
	KOqDdVbszMWP7Ikgt1wFNlQXMQPbBDAiJ4FQGla4mxo6yI+QnvmVF7VO0kUzpeOuLCPz
	lzNk+QRtGlruYOV4/P5PxQbYOypUNX7LChE4pzuErlFq5MYqDyVH8c+N56qZGQxIc7GQ
	TMQDoEFn3zmwzTfnQ1CC3WNKRPmqs5uhGUIlvuamkd3qO7wJkYOELGFPP9iDVkw16w6P
	ozkw==
X-Received: by 10.221.5.1 with SMTP id oe1mr32373148vcb.10.1402410214420; Tue,
	10 Jun 2014 07:23:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Tue, 10 Jun 2014 07:23:04 -0700 (PDT)
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 10 Jun 2014 10:23:04 -0400
Message-ID: <CAF_dkJCPkO1vRb9d8S=C-rP=TS+GBphJGGt_srmbA4L5kRokMA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: QA Issue: non -dev/-dbg/-nativesdk package contains symlink .so
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
X-List-Received-Date: Tue, 10 Jun 2014 14:23:40 -0000
Content-Type: text/plain; charset=UTF-8

I started getting the warning mentioned above when I updated to a
newer release of an open source package (Aravis).  I asked the google
how I should address that issue, and it was no help, so now I'll ask
the list :-)

Any suggestions as to what I should do about this?  The (autotools
generated) Makefiles do, in fact, generate symlinks.  Do I care?

--wpd

