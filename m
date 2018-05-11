Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D56D2E014A9; Fri, 11 May 2018 11:20:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA784E00F78
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 11:20:01 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id c10-v6so3084428pfi.12
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 11:20:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=YswxSFzyvUlN8JRaDp3JLgQdtPVEW0A2Fo5UdKdVOaE=;
	b=j08vZ98s+aFCBr34N4KUSkhIP5MNgBjYcdMYCJseFt4r67widIWwAsdlK/ZiBits4B
	lhy82MOt/LLk47685BLz+Q2Up8PzRFf3PUVyKpjkk4/zARuEG24C7dSNTLgt4rNvXCr9
	czmH2GrQ8fUmPbEnXYxcTXRxH5flsOjRhkZjwxrDSZIpcGkNwTC7Gxjn/ixDuzY6FpIE
	ncSrG8wfGGzPI9YMmB1GOd22CCn5RVL2l6oMjjBz2h1Wcv9FBjwSM0TQYjgkSCUBQW/G
	jUUucrTyIsIyAznwOd572KtDClbAOAnngWWRy9ervlL7kJocLxk3tR0788iGdxOcH8ov
	QrOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=YswxSFzyvUlN8JRaDp3JLgQdtPVEW0A2Fo5UdKdVOaE=;
	b=qj1WMgUvl42nUIQ3/xdr4Gh/Ipt5P0S2tIrMSPQJPm/qeA6DUwcv3fVxUWDXKWSEKp
	+jkRKUTKnRj6WkziX6YKeennWuRg/lfuDAgtOdlJSqDsx6tqKma7b0hUfAXKwWrWdRMJ
	M94+4tWjdFTHQtIgc4qsKe00WKWOP/UDAosGXdATVaEzITfv2Fj1PQ+cjyjsbEbgU+h2
	+DXTsiQTsZcEffJnc5pX03uLgLK2hO/rvFs1gMBJH9uB4iKA7jIlU0uCcPL7xh/LJnqp
	ekZWE4nWI6K51TdfGSqpH9DCZRJ1524nt+pIf1phAKGjB+l9XcFaylYAjdyoCdVvCQBm
	lfDQ==
X-Gm-Message-State: ALKqPwduXqjaIYjOen4ZNAFTY7jpvHoO3DW3zshKvCXQ2QSAbspU9P66
	SaPwOH6K9VTxVQQb+En7C8C3aWWz
X-Google-Smtp-Source: AB8JxZooB96+Qp3J68NmBKB77H0Sf3sAf6G7OmSggycSelzQbmlKg+nLZ6Af8wWoixd5WWp6DOm2Cw==
X-Received: by 2002:a62:ec18:: with SMTP id
	k24-v6mr6563933pfh.204.1526062800608; 
	Fri, 11 May 2018 11:20:00 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	u75-v6sm8616005pfd.92.2018.05.11.11.19.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 May 2018 11:19:59 -0700 (PDT)
To: Mark Hatle <mark.hatle@windriver.com>, akuster808 <akuster808@gmail.com>, 
	"akuster@mvista" <akuster@mvista.com>, yocto@yoctoproject.org
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
	<43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
	<9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
	<d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
From: Rudolf J Streif <rudolf.streif@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@gmail.com; prefer-encrypt=mutual; keydata=
	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
	vN0JVJf8p4e3anmLkFyASoeAKUumyGnf
Message-ID: <fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
Date: Fri, 11 May 2018 11:19:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
Subject: Re: [meta-selinux][PATCH] libselinux: python-importlib is now part of python*-core
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
X-List-Received-Date: Fri, 11 May 2018 18:20:03 -0000
X-Groupsio-MsgNum: 41123
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="60Puw2QzubueEqHme96ZUL7VY47WVKYdv"

--60Puw2QzubueEqHme96ZUL7VY47WVKYdv
Content-Type: multipart/mixed; boundary="OeUfLn091PRZd6LWG6CiROSbwBmKshkQG";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>, akuster808 <akuster808@gmail.com>,
 "akuster@mvista" <akuster@mvista.com>, yocto@yoctoproject.org
Message-ID: <fd441792-54e6-e7a8-d6ce-f17f35de76a3@gmail.com>
Subject: Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now
 part of python*-core
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
 <43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
 <9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
 <d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>
In-Reply-To: <d7eb0b4a-e511-023c-3872-04b891bd0a4e@windriver.com>

--OeUfLn091PRZd6LWG6CiROSbwBmKshkQG
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Thank you, Mark. Much appreciated and understood.

Would you be open to tagging the layer for rocko to the right commit and
applying the patches sent to the mailing list by Armin and Kai to master
so that we have known points to move forward?

Thank you,
Rudi


