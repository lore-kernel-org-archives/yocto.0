Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF247E00EF9; Fri, 29 Jul 2016 22:00:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1B62E00EEC
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 22:00:00 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id g202so6516629pfb.1
	for <yocto@yoctoproject.org>; Fri, 29 Jul 2016 22:00:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=Wqt77D2/Tpt/0DUgM0iGUDQjqYQpL7xIvqmkWnihHR4=;
	b=Al8TbttpqRmPbOVUL9cnxoNxAdf7uF2W6wH0DkoM2IlHHFbFeTCdgX+wVkZKkE4qT4
	i6CDiWvis+1NQlF5HvvPwQ589jefN1oUMfoFmM2itg0f6VP28BvWXoDLHiaOkefsGcJ/
	7ehg7YcD1sC0d5bk2a+qHyIWikyfqTv4RVT3kVTeJ55ZPoOGOlxGrVMcspUEhLXF3ka2
	M4+lCohcjC7oQYOQpWFM3Fz+4H2b+49Ffn+omybGCYtnI8W7EPcGfwbl2/yHP8DgRORS
	u64iKWwrj+MpRgnckOBPwNFdN/58oj1BysyfQqiLt5UIUloDwK7k11L25uEPRuavmsgP
	Wq2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=Wqt77D2/Tpt/0DUgM0iGUDQjqYQpL7xIvqmkWnihHR4=;
	b=kx88+5hhJlpLpX0JF9frx7QTVlgs5pSH7ZueM9fVRGCpxFGgh5WUxOMNIcv8JVbjfw
	Zc7CmsBmfVTmn3oEvFn6xXDSOApLID4FHjQGfhOZr5savqj3FyTWEh9FM/gwZMXo43jN
	mt8+DtH9Ltrnd7unmzfoWf6hSQVjnJmJRR3fTda6qCj0iBeWNfFZK2IxNx96eHKpxHZD
	EMnsMlYuyCbA1CHvCpoU16kd53h2UinJvGB1bJZvhvwcN7IfD6orJc7BYPAnffTw+MaK
	uKIo+/mTDDUe2jWCX6h28Ofklb5bTWuZngQ+rv1xxn7lrBqPdP5vA54+iNaz1Jorm5hm
	KNbA==
X-Gm-Message-State: AEkoouuhX9WOa4AgHQ6Sl8MqMHVZS/b6BSzT044sxyo6RtogRFtp4cComQFMAyHnHAowlw==
X-Received: by 10.98.38.4 with SMTP id m4mr74985710pfm.47.1469854799953;
	Fri, 29 Jul 2016 21:59:59 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:1c76:14d:910d:334d?
	([2601:646:8882:b8c:1c76:14d:910d:334d])
	by smtp.gmail.com with ESMTPSA id
	g24sm28657218pfk.56.2016.07.29.21.59.59
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 29 Jul 2016 21:59:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <579B5AD8.6070904@igalia.com>
Date: Fri, 29 Jul 2016 21:59:54 -0700
Message-Id: <E2C57F63-016F-4D13-8FF8-38E70B624ED2@gmail.com>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
	<57924CB6.9000807@igalia.com>
	<95A97B51-03A1-46F2-8BBB-C1F9823D410F@gmail.com>
	<579B5AD8.6070904@igalia.com>
To: Carlos Alberto Lopez Perez <clopez@igalia.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Sat, 30 Jul 2016 05:00:03 -0000
X-Groupsio-MsgNum: 31311
Content-Type: multipart/signed;
	boundary="Apple-Mail=_89F19C17-A382-4513-8228-D02643138250";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_89F19C17-A382-4513-8228-D02643138250
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Jul 29, 2016, at 6:32 AM, Carlos Alberto Lopez Perez =
<clopez@igalia.com> wrote:
>=20
> On 29/07/16 03:36, Khem Raj wrote:
>>>> It was tested with wayland/weston, without the support for X11.
>>>>=20
>>>=20
>>>=20
>>> I have a follow-up patch adding support for X11 that I will send =
once
>>> this is merged.
>>>=20
>>=20
>> Can you send the patch to the list please.
>>=20
>=20
> Find it attached in this e-mail.
>=20
> Regards.
> <vc4graphics-Support-X11-with-the-VC4-driver.patch>

Thanks. I have staged it to kraj/master

-Khem

--Apple-Mail=_89F19C17-A382-4513-8228-D02643138250
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlecNE4ACgkQuwUzVZGdMxQrDgCfZGrYgN/5+Wf0RD6dnQsEVSVa
IJkAnR3kGhuKP9hq9OO543huuVfYBG5b
=cnAg
-----END PGP SIGNATURE-----

--Apple-Mail=_89F19C17-A382-4513-8228-D02643138250--
