Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B54CCF9FE
	for <webhook@archiver.kernel.org>; Mon,  3 Nov 2025 13:30:01 +0000 (UTC)
Received: from fout-a5-smtp.messagingengine.com (fout-a5-smtp.messagingengine.com [103.168.172.148])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20354.1762176593726773968
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Nov 2025 05:29:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm1 header.b=PbvBPGnb;
 dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=PInR2pGH;
 spf=pass (domain: pbarker.dev, ip: 103.168.172.148, mailfrom: paul@pbarker.dev)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.phl.internal (Postfix) with ESMTP id DBE3CEC029E;
	Mon,  3 Nov 2025 08:29:52 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Mon, 03 Nov 2025 08:29:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm1; t=1762176592; x=1762262992; bh=DCEJbR19vT
	MMYQlx6y8ivZsOtmwPz+PxWZq/GcOOZf8=; b=PbvBPGnbKpcLxsJHJ/gFIUTcT0
	Sv6FL4sboHLuipQcKKqV5dOtJG9MqxfLLtZCn9nvM8h+eA0vZL5OkS2NIo0iJ4Xt
	0qMi4PL4bERIx5H8eyS1kYzBh3wo27WXtTBM7JasXMGLdhmG33p5T10P2tYzJdFL
	nJTzNSmmYArDcp0l7hR0k6K/jKO4hmgc+j17BHxxzw840D1sMRi8Ac8KccwziAJ4
	Pm8v27f0fwVwxwPoxISIKxBdLBJwO+ZagSQqf+AYUbaKXsI9MDVpYqWnu4x3c0nJ
	K7KB/Vcju3PoMi1TkjL4cRWA65xyNXY0diWgXEMEZSf49+r1djDQdznUHgAA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1762176592; x=1762262992; bh=DCEJbR19vTMMYQlx6y8ivZsOtmwPz+PxWZq
	/GcOOZf8=; b=PInR2pGHYeyzORl1ZkKkeaewNL5IpkOCWlSJIl/HbR8ivf6cRYb
	2ba1EjeyPHjLCAjbDQkibMJsvFoPp+bGI20KF5/9xJvZT7GVdLjfkTpIujrm60D9
	JnZEY5Y3A05f1FiKbl/ZI3dN2aIjpkdtZmK8BtB2WXLczh4uwDT1AWiIjCLDLqHI
	bi19wT/R/nbiyjOtmANNh1jJUhCyIyxGBk/Q7xuovc3mXS8TxDGpYgY0NoNgKydq
	zbBu35GUEVaf5LmXNGNNQ8sVsy1uAbjV/lBcN3Lh3ItyjsjbWTNildA3d5CZLErO
	+a6pn0rVCFzExNxvgjy4ExlWSeuaQQuIEYA==
X-ME-Sender: <xms:UK4IaaD-KH_cJqO9YdvoNCW7rkPghS4flH5bMUFNn7ZPx8n_Sxlv3g>
    <xme:UK4IaajJS03IazACjz7EgWCuOStSfqC5P1f25Pv-MoO940ErGaXxSn1MGgx5L-YA_
    2bAENTeCtxfs0wWloNgT1y9rHvGRKXi-rtsaL_00UmJ2PGef_NKn9k>
X-ME-Received: <xmr:UK4IabPCmsu6yJ_LNl79_GuHlyPHfB8hm--l-locmXN2ykO4NITS1CsVh18mbBxlKFH68UVEvL6sfNUx2KBOIEFk6ti8Iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggddujeekvdehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegfrh
    hlucfvnfffucdlqdehmdenucfjughrpefkuffhvfffjghftggfggesghdtreertderjeen
    ucfhrhhomheprfgruhhluceurghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggvvh
    eqnecuggftrfgrthhtvghrnhepgefgveekheduteeuvdfgudekuedvleehjeeuiedtffeg
    tdefvdfhvdevtddtheelnecuffhomhgrihhnpehnihhsthdrghhovhdpthhhvggtvhgvfh
    houhhnuggrthhiohhnrdhorhhgpdhophgvnhhsshhfrdhorhhgpdgvuhhrohhprgdrvghu
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgruh
    hlsehpsggrrhhkvghrrdguvghvpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhp
    ohhuthdprhgtphhtthhopehrphhjuggrhiestghrrghshhgtohhurhhsvgdrtggrpdhrtg
    hpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhg
