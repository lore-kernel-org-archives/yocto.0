Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29D60E00FE3; Thu, 28 Jul 2016 18:36:45 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95693E00FDE
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:36:42 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id h186so4523329pfg.2
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 18:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=D6m16I3vGbRlUIZrvsZNTfFjxFMdRyCyXxtgTjDvB04=;
	b=ABIloWiguumdkS1R8ySDRDR51ftMXbFPeBIMXWB9n4NDBZqWHvW6+O01oMSShk29n5
	/n5uJm21gO+RWBx8g6NlPSaZlnwzFdLm7hj5iJ0JuqV0Kr5YAAKK9GGDAVFNLvVn7iyP
	zmPLeJnB+tF3dCAPRTXbsvVcDW8rFSGGy44AwkAeZRz3qVX5rFK8CNgInr7o5dAddBJO
	kpxH0Cky2I+O7RNKE4j/hA/CneaxYQBSJgqHvMICAX6LVi2JrL/rKqtxqZB+3E0fUioH
	5RSuch0OkaYsqHTXPShK9ISFDd6g3D0tW6tk1xizH0IZNSed3Oj6vNugVA34AibRgT+0
	BoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=D6m16I3vGbRlUIZrvsZNTfFjxFMdRyCyXxtgTjDvB04=;
	b=nIXUkUOrebvgtWgngWUt7h6zVBx7zhmOCNOj0DyRsKypzGXic6fMtEjsRpnjG0gkli
	WJW6TIKd2knOl0ksimchKd2EtMrNGrwlC+sFY1J/AYiUWVmED2J4XzzhiZfSjiREVPWG
	zGfMMdq/uPFz46bXjeChjrOlsDcSgZkKY32kt6mA2ecV0lBzz70dUNjMB6oqJM6/N6s6
	PrRwcDgcTxoI3AfrrtQjIxMKl9WubwBKj40rTQ62lAY1tcHaJsAPBgObhA/OTxazuNJX
	9nSRxM5nytCOXVMpEo88sG1TgXO/rzjqGfoiPpSKGV0DSKRoM4guJ/nfJtUaJNprVyGV
	znYA==
X-Gm-Message-State: AEkoouuSJ41JqWoCz5LzYZGr6uaMf9SMb6w8wLRKWwOhRiFqH5yo8jatCHUJR4UaoNIYpw==
X-Received: by 10.98.79.27 with SMTP id d27mr64581416pfb.127.1469756202519;
	Thu, 28 Jul 2016 18:36:42 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:5170:19b0:da08:b7e9?
	([2601:646:8882:b8c:5170:19b0:da08:b7e9])
	by smtp.gmail.com with ESMTPSA id
	tm1sm19979213pac.23.2016.07.28.18.36.41
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 18:36:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <57924CB6.9000807@igalia.com>
Date: Thu, 28 Jul 2016 18:36:41 -0700
Message-Id: <95A97B51-03A1-46F2-8BBB-C1F9823D410F@gmail.com>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
	<57924CB6.9000807@igalia.com>
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
X-List-Received-Date: Fri, 29 Jul 2016 01:36:45 -0000
X-Groupsio-MsgNum: 31283
Content-Type: multipart/signed;
	boundary="Apple-Mail=_C4A5C98A-8F3C-4626-BC4F-D21DFA8E5D79";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_C4A5C98A-8F3C-4626-BC4F-D21DFA8E5D79
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=windows-1252


> On Jul 22, 2016, at 9:41 AM, Carlos Alberto Lopez Perez =
<clopez@igalia.com> wrote:
>=20
> On 21/07/16 14:32, Herve Jourdain wrote:
>> v4 series:
>> a. rebased
>> b. Upstream-Status added to the patch to the VC4 driver (needed only =
for kernel 4.4, accepted upstream in 4.7)
>>=20
>> v3 series:
>> a. patch rebased
>> b. new revision of kernel, to get a version of the VC4 graphics =
driver that handles render nodes
>> c. patch to the VC4 driver to enable proper working of the render =
nodes (need to add authorization for IOCTLs)
>>=20
>> v2 series:
>> a. Fix the 4.4.10 kernel revision
>> b. Effectively add vc4-kms-v3d overlay to the list of overlays to =
build (forgotten previously)
>> c. Make the parameter to the v4c-kms-v3d overlay configurable
>> d. Add default values for the cma parameter to the v4c-kms-v3d =
overlay, depending on the board (and the memory it has)
>>=20
>> This patch series enables the support for the VC4 graphics driver =
from Eric Anholt.
>> There was a previous patch series by Javier Martinez Canillas, but it =
required use of a different kernel.
>> VC4 is now supported in the raspberrypi official kernel, at least for =
4.4.9+.
>> The support in 4.1 exists, but it is NOT STABLE, so it has been =
deemed unreasonable to support VC4 with 4.1 kernels.
>>=20
>> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 =
and later.
>>=20
>> This patch series proposes to support VC4 by only adding =
'vc4graphics' to MACHINE_FEATURES, for raspberrypi. If this is set, it =
will trigger all the necessary configuration/changes to use the VC4 =
driver, including mesa/wayland/weston currently, and adding the overlay =
required.
>> In order for this series to work, some previous patches are needed =
(support for .dtbo, and fix of the mesa packaging when there is no DRI =
driver).
>> The memory reserved for the VC4 driver has default values depending =
on the version of the board used, but it can be configured by setting =
VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', =
'cma-128', 'cma-96', 'cma-64').
>> 'cma-256' is the recommended value, but it might not be possible on =
boards with 512MB or DRAM, or less...
>> 'cma-64' is known to not being able to support FHD/1080p.
>>=20
>> It was tested with wayland/weston, without the support for X11.
>>=20
>=20
>=20
> I have a follow-up patch adding support for X11 that I will send once
> this is merged.
>=20

Can you send the patch to the list please.

--Apple-Mail=_C4A5C98A-8F3C-4626-BC4F-D21DFA8E5D79
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleasykACgkQuwUzVZGdMxRscwCfWtRiUdJ3inU1dQNJLPxLErVw
G9sAnixzYrJ+9is4AXhw5xYHFkdBefA2
=MW35
-----END PGP SIGNATURE-----

--Apple-Mail=_C4A5C98A-8F3C-4626-BC4F-D21DFA8E5D79--
