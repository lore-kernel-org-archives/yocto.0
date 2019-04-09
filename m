Return-Path: <d.s.e@sordidmusic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AF9DE00B5F; Tue,  9 Apr 2019 03:03:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.rpgmaster.net (mail.rpgmaster.net [78.46.222.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89281E00AC5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:03:36 -0700 (PDT)
Received: from phoenix.invalid (unknown [46.183.103.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (No client certificate requested)
	by mail.rpgmaster.net (Postfix) with ESMTPSA id 6BFC720BB1;
	Tue,  9 Apr 2019 12:03:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sordidmusic.com;
	s=rpgmaster; t=1554804215;
	bh=EKG8vizLMIhFm5W58pEWGkJVCl1ikvFGfUh4PKH/w7k=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=okVb+lE7bilRXdYGDy0b8pe/+tpF2zbZ/eCrupYc7lPGd7qt2IOLw1TM9Byu7phoO
	+gyR2oBFUo20Xl5tmgiVR1juwEGrAG2uSLSu6i/y1zGBwUAoJiBPkJzmjZ8UKtfYyg
	eDutGpayJdg4QtPo+bu3LPod6pkNDMo6DTn7kad8=
Date: Tue, 9 Apr 2019 12:03:29 +0200
From: Guenther Meyer <d.s.e@sordidmusic.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190409120329.0c68afca@phoenix.invalid>
In-Reply-To: <CAJTo0LY2nx8PUBywRwBtFv2otHq5OKPBYv9fpuvpftnCe0Zp7w@mail.gmail.com>
References: <20190404115301.1820604a@phoenix.invalid>
	<CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
	<20190409094450.6a180445@phoenix.invalid>
	<CAJTo0LY2nx8PUBywRwBtFv2otHq5OKPBYv9fpuvpftnCe0Zp7w@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Metadata is missing in some Python packages
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
X-List-Received-Date: Tue, 09 Apr 2019 10:03:37 -0000
X-Groupsio-MsgNum: 44724
Content-Type: multipart/signed; boundary="Sig_/FBMCQiz7+lLsxjgFqkqefYA";
	protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/FBMCQiz7+lLsxjgFqkqefYA
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 9 Apr 2019 10:55:38 +0100
"Burton, Ross" <ross.burton@intel.com> wrote:

> Specifically for twisted, do you mean these files:
>=20
> python3-twisted-core:
>         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/PK=
G-INFO
>         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/SO=
URCES.txt
>         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/de=
pendency_links.txt
>         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/en=
try_points.txt
>         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/no=
t-zip-safe
>         /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/re=
quires.txt

yes, exactly.


--=20
Summer-Hack-Session 2.8
http://session.pestilenz.org/session2/


--Sig_/FBMCQiz7+lLsxjgFqkqefYA
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzA/1q58SJcycb7/KVdabz09aRfwFAlysbfEACgkQVdabz09a
RfyOzA/+LFNJFExpKNpGMF7M+IZ6M3cSiSxM4F7DhPRPaZsROzxWmwPAuM3OZ066
dm74nbSpd6Ran/awI6xjuTcNjwUAVKfIHEju+GaSDyP8L4LgQjYLp092VGcgOv1w
8j93XH5NZBNhal8lSDGxuLl5rKFLhNuE9QiDAw36+hmAtIKoItoMwbCtVENKOH4U
9aZ8Q3rcG+sI6NQbW0NpjciE4JFU6ALL+wq/7OL845mzKvKxEW3iKxvcdpaEtOye
DpHrOXUOWNV6o8q2WuZlBw8DwPu3BiT8OuaN6GVjj2JOem5A33MxWvxedsoGvpqV
vkTDe73/vnMSCYfauyaabnH8spTBNXhlZWZFrOqhcNiI5UUhivaWJCMknlqaf8+9
dfQtvjNxbtSdE/SVBIm2GDHHiq92lkXe0DzaBrloFP2yKT7WMhghyVJwOUdUwwS4
ICXuuCcbvsD3+thL9ahYam4vkSWbAh/6SfHkXEp4zNeLfWPqRkOSrT6tO3BCv4nE
JM1jO0M5qFaEfKglGYKA1VlGxYWSJJl3VSOb2wen4MVWPiCVCTzSQjXA81LfKOAE
FlS11KGbzeiTchHa5CiZ2W0CsGhdMq+3GTR8TeH6bAnegVe6pIXjfQ9cdcZF7awy
LFcsE9DLOY/j7eG+LnWT/fb9m8PuCzR8KbnIgPylVxqYMhxBQnQ=
=62mz
-----END PGP SIGNATURE-----

--Sig_/FBMCQiz7+lLsxjgFqkqefYA--