X-ME-Proxy: <xmx:UK4IaT4BsJpRS86rHlLOScLfJCbmHbPdF0uVMrqOR03OJihfhVo0VA>
    <xmx:UK4IaR25_ND5dl1aDew25l6hn8u7lcghaXMytiXFv8EDz-uj5vbzJQ>
    <xmx:UK4IacbKPnQrlVIw1KgFUMVcL_XWNy9d1U5ZIVbknKRWGuVajqZHlg>
    <xmx:UK4IaRDtBmeXrPucfv5ATz8_CblsqXYrGFhL_i0mWHswY-LqoFprTA>
    <xmx:UK4IaSj9lJ0QwjzzCQv_nri36P0hk8tqmegURnXna-VdOJLM_r6sf5Dd>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 3 Nov 2025 08:29:51 -0500 (EST)
Message-ID: <b8fdf5f854def36cdef1fcd39373400dcc14c77c.camel@pbarker.dev>
Subject: Re: political question about national vulnerability database and
 NIST
From: Paul Barker <paul@pbarker.dev>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	 <yocto@lists.yoctoproject.org>
Date: Mon, 03 Nov 2025 13:29:46 +0000
In-Reply-To: <ed02f919-418f-85c7-4fe3-095af2585206@crashcourse.ca>
References: <ed02f919-418f-85c7-4fe3-095af2585206@crashcourse.ca>
Autocrypt: addr=paul@pbarker.dev; prefer-encrypt=mutual;
 keydata=mQINBGC756sBEADXL6cawsZRrDvICz9Y1SG0/lW1me4xpq36obh7a0IGAzp3ywNRb/4MO
 DTqP4+DD0cIFuDY41/N17g0sNlp8z+/k/IIDmNPtYQOTVmAkrkdDU4BP8dD3Cp1PUw6nrbInfujAJ
 NrVM0IVDkwKTbL2Nu1P+xns4MIpF9Kj4XN5celYJ9vEJ2n0Bo0nO5T5vg46dihIaDl+24iNIHSsHq
 YyEdMBfY8kY2RulpaAyFOuaaHdIeDkejVvO5xLSiYLjB5qrRhgH134lJXsuLOsFQ64ybGECuOasnb
 auevsPBAaroQW0pqVb9FneGrWHxMCLlQHJRqQJRdVa6bsUdp6NWra8/0msPawSrFwGQdfJBTA3aXJ
 C2CG1JxEgj6QQjEQA49DSjgzdhInbiIK8Vbp/zedM4aVue7qJnwPMTFQM9lYx63b7wLN4Tu8B9YZ0
 UFdSwMCJuqmYGsYRUYdwM3ArjS0VO6WpU+HBKvzLK5GQfUTSM8KaZ5eA2Uo2ain8SSZb+WptUYKpx
 F9jbtCPbjpZKzGuX4iHFl9eT75TM9iXJNGAjB5xigkADLwVfPoJ5E53S+KdNVuOWHugyLMPNAQHOw
 pw5Rey+0zxyzPd4wphutc93UIU5g/029ngAc7DuKCq12jl7fhkjqFlFtYPIc1k7nd+RSezmH/qRes
 bMErHSX1MBSZQARAQABtB5QYXVsIEJhcmtlciA8cGF1bEBwYmFya2VyLmRldj6JAlcEEwEIAEECGw
 EFCwkIBwIGFQoJCAsCBBYCAwECHgECF4ACGQEWIQSYsqrBAKw/grtdVGd0l1yBt+ZrrAUCaAzHVAU
 JCTdOhgAKCRB0l1yBt+ZrrA51EACS7IYZaliCgQEhq8nnsQotchJtIZbO6nr8tk+6gicX0loJYqsY
 P2/XZ/MaF8kWYSGPIHjiCcB8tEISUFKPAvfCu0Q/X7n62AkSUZOhsQ6T/ajCaXStv/P28kQmGzoCp
 6ljK/zALMWKvWFEbLaZprIWV8AZJxzJWhfSdb+1XnLlmwhBCfjXJeR/TlGWhNTqTO6vyAtZ5OpGgq
 6N9EG60EQd4YWYwliDhCoUYRYR8qpp9JMrsDm/dzwd/A2/3rR0zzCtkha29kHqdVJtsd7bbiVLr8/
 Zpa9Wcd7EG32CC25DUdkarU7f2P+goFVXfddGQRPy7l9uwF4kmtLGeuxWCCS8+4FPadifGvL8UoE9
 62fbxdHTzhjj0Yqs8zDgEwQUxFjpbmTseVx7QdoEe783jWqH4QhCeuo2kSjC4/VIRGDAS0/7Hq3rj
 Iqqg6zGY8YQRvUyoOLn7Ip7WbHkZOUtWPjPbxe2tgeCttZkGrLQCosH0dlC0Hm7KWs+XHFp5d8OVd
 WzIgWUvYkVaDeLHe3b6tM8AXoixS1rSQrnrAs/O/62Nx+k9+XVAy1clY2jdYOstuPvDhcqkT10RPs
 o2qQnH7RGh2DCVu1D10XwDE1CWZ4Op70BO3g/I02ojT6kG4MHh6JX9+tjpjOINQQf+rGiHzj1YZYf
 z0oc2b0NQI//cy/pDbQjUGF1bCBCYXJrZXIgPHBhdWxAcGF1bGJhcmtlci5tZS51az6JAlQEEwEIA
 D4CGwEFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQSYsqrBAKw/grtdVGd0l1yBt+ZrrAUCaAzHVg
 UJCTdOhgAKCRB0l1yBt+ZrrBr7D/oCOAaVVHKCuFHHJjnCNuN06o7BRgBUR8IzQxDSc0WIhTSNaa7
 OWPSDanFtDJwOVhe7Ongu8ZF8gsLXg8jb9iS8J2lsm9q4tID3NCQIL0PgjI2/hKKOt1dZs4RGcFXj
 v1nVEwFcvaJE4996tr9UMeZeOtipdlnGoh4Sozs2UvWydnc8SZZ3hCqxbJiorxD7wdrR4As5rqesP
 YwiNqE4KW3jUavf1Sr0U94Umv4l5UPGQQekBxjh1ujsCo05g4IByS3RlDBxCQDvXAMBVHW20PLofD
 aFqNpynQwAdpBS/cvX7tDK2pq+Rd4YK8uuDoHxH18dfCZcGYzSEUJ6y+rbYiJGh01mJFOM0oJP4DO
 9L79mJpURUdZNhI5/GVkCCxwt6HcNt24ertMlHDQkhZ6igP7zBgzODZ1sizODISaBh4M7lyxsBl76
 0dwghNbczt5ytG37mPLWjYaiJMeU7xQtoQo3yZDQvUSMnfFMxWYJO9Hi4P6H2gnMsDrPRnfr68vfP
 rbseTtQM8cpfGnV0FzdFfHSTMJfcFA4BdeCJsn73JHuNEBMjDvUfgjN1a661nEzA5Zd26HQZQ1mQM
 zRkrHto4z7Y86q05esioZ8Vd2Dhm1SMCBY9PNd5QrGpS67uP0wGOK2o3q9eQmxjenFHGAaOuTEZWT
 UpTTTw8SSeLBAHSSQ37QbUGF1bCBCYXJrZXIgPHBhdWxAcGJya3IudWs+iQJTBBMBCAA+AhsBBQsJ
 CAcCBhUKCQgLAgQWAgMBAh4BAheAFiEEmLKqwQCsP4K7XVRndJdcgbfma6wFAmgMx1cFCQk3ToYAC
 gkQdJdcgbfma6xTZw/2PQ+vjkegBRAHxNIMcj0j9QfP45ZE4bmyGrCDb5i8BwoAJccilT8chvVFgB
 AjG40Zx4oFcRKYYe6AkC6/B5U71307/nqPtt0gEy0VmTi0V+28eQPrNiTLa+OL9B5SGki/45N3g5V
 hdqDNdvx/P2k1cg8YsndVE5ASmdPI2l96n7dqd0fW2C/rzrYNUQ+mPyvNgOGcD82YzahLRfb2u/GV
 CWzEc2iplJeeWlUGoYHPCo4ztZDqJghCfgBab0RBJexdTyJl2QFs/osCM3yp02nTEUV/EiKbXcuWu
 4fvJ3xRtopQ49DMQtsTS3xB0vaPgPeBYb6DeJsLpR6be31mvEmhHGPEuVlxXNsXig1JNS0S+U0NhH
 R1fKNc1uwHE2eTFhFKHK+BhyzJGBWU3reEGjm9BygE9G591bz3+UASdqeT7FY7MGq55NqUVHTlW9R
 +L+IYXzlKvtcF8xDaZLo5MGD/2WTjdbMm25cMc+Nj4MpElAKdvjneViv8NIfyBnXcXi4zU89mh377
 2+rcJTO/Hy87NN1G2LEOKr9zFgvm+CLeoGi2Ay8NyrB3q5+ptE3ziYIPJmq84qFw1SUy4Nq+VF4yc
 OqpPZn7Ij1ga5IAOHNRi5MbyRFROYOeaOj7sz7S7roHQwdP3Q1qTwTOv30hlOSe6uz4PTBiEIKBQH
 ep0k17xg==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-dtR4PpUmwrXRavl73JQr"
