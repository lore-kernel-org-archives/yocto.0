Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1761E00BF3; Sat, 12 Nov 2016 07:35:05 -0800 (PST)
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
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72480E00A1E
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 07:35:01 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id c4so1248147pfb.3
	for <yocto@yoctoproject.org>; Sat, 12 Nov 2016 07:35:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=IxO/Re4V0gdlSWXgiA9dD9K60nYc/uNCRZHXQ79ddiM=;
	b=udiYb5Rju7s0MDnDBu+3cQYaIc6KfA76krpdRoY9hm1WtOFS8P0Jrk2wi5YCvtkkGf
	GK2sG+vcqrXhNN2jF0dPtkpbvqqXZk181tcuqpK4xoorkBvN5Qafj/1j2Z1nviIWwbq+
	eHbScKm7Wcm8Ig+/e6Jd3c9GY/zsO/FU+O+7u+cNo7dzQ7SLKzk/o67RA5mupdCo/d7a
	PMogTXKAe+LYVBlzK9MZdrLMt+mu3qmBmay4SSPqitkasSn/XMg+BWCtJLEIrlrs40Hx
	FmCe6GLKMwbzuqEFO5mVc1Ip8R40at0lXxZ8ngyKhV1jnfWJSjxB2yzt3fvXlEpVyyGv
	iEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=IxO/Re4V0gdlSWXgiA9dD9K60nYc/uNCRZHXQ79ddiM=;
	b=YGesiLC1X9NLgWj72ESAtcqtkHe8Ne91XJNoYui+omaFMqKELG9gRPtdUz3mdcCw10
	/I4dH+hz5oSS9RzmWuITSzVvRlbwIUfrAlFaRxyylKTnks2rJUSh1ADrxrT0DWE8TmDM
	ZTXyUU6UDtaZYQia0euWOn5IhHz8pXtGlB5hx95DvOVxiOknvQbTBIAWhrHj+qytCM/S
	hlTOxZx3YBGvSJ5tl1GojtZNgWFo6WpOIWmXWHANTTXD4EEezG/TDURichR/YNLahmWA
	rxbfKBcwrk3QGSerBFLlNapBimlNQlv0Qd145ZU3v5ubqJBDX35vVnnsGuBeW0VELsEI
	34Tg==
X-Gm-Message-State: ABUngvefaFOTR9XVsrdqYIIpp/Df1LoP5DqvyIeHjallwnEp8RZSMi5f8Kk7ydeHTplhHw==
X-Received: by 10.98.91.198 with SMTP id p189mr18330580pfb.22.1478964900579;
	Sat, 12 Nov 2016 07:35:00 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4029:c6e:961d:a98])
	by smtp.gmail.com with ESMTPSA id
	z3sm23248754paw.48.2016.11.12.07.34.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 12 Nov 2016 07:34:59 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <20161106072515.3505-1-raj.khem@gmail.com>
	<CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
	<ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
	<20161108113838.GC19379@carbonA>
	<CAMKF1spR5-PpjfkfDadP_8FqrGHt0-T34k=RjwrwPg9y2Bd0Hg@mail.gmail.com>
	<20161112122345.GA14139@carbonA.lan>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <d62052d0-a042-312c-cef9-e184def18bc5@gmail.com>
Date: Sat, 12 Nov 2016 07:34:43 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <20161112122345.GA14139@carbonA.lan>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] firmware: Use release tarballs
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
X-List-Received-Date: Sat, 12 Nov 2016 15:35:05 -0000
X-Groupsio-MsgNum: 32951
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="9PqT3pjgbeoOShd5dWNVWPk7007LjW6dA"

--9PqT3pjgbeoOShd5dWNVWPk7007LjW6dA
Content-Type: multipart/mixed; boundary="qTGNaVRt88euovu1TjtXvAfk1tdGpt2rA";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Gary Thomas <gary@mlbassoc.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <d62052d0-a042-312c-cef9-e184def18bc5@gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 1/2] firmware: Use release
 tarballs
References: <20161106072515.3505-1-raj.khem@gmail.com>
 <CAK18fxEVW3NTsxOUbJQfM3XP6V7==G_V_dPG7P9-cjxVoWhpNg@mail.gmail.com>
 <ebb5bf5e-6ac5-a97d-09b3-d292f1f72995@mlbassoc.com>
 <20161108113838.GC19379@carbonA>
 <CAMKF1spR5-PpjfkfDadP_8FqrGHt0-T34k=RjwrwPg9y2Bd0Hg@mail.gmail.com>
 <20161112122345.GA14139@carbonA.lan>
