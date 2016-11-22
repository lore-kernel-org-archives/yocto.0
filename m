Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96FB1E0080D; Mon, 21 Nov 2016 16:10:02 -0800 (PST)
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
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 578F0E007DA
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 16:09:58 -0800 (PST)
Received: by mail-pf0-f194.google.com with SMTP id c4so103926pfb.3
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 16:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=6ONLWEMBTfua1BrnJEcVWnt3qT/A+XCWeZhRhivkAdw=;
	b=z9Y2/a20goBeFSTLpvWAAIq3Sn+VPt2pHZ8mG1fU4FKKy+sLPSoZHaRn1oU01rqoBt
	xyMgIhVhxXVakUK/bRjl8oDezveihBXYX6WvCvFfO3JBvucISPjXncjwuGSNzkTo8eTJ
	WhdjPLWmHV8NFHHcTLNPJQu5nKQrndn61SMeC7YF/k4Ltff9xYkl63JZnazadL7jtW7w
	pTpwxzm7gQZdJtFn8kgKjWhZ2QBTKcKabl6//r8OngP/wHQA8dac8eODuVchs4Q7xKYW
	41wU7xWUYP9lDsuDYkTg8aWp5nXnOdedW6z3FZVjxltpLr7cqLeiDc2e2sF9l1uv8Sq3
	+xeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=6ONLWEMBTfua1BrnJEcVWnt3qT/A+XCWeZhRhivkAdw=;
	b=jx0O3TgG1+CU4in28nUPHoneT6lbY991vM1bUrqSAVxfYKicdm/Hf470fcvnUrRYIr
	zmYUA4Rfo9Lu2OsRb1BKZqGg0eLveKXGGu7R6Qglr5NVS7F57PYM9ttmbMxAlqgu/4oh
	SVZJz35lHtQfc5V6mJUXj9o9XpU4w8kgOIC2K+0Aee15tC2mIvrVTn6vfr0vpVpv5DVu
	LaGji15PCYYF9NIWzOIFRr2Q41SRFF5/SBTD9FqQeJR6anff+usZXaALKZxHFcUj37u4
	W4m2jPCm0RJUICh0Xlca7A246WWvp81RgzoyPEnCs2StXGILzhDMgeOoSJCmCV4Ys5Gi
	Bciw==
X-Gm-Message-State: AKaTC03la1WyVdizSN/khFEF1DeXP6BXIkeasxC4VswG/ngN48GmPT2rRsmCng+/dQz2Zg==
X-Received: by 10.98.200.203 with SMTP id i72mr21677662pfk.181.1479773397544; 
	Mon, 21 Nov 2016 16:09:57 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:ad6a:4d61:b911:9fbb])
	by smtp.gmail.com with ESMTPSA id
	n17sm39986795pfg.80.2016.11.21.16.09.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 16:09:56 -0800 (PST)
To: Trevor Woerner <twoerner@gmail.com>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
	<20161121230726.GA14157@openSUSE-i7.site>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
Date: Mon, 21 Nov 2016 16:09:50 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <20161121230726.GA14157@openSUSE-i7.site>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [raspberrypi] raspi3 vs raspi2
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
X-List-Received-Date: Tue, 22 Nov 2016 00:10:02 -0000
X-Groupsio-MsgNum: 33072
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="DW7gBcjKNEmTP9OPjNMp5ACxHmShkFsil"

--DW7gBcjKNEmTP9OPjNMp5ACxHmShkFsil
Content-Type: multipart/mixed; boundary="mfkwq7fOhPqmRXSIDBL43CAPJAQJeo25T";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Herve Jourdain <herve.jourdain@neuf.fr>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
Subject: Re: [yocto] [raspberrypi] raspi3 vs raspi2
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
 <CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
 <20161121230726.GA14157@openSUSE-i7.site>
In-Reply-To: <20161121230726.GA14157@openSUSE-i7.site>

