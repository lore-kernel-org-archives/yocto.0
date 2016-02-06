Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14E8DE00C23; Sat,  6 Feb 2016 09:07:18 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B733AE006AD
	for <yocto@yoctoproject.org>; Sat,  6 Feb 2016 09:07:13 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 359E23E2D1;
	Sat,  6 Feb 2016 12:07:11 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	cK1o6B5NYHrgJa2Xz2ERibJ3QGE=; b=Cc/u9DI0fjLwJR6oyAsOdojJmwwMBrV/
	zAouVXBc9Rjgy1Z5pa364+OBmw0qctV1nhgfUDKTjpR+OniQUgW9EpjJItl05NbC
	Qp8motsKQ0PV3FySb5dmaTFNNRnosjTvxmSa6jybFtmJBz2xui/e+99wdtMBBgEQ
	U5wRkHrZHaI=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 2CDC93E2D0;
	Sat,  6 Feb 2016 12:07:11 -0500 (EST)
Received: from [192.168.1.101] (unknown [92.185.42.4])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id 553D63E2CF;
	Sat,  6 Feb 2016 12:07:10 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <CAMKF1soTRnmbuiwOzg+NLgJp7abaWyQnGwFjrWj8N9c8Hzw8cw@mail.gmail.com>
Date: Sat, 6 Feb 2016 18:07:01 +0100
Message-Id: <81E25E83-62EC-4161-99AB-77DF752437EC@nathan.to>
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
	<CAJTo0LajcF_rR-oGnTr=_vBwcAvFcOsgJEXqPZFR0YmdgLCv5g@mail.gmail.com>
	<CAMKF1spXFvGQs-NM7eRD6ZFBVnoZPysrQec=nLfqkmFUBuSO+Q@mail.gmail.com>
	<CAJTo0LZc+MN02kQusy-on2g5kcohyHFQMY0ShtFnvgQhO2V9MQ@mail.gmail.com>
	<CAMKF1soGpt_BA1FFsiOSZxpoT5RH6LjwKBTiCqz+C=6KFr_Aog@mail.gmail.com>
	<3DDC4837-5BF7-4959-A4FF-A07435B3DE5A@nathan.to>
	<CAMKF1soTRnmbuiwOzg+NLgJp7abaWyQnGwFjrWj8N9c8Hzw8cw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 0F6919FC-CCF4-11E5-8644-79226BB36C07-96844961!pb-smtp0.pobox.com
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
X-List-Received-Date: Sat, 06 Feb 2016 17:07:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Thanks :-)

/lib/ld-linux-x86-64.so.2 /usr/bin/testprog=20
Illegal instruction


/lib/ld-linux-x86-64.so.2 --list /usr/bin/testprog
	linux-vdso.so.1 (0x00007ffec29ee000)
	libsnmp.so.30 =3D> /usr/lib/libsnmp.so.30 (0x00007fab23671000)
	libQt5Network.so.5 =3D> /usr/lib/libQt5Network.so.5 =
(0x00007fab23506000)
	libQt5SerialPort.so.5 =3D> /usr/lib/libQt5SerialPort.so.5 =
(0x00007fab234ed000)
	libQt5Core.so.5 =3D> /usr/lib/libQt5Core.so.5 =
(0x00007fab22f69000)
	libstdc++.so.6 =3D> /usr/lib/libstdc++.so.6 (0x00007fab22bee000)
	libgcc_s.so.1 =3D> /lib/libgcc_s.so.1 (0x00007fab229db000)
	libpthread.so.0 =3D> /lib/libpthread.so.0 (0x00007fab227be000)
	libc.so.6 =3D> /lib/libc.so.6 (0x00007fab2241a000)
	libcrypto.so.1.0.0 =3D> /lib/libcrypto.so.1.0.0 =
(0x00007fab21fd1000)
	libz.so.1 =3D> /lib/libz.so.1 (0x00007fab21dbc000)
	libudev.so.0 =3D> /lib/libudev.so.0 (0x00007fab21baf000)
	libdl.so.2 =3D> /lib/libdl.so.2 (0x00007fab219aa000)
	libglib-2.0.so.0 =3D> /usr/lib/libglib-2.0.so.0 =
(0x00007fab21671000)
	librt.so.1 =3D> /lib/librt.so.1 (0x00007fab21469000)
	libm.so.6 =3D> /lib/libm.so.6 (0x00007fab2116a000)
	/lib64/ld-linux-x86-64.so.2 =3D> /lib/ld-linux-x86-64.so.2 =
(0x0000560889d5d000)

 /lib/ld-linux-x86-64.so.2 --verify /usr/bin/testprog
root@qemux86-64:~#=20

Regards

Nathan

> On 6 Feb 2016, at 08:51, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> by ld.so I mean dynamic linker shared lib not literally ld.so file
> it should be in /lib/ld*.so
>=20
>=20
> On Fri, Feb 5, 2016 at 11:36 PM, Nathan Sowatskey <nathan@nathan.to> =
wrote:
>> Hi Khem
>>=20
>> Thanks for trying to help :-)
>>=20
>> I read what you have suggested below as trying to execute =E2=80=9Cld.s=
o=E2=80=9D and passing my program as an argument.
>>=20
>> I can=E2=80=99t find a file called =E2=80=9Cld.so=E2=80=9D on either =
my Yocto image, or even the Ubuntu box that I am using to build it =
(which I use as a comparative reference).
>>=20
>> What am I mis understanding please?
>>=20
>> Regards
>>=20
>> Nathan
>>=20
>>> On 5 Feb 2016, at 21:49, Khem Raj <raj.khem@gmail.com> wrote:
>>>=20
>>> On Fri, Feb 5, 2016 at 12:46 PM, Burton, Ross =
<ross.burton@intel.com> wrote:
>>>>=20
>>>> On 5 February 2016 at 19:56, Khem Raj <raj.khem@gmail.com> wrote:
>>>>>=20
>>>>>>> interpreter /lib64/ld-linux-x86-64.so.2
>>>>>>=20
>>>>>>=20
>>>>>> Does the loader hunt around for this, as this is certainly not =
present
>>>>>> in a
>>>>>> default OE image?
>>>>>=20
>>>>> no it wont. infact thats the loader.
>>>>=20
>>>>=20
>>>> Yeah, what I meant is would the kernel hunt for that.  So, that's =
the
>>>> problem?
>>>=20
>>> kernel wont. you can try doing
>>>=20
>>> /path/to/ld.so <your-binary>
>>>>=20
>>>> Ross
>>=20