In-Reply-To: <20161112122345.GA14139@carbonA.lan>

--qTGNaVRt88euovu1TjtXvAfk1tdGpt2rA
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/12/16 4:23 AM, Andrei Gherzan wrote:
> On Tue, Nov 08, 2016 at 06:46:45AM -0800, Khem Raj wrote:
>> On Tue, Nov 8, 2016 at 3:38 AM, Andrei Gherzan <andrei@gherzan.ro> wro=
te:
>>> On Tue, Nov 08, 2016 at 12:35:47PM +0100, Gary Thomas wrote:
>>>> On 2016-11-08 12:16, Andrei Gherzan wrote:
>>>>> On Sun, Nov 6, 2016 at 7:25 AM, Khem Raj <raj.khem@gmail.com> wrote=
:
>>>>>> This is a binary repo and its quite large in size
>>>>>> we do not need the whole history of this repo since
>>>>>> most of stuff needed is binaries, therefore switch
>>>>>> to release tarballs
>>>>>>
>>>>>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>>>>>> ---
>>>>>>  recipes-bsp/common/firmware.inc | 12 +++++++-----
>>>>>>  1 file changed, 7 insertions(+), 5 deletions(-)
>>>>>>
>>>>>> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/=
firmware.inc
>>>>>> index ed0782f..8862f58 100644
>>>>>> --- a/recipes-bsp/common/firmware.inc
>>>>>> +++ b/recipes-bsp/common/firmware.inc
>>>>>> @@ -1,8 +1,10 @@
>>>>>> -RPIFW_SRCREV ?=3D "413fc664838e81caeabdc4118dc51e138d5d6c71"
>>>>>> -RPIFW_DATE ?=3D "20161030"
>>>>>> -RPIFW_SRC_URI ?=3D "git://github.com/raspberrypi/firmware.git;pro=
tocol=3Dgit;branch=3Dmaster"
>>>>>> -RPIFW_S ?=3D "${WORKDIR}/git"
>>>>>> +RPIFW_DATE ?=3D "20161020"
>>>>>> +RPIFW_SRC_URI ?=3D "https://github.com/raspberrypi/firmware/archi=
ve/1.${RPIFW_DATE}.tar.gz"
>>>>>> +RPIFW_S ?=3D "${WORKDIR}/firmware-1.${RPIFW_DATE}"
>>>>>>
>>>>>>  SRC_URI =3D "${RPIFW_SRC_URI}"
>>>>>> -SRCREV =3D "${RPIFW_SRCREV}"
>>>>>> +SRC_URI[md5sum] =3D "d3c388c114af4c672dd3ee0ed8e984d3"
>>>>>> +SRC_URI[sha256sum] =3D "1c7c49d58800aab2dd1b5ff59a1e297934f9ea6f4=
7ebdf0a3f90632561dc690b"
>>>>>> +
>>>>>>  PV =3D "${RPIFW_DATE}"
>>>>>
>>>>> Merged to master. Thanks.
>>>>
>>>> Sadly, the firmware revision went backwards in this change.
>>>> Do you want a new patch to play catch-up?
>>>>
>>>
>>> Good catch. I'll fix it. Thanks.
>>
>> ah sorry about that.
>> just hardcode PV =3D "20161030" for now. with next release we will get=
 it right
>> since its already past oct 30.
>=20
> Actually the last archive is 1.20161020.
> https://github.com/raspberrypi/firmware/releases

thats what i mean, when there is next release whenever that is,
it will be newer than todays date. The problem here is that we went backw=
ards
for once only.
>=20
> --
> Andrei Gherzan
>=20


--qTGNaVRt88euovu1TjtXvAfk1tdGpt2rA--

--9PqT3pjgbeoOShd5dWNVWPk7007LjW6dA
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgnNqIACgkQuwUzVZGdMxQnrgCfQ+umrfCljaCxARhPo1NZ0Kzk
h1QAnRSZf9cio7CbhgOD985lGQVgu7ny
=lfT4
-----END PGP SIGNATURE-----

--9PqT3pjgbeoOShd5dWNVWPk7007LjW6dA--
