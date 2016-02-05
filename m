Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C807CE00D2F; Fri,  5 Feb 2016 10:13:22 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 628C1E00D2C
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:13:21 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 98A3B40D82;
	Fri,  5 Feb 2016 13:13:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	j9aEWgRSc6L8i9V5p3QU5wVNEHo=; b=lAbbWVkE1vPPlpLLUoZMPhjppBgW3QlH
	fCBY3Z4l99VuT7/WcD2iTjIm5CbdA8FkSyML8hqL4uXAVyFrZeJehKXmFnOZpzoc
	ndaFQ4rPLHMVdaIydF0xVYhJsVEmHunGyA8ckeGMtvDHCc8WyA4poDaCU1GzsIlx
	CirnfIyK1lY=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 88AF340D81;
	Fri,  5 Feb 2016 13:13:20 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 2938040D7D;
	Fri,  5 Feb 2016 13:13:19 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <1454695732426.82900@seescan.com>
Date: Fri, 5 Feb 2016 19:12:52 +0100
Message-Id: <D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 22988BC2-CC34-11E5-88B1-79226BB36C07-96844961!pb-smtp0.pobox.com
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
X-List-Received-Date: Fri, 05 Feb 2016 18:13:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

file /usr/bin/testprog
/usr/bin/testprog: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), =
dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for =
GNU/Linux 2.6.24, =
BuildID[sha1]=3D26317096ed83d21bc6808f0d2d47b12de1ab31ce, not stripped

Thoughts?

> On 5 Feb 2016, at 19:10, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>=20
> The results should tell us:
>=20
> $ files /usr/bin/testprog
>=20
> What are they? (Sitting on the edge of my seat.)
> ________________________________________
> From: Nathan Sowatskey <nathan@nathan.to>
> Sent: Friday, February 5, 2016 10:09 AM
> To: Fred Ollinger
> Cc: Burton, Ross; yocto@yoctoproject.org
> Subject: Re: [yocto] libgcc_s not present in Yocto image
>=20
> Thanks Fred.
>=20
> I am using qemux86_64 on Intel i7 chips with OSX.  The target is =
likewise Intel.
>=20
> I am assuming that is quite generic, but =85
>=20
> Regards
>=20
> Nathan
>=20
>> On 5 Feb 2016, at 19:06, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>>=20
>> My guess is that the executable is not compiled for his hardware.
>>=20
>>=20
>> Frederick
>>=20
>> ________________________________
>> From: Burton, Ross <ross.burton@intel.com>
>> Sent: Friday, February 5, 2016 9:56 AM
>> To: Nathan Sowatskey
>> Cc: yocto@yoctoproject.org; Fred Ollinger
>> Subject: Re: [yocto] libgcc_s not present in Yocto image
>>=20
>>=20
>> On 5 February 2016 at 17:47, Nathan Sowatskey =
<nathan@nathan.to<mailto:nathan@nathan.to>> wrote:
>> find /usr/lib -name libgcc_s.so.1
>> root@qemux86-64:~#
>>=20
>> I don't have that lib.
>>=20
>> As I said, libgcc_s.so.1 is in /lib, not /usr/lib.
>>=20
>> With ldd I get:
>>=20
>> ldd /usr/bin/testprog
>> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory
>>=20
>> Well ldd appears to be having a bit of a panic.  Try objdump -p =
/usr/bin/testprog instead.
>>=20
>> Ross
>=20


