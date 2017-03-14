Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03806E0094C; Tue, 14 Mar 2017 10:00:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79038E00724
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 10:00:20 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id 77so25446033pgc.0
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 10:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=GRaMTXVv8I6zxjmIeGKc6VT2r/2IoXkgiLwuhPUkfG0=;
	b=GjfMl/UJmUP+sftKFHEYa22icaiA9MjH7Ly+PZJthePjvJmXIXCIKmgpQBnpl7mO2A
	i6bfAYpu5bqcnOmiIyiLTIvgWs7inLy5Szl/yN/OEY07RXIRMQZsujKcgvWEIFkyxdp1
	ya6Q96ioT3T1MgGojYMpug9Q0E95ENh/RlrkGTQzv4+GVMuW0ierJv3O5EE0clDtcw4/
	qIpE0Rrn5NwOB6uIM8uIpCkM7kq1djW5ZodWE5RwC61h0V34a+GswSsOqtIERYStoJrz
	4s1HPpRWUrDVbWbW388C1fU1Gs6fAkpvFHtD/p4x2jeos7jdsdVlAi01bSjufqaZ7ZEJ
	wPuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=GRaMTXVv8I6zxjmIeGKc6VT2r/2IoXkgiLwuhPUkfG0=;
	b=ANxdlVod+GC2rnnjGAhaA6AMsmyKiXghXGcYjZ1bpe8DWu+SeCL6C217+7Fbj/utDK
	24XFnXgYvX9WZKP6rIoNskiQMTrPigxavJZYaApl5AhVkO8FiE2QTp1eW9KV+zpIbnGc
	02v3fqO3Jrn4ZMZcXUks+sW3i6BfmCpgltbVxdn6mxK8EUwM4VAPv9YZhv0Q8YlTLc0u
	iIjtGjaXybZZg5FOQV2Fh2IkcwWb/rscZrtSufEpjmFbtI9OTWRo5gyYtZNQOQdNessc
	4yFfhMVuBKqJghVZcpIj0iP3cvz7Z3G8CAvHEjsP5//Us06uueXp1v/Moe88GfV8nLp+
	g92Q==
X-Gm-Message-State: AMke39nbpi58muTz4Q1AQgyYeo+zm6TIL9c5bJWnr92x6ANcIanbF6diJJQcOWFHX1plcg==
X-Received: by 10.84.129.132 with SMTP id b4mr56283311plb.54.1489510819351;
	Tue, 14 Mar 2017 10:00:19 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:647:4c00:23ec:18ae:f8ee:7d8b:705c])
	by smtp.gmail.com with ESMTPSA id
	e70sm39579097pfl.105.2017.03.14.10.00.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 14 Mar 2017 10:00:18 -0700 (PDT)
To: Fabio Emiliani <fabio.emiliani@artgroup-spa.com>, yocto@yoctoproject.org
References: <91899dc0-59a7-29e4-79bb-48af94b68437@artgroup-spa.com>
	<28663559-f42a-71f3-a9ca-d9cbee5267c3@gmail.com>
	<1cf586bc-1d12-5281-6691-5f99cfba1dc8@artgroup-spa.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <b4266698-0236-ab9a-10ea-c72862efa627@gmail.com>
Date: Tue, 14 Mar 2017 10:00:16 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1cf586bc-1d12-5281-6691-5f99cfba1dc8@artgroup-spa.com>
Subject: Re: Why generated locales does not have .UTF-8 suffix?
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
X-List-Received-Date: Tue, 14 Mar 2017 17:00:22 -0000
X-Groupsio-MsgNum: 35052
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="rlbi0xUoME80gpRQCBn1mEotM4ciKH7vl"

--rlbi0xUoME80gpRQCBn1mEotM4ciKH7vl
Content-Type: multipart/mixed; boundary="wkeQ2oGVThjd95glQcIENLl6W6HKvD0F1";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Fabio Emiliani <fabio.emiliani@artgroup-spa.com>, yocto@yoctoproject.org
Message-ID: <b4266698-0236-ab9a-10ea-c72862efa627@gmail.com>
Subject: Re: [yocto] Why generated locales does not have .UTF-8 suffix?
References: <91899dc0-59a7-29e4-79bb-48af94b68437@artgroup-spa.com>
 <28663559-f42a-71f3-a9ca-d9cbee5267c3@gmail.com>
 <1cf586bc-1d12-5281-6691-5f99cfba1dc8@artgroup-spa.com>
In-Reply-To: <1cf586bc-1d12-5281-6691-5f99cfba1dc8@artgroup-spa.com>

--wkeQ2oGVThjd95glQcIENLl6W6HKvD0F1
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/14/17 9:50 AM, Fabio Emiliani wrote:
> Hi Khem,
>=20
> unfortunatly doesn't work.
>=20
> The IMAGE_LINGUAS variable can be valorized only with the suffixes of
> the locale-base-* packages. As of now my list of locale-base-* packages=

> for en_US is:
>=20
>> locale-base-en-us.iso-8859-1
>> locale-base-en-us
> no .utf8 suffix. That's strange, I'm not sure that the en_US locale I'v=
e
> generated supports UTF-8 encoding.

