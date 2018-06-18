Return-Path: <tykwon@m2i.co.kr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34606E010A0; Mon, 18 Jun 2018 02:09:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [121.254.168.204 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.hiworks.co.kr (smtp1.hiworks.co.kr [121.254.168.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A041DE01098
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 02:09:13 -0700 (PDT)
Received: (qmail 82023 invoked from network); 18 Jun 2018 18:09:11 +0900
Received: from unknown (HELO hiworks.co.kr) (192.168.10.224)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 18 Jun 2018 18:09:11 +0900
Received: (qmail 21406 invoked from network); 18 Jun 2018 18:09:10 +0900
Received: from unknown (HELO DESKTOP3HTLQGF) (tykwon@m2i.co.kr@112.216.145.10)
	by 0 (qmail 1.03 + ejcp v14) with SMTP; 18 Jun 2018 18:09:10 +0900
X-Authinfo: HIWORKS SMTP authenticated
	<tykwon@m2i.co.kr|112.216.145.10|tykwon@m2i.co.kr|180618180910_319821397>
From: "tykwon" <tykwon@m2i.co.kr>
To: "'Josef Holzmayr'" <holzmayr@rsi-elektrotechnik.de>,
	<yocto@yoctoproject.org>
References: <065e01d406d6$04874950$0d95dbf0$@co.kr>
	<20180618075408.7qmloandkbdl4v4v@jholzmayr.localdomain>
In-Reply-To: <20180618075408.7qmloandkbdl4v4v@jholzmayr.localdomain>
Date: Mon, 18 Jun 2018 18:09:11 +0900
Message-ID: <068d01d406e4$06edb9a0$14c92ce0$@co.kr>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdQG2YzFqdnjVqcqSzCiAY1icauRHwACfY4g
Subject: Re: How do I use additional commands in recipe?
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
X-List-Received-Date: Mon, 18 Jun 2018 09:09:15 -0000
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: ko

Hi.

> Technically, you need to create a recipe for pyppd. If you only need =
it during the install process (e.g. you want it to run on the host), =
then you need -native recipe, to be precise. Here is a lot of =
documentation on the process:
> =
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#new=
-recipe-writing-a-new-recipe
> For python-specific ideas, you might want to look at meta-python: =
http://cgit.openembedded.org/meta-openembedded/tree/meta-python

I now know that I need a native recipe(pyppd) in my case.

Let's create a pyppd native recipe once, referring to meta-python.
I will reply if successful.

Thank you.

Regards
Kwon


