Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9588AE008CC; Mon, 23 Feb 2015 23:00:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FD14E00712
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 22:59:54 -0800 (PST)
Received: by pdno5 with SMTP id o5so31322474pdn.8
	for <yocto@yoctoproject.org>; Mon, 23 Feb 2015 22:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=0Mzf6jhiYadmKUQHafbMI7qUcfiMvw2vaSY1Fseou7g=;
	b=OxTaqt8kWiSG05B1RS2rlavyA6ERWMXBWVIiSKngAlipkQDtdxagnsQT29y5bPDK5+
	f+xWrBBwqu0ifMcvrLAc6/0dkRJV9j50DecNw7uPt7nStj+ghdD4iR7fPoaFZNUV+zp7
	SnUHoUg8fHCxrWWRt35xvlbgj8ZGfaBHn5dXQVpybauiM7fspl0Si+tI5zllZSkcoGwF
	IIx/CiPmMyy2kLU4LZ+xZNeQS06aijm+m6bQj6OGMGn6OIps2lWyE4KcxrRlrYZeri2G
	LP/8tzFHuGbdZ1r4jBPgTQCtUOw++RxGsL/TaMgNq8KXZRWUbnfu3tWt8rPLZmFZzYth
	QtGA==
X-Received: by 10.68.239.102 with SMTP id vr6mr1362482pbc.35.1424761194461;
	Mon, 23 Feb 2015 22:59:54 -0800 (PST)
Received: from ?IPv6:2601:9:3580:84c:201b:b105:13ca:8330?
	([2601:9:3580:84c:201b:b105:13ca:8330])
	by mx.google.com with ESMTPSA id
	ah1sm38207966pad.16.2015.02.23.22.59.53
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 23 Feb 2015 22:59:53 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1424510550.11836.66.camel@linuxfoundation.org>
Date: Mon, 23 Feb 2015 22:59:52 -0800
Message-Id: <9D1FFBD5-9F30-42BF-8242-4C06614F9F34@gmail.com>
References: <CAMKF1souj1-FLTjkQb0y8myTiKMJyNeAa7wiM5-pW1fz0EtheA@mail.gmail.com>
	<1424455387.11836.57.camel@linuxfoundation.org>
	<1424510550.11836.66.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.2070.6)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] upcoming glibc 2.21 and gcc 4.9 upgrade
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
X-List-Received-Date: Tue, 24 Feb 2015 07:00:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Feb 21, 2015, at 1:22 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Fri, 2015-02-20 at 18:03 +0000, Richard Purdie wrote:
>> On Mon, 2015-02-02 at 02:02 -0800, Khem Raj wrote:
>>> I have put together upgrade to gcc 4.9.2 as well as glibc 2.21 (
>>> upcoming ) on  a contrib branch ( top 2 patches) its has not got =
much
>>> testing besides x86 qemu thus far.
>>>=20
>>> =
http://git.openembedded.org/openembedded-core-contrib/log/?h=3Dkraj/gcc-gl=
ibc-upgrade
>>>=20
>>> I would like to request some help in testing these out in your
>>> respective environments and please report any issues you see so we =
can
>>> start sorting them out at earlier and making its way into OE-Core.
>>>=20
>>> Thanks for your help
>>=20
>> For info, I've now merged the glibc part of this change now too.
>>=20
>> Khem: Thanks for the work on this!
>=20
> New issue that caught my eye:
>=20
> =
https://autobuilder.yoctoproject.org/main/builders/nightly-qa-logrotate/bu=
ilds/204/steps/Running%20Sanity%20Tests/logs/stdio
>=20
> segfault in init within libc :/.

I have booted core-image-minimal, for all arches and that have worked =
fine for both systemd and sysvinit and some of non-oe-core graphic =
images booted well too
but here it seems its using core-image-sato wondering what changed there =
=E2=80=A6 can someone try it out and may be see what is it trying to =
launch during boot that is in addition
to core image minimal.=