does this help ?

GLIBC_GENERATE_LOCALES =3D "de_DE en_US de_DE.UTF-8 en_US.UTF-8"
IMAGE_LINGUAS =3D "de-de en-us"


>=20
> I've just opened a bug on bugzilla:
>=20
>> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11153
>=20
> Any other ideas?
>=20
> Thanks in advance for your time
>=20
> Best regards,
>=20
> Fabio Emiliani
>=20
> Il 14/03/2017 17:39, Khem Raj ha scritto:
>>
>> On 3/14/17 8:36 AM, Fabio Emiliani wrote:
>>> Dear all,
>>>
>>> I've generated several locales specifying, in the local.conf file, th=
e
>>> variable:
>>>
>>>> |IMAGE_LINGUAS =3D "de-de fr-fr en-gb en-gb.iso-8859-1 en-us
>>>> en-us.iso-8859-1 zh-cn"|
>>> inspecting the target file system, both in: /usr/share/locale and
>>> /usr/lib/locale, generated locales does not have the .UTF-8 suffix.
>>>
>> Perhaps adding en-gb.utf8 to IMAGE_LINGUAS might help you.
>>
>>> See:
>>>
>>>> |/usr/share/locale/ drwxr-xr-x 6 root root 416 Nov 17 2016 . drwxr-x=
r-x
>>>> 30 root root 2056 Nov 17 2016 .. drwxr-xr-x 4 root root 296 Nov 17
>>>> 2016 de drwxr-xr-x 3 root root 232 Nov 17 2016 en_GB drwxr-xr-x 4 ro=
ot
>>>> root 296 Nov 17 2016 fr drwxr-xr-x 4 root root 296 Nov 17 2016 zh_CN=
|
>>> |and|
>>>
>>> ||
>>>
>>>> |/usr/lib/locale/ drwxr-xr-x 9 root root 640 Mar 13 2017 . drwxr-xr-=
x
>>>> 32 root root 40000 Mar 13 2017 .. drwxr-xr-x 3 root root 1016 Mar 13=

>>>> 2017 de_DE drwxr-xr-x 3 root root 1016 Mar 13 2017 en_GB drwxr-xr-x =
3
>>>> root root 1016 Mar 13 2017 en_GB.ISO-8859-1 drwxr-xr-x 3 root root
>>>> 1016 Mar 13 2017 en_US drwxr-xr-x 3 root root 1016 Mar 13 2017
>>>> en_US.ISO-8859-1 drwxr-xr-x 3 root root 1016 Mar 13 2017 fr_FR
>>>> drwxr-xr-x 3 root root 1016 Mar 13 2017 zh_CN|
>>> What is the character encoding of the following locales: de_DE, en_GB=
,
>>> en_US, fr_FR, zh_CN?
>>>
>>> Thanks in advance for your time
>>>
>>> Best regards,
>>>
>>> Fabio Emiliani
>>>
>>> --=20
>>>
>>> *Fabio Emiliani*
>>>
>>> */Software Engineer/*
>>>
>>> /Ph. +39 075 8298 530  /
>>>
>>> /fabio.emiliani@artgroup-spa.com/ <mailto:fabio.emiliani@artgroup-spa=
=2Ecom>
>>>
>>> DISCLAIMER
>>> This email and any attachment may contain confidential information. I=
f
>>> you are not the intended recipient you are not authorised to copy or
>>> disclose all or any part of it without the prior written consent of A=
RT SpA.
>>>
>>> =20
>>>
>>> /ART SpA =96 Step Forward With US - //www.artgroup-spa.com/logo_ART_f=
irma-1//
>>>
>>> /Ph. +39 075 8298 501 =96 Fax +39 075 8298 525 /
>>>
>>> P*Please consider our environment  before printing this e-mail***
>>>
>>> =20
>>>
>>>
>>>
>=20
> --=20
>=20
> *Fabio Emiliani*
>=20
> */Software Engineer/*
>=20
> /Ph. +39 075 8298 530  /
>=20
> /fabio.emiliani@artgroup-spa.com/ <mailto:fabio.emiliani@artgroup-spa.c=
om>
>=20
> DISCLAIMER
> This email and any attachment may contain confidential information. If
> you are not the intended recipient you are not authorised to copy or
> disclose all or any part of it without the prior written consent of ART=
 SpA.
>=20
> =20
>=20
> /ART SpA =96 Step Forward With US - //www.artgroup-spa.com/logo_ART_fir=
ma-1//
>=20
> /Ph. +39 075 8298 501 =96 Fax +39 075 8298 525 /
>=20
> P*Please consider our environment  before printing this e-mail***
>=20
> =20
>=20


--wkeQ2oGVThjd95glQcIENLl6W6HKvD0F1--

--rlbi0xUoME80gpRQCBn1mEotM4ciKH7vl
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljIIaAACgkQuwUzVZGdMxRyVwCfakeZoIbOnHj7bjispcSEGy84
w7wAmgISpIi/vbIqohH+hWk3kwrk9WHs
=4qvp
-----END PGP SIGNATURE-----

--rlbi0xUoME80gpRQCBn1mEotM4ciKH7vl--
