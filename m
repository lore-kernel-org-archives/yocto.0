Return-Path: <paul@pbarker.dev>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D12EA4FBF
	for <webhook@archiver.kernel.org>; Mon, 23 Feb 2026 13:46:25 +0000 (UTC)
Received: from fout-b4-smtp.messagingengine.com (fout-b4-smtp.messagingengine.com [202.12.124.147])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.35262.1771854375400049390
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Feb 2026 05:46:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@pbarker.dev header.s=fm2 header.b=dec4kTup;
 dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=L1zBVKFs;
 spf=pass (domain: pbarker.dev, ip: 202.12.124.147, mailfrom: paul@pbarker.dev)
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfout.stl.internal (Postfix) with ESMTP id 9F5E41D0018B;
	Mon, 23 Feb 2026 08:46:14 -0500 (EST)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-02.internal (MEProxy); Mon, 23 Feb 2026 08:46:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pbarker.dev; h=
	cc:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1771854374; x=1771940774; bh=+WZQyjWAKf
	ISWRLyMOfH8MwkqhcYmIycrDZJkviskQY=; b=dec4kTupbz8N2Qu4DYIzUsPnfM
	2Ei6da50+g3Yvz9EV3qk6mNhrf2iHQUTnMcZK7Uza2bfEFUyDnsckYx463BdQmt0
	3FsQsgzHvWyyl4uWSDyzKajzphuN0y5JhXy5hRIdFDlgJG67aVMpZwkm9sMz7iDr
	u5mVNzusuBf4Vd8YDlewUFvIc4MBFqGc62/rUL0PGJ8+eHujsPhswehAEhx58pn7
	wy3dTI3LiDU2upiGOMO6EkaSjB+o/mxfg08/JFz/kZ2onoGlQyr6TFfD+jwZ+CYv
	euE5bkW2ynBNM8EBtd68IlzrKeudplQf1MnudbNBH7is6jdULJnBjufMobIA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1771854374; x=1771940774; bh=+WZQyjWAKfISWRLyMOfH8MwkqhcYmIycrDZ
	JkviskQY=; b=L1zBVKFsULkZrR6gIv0B/PRCS5GuijGXzSuztslOgz3BbloEGHZ
	xNn+x/XIUxxppXmxZhKjoyACMk8fUYyuAJdLm4mhtbd7XfJAJF0C9WjgkQQwc68i
	gvuyCTJe2x7L13t8qCZG+KGUG5Uqu/PUzdw1QXQt9i0jAMb3g+EuJ27mMkoL98F5
	izwlW8ROAoqWrvUCOg20MlaIJ9tYSsfw3kKMxFGjH0xbEowln1SruuxhdnKRViaE
	f6OCjmO7S4uvFA+0FB7pyiD1SK6NGQlo0t6utJNaRcsVOshvSvc1h6aVebvI3Qoa
	XeZ+87VMsI2EI3tBBbLQB1He2qCB78w5P9w==
X-ME-Sender: <xms:JlqcaVQ8XhiPE_dT0nnHTjW8Gs-OE7tjwPXq2ERJS4YqZK62oUgPKg>
    <xme:JlqcaWirjWjgL9n3kRhkXObk9Cyjs8dSvyBuTK_sclYg8coSNVbZx3N8sr_j1K6vC
    pEs2rVYSW7E0rupAvEAn_lGhilylhRVW5cbKVDtOtrb-rYjIJ7-hsg>
X-ME-Received: <xmr:Jlqcad7mkmr_Hmw8XKRHZuTnHGH8-R34D1nippglGMLGqQdCV-TqXpKAiHV-tRlXgQDdjjSa4lvDkr_vOBUm1z-4MJRGmSYtNkg9qv_fmZhK>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefgedrtddtgddvfeejfeekucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepkffuhffvveffjghftggfggesghdtreertderjeenucfhrhhomheprfgruhhluceu
    rghrkhgvrhcuoehprghulhesphgsrghrkhgvrhdruggvvheqnecuggftrfgrthhtvghrnh
    ephfekhfeugfelfeeludellefhkeetvdffiedttdeuueekhfeiudeivdefueehuddtnecu
    ffhomhgrihhnpehophgvnhgvmhgsvgguuggvugdrohhrghenucevlhhushhtvghrufhiii
    gvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprghulhesphgsrghrkhgvrhdruggv
    vhdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoheprg
    hlvgigrdhkrghnrghvihhnsehgmhgrihhlrdgtohhmpdhrtghpthhtohephihotghtohes
    lhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdhrtghpthhtohepohhpvghnvg
    hmsggvugguvgguqdgrrhgthhhithgvtghtuhhrvgeslhhishhtshdrohhpvghnvghmsggv
    ugguvggurdhorhhg
