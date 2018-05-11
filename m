Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B339E0140D; Fri, 11 May 2018 10:28:30 -0700 (PDT)
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
	*      [209.85.160.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f68.google.com (mail-pl0-f68.google.com
	[209.85.160.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA9E2E013EB
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 10:28:29 -0700 (PDT)
Received: by mail-pl0-f68.google.com with SMTP id u6-v6so3653419pls.9
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 10:28:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=JbUnPakvkFiysyJWbOb4OQHvvbM024zv6cxrhFmc+JQ=;
	b=IX12Y8sDyZKbL9IK3KxMVv7JsZc+QK4ztfPp4pYmb+447t8L3ZIxjJO5mLV91UGsiy
	UoVCUOu5Mt7nE0IRJaaofTCSvL8LmEmc8zhqRYV4oNcMR8i3To5ZNokTmvnWdPwPH5SD
	5ZpRbNUzKIZdtHlQVrFi4taDNpEnCP9Oi3hOY4K3/Xryl3OFXMch7PrT059JhzIIVmBw
	mHyemDqV2G+OAinsBikQeeZTQ+OdNTVH3la/gubuNnc5N7qeOYLP5WK6MweRM6ry0dSM
	SlsTX1lQYb9l+/y50VfsRf5JpiC4M8geP1SWh869iTUX7pXiT/WVe7O8Qdr29nHrb+gG
	YzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=JbUnPakvkFiysyJWbOb4OQHvvbM024zv6cxrhFmc+JQ=;
	b=khZ2rLJlWww2LqwT0uSaRlTtCmqJhIFKoaYfpt0hhR8+11tjb4Bf3FbY/0fv8uY3dd
	+3bZgZ71AKFaWhxWjRHoSqRvlCE72toCQg1jevcp7/dmz/P+xqDbiiIPRvkrOSr90jvf
	3A1UPZbN6e3Tk6cm/CjkSa9+udeAXpEkN9fl+KHUpbF6iGhjBmx/WLwf/dViFdqjMchg
	r0RTvQSRnWVtpTlgIBMj2QLEzpnmXQgTUDWDh+k1oskhR9LXBk0XMI0vewGOvPChiCvh
	PAkNotS/NxZEqeOiyoPc27dHdpH43Nfgv5MBCscrCyhjVRPmfmTJh6E+DlQ9WiitT/Mm
	sScA==
X-Gm-Message-State: ALKqPwdDsTtMndeWcRxK3154NVLRwS8MssPRDrjGuhz7a7pR1f1cf2ri
	7vmxdugay3K6KrKN+DqjB4BHDakj
X-Google-Smtp-Source: AB8JxZqFjnzI1lr/Fll5TB4AjUEkWMbwA/NaskB8SkdFRQkpHEw2z+FdiDCWezabxay+r5PxstXCig==
X-Received: by 2002:a17:902:e8:: with SMTP id
	a95-v6mr6380799pla.274.1526059708634; 
	Fri, 11 May 2018 10:28:28 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-63-100.sd.sd.cox.net.
	[68.7.63.100]) by smtp.gmail.com with ESMTPSA id
	i127-v6sm6863527pfc.154.2018.05.11.10.28.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 May 2018 10:28:28 -0700 (PDT)
To: akuster808 <akuster808@gmail.com>, "akuster@mvista" <akuster@mvista.com>, 
	yocto@yoctoproject.org
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
	<43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
From: Rudolf J Streif <rudolf.streif@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=rudolf.streif@gmail.com; prefer-encrypt=mutual; keydata=
	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
	vN0JVJf8p4e3anmLkFyASoeAKUumyGnf
Message-ID: <9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
Date: Fri, 11 May 2018 10:28:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
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
X-List-Received-Date: Fri, 11 May 2018 17:28:30 -0000
X-Groupsio-MsgNum: 41121
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="Hoy8CGwSJK4Lxy0ykZtHAmrJjfVrpVTLr"

--Hoy8CGwSJK4Lxy0ykZtHAmrJjfVrpVTLr
Content-Type: multipart/mixed; boundary="3v40fM83CyYKjW6V3HzHkZcQJtQoOSo15";
 protected-headers="v1"
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: akuster808 <akuster808@gmail.com>, "akuster@mvista" <akuster@mvista.com>,
 yocto@yoctoproject.org
Message-ID: <9c97d64c-07a4-7499-4a70-611d659d26d4@gmail.com>
Subject: Re: [yocto] [meta-selinux][PATCH] libselinux: python-importlib is now
 part of python*-core
References: <1523758104-25257-1-git-send-email-akuster@mvista.com>
 <43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>
In-Reply-To: <43b42f5a-57dd-2c82-92cc-ea2d742870b8@gmail.com>

--3v40fM83CyYKjW6V3HzHkZcQJtQoOSo15
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Echoing this: may I ask what the current maintenance status of
meta-selinux is. It appears that no updates have been made for more than
9 months. This is of course not to blame anybody but out of concern that
the layer is falling behind even more and to find a solution.

In addition to Armin's patches there are two patches submitted by Kai
Kang at Windriver:

* https://lists.yoctoproject.org/pipermail/yocto/2018-February/039917.htm=
l
* https://lists.yoctoproject.org/pipermail/yocto/2018-February/039918.htm=
l

Curiously enough, the second patch has been applied to master but not
the first one.


There is also an issue with building SELinux with systemd. The layer
enables auditing:

meta-selinux/classes/enable-audit.bbclass:PACKAGECONFIG[audit] =3D
"--enable-audit,--disable-audit,audit,"
meta-selinux/recipes-core/systemd/systemd_%.bbappend:inherit
${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'enable-audit', '', d)=
}

Apparently the --enable-audit switch is passed to meson when running the
configure task, which meson does not appreciate. I am not that familiar
with the audit feature nor with meson, so I currently have no idea on
how to fix this the right way.


Further, refpolicy_git does not build anymore as the YP specific patches
do not apply anymore since upstream changed.


Thanks,
Rudi



On 05/07/2018 10:20 AM, akuster808 wrote:
>
> On 04/14/2018 07:08 PM, Armin Kuster wrote:
>> Missing or unbuildable dependency chain was: ['meta-world-pkgdata', 'r=
estorecond', 'libselinux', 'python-importlib']
>>
>> Signed-off-by: Armin Kuster <akuster@mvista.com>
> ping
>> ---
>>  recipes-security/selinux/libselinux.inc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/selinux/libselinux.inc b/recipes-securit=
y/selinux/libselinux.inc
>> index bd5ce8d..51d0875 100644
>> --- a/recipes-security/selinux/libselinux.inc
>> +++ b/recipes-security/selinux/libselinux.inc
>> @@ -8,7 +8,7 @@ LICENSE =3D "PD"
>>  inherit lib_package pythonnative
>> =20
>>  DEPENDS +=3D "libsepol python libpcre swig-native"
>> -RDEPENDS_${PN}-python +=3D "python-importlib"
>> +RDEPENDS_${PN}-python +=3D "python-core"
>> =20
>>  PACKAGES +=3D "${PN}-python"
>>  FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site-pa=
ckages/*"

--=20
Rudolf J Streif



--3v40fM83CyYKjW6V3HzHkZcQJtQoOSo15--

--Hoy8CGwSJK4Lxy0ykZtHAmrJjfVrpVTLr
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEE8vjdGrpkXMshtfshnUrlOPRyboFAlr10rsACgkQhnUrlOPR
ybrLqQgAgG69qTSHo4D1ldXve8kybPa658/v1VdTf/V/Kt5Bu9Po/Bcs+Mfv/oo/
ZLfQqwx4vB/SY05uVa0gU8HZvgcNhdiVJuSCFssTLwqRpd1uWHpm2zZK84J+39g5
xzJJND5d+pNHnCAvS7HLOUID9DgGUWsKJwWmyZIDgOd+wfN5p+0ErUFWY2XrcL2A
ixc6BLq9R6JNslTuWOMonD1VdYoilwnPDV0Pveqww+C/9vcTgZye+qNBREp6y3C4
eBb5ks1pWd0wP50R8FU6mW9IOMqFkg3CXW9l2zFF6Lsl0Rc5pxwQWYZL109Hvlio
Vh9KoPtN2KPhQBXPy3Yldajiruaheg==
=8sga
-----END PGP SIGNATURE-----

--Hoy8CGwSJK4Lxy0ykZtHAmrJjfVrpVTLr--
