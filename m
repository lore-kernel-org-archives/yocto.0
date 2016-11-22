Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8A86E00AAB; Mon, 21 Nov 2016 22:29:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB01CE00A49
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 22:29:25 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id e9so1130738pgc.1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 22:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=qd+h2733RukG0344UaSosyVxm/AQxSxMjXK1swinIyM=;
	b=uI0/gfZVa8v2iS5NWjDYhpfTmiVcuvCt+0M+9d1/YgcVtCeTNSByFldotMGVhBYwJ4
	NifUTVDKRR4lT1xQL3hsr+0TFzdHQlKS3KleA3xXZriSz1D2ToQkYcy/kkvz9Xqd4Z8c
	27f3VDJ1STaRir7kBunAx6rNme8iFgpizP+TtLVxPW6FP95aNhZXrhfHamCHLdVL7np2
	MEnAN/vb3KV5qfQlDPGJMkekdEbhvJ8eyJtg29OKZCYeJFV5bOW32IjZID2iaiNsg2bV
	EQSZzDe4i3ZLPDvwWDyNusWzg2M4lhY5ax0w75h+MmWNpvY/Re3ciLxXgi+7ZPgdWs3P
	lfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=qd+h2733RukG0344UaSosyVxm/AQxSxMjXK1swinIyM=;
	b=io5kuTdnngk2QYPnHbRbdGBizNPsElCrul4teNmlSl3fBSgYFTb6ZlQgpc6rfGdqjB
	ws3cjIybLCVfPX2nacfdgOPU3yPCO3Q+1dNf9K+EYIrYoiylLyBNBMR06XusElq92Scx
	Odh+VtFDn9n93cYNvvcNkl7o3H95MC/PqHhKExMbDGOFi35kXZfMhtpHzu89ISJVxdiU
	BIOp0EHwkp1FLSDkNIQtqHWquHqvy5/skxMlgVMLhnmkohDH2fbYzkQYeYyxi2wmG12c
	opRvuIuIFub45dB41agF5PuLTRwY0aJ9GNdfc6Cx/dqNErji0bxH9uLLgJE2r0s9B4mS
	RBdw==
X-Gm-Message-State: AKaTC0299zFDLds3JxQKg/5cLl/6BEcDTd90VhUGDhuwImSjd49p/IX7knOdxDPoHf+Bow==
X-Received: by 10.99.170.5 with SMTP id e5mr25863871pgf.46.1479796164881;
	Mon, 21 Nov 2016 22:29:24 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:79bd:3a31:4354:fac0])
	by smtp.gmail.com with ESMTPSA id
	y89sm41869577pfk.83.2016.11.21.22.29.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Nov 2016 22:29:24 -0800 (PST)
To: Trevor Woerner <twoerner@gmail.com>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
	<CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
	<20161121230726.GA14157@openSUSE-i7.site>
	<5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
	<20161122053929.GB16570@openSUSE-i7.site>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <4d14c20b-1360-d3dd-c61c-b0d5929d5819@gmail.com>
Date: Mon, 21 Nov 2016 22:29:18 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <20161122053929.GB16570@openSUSE-i7.site>
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
X-List-Received-Date: Tue, 22 Nov 2016 06:29:28 -0000
X-Groupsio-MsgNum: 33076
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="aCKfqUDol0miILvSHEX58OQ9Q1iVIIC9s"

--aCKfqUDol0miILvSHEX58OQ9Q1iVIIC9s
Content-Type: multipart/mixed; boundary="NWHc22RPC2pTmmju2s5bdfMnbaL9L88dJ";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: Herve Jourdain <herve.jourdain@neuf.fr>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <4d14c20b-1360-d3dd-c61c-b0d5929d5819@gmail.com>
Subject: Re: [yocto] [raspberrypi] raspi3 vs raspi2
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
 <CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
 <20161121230726.GA14157@openSUSE-i7.site>
 <5e81cb71-ff35-4525-0e53-ded77e59dad2@gmail.com>
 <20161122053929.GB16570@openSUSE-i7.site>
In-Reply-To: <20161122053929.GB16570@openSUSE-i7.site>

--NWHc22RPC2pTmmju2s5bdfMnbaL9L88dJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/21/16 9:39 PM, Trevor Woerner wrote:
> On Mon 2016-11-21 @ 04:09:50 PM, Khem Raj wrote:
>> 4.4 does not support 64-bit pi3, do you set the PREFERRED_VERSION in l=
ocal
>> conf metadata ?
>=20
> Yes, my conf/local.conf contains:
>=20
> 	PREFERRED_VERSION_linux-raspberrypi =3D "4.8%"
>=20
> If you clone git://github.com/raspberrypi/linux.git and checkout the 4.=
8.y
> branch, you'll see that there's no commit
> ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7 anywhere in that branch. In fa=
ct
> there is no such commit anywhere in that repository:
>=20
> 	$ git branch --contains ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7
> 	error: no such commit ea6eeaff07c4881e6287fe3e7ea58fc30e5569d7
>=20

