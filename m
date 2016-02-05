Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE717E00D50; Fri,  5 Feb 2016 10:23:40 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD69CE00D2F
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:23:28 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 8754440FFF;
	Fri,  5 Feb 2016 13:23:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	9zUOXWolwFsMN+tvpqiHQedgCTM=; b=J8n3ONCxHyaYcYIux6s+kdJA8yLfcGBz
	rcf0bszihnHwG8i0V/d8ZFZnNyBKucKcfscjJDVhk1eqPc+J8mBdg1fey44LKLRJ
	2qR/Vb0kl4y+a8pSoJtmGKH4jPQgXLPuKCnYxmVKX1bPk59ea9TwJhjXnMxo/LzQ
	9eK4Tlzu4To=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 7F21B40FFE;
	Fri,  5 Feb 2016 13:23:28 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id AC3D740FFB;
	Fri,  5 Feb 2016 13:23:26 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CAMKF1sq6tRyHMfzDX7s=QaZxr8KsT+_kcFJLBkzqTPuc=oyLXA@mail.gmail.com>
Date: Fri, 5 Feb 2016 19:23:26 +0100
Message-Id: <1117582A-9849-43DC-91FE-15F2F972B12B@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<CAJTo0LZFMT=JyABkd1mzLJhB9npzkTLO_sXsReMD=hKvDsuFBw@mail.gmail.com>
	<1454695459773.33828@seescan.com>
	<7A197409-A596-4F9C-AF6A-A46A2529AB05@nathan.to>
	<1454695732426.82900@seescan.com>
	<D353173E-F5C7-4BCC-A975-D5E986B190D3@nathan.to>
	<CAMKF1sq6tRyHMfzDX7s=QaZxr8KsT+_kcFJLBkzqTPuc=oyLXA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 8D4DBFC2-CC35-11E5-AB57-79226BB36C07-96844961!pb-smtp0.pobox.com
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
X-List-Received-Date: Fri, 05 Feb 2016 18:23:40 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Kem

The testprog was given to me as a .deb package by a third party to test. =
I did not compile it and I don=E2=80=99t know what they did either.

Regards

Nathan

> On 5 Feb 2016, at 19:21, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> On Fri, Feb 5, 2016 at 10:12 AM, Nathan Sowatskey <nathan@nathan.to> =
wrote:
>> file /usr/bin/testprog
>> /usr/bin/testprog: ELF 64-bit LSB executable, x86-64, version 1 =
(SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for =
GNU/Linux 2.6.24, =
BuildID[sha1]=3D26317096ed83d21bc6808f0d2d47b12de1ab31ce, not stripped
>>=20
>> Thoughts?
>>=20
>>> On 5 Feb 2016, at 19:10, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>>>=20
>>> The results should tell us:
>>>=20
>>> $ files /usr/bin/testprog
>>>=20
>>> What are they? (Sitting on the edge of my seat.)
>>> ________________________________________
>>> From: Nathan Sowatskey <nathan@nathan.to>
>>> Sent: Friday, February 5, 2016 10:09 AM
>>> To: Fred Ollinger
>>> Cc: Burton, Ross; yocto@yoctoproject.org
>>> Subject: Re: [yocto] libgcc_s not present in Yocto image
>>>=20
>>> Thanks Fred.
>>>=20
>>> I am using qemux86_64 on Intel i7 chips with OSX.  The target is =
likewise Intel.
>>>=20
>>> I am assuming that is quite generic, but =E2=80=A6
>>>=20
>>> Regards
>>>=20
>>> Nathan
>>>=20
>>>> On 5 Feb 2016, at 19:06, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>>>>=20
>>>> My guess is that the executable is not compiled for his hardware.
>>>>=20
>>>>=20
>>>> Frederick
>>>>=20
>>>> ________________________________
>>>> From: Burton, Ross <ross.burton@intel.com>
>>>> Sent: Friday, February 5, 2016 9:56 AM
>>>> To: Nathan Sowatskey
>>>> Cc: yocto@yoctoproject.org; Fred Ollinger
>>>> Subject: Re: [yocto] libgcc_s not present in Yocto image
>>>>=20
>>>>=20
>>>> On 5 February 2016 at 17:47, Nathan Sowatskey =
<nathan@nathan.to<mailto:nathan@nathan.to>> wrote:
>>>> find /usr/lib -name libgcc_s.so.1
>>>> root@qemux86-64:~#
>>>>=20
>>>> I don't have that lib.
>>>>=20
>>>> As I said, libgcc_s.so.1 is in /lib, not /usr/lib.
>>>>=20
>>>> With ldd I get:
>>>>=20
>>>> ldd /usr/bin/testprog
>>>> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or =
directory
>>>>=20
>=20
>=20
> how did you compile /usr/bin/testprog


