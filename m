Return-Path: <tang@jtang.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF5CE0084D; Wed, 14 Jan 2015 16:11:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from highcastle.jtang.org (mail.jtang.org [173.10.136.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A75EE003E3
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 16:11:52 -0800 (PST)
Received: from silden.isles (silden.isles [192.168.1.4])
	(Authenticated sender: tang)
	by highcastle.jtang.org (Postfix) with ESMTPSA id 9D7E6BEE9A;
	Wed, 14 Jan 2015 19:11:51 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: "J. Tang" <tang@jtang.org>
In-Reply-To: <20150114203610.GB4735@gmail.com>
Date: Wed, 14 Jan 2015 19:11:51 -0500
Message-Id: <B16CA82B-7834-419F-9E84-669E8F9B6779@jtang.org>
References: <11564A1C-1D09-4BDA-8CCB-3045DF82EFD2@jtang.org>
	<20150114203610.GB4735@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Thu, 15 Jan 2015 00:11:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On Jan 14, 2015, at 15:36 , Andrei Gherzan <andrei@gherzan.ro> wrote:

> On Sat, Jan 10, 2015 at 10:38:50AM -0500, J. Tang wrote:
>> The upstream meta-raspberrypi recipe builds an arm6 toolchain with =
only soft floating point. As an experiment, I enabled hard floating =
point by setting my DEFAULTTUNE to =93armv6hf=94. My code still ran =
correctly. Is there a reason why the meta-raspberrypi layer does not =
enable hard floating point?
>>=20
>=20
> Well we played a little with this in the past. And we realised that, =
at that
> time at least, switching to hf didn't add any performace improvements. =
Did you
> test anything that proves the contrary?

In my case, I was re-compiling MAME for the Raspberry Pi. The code has a =
dependency on hf. Furthermore, Rasbian is built with hf.

--=20
Jason Tang  /  tang@jtang.org