Did you take

https://github.com/kraj/meta-raspberrypi/commit/361757b9c1538b0a15577d753=
08ecef93db55965

as well?

>>
>> On 11/21/16 3:07 PM, Trevor Woerner wrote:
>>> On Sun 2016-11-20 @ 11:28:48 AM, Khem Raj wrote:
>>>> I gave a whirl at building and looking closely at them. As it seems
>>>> the OE core patch is
>>>> not needed since for armv8 we want to keep it like x86 ( common )
>>>> I have therefore made changes to your patches and staged them here.
>>>>
>>>> https://github.com/kraj/meta-raspberrypi/commits/kraj/master
>>>>
>>>> Which should work without any change in OE-Core, secondly I have
>>>> further divided them
>>>> and also fixed 4.8 to compile arm64.
>>>
>>> I tried giving this a whirl.
>>>
>>> Maybe the order of my layers in bblayers isn't correct, but by defaul=
t my
>>> build uses 4.4% instead of 4.8%.
>>>
>>> conf/machine/raspberrypi3-64.conf includes:
>>> 	...
>>> 	include conf/machine/include/rpi-base.inc
>>> 	...
>>> 	PREFERRED_VERSION_linux-raspberrypi ?=3D "4.8.%"
>>>
>>> conf/machine/include/rpi-base.inc contains:
>>> 	...
>>> 	include conf/machine/include/rpi-default-versions.inc
>>> 	...
>>>
>>> conf/machine/include/rpi-default-versions.inc contains:
>>> 	...
>>> 	PREFERRED_VERSION_linux-raspberrypi ?=3D "4.4.%"
>>>
>>> In any case when I try building with 4.4 I get:
>>>
>>> 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel=
_configme: No default configuration for raspberrypi3-64 / bcmrpi3_defconf=
ig available.
>>> 	ERROR: linux-raspberrypi-1_4.4.28+gitAUTOINC+5afda48c34-r0 do_kernel=
_configme: Function failed: do_kernel_configme (log file is located at /z=
/layerindex-master/raspi3-64/tmp-glibc/work/raspberrypi3_64-oe-linux/linu=
x-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/temp/log.do_kernel_config=
me.15498)
>>>
>>> When I switch to 4.8 explicitly in my conf/local.conf I get:
>>>
>>> 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: =
Fetcher failure: Unable to find revision ea6eeaff07c4881e6287fe3e7ea58fc3=
0e5569d7 in branch rpi-4.8.y even from upstream
>>> 	ERROR: linux-raspberrypi-1_4.8.8+gitAUTOINC+ea6eeaff07-r0 do_fetch: =
Fetcher failure for URL: 'git://github.com/raspberrypi/linux.git;protocol=
=3Dgit;branch=3Drpi-4.8.y'. Unable to fetch URL from any source.
>>>
>>> My build configuration is:
>>> 	Build Configuration:
>>> 	BB_VERSION        =3D "1.32.0"
>>> 	BUILD_SYS         =3D "x86_64-linux"
>>> 	NATIVELSBSTRING   =3D "opensuse-42.1"
>>> 	TARGET_SYS        =3D "aarch64-oe-linux"
>>> 	MACHINE           =3D "raspberrypi3-64"
>>> 	DISTRO            =3D "nodistro"
>>> 	DISTRO_VERSION    =3D "nodistro.0"
>>> 	TUNE_FEATURES     =3D "aarch64"
>>> 	TARGET_FPU        =3D ""
>>> 	meta-raspberrypi__kraj =3D "kraj/master:4735e7cde210b2b0b855bca1eb90=
ef4adca8019b"
>>> 	meta              =3D "master:a675b2c89e477af088faee9b3be96eae19a85f=
0b"
>>> 	meta-oe          =20
>>> 	meta-gnome        =3D "master:7f8915a6ecdd5c4b03c7e5b5f1fa903f89c2d5=
60"
>>>
>>
>=20
>=20
>=20


--NWHc22RPC2pTmmju2s5bdfMnbaL9L88dJ--

--aCKfqUDol0miILvSHEX58OQ9Q1iVIIC9s
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgz5cIACgkQuwUzVZGdMxQcYQCfcv2pYbQ/WpdyV6u/ggimCdnr
+SEAn1xdqo/l4F30rquCG9uLNa/gn/K1
=v9UK
-----END PGP SIGNATURE-----

--aCKfqUDol0miILvSHEX58OQ9Q1iVIIC9s--
