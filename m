Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AE33E00CDF; Tue, 15 Aug 2017 17:17:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f45.google.com (mail-pg0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B685E00A39
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 17:17:01 -0700 (PDT)
Received: by mail-pg0-f45.google.com with SMTP id i12so15164280pgr.3
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 17:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:from:to:references:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=R+hqup5k7JPbnmKeipy/GCkuI/O3RFgDrBQET31Enhc=;
	b=DF7NWOJc67dzx4UIZH/3uWAyZ9CVN/vCJpcd+DrklgyXCI04LiL2dEi8/xX/rKb94U
	XyyvmkBmm3vsZaxxcZaVZfb4BfbnBhjBDmZFBBbB6ZI9xSiUA1iktTzzmKQS27tsvn/W
	Nhx/YYGXXX3oLK1/AmkLI9GCPB0/wUMAxi7dk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:from:to:references:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=R+hqup5k7JPbnmKeipy/GCkuI/O3RFgDrBQET31Enhc=;
	b=ODZbQo+4RcIgftg/qYFDCNzcoKvm/GOivPpmw+xAb51j0NU0VUG/VY4VCXRJns9WUY
	/JJ1z5fJUkOEVMA8hQjDLRQ7FpxWroQoA1G8eeoyYFRBbblH0hkzaQyX8wyG3TospxY1
	Z6co7Hm1RyYnPTsgW8s94iBFB727nRIQDHkkG+be8P3kZHyfQMTa94SnRfFrxW0F0Q9I
	o4TBzBfoULMKwYIFrF0sjf85FjMZW7hh1y67fXwksJsYzDBAo0bX9jqKlgy5AOSvNP9Y
	lRHS/Wf8z5WABVicLstUt7cXsVyxNM76Uk+Y9KLOi5Trr7ToheIf5hKRXo0BRMFbLLdX
	Ph1g==
X-Gm-Message-State: AHYfb5jQXDOGQLb55tojtdQw1wUIGGJCXNCiacXJaP+C0bz71Xq04c5t
	+NAbz8dpncRJkK1t
X-Received: by 10.98.87.203 with SMTP id i72mr29706899pfj.79.1502842620535;
	Tue, 15 Aug 2017 17:17:00 -0700 (PDT)
Received: from yct-lpt.lan ([198.145.30.54]) by smtp.gmail.com with ESMTPSA id
	i90sm19858008pfi.106.2017.08.15.17.16.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Aug 2017 17:16:59 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org, yocto-infrastructure@yoctoproject.org
References: <2ab681f7-5e7c-ee28-ca13-9fdb1e8d4a78@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <0e9e22b1-bea3-f41d-c35b-1ef2bfbbcaaf@linuxfoundation.org>
Date: Tue, 15 Aug 2017 17:16:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <2ab681f7-5e7c-ee28-ca13-9fdb1e8d4a78@linuxfoundation.org>
Subject: Re: downloads.yoctoproject.org timeouts and service interruptions
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
X-List-Received-Date: Wed, 16 Aug 2017 00:17:02 -0000
X-Groupsio-MsgNum: 37418
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="q7eWpiQH2Ua0tWEdp97bIbNOmQmu5HJGJ"

--q7eWpiQH2Ua0tWEdp97bIbNOmQmu5HJGJ
Content-Type: multipart/mixed; boundary="kpja7pjwAwI5s5cpNox6B6Jj2OV3bwSrA";
 protected-headers="v1"
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org, yocto-infrastructure@yoctoproject.org
Message-ID: <0e9e22b1-bea3-f41d-c35b-1ef2bfbbcaaf@linuxfoundation.org>
Subject: Re: downloads.yoctoproject.org timeouts and service interruptions
References: <2ab681f7-5e7c-ee28-ca13-9fdb1e8d4a78@linuxfoundation.org>
In-Reply-To: <2ab681f7-5e7c-ee28-ca13-9fdb1e8d4a78@linuxfoundation.org>

--kpja7pjwAwI5s5cpNox6B6Jj2OV3bwSrA
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Dedicated hardware is now in place. This should resolve these issues.
Please report any new timeouts in #yocto if possible.

On 08/15/2017 10:27 AM, Michael Halstead wrote:
> On Wednesday August 9th we upgraded the backend storage for
> downloads.yoctoproject.org and related sites. The new hardware is much
> faster but it is also depended on by more systems.
>=20
> August 12th connections began timing out due to contention. I'm working=

> on tuning to keep downloads available right now. Over the next day we
> will work to provision new decided resources for these important servic=
es.
>=20
> Expect timeouts and service interruptions for the next 24 hours.
>=20
> I will update the lists or you can follow the incident at
> https://status.linuxfoundation.org/incidents/hxz2f2kvbn88.
>=20

--=20
Michael Halstead
Linux Foundation / SysAdmin


--kpja7pjwAwI5s5cpNox6B6Jj2OV3bwSrA--

--q7eWpiQH2Ua0tWEdp97bIbNOmQmu5HJGJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzowQ2UYmQerfiW8/amSWNbpCWpUFAlmTjvQACgkQamSWNbpC
WpW7/Q/+KajxGJHngdoXo8Y3pnQup/yqdGELbhV9+65VvRTU3M41YmGyBY6WGVvL
e3FknVqK4/CoYbbCqiuMctNo+XJbqXkEQHvQo3zWHN3/Lwi9ps8P1zS0NWbYGZUo
3k7CdYrUW4PPPL/LNfekYqtEoIcypNXMAh44ecwIgCxmIoMUk0gSX91uVxRGoy8x
+VymQPIKNFU+Aa6AcjmeY5pe5Zja/a6MbAY5Xtw/VZQcmb3mvHrLVcY16wgjTcRQ
PYvviw+vuuQI62yin3XMfdkO1Sm0L5Y+LHgxjw0j2ZcdnwrcWpMAl1YcQU574pto
Kka3mN2EqpTDSrBkI202F0UpYD/GqHg/XEg7ha6+cVFsNJCxl97hpKj2olthf0IN
COUxMGw5WmY2x6NuGXSMaNGZx+lgDk9yP47r5plAYbwv/h5KWcsi1N0hyi9h/UWG
0VPurOVaRp60k+hXDElzZbC6eTItA6BVkpsgb+836SqNgSLknT16l+gHc2tHHZV2
Hai3/WXMe2GdWZRHevij2fUuiP6VsowS+/KdIfBBi/k34FZHKFWQAx0f9B5VEJCf
cvMMXNmzfGJiBuBRu6i4vqpdAQ4tMDnJjVsJKcL8gGN/PNme3NUyuaglNwgwgs9W
dtFQ3JXIcjQ1R74VPr9zYUP+qoqfmIsUMOXiypEtn/6GM5AFft0=
=hqG5
-----END PGP SIGNATURE-----

--q7eWpiQH2Ua0tWEdp97bIbNOmQmu5HJGJ--