On 05/11/2018 10:45 AM, Mark Hatle wrote:
> On 5/11/18 12:28 PM, Rudolf J Streif wrote:
>> Echoing this: may I ask what the current maintenance status of
>> meta-selinux is. It appears that no updates have been made for more th=
an
>> 9 months. This is of course not to blame anybody but out of concern th=
at
>> the layer is falling behind even more and to find a solution.
> The answer is the current set of people are horribly overworked and bus=
y, so
> day-to-day updates have been 'sparse'.
>
> Usually we update meta-selinux about the time of a release, and thus ar=
e due.
>
> The last update of meta-selinux was about the time of the Rocko release=
, so what
> is in master is definitely current as of Rocko.  (I did the last set of=
 updates
> -- so I know it did work as of Rocko release.)  The master needs to be =
branched
> as Rocko... master needs to be updated to be Sumo compatible.
>
> My assumption is that once Sumo is formally released (any minute now), =
we'll
> collection all of the patches and get them into place and spend some ti=
me
> cleaning them up...
>
> It looks like Joe is already working through this effort.
>
> (Only speaking for myself,) I don't have time to do day-to-day maintena=
nce of
> meta-selinux any longer -- nor do I have the indepth knowledge to under=
stand
> when not to do something.  I filled this role purely out of necessity s=
ince
> nobody else was doing it.
>
> So with that said, if anyone wants to help, we're all open for help her=
e...  I
> doubt there would be any objection to adding or replacing existing main=
tainers
> and/or giving more people push access.
>
>> In addition to Armin's patches there are two patches submitted by Kai
>> Kang at Windriver:
>>
>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917.=
html
>> * https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918.=
html
>>
>> Curiously enough, the second patch has been applied to master but not
>> the first one.
>>
>>
>> There is also an issue with building SELinux with systemd. The layer
>> enables auditing:
>>
>> meta-selinux/classes/enable-audit.bbclass:PACKAGECONFIG[audit] =3D
>> "--enable-audit,--disable-audit,audit,"
>> meta-selinux/recipes-core/systemd/systemd_%.bbappend:inherit
>> ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '',=
 d)}
>>
>> Apparently the --enable-audit switch is passed to meson when running t=
he
>> configure task, which meson does not appreciate. I am not that familia=
r
>> with the audit feature nor with meson, so I currently have no idea on
>> how to fix this the right way.
> audit feature is useful outside of selinux, so my understand was that a=
udit
> itself was moving into core during the sumo time frame (if it hadn't al=
ready
> been oved.)
>
> I don't know anything about meson, so I can't speak to that...
>
>> Further, refpolicy_git does not build anymore as the YP specific patch=
es
>> do not apply anymore since upstream changed.
> The refpolicy is and has always been crap.  I've been talking to a few =
people on
> IRC about working to replace the refpolicy with a policy that can be ge=
nerated
> dynamically based on the contents of the recipes.  I don't know if that=
 is
> really going to happen, but I hate the way it's currently implemented.
>
> One of the key issues about the refpolicy is that you need to be an exp=
ert at
> this (which I never claimed to be) in order to make any reasonable deci=
sion --
> add to that any specific policy needs to userstand overall system desig=
n, and I
> wouldn't trust any of the refpolicy items as they stand in meta-selinux=
=2E
>
> --Mark
>
>> Thanks,
>> Rudi
>>
>>
>>
>> On 05/07/2018 10:20 AM, akuster808 wrote:
>>> On 04/14/2018 07:08 PM, Armin Kuster wrote:
>>>> Missing or unbuildable dependency chain was: ['meta-world-pkgdata', =
'restorecond', 'libselinux', 'python-importlib']
>>>>
>>>> Signed-off-by: Armin Kuster <akuster@mvista.com>
>>> ping
>>>> ---
>>>>  recipes-security/selinux/libselinux.inc | 2 +-
>>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>>
>>>> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-secur=
ity/selinux/libselinux.inc
>>>> index bd5ce8d..51d0875 100644
>>>> --- a/recipes-security/selinux/libselinux.inc
>>>> +++ b/recipes-security/selinux/libselinux.inc
>>>> @@ -8,7 +8,7 @@ LICENSE =3D "PD"
>>>>  inherit lib_package pythonnative
>>>> =20
>>>>  DEPENDS +=3D "libsepol python libpcre swig-native"
>>>> -RDEPENDS_${PN}-python +=3D "python-importlib"
>>>> +RDEPENDS_${PN}-python +=3D "python-core"
>>>> =20
>>>>  PACKAGES +=3D "${PN}-python"
>>>>  FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site-=
packages/*"
>>
>>

--=20
Rudolf J Streif



--OeUfLn091PRZd6LWG6CiROSbwBmKshkQG--

--60Puw2QzubueEqHme96ZUL7VY47WVKYdv
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEE8vjdGrpkXMshtfshnUrlOPRyboFAlr13s4ACgkQhnUrlOPR
ybqlbAf+L7nQW8KZTzcluEfKRVfuzZalT9nt9EEBZ9/ICjGLYqwOHZU+pTvf2n7Z
I0Ceswmaj3xxFsdVsFJtZjyC030IF1438MNSNo95oX+KPWdHZBpnMDaQ0qvJw4XD
Yj2bP8JjpC4AzRYHLukAiu95I25wA3slWxJkZ0HTHjUxFDwRDVb6knnlf9Unf2+e
RbKNYzHnJFI01eTqI7E9dyy0L0Ug7DnL0kCzshtBHzv77YYDWonaPsqcO3wGoLlq
vgs9CedpNcIB7iCGJLX4iev+DJaHbJeKaLrFuue1XVUG1uJDFL+Xm3LwULGbU+Ju
tsW9azBdaq8UZgZGLScb1sgNRdJVRQ==
=eKgQ
-----END PGP SIGNATURE-----

--60Puw2QzubueEqHme96ZUL7VY47WVKYdv--
