Return-Path: <aws.ismail@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C5AFE009BE; Tue, 21 Jul 2015 12:58:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (aws.ismail[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31054E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 12:58:34 -0700 (PDT)
Received: by qkdl129 with SMTP id l129so140413095qkd.0
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 12:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=zMoz0cvQMbijYzkidg0/9IoPmqr34Nx6z5Yayogp4+A=;
	b=jp94qhreVJfoclu4WMSBbtgNGNQY2n4T7bqH7oUAq9FcOu8lVT4xEagAKv02waGdVM
	3nETCOoyo12o/cFEGXtyF9YTgib5kplq4tJiWc/MZ1dlBpibNpHkbkfVWaidY6415YMP
	XxLzxZq7PMV1Vtx6CuCDwfXj2wraaWEhscI16qR5fEHF0xUptse3Vu9DKsdYAGZh1kPB
	BZSe40zXifPNH/AXmTOvVJM883/ir0fjzd/wXxanNnNYBQmxt6u99bhXIkNbZp02+V/I
	EoRr16scH/pdftvkBmgxEL0s2gSUcNRJ2QDkCkjR9yjwbB/KZV18gIqN0O6UX7GNba/S
	+Jrg==
X-Received: by 10.140.43.199 with SMTP id e65mr56963289qga.80.1437508714065;
	Tue, 21 Jul 2015 12:58:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.40.112 with HTTP; Tue, 21 Jul 2015 12:58:14 -0700 (PDT)
From: Aws Ismail <aws.ismail@gmail.com>
Date: Tue, 21 Jul 2015 15:58:14 -0400
Message-ID: <CAMHMu0PcDgin-XO_U5qQJ0mf8tf+mZ6hm4_DgMXhFTDhfZ=3XQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-cgl] Any plans about adding pcs and/or crmsh as bb recipes ?
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
X-List-Received-Date: Tue, 21 Jul 2015 19:58:38 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Are there any plans with regards to adding the pcs cli utility and/or
the crmsh utility to the meta-cgl layer in the future ?

I have searched the layer index but can't find a mention of those.
Building pacemaker/corosync from the meta-cgl layer does not provide
those utilities either.

Regards,

AI\

