Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C9A4E00796; Thu, 28 Aug 2014 18:46:54 -0700 (PDT)
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
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B0B3E00507
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 18:46:47 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id hn18so1897414igb.5
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 18:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=vGUyq8WefDtz8xvgDQWoFckQ3Jn8a49F9MKp48AQVcQ=;
	b=GG3nwqtASivr+6i/WCDxsbeYj7sI5lmdsB8MoL8CxXVvDxW5i/KTP+EUBE9KpdK4C7
	W0LKd3JpyKrhlwFKirGoAFhSQy7Ns9Jz4LTN4+cQlt9FgtXoLQPjumRH74WPMVYF+Jrt
	ZtBAZKagUCZdlB6S/bdD8C04QU7fXUQRnMxVEZEy3Wkc1+sxJw/x8kYpsz+NWFpNeZ43
	vQOQE2Y52xp7AHm4XHGgkpZ45+tfu2Dh4um8g4FTECfsA0GERj0QIjHF5HZYcrSbO+0i
	J0J7TkdcEGLm9UBFhBQSEBs0L/hIyXufXN3Z5Z2fe8O07Hz0Sk3iM5vWTrWASwFCp5Zc
	Bc3g==
X-Received: by 10.50.21.3 with SMTP id r3mr712676ige.13.1409276806648; Thu, 28
	Aug 2014 18:46:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.102.67 with HTTP; Thu, 28 Aug 2014 18:46:16 -0700 (PDT)
In-Reply-To: <CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
References: <20140828064051.GA13139@haswell> <1409266291.29296.147.camel@ted>
	<CAMKF1spz2KoO6NDSkZwh=V=pkyYi6e7-G0fpka5P2ifbjnNn6w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 28 Aug 2014 18:46:16 -0700
Message-ID: <CAMKF1spj67i2i_50m=oTUpS3x2J=de0UxGf70zLhn-a7c4M3QA@mail.gmail.com>
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
X-List-Received-Date: Fri, 29 Aug 2014 01:46:54 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 28, 2014 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
> reproduced. will apprise as I have some fix.

OK pushed another patch to the contrib tree that should take care of both
xf86-input-synaptics xf86-input-vmmouse

