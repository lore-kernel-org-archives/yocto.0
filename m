Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28012E00C17; Wed, 16 Nov 2016 09:53:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13489E0049F
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 09:53:57 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id e9so14889281pgc.1
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2016 09:53:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=0Nztl23zZi4z4ufwLXuKzhjOywbS6epNMBLlNQv6dvM=;
	b=l6vbk3202XPq50quLENmZlMQRBHA3SLDXgCiy08mAqtoW4K9i4a1avYwarLXECYEtk
	IW9rdDtTidL78Xubi90ltRaY2c1xuykEm+M3OScNi7Yfu86JbPO5H2TZ+vRTr+mUSff6
	42QUAh8UYXOiPSKnOYYpz5CQw6CkWJr0+giD3Uxf+NJwKY+PxX/xLkV/l/av24bG6QKh
	iQGHMWJlM+POBphPLFV+uQPRjWaP4RpS2tVEyQTLbBDYHsLUXdlW4sY0/ld3rFWc4uj5
	ngdPl0EFjaFIMI9nfe+rh93tMOX0gibzt56VEeJnQSoOrr1xpCKQGQ/UuR5y9emAHErM
	EDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to;
	bh=0Nztl23zZi4z4ufwLXuKzhjOywbS6epNMBLlNQv6dvM=;
	b=hMQGNl6qoZ/pOd6VE3cG41rlW0He1+4zHNXD3slt5+pViMZ525m1nsY4XYAf8ad/rm
	vgqiFtRzRfS7/77JYX/yJRaD1bvMtncRVtITuHwtB6M2ahDN2Tq3PmcwdBQ/fDqgwk6Q
	YmekXiHai4DOdWLMvS9s3pJniKToCqOgrD/xFU42w1knL2gXFBU0kqpExwXWLW9SQg6P
	NRT+/gllNuWlofSql9j99xOEy6IoueaT0i8jHgKxC0hhlF/ZcRsimQYPqfuyUvtjhsWu
	oI3QVxoFsY39+2LVcRZp65l1HpdenUoA2Ahdz9KvUhS65fBIaO1+FfsRAU4C9bVCgrDs
	yQtg==
X-Gm-Message-State: ABUngvekh2gUuzLkYgEVgi2UHHIKH6sa//4280DGIU0mWBJOwAwV2/ulcqUthN0e4wtGeg==
X-Received: by 10.98.33.133 with SMTP id o5mr6241393pfj.32.1479318837201;
	Wed, 16 Nov 2016 09:53:57 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:253b:db0b:7823:74ba])
	by smtp.gmail.com with ESMTPSA id
	y89sm34839967pfk.83.2016.11.16.09.53.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Nov 2016 09:53:56 -0800 (PST)
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
	yocto@yoctoproject.org
References: <906511000.722.1479298046833.JavaMail.root@gwapp>
From: Khem Raj <raj.khem@gmail.com>
Organization: himvis.com
Message-ID: <d109b322-6703-4bb5-0bcb-a85a02b6fc61@gmail.com>
Date: Wed, 16 Nov 2016 09:53:55 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <906511000.722.1479298046833.JavaMail.root@gwapp>
Subject: Re: mklibs in USER_CLASSES (Khem Raj) (Khem Raj)
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
X-List-Received-Date: Wed, 16 Nov 2016 17:53:59 -0000
X-Groupsio-MsgNum: 33002
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature";
	boundary="s7MciW3IQ6mvaNF6FwOl1VC1fxh4qNxf0"

--s7MciW3IQ6mvaNF6FwOl1VC1fxh4qNxf0
Content-Type: multipart/mixed; boundary="1gPnIsgm4QP65AXJUDwN43BG149umtacU";
 protected-headers="v1"
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?B?7Iug7YOd7ZiEIChUYWVrIEh5dW4gU2hpbik=?= <thshin@telechips.com>,
 yocto@yoctoproject.org
Message-ID: <d109b322-6703-4bb5-0bcb-a85a02b6fc61@gmail.com>
Subject: Re: [yocto] mklibs in USER_CLASSES (Khem Raj) (Khem Raj)
References: <906511000.722.1479298046833.JavaMail.root@gwapp>
In-Reply-To: <906511000.722.1479298046833.JavaMail.root@gwapp>

--1gPnIsgm4QP65AXJUDwN43BG149umtacU
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 11/16/16 4:07 AM, =EC=8B=A0=ED=83=9D=ED=98=84 (Taek Hyun Shin) wrote:
> Hi Khem Raj
>=20
>=20
> Thank you for your answer
>=20
>=20
> I did add to the patch your recommend.
>=20
> But, the error is occurred as follow:

I guess you have to dig deep and see what might be going on