User-Agent: Evolution 3.56.1-1+deb13u1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Nov 2025 13:30:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65993


--=-dtR4PpUmwrXRavl73JQr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2025-11-03 at 07:27 -0500, Robert P. J. Day wrote:
>   given that the NVD is run out of NIST, https://nvd.nist.gov/, are
> there any contingency plans for the trump administration simply
> defunding all of NIST? it seems like exactly the sort of thing they
> would do.

I was reading up on this a couple of weeks ago.

There was an independent CVE Foundation launched in April [1] in response t=
o
worries about the funding of MITRE. I'm unsure what progress they have made
since MITRE funding was re-instated.

There was some response within OpenSSF [2], you may want to check in with t=
hem
to see what their current status is.

There's also the EU Vulnerability Database (EUVD) [3].

So, I think we're moving away from having a single point of failure, but li=
ke
all collaborative projects - more resources are probably welcome!

[1]: https://www.thecvefoundation.org/newsroom/posts/2025-04-16-launch
[2]: https://openssf.org/blog/2025/04/23/vulnerability-enumeration-conundru=
m-an-open-source-perspective-on-cve-and-cwe/
[3]: https://euvd.enisa.europa.eu

Cheers,

--=20
Paul Barker

--=-dtR4PpUmwrXRavl73JQr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaQiuShEccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0bmaxAPwPi4qFLU5eicNLLESjbSR7rKflLtY73p92
P3N2fotAbQEA8SS4LY3p5wpzNJIWMO5DK/3SDJNYKsAOGee6Ojo3qA4=
=pW8A
-----END PGP SIGNATURE-----

--=-dtR4PpUmwrXRavl73JQr--

