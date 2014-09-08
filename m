Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87D3FE0056A; Mon,  8 Sep 2014 09:36:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0004]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4239BE0034C;
	Mon,  8 Sep 2014 09:36:12 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id z107so15717590qgd.35
	for <multiple recipients>; Mon, 08 Sep 2014 09:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=hnD3R36NMr4Mz9uaxHVuHHnIAnUeK5qnDttn3+jw0I0=;
	b=pjuRMzrmy9M34aUZZcZQstCwx5Chm8VZYhjcvuutZwu+nqp0puvUx6weQhyFbYFsyC
	X1pzHOgYYoq6odsYCoR58xwXSOrJrnNqatdPbGNdPla50LMFgEj2Iqgk6p56SbGwIZzo
	YxAljdwSfuyEKzIBKQX/koMTiacmPlGtwVcREFfkTi66qkZbB0GdbxM+a6e16slNUsCa
	ZOQmWLrIXTG+o7Kmq0bYZQnHFHgtfhbWf7u4kWvBe778lypCQWw+GaB2F7zQCPQpF/f+
	d3V93ocN3OTWrYD5Ud3vGj46nSnpGrnxIPH29fj+cef+VziXQMS3zrP17yCVuQcqC4eC
	Aahg==
MIME-Version: 1.0
X-Received: by 10.140.23.40 with SMTP id 37mr38476623qgo.30.1410194171470;
	Mon, 08 Sep 2014 09:36:11 -0700 (PDT)
Received: by 10.224.166.198 with HTTP; Mon, 8 Sep 2014 09:36:11 -0700 (PDT)
Date: Mon, 8 Sep 2014 22:06:11 +0530
Message-ID: <CAP3RZojti2ziEG03onE4q0xOT2Mtn2WtDJ7SfXOryaYr4iRNtg@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: package or library for NAT traversal in yocto
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
X-List-Received-Date: Mon, 08 Sep 2014 16:36:16 -0000
Content-Type: text/plain; charset=UTF-8

We are using yocto for custom device which will communicate with the
other mobile devices over the internet. For that we need some package
which can be used to traverse behind the NAT. like libjingle, XMPP
etc.

In yocto, is there any package available for this kind of functionality?

I
Thanks,
Jags