>=20
>=20
> Object:
> usr/bin/tc-/home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021=
/usr/lib//libTcGuiUtils_pic.a(libTcGuiUtils_pic.o):
> In function `$d':
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/work/cortexa7-vfp-neon-tele=
chips-linux-gnueabi/libtcguiutils/1.0.0-r0/git/src/TCTime.cpp:65:
> undefined reference to `__dso_handle'
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibTcGuiUtils_pic.a(libTcGuiUtils_pic.o):
> In function `$d':
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/work/cortexa7-vfp-neon-tele=
chips-linux-gnueabi/libtcguiutils/1.0.0-r0/git/src/TCLog.cpp:71:
> undefined reference to `__dso_handle'
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibTcGuiUtils_pic.a(libTcGuiUtils_pic.o):
> In function `$d':
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/work/cortexa7-vfp-neon-tele=
chips-linux-gnueabi/libtcguiutils/1.0.0-r0/git/qrc_libTcGuiUtils.cpp:2605=
7:
> undefined reference to `__dso_handle'
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibTcGuiUtils_pic.a(libTcGuiUtils_pic.o):
> In function `$d':
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/work/cortexa7-vfp-neon-tele=
chips-linux-gnueabi/libtcguiutils/1.0.0-r0/git/src/TCCharSet.cpp:74:
> undefined reference to `__dso_handle'
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib//l=
ibTcGuiUtils_pic.a(libTcGuiUtils_pic.o):
> In function `$d':
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/work/cortexa7-vfp-neon-tele=
chips-linux-gnueabi/libtcguiutils/1.0.0-r0/git/src/TCBufferHandler.cpp:41=
:
> undefined reference to `__dso_handle'
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/x86_64-linux/usr/l=
ibexec/arm-telechips-linux-gnueabi/gcc/arm-telechips-linux-gnueabi/4.8.1/=
ld:
> /home/B110141/works/Yocto/build/tcc8021/tmp/work/tcc8021-telechips-linu=
x-gnueabi/mico
>    m-project-image/1.0-r0/mklibs/dest/libTcGuiUtils.so.1-so: hidden sym=
bol
> `__dso_handle' isn't defined
>=20
> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/x86_64-linux/usr/l=
ibexec/arm-telechips-linux-gnueabi/gcc/arm-telechips-linux-gnueabi/4.8.1/=
ld:
> final link failed: Bad value
>=20
> collect2: error: ld returned 1 exit status
>=20
>=20
> Can I try fix this issue the other way??
>=20
>=20
>> Can you check if OE mklib has this patch applied ?
>>=20
>> https://lists.debian.org/debian-boot/2013/01/msg00239.html
>=20
>=20
>=20
> Thanks & Best Regards,
>=20
> Wily Taekhyun Shin
> =20
> =20
> *Telechips Inc.*
> *R&D Center / Automotive Group / Linux Team / Research Engineer*
> Tel : +82-2-3443-6792(Ext. 390), M.P : +82-10-4376-5530, E-mail
> : thshin@telechips.com <mailto:rami@telechips.com>
>=20
>=20
>=20
>=20
>  Message: 1
>> Date: Fri, 11 Nov 2016 10:17:54 -0800
>> From: Khem Raj <raj.khem@gmail.com>
>> To: ??? (Taek Hyun Shin) <thshin@telechips.com>,
>> yocto@yoctoproject.org
>> Subject: Re: [yocto] mklibs in USER_CLASSES
>> Message-ID: <7cdefdbc-baa9-4dfd-f60d-64c0d3c9e459@gmail.com>
>> Content-Type: text/plain; charset=3D"utf-8"
>>=20
>>=20
>>=20
>> On 11/11/16 1:22 AM, ??? (Taek Hyun Shin) wrote:
>>> Hi,
>>>=20
>>> Somebody help met plz.
>>>=20
>>>=20
>>> I'm using Yocto Project 2.0
>>>=20
>>> I want to reduce my rootfs due to fast execute binaries.
>>>=20
>>> So, I did apply mklibs using USE_CLASSES
>>=20
>> if you use prelink as well then make sure mklibs appear before prelink=
 in
>> USE_CLASSES
>>=20
>>>=20
>>> But, I got error message as follow:
>>>=20
>>>=20
>>>  208 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libgmp.so.10
>>> ; copying
>>>=20
>>>  209 reducing libgobject-2.0.so.0
>>>=20
>>>  210 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libgobject-2.0.so.0
>>> ; copying
>>>=20
>>>  211 reducing libgstreamer-1.0.so.0
>>>=20
>>>  212 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libgstreamer-1.0.so.0
>>> ; copying
>>>=20
>>>  213 reducing libhogweed.so.4
>>>=20
>>>  214 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libhogweed.so.4
>>> ; copying
>>>=20
>>>  215 reducing libinput.so.10
>>>=20
>>>  216 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libinput.so.10
>>> ; copying
>>>=20
>>>  217 reducing libjpeg.so.9
>>>=20
>>>  218 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libjpeg.so.9
>>> ; copying
>>>=20
>>>  219 reducing liblog.so
>>>=20
>>>  220 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/liblog.so ;
>>> copying
>>>=20
>>>  221 reducing libm.so.6
>>>=20
>>>  222 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/lib//lib=
m.so.6 ;
>>> copying
>>>=20
>>>  223 reducing libmenuw.so.5
>>>=20
>>>  224 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/usr/lib/=
/libmenuw.so.5
>>> ; copying
>>>=20
>>>  225 reducing libmount.so.1
>>>=20
>>>  226 No pic file found for
>>> /home/B110141/works/Yocto/build/tcc8021/tmp/sysroots/tcc8021/lib//lib=
mount.so.1 ;
>>> copying
>>>=20
>>>  227 reducing libmtdev.so.1
>>>=20
>>>=20
>>> How can I create the pic file each libraries
>>>=20
>>>=20
>>> Help me plz TT
>>>=20
>>> =20
>>>=20
>>> =20
>>>=20
>>> =20
>>>=20
>>> =20
>>>=20
>=20
>=20
>=20
>=20


--1gPnIsgm4QP65AXJUDwN43BG149umtacU--

--s7MciW3IQ6mvaNF6FwOl1VC1fxh4qNxf0
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgsnTMACgkQuwUzVZGdMxShsQCfRm3+XBamAbDD6ohyTzurt/OC
pmYAnR43qUMon9+poks2jUVCf/LwAR3+
=oV+G
-----END PGP SIGNATURE-----

--s7MciW3IQ6mvaNF6FwOl1VC1fxh4qNxf0--