--mfkwq7fOhPqmRXSIDBL43CAPJAQJeo25T
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

4.4 does not support 64-bit pi3, do you set the PREFERRED_VERSION in loca=
l
conf metadata ?

On 11/21/16 3:07 PM, Trevor Woerner wrote:
> On Sun 2016-11-20 @ 11:28:48 AM, Khem Raj wrote:
>> I gave a whirl at building and looking closely at them. As it seems
>> the OE core patch is
>> not needed since for armv8 we want to keep it like x86 ( common )
>> I have therefore made changes to your patches and staged them here.
>>
>> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>>
>> Which should work without any change in OE-Core, secondly I have
>> further divided them
>> and also fixed 4.8 to compile arm64.
>=20
> I tried giving this a whirl.
>=20
> Maybe the order of my layers in bblayers isn't correct, but by default =
my
> build uses 4.4% instead of 4.8%.
>=20
> conf/machine/raspberrypi3-64.conf includes:
> 	...
> 	include conf/machine/include/rpi-base.inc
> 	...
> 	PREFERRED_VERSION_linux-raspberrypi ?=3D "4.8.%"
>=20
> conf/machine/include/rpi-base.inc contains:
> 	...
> 	include conf/machine/include/rpi-default-versions.inc
> 	...
>=20
> conf/machine/include/rpi-default-versions.inc contains:
> 	...
> 	PREFERRED_VERSION_linux-raspberrypi ?=3D "4.4.%"
>=20
> In any case when I try building with 4.4 I get:
>=20
> 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_c=
onfigme: No default configuration for raspberrypi3-64 / bcmrpi3_defconfig=
 available.
> 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel_c=
onfigme: Function failed: do_kernel_configme (log file is located at /z/l=
ayerindex-master/raspi3-64/tmp-glibc/work/raspberrypi3_64-oe-linux/linux-=
raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_configme=
=2E15498)
>=20
> When I switch to 4.8 explicitly in my conf/local.conf I get:
>=20
> 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: Fe=
tcher failure: Unable to find revision ea6eeaff07c4881e6287fe3e7ea58fc30e=
5569d7 in branch rpi-4.8.y even from upstream
> 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: Fe=
tcher failure for URL: 'git://github.com/raspberrypi/linux.git;protocol=3D=
git;branch=3Drpi-4.8.y'. Unable to fetch URL from any source.
>=20
> My build configuration is:
> 	Build Configuration:
> 	BB_VERSION        =3D "1.32.0"
> 	BUILD_SYS         =3D "x86_64-linux"
> 	NATIVELSBSTRING   =3D "opensuse-42.1"
> 	TARGET_SYS        =3D "aarch64-oe-linux"
> 	MACHINE           =3D "raspberrypi3-64"
> 	DISTRO            =3D "nodistro"
> 	DISTRO_VERSION    =3D "nodistro.0"
> 	TUNE_FEATURES     =3D "aarch64"
> 	TARGET_FPU        =3D ""
> 	meta-raspberrypi__kraj =3D "kraj/master:4735e7cde210b2b0b855bca1eb90ef=
4adca8019b"
> 	meta              =3D "master:a675b2c89e477af088faee9b3be96eae19a85f0b=
"
> 	meta-oe          =20
> 	meta-gnome        =3D "master:7f8915a6ecdd5c4b03c7e5b5f1fa903f89c2d560=
"
>=20


--mfkwq7fOhPqmRXSIDBL43CAPJAQJeo25T--

--DW7gBcjKNEmTP9OPjNMp5ACxHmShkFsil
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgzjNMACgkQuwUzVZGdMxTo4ACfU5WXi8vROe9ap9lpXlmGNGaj
Jg0An02TSZu/9vBzAuY8aOeS1Qss46pt
=7Zmu
-----END PGP SIGNATURE-----

--DW7gBcjKNEmTP9OPjNMp5ACxHmShkFsil--
