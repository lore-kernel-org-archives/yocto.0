Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B78E00D52; Fri,  5 Feb 2016 10:09:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8370E00D32
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:09:16 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id AE52C40C95;
	Fri,  5 Feb 2016 13:09:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	TYi66I7Y3qIAKSXnUyn/fgI6Ets=; b=q2ea0hRPJYU+WxFzgumF2g+KMPY/9x2h
	qCqjVaVWDCjBjbt4k8g66q/QCl5vzyg+914SJ8KpFMpAfEi/tbKGyaWcM2b/lN/Z
	JJ6gGwFUDqpWd4+OdJy2vZDTGYE9jKjUAOOZjZArgTXC+wP00c29MsTNttsiqO/8
	ZO2gRui1apY=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 9733040C94;
	Fri,  5 Feb 2016 13:09:15 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 85F2B40C93;
	Fri,  5 Feb 2016 13:09:14 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <1454695459773.33828@seescan.com>
Date: Fri, 5 Feb 2016 19:09:05 +0100
Message-Id: <7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 90CF4B68-CC33-11E5-A577-79226BB36C07-96844961!pb-smtp0.pobox.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 18:09:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks Fred.

I am using qemux86_64 on Intel i7 chips with OSX.  The target is =
likewise Intel.

I am assuming that is quite generic, but =E2=80=A6

Regards

Nathan

> On 5 Feb 2016, at 19:06, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>=20
> My guess is that the executable is not compiled for his hardware.
>=20
>=20
> Frederick
>=20
> ________________________________
> From: Burton, Ross <ross.burton@intel.com>
> Sent: Friday, February 5, 2016 9:56 AM
> To: Nathan Sowatskey
> Cc: yocto@yoctoproject.org; Fred Ollinger
> Subject: Re: [yocto] libgcc_s not present in Yocto image
>=20
>=20
> On 5 February 2016 at 17:47, Nathan Sowatskey =
<nathan@nathan.to<mailto:nathan@nathan.to>> wrote:
> find /usr/lib -name libgcc_s.so.1
> root@qemux86-64:~#
>=20
> I don't have that lib.
>=20
> As I said, libgcc_s.so.1 is in /lib, not /usr/lib.
>=20
> With ldd I get:
>=20
> ldd /usr/bin/testprog
> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory
>=20
> Well ldd appears to be having a bit of a panic.  Try objdump -p =
/usr/bin/testprog instead.
>=20
> Ross


