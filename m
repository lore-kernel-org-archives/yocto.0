Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BF60E00BC3; Mon, 31 Oct 2016 15:36:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35652E00B79
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 15:36:26 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id n85so9786952pfi.3
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 15:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ak/CPswRMzWdBPoNRwUBN7xseMt+QJ1SH51ofYnT/Gw=;
	b=MgYKRs5d4IO4kb2Lzd+N00jOMuB0DgFidUHwlpKLpQH7VVqXklEk+kWVC6qzoaWAMQ
	S74wT2Jja1c1vb5Os24gfVjtEEGvQFHBxtADi3QJ81lpNpwfdUHRfB8IF9nw/ZnHZKEr
	7TWcJEEDVmtOAbwkYXg1bJvBNzAuthPP11OSCz7d6jPGBUfqMrEPqrrvTv4KiPlOgHZv
	Mgnsjd27vu1bWZ+ut2PLBEkiNmALmk3hWnoOuNhULjR3pr6ToY1QiA8PjvaDC48frFjR
	B8XnqwgYWE4yLENVkmnWCAdHZPXqWkybVawE2gHzSvsO1TbrQoJDGvl4X+dhPiB8WEhK
	+JSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ak/CPswRMzWdBPoNRwUBN7xseMt+QJ1SH51ofYnT/Gw=;
	b=iymtXvVnVigQc/ieOMIujb1u9B6JT6ag/ZsjGVsXBKiSJlwlFk2JOoDNk2yuSFs3n+
	5N1h1G63ElXK41BzNjB1O1rXDvdBn+C1XlqajmuX3LVL855ZoMmeWIMGoKUb0HyEN9jy
	WH4VChWMcu2p1geapQZ8p/Lrabjmeadu3kAu2542TgtG7uiQVVKIt2IYSqAoSouthC7Q
	sgnrm3lQucHEYxrNIY3z+sFizqo0QxFyhRFhXgKBrX7yY/Yu7U/Xrlcb68Juyr/rWZMO
	uv0Krj7kAuyiM3+rT+adD0/nA8xP6MeQGAHVW2+YWzTm5t1OxCUIvfTC7vQHBcxGF1ci
	PE6Q==
X-Gm-Message-State: ABUngvdCxhADMzmpr34aLpaPUO0Q5hf+BUILTuP9L/lKRWNRejHLBpKuse/INVn1g8o9EA==
X-Received: by 10.99.3.202 with SMTP id 193mr44799079pgd.157.1477953386463;
	Mon, 31 Oct 2016 15:36:26 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:2cc8:a0e4:7c5b:437?
	([2601:646:8882:b8c:2cc8:a0e4:7c5b:437])
	by smtp.gmail.com with ESMTPSA id l7sm6543718pfg.35.2016.10.31.15.36.25
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 15:36:25 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1850332.dJ48PBlyDk@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 31 Oct 2016 15:36:24 -0700
Message-Id: <5362FBF7-1336-4A63-8A5B-4DD670C84C25@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
	<66B0CBC6-1852-482E-94EE-6E216B1105ED@gmail.com>
	<1850332.dJ48PBlyDk@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 minimum kernel requirement
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
X-List-Received-Date: Mon, 31 Oct 2016 22:36:30 -0000
X-Groupsio-MsgNum: 32721
Content-Type: multipart/signed;
	boundary="Apple-Mail=_326A4EEA-66E2-4D58-A322-CC684BADE476";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_326A4EEA-66E2-4D58-A322-CC684BADE476
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 31, 2016, at 2:59 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> On Mon, 31 Oct 2016 09:37:07 Khem Raj wrote:
>>> On Oct 31, 2016, at 7:37 AM, Vuille, Martin (Martin) =
<vmartin@avaya.com>
>>> wrote:
>>>=20
>>> We are looking at upgrading from Yocto 1.8 to 2.2.
>>>=20
>>> Yocto 2.2 has a minimum kernel requirement of 3.2.0.
>>>=20
>>> This isn=E2=80=99t an issue for our target (ARMv5, Linux 4.4) but =
may be
>>> an issue for our automated build machines (x86, Linux =
2.6.32=E2=80=94CentOS 6.)
>>>=20
>>> However, there is a note that says
>>> =E2=80=9CFor x86 and x86_64, you can reset OLDEST_KERNEL
>>> =
<http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.html#var-OL
>>> DEST_KERNEL> to anything down to 2.6.32 if desired.=E2=80=9D
>>>=20
>>> Is it possible to configure things such that we can keep supporting =
the
>>> old kernel for the SDK while we support a more up-to-date kernel for =
the
>>> target?
>>=20
>> I think that should be the default. We do not set it for =
x86/nativesdk case.
>> File a ticket if thats not the case.
>=20
> SDK_OLDEST_KERNEL is the variable that's supposed to be controlling =
this, but
> I noticed a couple of weeks ago that we aren't feeding =
SDK_OLDEST_KERNEL into
> glibc for nativesdk, so we should fix that - I've filed a bug [1] and =
will
> sort that out. I think we should probably set the SDK_OLDEST_KERNEL =
default
> for x86 to 2.6.32 at the same time - I assume there are no objections?

Yes, its for nativesdk/glibc, I think for target x86 we should keep 3.2

>=20
> Cheers,
> Paul
>=20
> [1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10561
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre


--Apple-Mail=_326A4EEA-66E2-4D58-A322-CC684BADE476
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgXx2gACgkQuwUzVZGdMxSJlQCfRPR+ngH9jiZNoBCFjDxAMO5O
nJ0AnAyuij6kQrBRxCcvq1ojORIhhiSt
=sdnZ
-----END PGP SIGNATURE-----

--Apple-Mail=_326A4EEA-66E2-4D58-A322-CC684BADE476--
