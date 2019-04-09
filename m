Return-Path: <d.s.e@sordidmusic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29244E00D2E; Tue,  9 Apr 2019 03:17:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9397E00D30
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:17:14 -0700 (PDT)
Received: from phoenix.invalid (unknown [46.183.103.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits)
	server-digest SHA256) (No client certificate requested)
	by mail.rpgmaster.net (Postfix) with ESMTPSA id B28C020BB1;
	Tue,  9 Apr 2019 12:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=sordidmusic.com;
	s=rpgmaster; t=1554805034;
	bh=pTs6Yh0fOHbJnkXV+9n2iefwTk2K+Hzss9NIkcqwdj4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=C/Xm5UQ0iyelP+4zw/f3J+sBRKitl/N+RHE2SqRLDoss6c4u5sZmkIJWO+wZsOV7m
	JOAXLunZXXAD8NosXAQ3VxsNHD0kRK/DGybO/s0OP5BnV2Aoc0TS6ghHi/5lcoBS/f
	QCzchc9MSJ8mWrMuPcnbXA5JNnv8ySFnT199cHMU=
Date: Tue, 9 Apr 2019 12:17:10 +0200
From: Guenther Meyer <d.s.e@sordidmusic.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20190409121710.52ee90e0@phoenix.invalid>
In-Reply-To: <CAJTo0LbNzZs=Ba=PmVzAKrK0FsVNVPSKCud6AMgGUgt+q4osWw@mail.gmail.com>
References: <20190404115301.1820604a@phoenix.invalid>
	<CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
	<20190409094450.6a180445@phoenix.invalid>
	<CAJTo0LY2nx8PUBywRwBtFv2otHq5OKPBYv9fpuvpftnCe0Zp7w@mail.gmail.com>
	<20190409120329.0c68afca@phoenix.invalid>
	<CAJTo0LbNzZs=Ba=PmVzAKrK0FsVNVPSKCud6AMgGUgt+q4osWw@mail.gmail.com>
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
X-List-Received-Date: Tue, 09 Apr 2019 10:17:20 -0000
X-Groupsio-MsgNum: 44728
Content-Type: multipart/signed; boundary="Sig_/Aryi4YwF.11YJqYq+tOWhvL";
	protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/Aryi4YwF.11YJqYq+tOWhvL
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 9 Apr 2019 11:11:04 +0100
"Burton, Ross" <ross.burton@intel.com> wrote:

> So for me they're in python3-twisted-core on target, and if you have
> the right DEPENDS then it should be there for build time.

I will have a look at this, when I'm back in the office again.
The thing is, I needed a newer version of twisted, so I did my own
recipe. But obviously it is not enough to let setuptools do the work.


--=20
Summer-Hack-Session 2.8
http://session.pestilenz.org/session2/


--Sig_/Aryi4YwF.11YJqYq+tOWhvL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEzA/1q58SJcycb7/KVdabz09aRfwFAlyscSYACgkQVdabz09a
RfxqMg/+K8k93Nr/Ff+DJMnsj4/RYZWXfOEAQn8uT95YG/W86AXpJ+aEuJMtxywU
jtOVecntYp+7FmHdNCpWqxgUWDtv1lUuavVJBady9o+H+YGw+DT29rMiNMvD3RlE
3HonHhj5tqEzC+E1IOTkzi1hBYwH0jdrgW9TJst+UzPYSpWjunr0/gsa//u0onVu
PaVJhF/UtQQkfeJA+1/0m7vSQc7oiIJH1YyrOAQsocSV+sRRsqVq7vp44hmdX+Mj
iVCDaW+m0eW3q7ZWAyeTTBdvIqmsAmJ8nC+vTYYfON0FyIFR1toXVm33ds4++wII
faj/ayOTVlWBC3Tjyooq54v8JOhFH9ahxSzjW+3A7mYz/J/AyY6IgBwjWr3jW3vr
O277ez+XJSWi5faLeMtLe/E1KshO5ONvSwxkh6SNWbI+h0YknElTuGdvwyNw/qbM
6misHw02MPHfoWkMU6v/TXoythLP1aOKCY9kmFGBNyt+tIKTa6aHHqUwLJE3/t7Q
adInV9ZsPM4eTa5p6Ny4c+IOdJsAT1aAsPbz3sW/e+0E33qssctXcsSLv60rkpgC
pMZ6YXOJTMz8GmDufEapZasem8tZAH1s0QxjMp+YOYxQyYJfK/i1LSYCMd5wJAI2
UgmXw7Hk6BoCyEI+R60Qq4DKhm33m1dhcvM+mpb/g/Hk2hdbxzk=
=O03z
-----END PGP SIGNATURE-----

--Sig_/Aryi4YwF.11YJqYq+tOWhvL--
