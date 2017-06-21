Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8A23E00B83; Wed, 21 Jun 2017 07:45:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f171.google.com (mail-yw0-f171.google.com
	[209.85.161.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7D3EE00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:45:52 -0700 (PDT)
Received: by mail-yw0-f171.google.com with SMTP id l75so65287413ywc.3
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=auRfN1A5RwnK7kbblSN1CfeG4k/NpbytURQwpcUrito=;
	b=mVYrvengoHq7xHptsbm5CAgOjDuOWIi5kbt5ypANMzDigcgiHQRbduD/c13ficy6bo
	L4t5zGGj6F0IFH1d0Mvw3JiUogMLottqGLhGiZnaI6nUAv2XHHWNLeS74DSe1yPzRaW2
	PxeHlYTNVP9j23IiZw5QfvOkX0ST4Gpydst34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=auRfN1A5RwnK7kbblSN1CfeG4k/NpbytURQwpcUrito=;
	b=QAr0JQW1v+byseEIiQDsTGvMhe4Kl4ZP4Lel18J0Sl6ngJqREB4AUfQfvS8aTVNBE+
	j3e4GrtprcfWytEQ3yNzT7e3XGwFv1V7AOpfvM9E4oJcEahair7fKBCwbcDRvo9WGhGN
	pPuyXaJqy1hmlcWR3qyw85eDnZC5e5bt4n6iNmHkfI7OGCla8Ilq4848Px0w6v0/uEIS
	9eMBn6aUzyKeLX83wf2UBH3zLn1+OswP/tCBcItD48kmHgcbY0bVu9b7V8FSdU/LAuAs
	kA5Gjk+zXIwrvGFOk+Pn7HOCOZSC4IDhVhW2PV3vNJ7iI74QSP9w8N14pcimXz5lGWij
	K8rg==
X-Gm-Message-State: AKS2vOyQcYkxmnfhWKa2ffFhTa3iNDPqzsXkHanID891iXkeM88NXUHA
	3LjPk58Hb4Z1ySCWZhM0XA==
X-Received: by 10.129.166.201 with SMTP id d192mr30306041ywh.108.1498056351700;
	Wed, 21 Jun 2017 07:45:51 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	j16sm6705267ywg.31.2017.06.21.07.45.50
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 21 Jun 2017 07:45:51 -0700 (PDT)
Date: Wed, 21 Jun 2017 10:46:23 -0400
From: Tom Rini <trini@konsulko.com>
To: Anders Montonen <Anders.Montonen@iki.fi>
Message-ID: <20170621144623.GH27196@bill-the-cat>
References: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.11.1706201553410.27988@lakka.kapsi.fi>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: AppArmor
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
X-List-Received-Date: Wed, 21 Jun 2017 14:45:54 -0000
X-Groupsio-MsgNum: 36712
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YrlhzR9YrZtruaFS"
Content-Disposition: inline

--YrlhzR9YrZtruaFS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 20, 2017 at 04:19:24PM +0300, Anders Montonen wrote:

> Hi,
>=20
> Has anyone tried using AppArmor with Yocto? The recipe in the
> meta-security layer is broken, and when fixed so it actually builds,
> it turns out the installed init script relies on functions not found
> in Yocto's version of LSB.

The biggest problem I've found thus far with AppArmor was needing to do
some tweaks (which I've posted) so that the utilities have all of the
required python/perl bindings.  I do need to poke things harder however.

--=20
Tom

--YrlhzR9YrZtruaFS
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJZSoa/AAoJEIf59jXTHXZSj0gP/RXsuwzIYWSUlzJY0A04LuOG
oHlzXZlTlS/jtE1K+glpCb/1BcKFumpRy4ZoH0iVLdwL9eXS04p0gvrB2jeuXlYa
X4rdWPQfIh0FFh8TBDKaP3ZeSaF+EByJwfOmZyF9bnHaCcvbVG0EVrECW02IG8Hp
ZH1L3ReplqCuxu6FejI6Y4Sr0h387d12k3Ci5+KVTcwsm+vxNLS+jCF1zgK3ewpF
2CfsCtHJzrxRLEasDAEKhdFixkWw8xvwj/dcuD296ITdjDx0Ct+o3WvedpzeygY2
085NJ8umcSM15U20wXnuhKYdtpG0Y7E1u/7vCC0uQWDCCmR7ua8hX9zPWYDlQLUK
FChNrV3ej1E6FTAnz/Wq4PQreupVVkEws1wPKAh3He5nlZSkS80wPjsBCjylQE9B
N0xDx+UceW0nZvWpX9jmHyFeCaBf1Tx+wayLhTScYskSYFPTxxt8BJwERd+vEh/9
nLdIhXIFR90jpld0rrnX4SMPOirxo6vXLl1Uxl0yasuJD3NmQ3PUjWturpOtxZhy
kyupMs3eESioizN8sm+yviL4QGomkSKns5AsUuPPGC00gvLt+8Zd5FBe0Ri/Tzxm
jAP9w3152e2/xSRUiYyNV5kZaWyp+DPWWHncqG7UcZKAYJfXDLfBCEdVik42DxbK
y8l5AdjE5zElycgYt1Tn
=pYar
-----END PGP SIGNATURE-----

--YrlhzR9YrZtruaFS--
