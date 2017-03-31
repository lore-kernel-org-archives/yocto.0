Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF267E00A71; Fri, 31 Mar 2017 10:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61AB6E00A5C
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 10:22:33 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 79so18785755pgf.0
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 10:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=0taxM3Vqb+gYln35gcB7TNB/tY/jtfqKA8t9v6oVEYo=;
	b=Ew7c3OHgwV9phDw8b/Hny3h6xWp0TRehW0GQV//DSDy+wTfJBE2RZdAtmiUF6okMKZ
	/V4ItPjShS70gRT49unSa4lUb6uor8fLzVgjzNZ/mTqxeVrWUqnHCdpcA3aegsxKGcrC
	/pAJpfUoo3jsNn2EPDTqxmDQEO/9GY2zhIRILjA/679kXEy9SdIkRlUStmITVY8+/n05
	bhlQNILncoDWmDufQYg3eb45Nnn5NYUBurj6n2mfb+IkMVpRwLQoM/IROFESN7f8wXcN
	/UBWPIaijDhHZ7+oTiE5wX0pyUg4un4lDyZByyo/kZwp9xUO0FKf3BunmSTEGpQ7Fh4G
	Pzhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=0taxM3Vqb+gYln35gcB7TNB/tY/jtfqKA8t9v6oVEYo=;
	b=B7WaY07UNTL1wOLnsYPZua1nt159+w17lGv7+3l810t2+ptgnkXFSqglYDaKw9ewHH
	mXTm9NBVpwOmQ+lOKUVNNYAagqt1yZN2YVzTFGTCiWW9yK/ZwBZNTKxu6gEn9j39fphM
	xSU08g6I/y7oeuEpH/CGTLqX5ZaCb7esniNfi1E/AaMXMlzdokMSMvdmE4RYIk4me715
	NE2eX5Toeu91DcpzQI2TUb4o1ijd/HspDWQjg3nZqemxUKYdil5isqrVXZDD4Z3WsHP9
	2dFnpJm1mDLPBhj0EWQB3QfmXa+v7EncJO4E4cc7XtZlj+xZ6VGn/CYrjCbI85z+KNjC
	YyFA==
X-Gm-Message-State: AFeK/H13CxHZUQOSZxz7jIHu9NjUveL6QqZdYzC0OfA3slegkIZtnPKgsE7CRND+vBORVw==
X-Received: by 10.84.218.69 with SMTP id f5mr4664690plm.114.1490980952890;
	Fri, 31 Mar 2017 10:22:32 -0700 (PDT)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:dd64:9ebc:182c:f6cf])
	by smtp.gmail.com with ESMTPSA id
	e13sm11733076pgf.48.2017.03.31.10.22.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 31 Mar 2017 10:22:31 -0700 (PDT)
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
	<d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
	<65b7858a-1e8b-c5fd-ae6f-3f5c4f711da0@mlbassoc.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <54d1ae93-eb93-d3e5-9e82-8c71ccb0af96@gmail.com>
Date: Fri, 31 Mar 2017 10:22:25 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <65b7858a-1e8b-c5fd-ae6f-3f5c4f711da0@mlbassoc.com>
Subject: Re: GCC on ARM
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
X-List-Received-Date: Fri, 31 Mar 2017 17:22:35 -0000
X-Groupsio-MsgNum: 35355
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="OP3QK5n0bBCvqjwIGPGqrr39tGFivXPeW"

--OP3QK5n0bBCvqjwIGPGqrr39tGFivXPeW
Content-Type: multipart/mixed; boundary="avHqqPwubuqmFaFc9Ki6Jk59jkePqgUkC";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
Message-ID: <54d1ae93-eb93-d3e5-9e82-8c71ccb0af96@gmail.com>
Subject: Re: [yocto] GCC on ARM
References: <b1ac4315-7369-b67a-ae61-f85bb2e82155@mlbassoc.com>
 <d423b70c-4f4b-9012-0d2a-c99bcc9093be@gmail.com>
 <65b7858a-1e8b-c5fd-ae6f-3f5c4f711da0@mlbassoc.com>
In-Reply-To: <65b7858a-1e8b-c5fd-ae6f-3f5c4f711da0@mlbassoc.com>

--avHqqPwubuqmFaFc9Ki6Jk59jkePqgUkC
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 3/30/17 10:33 PM, Gary Thomas wrote:
> On 2017-03-31 07:07, Khem Raj wrote:
>>
>>
>> On 3/30/17 9:07 PM, Gary Thomas wrote:
>>> [slightly off-topic]
>>>
>>> I work with a number of embedded ARM devices, all with different
>>> processors, hence somewhat different tuning and build directories:
>>>   Raspberry-Pi (1,2,3 - mostly 3):
>>>     TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4
>>> callconvention-hard cortexa7"
>>>     build dirs:
>>>       tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi
>>>   BeagleBoneBlack:
>>>     TUNE_FEATURES     =3D "arm armv7a vfp thumb neon callconvention-h=
ard"
>>>     build dirs:
>>>       tmp/work/armv7ahf-neon-poky-linux-gnueabi
>>>   i.MX6:
>>>     TUNE_FEATURES     =3D "arm armv7a vfp thumb neon callconvention-h=
ard
>>> cortexa9"
>>>     build dirs:
>>>       tmp/work/cortexa9hf-neon-poky-linux-gnueabi
>>>       tmp/work/cortexa9hf-neon-mx6qdl-poky-linux-gnueabi
>>>       tmp/work/cortexa9t2hf-neon-mx6qdl-poky-linux-gnueabi
>>>
>>> What I'm wondering is, except for the obvious programs that use SoC
>>> specific
>>> functions like the IPU/GPU on the i.MX6, how different are these
>>> really?  So
>>> much so that they have to all have unique binaries?  Surely I could
>>> build
>>> busybox or python and run the same binary on all three?
>>>
>>
>> You can chose a least common denominator and use that as DEFAULTTUNE f=
or
>> all your machines. May be like armv7at2-neon
>=20
> That's good to know, thanks.
>=20
> What would I be giving up?  Anything of substance/importance?
>=20

I doubt anything. Optimizations are oversell.


--avHqqPwubuqmFaFc9Ki6Jk59jkePqgUkC--

--OP3QK5n0bBCvqjwIGPGqrr39tGFivXPeW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAljekFYACgkQuwUzVZGdMxSUUACfcn9ai3yT7/sJA9saCt5WlWw6
es0An21ex7W/uDEdBAaT+JHniE84YIrf
=5Q+F
-----END PGP SIGNATURE-----

--OP3QK5n0bBCvqjwIGPGqrr39tGFivXPeW--
