Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6552E013DE
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 07:24:29 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kq13so5038745pab.25
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 07:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=WhoI5dp4W7k+PJ5Fcw5lWzUXD3SzUHsHJENguGwjCQE=;
	b=giNnbDy4B0AD0b5hJo616no/TZtTjVPrRtWhzTshX5rX+ptZxRqomnPI2wKXz2VVKG
	vcfhVrCqQiDK2JC8ng5uldehsrBVXpQqttP2lT1/mwNspxeFISrHQ0vnZcsH2Rp3l4La
	uh7l+6MBtM8yDot3eeO4UATZ+VDBhDsje1sCZ8aXsvjjUZOJFaAaYNQJvQlZyBArwYk0
	QY5aV6wBHDsZyp4EVwqLiW+aU6Y9k2T4zKDL2AW4NTZaMPW07gO1M7XpFVs6EsfO6ig6
	OkIJtPDqeqWaZwJeqXHhYMCj6r7VG7BKAP6tNgjhm4J0FuAHsCDW4vjXotm4HPZpS0js
	hv8w==
X-Received: by 10.68.245.200 with SMTP id xq8mr23772080pbc.32.1372688668821;
	Mon, 01 Jul 2013 07:24:28 -0700 (PDT)
Received: from kosborne-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	hu6sm16343380pbc.28.2013.07.01.07.24.27 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 01 Jul 2013 07:24:27 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1372670218.7808.4.camel@flashheart.burtonini.com>
Date: Mon, 1 Jul 2013 07:24:25 -0700
Message-Id: <5E3EC5FD-B654-417C-9791-0349B2DCAA7A@gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<51CE03D9.6070202@mlbassoc.com>
	<1372670218.7808.4.camel@flashheart.burtonini.com>
To: Ross Burton <ross.burton@intel.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Mon, 01 Jul 2013 14:24:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 1, 2013, at 2:16 AM, Ross Burton <ross.burton@intel.com> wrote:

> On Fri, 2013-06-28 at 15:44 -0600, Gary Thomas wrote:
>> On 2013-06-27 04:06, Ross Burton wrote:
>>> The meta-toolchain* recipes are deprecated, so when building =
meta-toolchain-gmae
>>> also build the SDK for core-image-sato.
>>>=20
>>> Signed-off-by: Ross Burton <ross.burton@intel.com>
>>=20
>> If/when the meta-toolchain recipes go away, how do I create a =
stand-alone toolchain
>> derived from Poky/Yocto (which I use all the time!)?

pick core-image-minimal.


>=20
> The idiom is to pick an image to base the SDK on, and use the
> "populate_sdk" task:
>=20
> $ bitbake core-image-sato -c populate_sdk
>=20
> If you want just the compiler and no userspace, then I'm not sure what
> the best solution going forwards is.
>=20
> Ross
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


