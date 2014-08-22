Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBCAAE00798; Fri, 22 Aug 2014 02:09:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [83.145.59.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Aug 2014 02:09:08 PDT
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 894AEE0044A
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 02:09:08 -0700 (PDT)
Received: from ad.chargestorm.se (83.252.255.124) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Fri, 22 Aug 2014 11:07:58 +0200
Date: Fri, 22 Aug 2014 11:07:41 +0200
From: Anders Darander <anders@chargestorm.se>
To: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <20140822090741.GB18766@ad.chargestorm.se>
Mail-Followup-To: Richard Leitner <richard.leitner@skidata.com>,
	Nicolas Dechesne <nicolas.dechesne@linaro.org>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <20140812142043.31d6766f@lxbuild.skidata.net>
	<alpine.LFD.2.11.1408120827190.21762@localhost>
	<20140812145857.23eda070@lxbuild.skidata.net>
	<CAP71WjxiBCScKkTC0a735B94WCwbu8Z9SzWVi58ma4-aw8mNMA@mail.gmail.com>
	<20140812155243.31bae60a@lxbuild.skidata.net>
MIME-Version: 1.0
In-Reply-To: <20140812155243.31bae60a@lxbuild.skidata.net>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Force recipe to provide specific file
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
X-List-Received-Date: Fri, 22 Aug 2014 09:09:11 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Richard Leitner <richard.leitner@skidata.com> [140812 15:53]:
> > but anyways, a simpler way to so the same thing would be do have a
> > do_install_append() function and remove the files from ${D}. that
> > would in turns have the same effect as what you are trying to do here
> > i believe.

> Yeah, this works, this is the way I'm currently doing it as I already mentioned
> earlier.
> But is this really a clean way?

It's a pretty clean way, yes.

> What happens for example if do_install_append is already defined in the recipe?


No issue at all. The do_install_append's will just be appended one after
each other.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