X-ME-Proxy: <xmx:JlqcabBBMb8HC3PztbXsLnN8zwmu7ixHOmMMo3LmQz7NLGnEhF-y3g>
    <xmx:JlqcacYhEEWgdW_J_dX5TnWNb0O8VcZeebbD7GLKa7Db0v4ddaCRCg>
    <xmx:JlqcaeYF7R971KZA755r9v9n1NyyfJXkPLVUqmB7BTQYtF2IFb1sPA>
    <xmx:Jlqcab80Kt34EAwI08sBV0q-4Gt31tH2e7TVuW1c5DcWOHRoURyXPw>
    <xmx:Jlqcadt0CuJb6LxQm37aNbywKltF3IxFNu4_7QU6OR4wpJ4c5kuudz2S>
Feedback-ID: i51494658:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 23 Feb 2026 08:46:13 -0500 (EST)
Message-ID: <210d531fe4cd2eaead6ce5b6dce0aa9e498d0e5e.camel@pbarker.dev>
Subject: Re: [Openembedded-architecture] RFQ: Yocto Project Reference
 Containers
From: Paul Barker <paul@pbarker.dev>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org, 
	openembedded-architecture@lists.openembedded.org
Date: Mon, 23 Feb 2026 13:46:09 +0000
In-Reply-To: <CANNYZj9ZpAVVKKu_QvhHq=W-DVnzZ067jHW64zS2rRBCwm+vjw@mail.gmail.com>
References: <8286fd3b-1b05-47bf-95e4-0b9f0f5411cb@app.fastmail.com>
	 <CANNYZj9ZpAVVKKu_QvhHq=W-DVnzZ067jHW64zS2rRBCwm+vjw@mail.gmail.com>
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
 EFCwkIBwIGFQoJCAsCBBYCAwECHgECF4ACGQEWIQSYsqrBAKw/grtdVGd0l1yBt+ZrrAUCaWoNAgU
 JCxiQFgAKCRB0l1yBt+ZrrLhdD/sH+qTaxCDUg47eW329yJWCDZmO+iuYzNSyHMs1x0DHKNIQQ8zN
 pA2S/de4jElQuPHjw/IS8B3VmM62Wuq5vHuxNlFv9IMwrwqi6zhCDui8+nCN/AQGGXousJI/SeZjm
 Y5gS9cqh4vNY+huqEEfdTFXIfTBRkmnvYozSO2uDB3EMuiWgBlw2uLrtmkvPLn/m/GvEouLNox6wv
 tcJcIbL59a0+3jv/m7pnWoZXOkWmKQnfFWikqjuKCISNU0gzBSL4UOj8gtQ2z+vu7ffi29b6SV5IL
 m1yzdbkigEn4HL44lz3N+oHZ3wWsRqqeyGSX5fCfx3tGWg6scZQrpsjT5yq+LiffiXVNpjeJ9KzQw
 0cbAZ/9uhk1sWBroP+/gMhsWjlbFYXVlRvkNKGPI22eZtOEz4jF6OrOONyOoY3i26niJUyIgdBpca
 H0hKUSVQ8VnG7qVTNrQk9BbeoSszqRwViN7lfyVtK9b1TCFuGewOETGn0TPvSzruYCtD3CLm7mjuX
 AMBpIGoRUiCFVmF1hlOgqDyH4F6zRTHhKLpfmNzfQcg+Uo147Q2IHpoh0mJsL4FEZEI8hFyecX1Pq
 7HqnvxGD2OhCof1Z6LDxptX0wbgocnYFNxN5S1owcXZUQOFnzYLlLugrcEjlGCm4Gn7k4SiFERSBj
 UFsQgIhw/7lVVn4o4rQjUGF1bCBCYXJrZXIgPHBhdWxAcGF1bGJhcmtlci5tZS51az6JAlQEEwEIA
 D4CGwEFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AWIQSYsqrBAKw/grtdVGd0l1yBt+ZrrAUCaWoNAw
 UJCxiQFgAKCRB0l1yBt+ZrrHy+EADNMt+ewz8H7BUKpEMMhpaA1VxyXO5IqlKXS0gElMgHYXl7L7C
 0/qLfRH96vwVD33zM+f0Vl9aWWkom/k8s42tLyPvX7D5zTrj3r5muJ+d9dXWGwBFXxXlE9YjSP26K
 bYfRusmRHbbEPlLPSnrr9KYS2FGVD6ViRNhhVguflgPv2i18+fNBE3YyByfNCiQgO/SgaSdh172Ql
 tuYE1Chk6FD45tCUv3dI9lO2PlVwrciiVYvIv/jiTDEwZOISOClTE/Ha18pxDJfLhS8QQnLWuBNX6
 HUkLi78fVmVYbcWIkTuSHjfNoGTMaFijMg9Wl6poFrY++Pl0S40681zEIrwZhW5pKoqXoaElt29Yf
 OwVo6BIsSOLEqKiWsdP7PJTaJYU1ovnshBcOmuXMgc13AjQ4AhEGqI1TaEJ/E1jEDDyTQFeWgrfew
 YaWdqpgiDmRMTj/tIGVj9iy7qZQICUUtlfm0QK6w6M7qq0GdO2o+S3uVF6y2AxQo8l9LSHiW9O35I
 juR37zeqv72puYyOteVYJsJaw999HUmhXc/X/J9FQFw8twxPKDLLu+w8MqDo9bhllzR93Zy/OShuG
 yGybcX3DKO2R+AQ90tXLbxKmHLtrnG/zyDPhLv/LGD480v5hEoT+IS0u9wPD2vP5q36a5DtzqXA/7
 t9PCamLoCvZLleg7GY7QbUGF1bCBCYXJrZXIgPHBhdWxAcGJya3IudWs+iQJeBDABCgBIFiEEmLKq
 wQCsP4K7XVRndJdcgbfma6wFAmlqDRwqHSBwYnJrci51ayBkb21haW4gd2lsbCBiZSBhbGxvd2VkI
 HRvIGxhcHNlAAoJEHSXXIG35muspk0P/1G08N6zGSdw2p8+8f/1HhaYEb9KdQHT1JmQfZUrIHIpD2
 ELNb91Z6Pz197d/igGpox1dzYOwE0WolWo44ZHX2yw+p9V+HJAUKRe0SPc1iNLkTzaAZ7oYJ1DnFh
 aaqZi4VtKKabKeorJjcDvl2apMwT0agRuDklU97n++ZUuXIEo1Z9uRqEvXz0iTSY7wPxwfoVOQsgf
 dN1cBLd9OpoOtJRdDJzQUYqjNoQi+5M6KRfBxPLZkmYb4uCGlp1H4AV50eC61j84LBg1ItvU2u+Fx
 X2JB7lHTswubprD2ZsSwp1VziU6pUj3vtslMWKpBGslpLtnaO561dihGyElayMd4VFg7VR/TsglJv
 A10EDs2DMhoYPfRQWvwlr5+jPP6s9H8KSTCGFvQt438rP/gk0lcEZUJK0iE2/yq5gQfaCNI5FLN7C
 q8LVr00oS4doXfmFFxMq6z1rs5SXZorWssjG7v5DILnPxLqYloQK/ebM5Ixbzm0Lq/8vWL7sw7yOH
 JVYCHCApGzKNii6rYyHdi0K8UwvpD++GCWLyvbgP/H3l5FqL63gAN0Rw1CO5r22+SmG7aOmekJH3N
 ChZPI3NMLnKZPJC8ZQZ4S8yb5oA3rqTA2DMODvsrEVlaB2cQ6IWHSa/mvBwA8Ias3771cp4fZS7W7
 LUewj8JVy0aJsGTwI4invl
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-EfWYkljUdBYA60zbrlSr"
User-Agent: Evolution 3.52.3-0ubuntu1.1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 23 Feb 2026 13:46:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66271


