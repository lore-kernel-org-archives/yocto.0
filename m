Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09101E00DCF; Thu, 27 Oct 2016 19:34:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD67E00DC6
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:34:06 -0700 (PDT)
Received: by mail-pf0-f172.google.com with SMTP id e6so28171006pfk.3
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=cDaF6R/nr6owC21jTdHLTBfUKlcqIRRGj1XSu2hIXDo=;
	b=iDX8uptPTn+2jWYuMCekgYMMW8bGyUnk79WwpPEZs3CMkdIcsjWA6MpGu0h2M19foo
	V7Ith6a1FztRx4ua1VLqr5rLNGMhXVt6KyLYU38kTiV/6bdU7rKl6CuFed5zsosAT15m
	czYlaL/UmdtaBixK7dmZj1bj9dZvM47VfwNJIFcLPw0QhbmwXVjCORrXPghKLEeM4vi5
	5oBx8jpaIv5Y8UXMEr/YETRPnHshHxbIsBh/8xKamv+SZCV20nt+oy7JERiKWe8C5xpH
	oB5gRczv/bw/tdmiIet1/1h7c9qDeFDEvIrNLWRamCs2fiHYbj8JM3Lwy9rQDWzHMned
	JJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=cDaF6R/nr6owC21jTdHLTBfUKlcqIRRGj1XSu2hIXDo=;
	b=FCG91vPImPuWqC6JbtumyckwQfnWtj7NpwKwcEtKCU8ppIqUVEPnyiEnXBgFfto9S3
	eAgY5y3Lu0D82ZS9hI89qTntuj/NkvWhrDtzruwrEudLUCUkKQZggHQGTTfJHkgTBpZf
	y+CazrWvR8k74zuDpNFSicK6TTnUQElu0154hNZ0H2WJa8p6TaQNLLFujKY755yVuFPH
	4zzj24alDRKpAXeIm3UMr6QXAIKWOpktL9+y8tl95UU3MXBcwwWW0q9bgbP8Xjm11Dkc
	5N/NstBj1SqiCVpWFVkZizoOY6hI+QWVRWvkwk2Vd+aQfwCGWcMaGzR2MLvI1oVs/IYJ
	Tfvg==
X-Gm-Message-State: ABUngvdm2Ov9lKYydSinbI9h/KoqSC0IPphYUePxYwfk0gUgluhqcokG5eJIsr1jvNerQw==
X-Received: by 10.98.43.136 with SMTP id r130mr20189404pfr.171.1477622046375; 
	Thu, 27 Oct 2016 19:34:06 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:98cf:ea9b:f72:6b74?
	([2601:646:8882:b8c:98cf:ea9b:f72:6b74])
	by smtp.gmail.com with ESMTPSA id
	w15sm14580358paj.33.2016.10.27.19.34.05
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 19:34:05 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
Date: Thu, 27 Oct 2016 19:34:04 -0700
Message-Id: <D98FD381-BC63-421E-AD53-8A808C02CCDF@gmail.com>
References: <3230301C09DEF9499B442BBE162C5E48ABEA948F@SESTOEX04.enea.se>
To: Sona Sarmadi <sona.sarmadi@enea.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>,
	"mariano.lopez@intel.com" <mariano.lopez@intel.com>
Subject: Re: cve-checker tool
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
X-List-Received-Date: Fri, 28 Oct 2016 02:34:09 -0000
X-Groupsio-MsgNum: 32659
Content-Type: multipart/signed;
	boundary="Apple-Mail=_60030250-3AFC-4613-8F06-7856FD95ECB5";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_60030250-3AFC-4613-8F06-7856FD95ECB5
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 27, 2016, at 4:03 AM, Sona Sarmadi <sona.sarmadi@enea.com> =
wrote:
>=20
>=20
>=20
>> -----Original Message-----
>> From: Sona Sarmadi
>> Sent: den 27 oktober 2016 10:57
>> To: Scott Rifenbark <srifenbark@gmail.com>; 'mariano.lopez@intel.com'
>> <mariano.lopez@intel.com>; yocto@yoctoproject.org
>> Subject: cve-checker tool
>>=20
>> Hi guys,
>>=20
>> I have some questions regarding cve-check tool. I don't find anything
>> about this tool in Yocto
>> 2.2 release, dose documentation mention this tool and how to use it?
>>=20
>> Is this tool planned to be integrated with daily build so the Yocto =
project
>> can detect Not addressed CVEs automatically?
>>=20
>> Mariano:
>> Does this tool look at CVE tag inside the recipe as well or only =
checks the
>> package version?
>>=20
>> Can this tool be used together with "meta-security-isafw" and get a =
fancy
>> report?
>=20
> There are some useful info in the cve-check.bbclass:
>=20
> #In order to use this class just inherit the class in the
> # local.conf file and it will add the cve_check task for
> # every recipe. The task can be used per recipe, per image,
> # or using the special cases "world" and "universe". The
> # cve_check task will print a warning for every unpatched
> # CVE found and generate a file in the recipe WORKDIR/cve
> # directory. If an image is build it will generate a report
> # in DEPLOY_DIR_IMAGE for all the packages used.
>=20
> I see following logs are generated:
> ./unzip/1_6.0-r5/cve/cve.log
> ./gnutls/3.5.3-r0/cve/cve.log
> ./glibc/2.24-r0/cve/cve.log
> ./glibc-initial/2.24-r0/cve/cve.log
> ./foomatic-filters/4.0.17-r1/cve/cve.log
> ./bzip2/1.0.6-r5/cve/cve.log
> ./libxml2/2.9.4-r0/cve/cve.log
> ./perl/5.22.1-r0/cve/cve.log
> ./expat/2.2.0-r0/cve/cve.log
> ./flex/2.6.0-r0/cve/cve.log

perhaps you can add this info to "How Do I=E2=80=9D
section in wiki here https://wiki.yoctoproject.org/wiki/How_do_I

>=20
> //Sona
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_60030250-3AFC-4613-8F06-7856FD95ECB5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgSuRwACgkQuwUzVZGdMxRaFgCgieQmlnNCCNuKUHIq7e3U1zGJ
M3UAnj9w75ce0Td/iPA07AscIQRp5xZ6
=FR4q
-----END PGP SIGNATURE-----

--Apple-Mail=_60030250-3AFC-4613-8F06-7856FD95ECB5--
