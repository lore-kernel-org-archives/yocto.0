Return-Path: <tang@jtang.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9012BE00945; Thu, 15 Jan 2015 18:05:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from highcastle.jtang.org (mail.jtang.org [173.10.136.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64DD6E00942
	for <yocto@yoctoproject.org>; Thu, 15 Jan 2015 18:05:19 -0800 (PST)
Received: from krondor.isles (krondor.isles [192.168.1.2])
	(Authenticated sender: tang)
	by highcastle.jtang.org (Postfix) with ESMTPSA id DEF46BEE96;
	Thu, 15 Jan 2015 21:05:18 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: "J. Tang" <tang@jtang.org>
In-Reply-To: <54B782FA.9040109@topic.nl>
Date: Thu, 15 Jan 2015 21:05:18 -0500
Message-Id: <6C0F4B49-EDA6-4059-9BE7-6BD47A918073@jtang.org>
References: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>	<20150114203610.GB4735@gmail.com>
	<B16CA82B-7834-419F-9E84-669E8F9B6779@jtang.org>
	<54B782FA.9040109@topic.nl>
To: Mike Looijmans <mike.looijmans@topic.nl>
X-Mailer: Apple Mail (2.1878.6)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Why not enable hard floating point?
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
X-List-Received-Date: Fri, 16 Jan 2015 02:05:25 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 2015-01-15, at 04:06, Mike Looijmans <mike.looijmans@topic.nl> wrote:

> -2- The CPU doesn't actually have floating point support and the =
kernel is emulating it for you. This allows the platform to run "hf" =
binaries, at a minor performance cost compared to completely doing the =
emulation in user space (libc).

=46rom my understanding, the Raspberry Pi (at least the model B, which =
is what I have) has an FPU.

Would it hurt to at least mention in the top-level README of the =
meta-raspberrypi layer that a user could enable hard FP by setting the =
DEFAULTTUNE?

--=20
Jason Tang  /  tang@jtang.org