--=-EfWYkljUdBYA60zbrlSr
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2026-02-23 at 13:39 +0100, Alexander Kanavin wrote:
> On Mon, 23 Feb 2026 at 13:10, Paul Barker via lists.openembedded.org
> <paul=3Dpbarker.dev@lists.openembedded.org> wrote:
> > New recipes must be defined for an initial set of reference container i=
mages, using the `image-oci` bbclass in meta-virtualization. The initial se=
t should focus on software which is commonly deployed via containers, such =
as:
> >=20
> > A minimal image (based on core-image-minimal)
> > A Python 3 base image
> > A sample web application written in Python
> > A PostgreSQL database server
> > A multi-service container using systemd to manage services
> >=20
> > The above list is not intended to be prescriptive - we appreciate input=
 on appropriate reference container images. The final list of approximately=
 3-5 reference container images will be agreed with the Yocto Project TSC.
>=20
> An image containing bitbake-setup and everything else (e.g.
> buildtools-extended) needed to set up and run yocto builds?

I think that would be a logical next step in the future. With the
reference containers in this RFQ though, we want to focus on "cloud" use
cases to show that we can do more than just embedded. The goal is to
reach a wider audience and generate new interest.

Best regards,

--=20
Paul Barker



--=-EfWYkljUdBYA60zbrlSr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iIcEABYKAC8WIQSzjPXf5Y1BDWhU2iCrY1Tsnbr0bgUCaZxaIREccGF1bEBwYmFy
a2VyLmRldgAKCRCrY1Tsnbr0biIiAP4/m8RkEsnJ+Bv8K3VjLTWvZvOAHv+WyPsu
oIOZepXyDwEAnFb612CBtoeiDLlRdaEVGmD1kPmq9S3C+SrvXib/DwA=
=2an5
-----END PGP SIGNATURE-----

--=-EfWYkljUdBYA60zbrlSr--

