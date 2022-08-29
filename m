Return-Path: <forums@bitflipper.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40F91ECAAD4
	for <webhook@archiver.kernel.org>; Mon, 29 Aug 2022 22:06:50 +0000 (UTC)
Received: from omta039.useast.a.cloudfilter.net
 (omta039.useast.a.cloudfilter.net [44.202.169.38])
 by mx.groups.io with SMTP id smtpd.web11.4543.1661810795615066854
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Aug 2022 15:06:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bitflipper.net header.s=default header.b=J3nZdMVu;
 spf=pass (domain: bitflipper.net, ip: 44.202.169.38,
 mailfrom: forums@bitflipper.net)
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTP
	id SgG3o1clxhL46SmtuoWjhn; Mon, 29 Aug 2022 22:06:34 +0000
Received: from gator4161.hostgator.com ([108.167.133.17])
	by cmsmtp with ESMTP
	id SmtsoRridKiw6Smtsod870; Mon, 29 Aug 2022 22:06:33 +0000
X-Authority-Analysis: v=2.4 cv=RaCDtnhv c=1 sm=1 tr=0 ts=630d3869
 a=wy83rNxz+atVFkX2aYqp/w==:117 a=zmJLnD9S6R+eT+5CidqXXQ==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=IkcTkHD0fZMA:10 a=biHskzXt2R4A:10
 a=myVjTR8LsXQA:10 a=OycbvLwyAAAA:8 a=mV9VRH-2AAAA:8 a=3-RhneuVAAAA:8
 a=iGHA9ds3AAAA:8 a=E4BLkn4M_Z2a2NbLvVgA:9 a=QEXdDO2ut3YA:10
 a=K7D-rfjolMOoSJWbC0j4:22 a=VLVLkjT_5ZicWzSuYqSo:22 a=nM-MV4yxpKKO9kiQg6Ot:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=bitflipper.net; s=default; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Xuv9/upupEA5KJMjDNhC8vCSrmCMSNncFz/A9dG7K2U=; b=J3nZdMVuR9BfXEO4TbiCmLshuY
	KabEGzA/b1Mh2edwALiKU54JY4DCZ4KOB6WYm3MZERnN6QgWSq1OqnQkkG2Jb0X6d98nYERO65VJf
	gTTw3HDWvuVrcJfoHIv3ncPQOnnLl3PoVN6mTRM6AYIYS1jV9Jroe2kLV+ZDple1Rll3Oh+sjwGQk
	WffSTJo5ET89+IFLvMJ0fWQk3VToYA8c4ir2LBXOol9dIwOHz+u59YbRAu0no3YrVc7YOxnjPW7kJ
	VOgSbsq2LSKOeR5jGFSmloG+gVDbTYW6OhCh3KSZ10v5vvrGpVRZ36+MiVVcvllDNOUOBrf8rhKe1
	oOZ+6QoA==;
Received: from pool-173-48-211-43.bstnma.fios.verizon.net
 ([173.48.211.43]:50473 helo=smtpclient.apple)
	by gator4161.hostgator.com with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <forums@bitflipper.net>)
	id 1oSmtr-002aWZ-MB;
	Mon, 29 Aug 2022 17:06:31 -0500
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Bitbake + Patches
From: forums <forums@bitflipper.net>
In-Reply-To: <6EB0299C-D97D-4167-B6D2-B1F54032FF2A@bitflipper.net>
Date: Mon, 29 Aug 2022 18:06:29 -0400
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <60D6BF68-443E-410E-88AC-B10C17DD46C6@bitflipper.net>
References: <53C07165-3951-4450-B175-E323971C8DEC@bitflipper.net>
 <CAMKF1spvyQh1czn+HiKmppXBCO_tkor_3Ogfj6wguwA0x+tAyA@mail.gmail.com>
 <fcfe7d1380ab4d2598cff5004028d419@axis.com>
 <B58205E1-72E9-41F6-9A52-A440A62C3C6B@bitflipper.net>
 <899c12e4c6d34a4298b84b7abf022a82@axis.com>
 <0C54FD2B-AEAB-4425-9CEB-FFCA85458A16@bitflipper.net>
 <9222c257155a4d5aa93db2f0f9d1047b@axis.com>
 <170FB0FB9A5D94E8.11791@lists.yoctoproject.org>
 <170FE7D455D5B425.21714@lists.yoctoproject.org>
 <6EB0299C-D97D-4167-B6D2-B1F54032FF2A@bitflipper.net>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4161.hostgator.com
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - bitflipper.net
X-BWhitelist: no
X-Source-IP: 173.48.211.43
X-Source-L: No
X-Exim-ID: 1oSmtr-002aWZ-MB
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-173-48-211-43.bstnma.fios.verizon.net (smtpclient.apple)
 [173.48.211.43]:50473
X-Source-Auth: forums@bitflipper.net
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: YmFsc29uODg7YmFsc29uODg7Z2F0b3I0MTYxLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: 
 MS4xfBw8bQ3sTtIqDUBJ4tFMr9wLxzmsJyOFrFUZjts43J5IVTKu2mgbZG8p9qFIOXVe9RYYBmuKrxG5sm3fS/HK0XmJUtvlENRHitrnKsCkKQuKaFF6waD2
 sF3VhSZsZAwCbIHMcFPffHfz6BNY4veItOoIkDxVanp6TxOsYQbLdRCVj0302tN33U9Ik7i2y5WJAYKNybzF1hkSVuHT4XWASjORocbX/E9I88eEpiWO/pXC
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 22:06:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57942




Peter, so here=E2=80=99s my current bbappend file for Apache 2.4.52 =
which is included with honester:

	FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:=E2=80=9D

	LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3=E2=80=9D

	PV =3D =E2=80=9C2.4.52"

	SRC_URI +=3D =
"file://0008-Fix-perl-install-directory-to-usr-bin.patch \
            =
file://0009-support-apxs.in-force-destdir-to-be-empty-string.patch \
            file://0001-make_exports.awk-not-expose-the-path.patch=E2=80=9D=

	SRC_URI_remove =3D "file://apache-configure_perlbin.patch=E2=80=9D=


	SRC_URI[md5sum] =3D =E2=80=9C861b43073ab416d689f1fc4dfa087711"
	SRC_URI[sha256sum] =3D =
=E2=80=9Ceb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c340=E2=
=80=9D

And the current build error:


	ERROR: smith-nephew-cp-lwb5-2.4.52-r0 do_populate_lic: QA Issue: =
smith-nephew-cp-lwb5: LIC_FILES_CHKSUM points to an invalid file: =
/ct/yocto/imx-	=
5.4.70/build/tmp/work/imx6ulevk-poky-linux-gnueabi/smith-nephew-cp-lwb5/2.=
4.52-r0/smith-nephew-cp-lwb5-2.4.52/LICENSE [license-checksum]
	ERROR: smith-nephew-cp-lwb5-2.4.52-r0 do_populate_lic: Fatal QA =
errors found, failing task.
	ERROR: Logfile of failure stored in: =
/ct/yocto/imx-5.4.70/build/tmp/work/imx6ulevk-poky-linux-gnueabi/smith-nep=
hew-cp-lwb5/2.4.52-r0/temp/log.do_populate_lic.1463178
	ERROR: Task =
(/ct/yocto/imx-5.4.70/sources/meta-laird-cp/recipes-packages/images/smith-=
nephew-cp-lwb5.bb:do_populate_lic) failed with exit code =E2=80=981=E2=80=99=


My gut feeling is that the SRC_URI[mdtsum] and SRC_URI[sha256sum] and =
out of whack because I needed to switch from 2.4.54  to  2.4.52 of =
apache.  You supplied the SRC_URI[sha256sum] based on a 2.4.54 version =
of Apache?  and I filled in the SRC_URI[md5sum] based on what bitable =
told me it should be. If you can tell me how to get the correct =
SRC_URI[sha256sum] for apache 2.4.52 I think I can get past this error.


Thanks, Jim




=20









> On Aug 29, 2022, at 4:06 PM, forums <forums@bitflipper.net> wrote:
>=20
>=20
>=20
>=20
> Peter, I think I know what caused the Error. I think apache 2.4.52 =
will be sufficient for our current needs.=20
>=20
> I have subsequently changed the PV to 2.4.52. But that LC_FILES_CHKSUM =
is still generating the same build error. How did you get the MD5 =
Checksum? If you can tell me which file you took it form that would be =
helpful and I can go and get that MD5 sum from Honiker tree =E2=80=94 =
whatever file it was that I should get it from.
>=20
>=20
> Thanks, Jim
>=20
>=20
>> On Aug 29, 2022, at 3:34 PM, bitflipper <forums@bitflipper.net> =
wrote:
>>=20
>>=20
>>=20
>>=20
>> Peter, I plugging in the  bbappend as is except for the md5sumthat =
was spit out by the yocto build. Here=E2=80=99s my bbappend file:
>>=20
>>=20
>> 	FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:=E2=80=9D
>>=20
>> 	LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3=E2=80=9D
>>=20
>> 	PV =3D =E2=80=9C2.4.54"
>>=20
>> 	SRC_URI +=3D =
"file://0008-Fix-perl-install-directory-to-usr-bin.patch \
>>           =
file://0009-support-apxs.in-force-destdir-to-be-empty-string.patch \
>>           file://0001-make_exports.awk-not-expose-the-path.patch=E2=80=9D=

>> 	SRC_URI_remove =3D "file://apache-configure_perlbin.patch=E2=80=9D=

>>=20
>> 	SRC_URI[md5sum] =3D "<861b43073ab416d689f1fc4dfa087711>=E2=80=9D
>> 	SRC_URI[sha256sum] =3D =
"eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c340"
>>=20
>>=20
>> When I run bitable, I get the following error:
>>=20
>>=20
>>=20
>> 	ERROR: smith-nephew-cp-lwb5-2.4.54-r0 do_populate_lic: QA Issue: =
smith-nephew-cp-lwb5: LIC_FILES_CHKSUM points to an invalid file: =
/ct/yocto/imx-5.4.70/build/tmp/work/imx6ulevk-poky-linux-gnueabi/smith-nep=
hew-cp-lwb5/2.4.54-r0/smith-nephew-cp-lwb5-2.4.54/LICENSE =
[license-checksum]
>> 	ERROR: smith-nephew-cp-lwb5-2.4.54-r0 do_populate_lic: Fatal QA =
errors found, failing task.
>> 	ERROR: Logfile of failure stored in: =
/ct/yocto/imx-5.4.70/build/tmp/work/imx6ulevk-poky-linux-gnueabi/smith-nep=
hew-cp-lwb5/2.4.54-r0/temp/log.do_populate_lic.1455644
>> 	ERROR: Task =
(/ct/yocto/imx-5.4.70/sources/meta-laird-cp/recipes-packages/images/smith-=
nephew-cp-lwb5.bb:do_populate_lic) failed with exit code '1'
>>=20
>>=20
>> I=E2=80=99m suspecting its something to do with the LIC_FILES_CHKSUM =
??
>>=20
>> Any input appreciated.
>>=20
>>=20
>>=20
>> Thanks, Jim
>>=20
>>=20
>>=20
>>=20
>>> On Aug 28, 2022, at 10:49 PM, bitflipper <forums@bitflipper.net> =
wrote:
>>>=20
>>>=20
>>>=20
>>> Hi Peter. In my mind this process is starting to come together as to =
why is happening. So I copied the bbappend file as is  and I did get the =
error your expected that I would about the md5sum:
>>>=20
>>>=20
>>> ERROR: apache2-2.4.54-r0 do_fetch: Checksum failure fetching =
https://archive.apache.org/dist/httpd/httpd-2.4.54.tar.bz2
>>> ERROR: apache2-2.4.54-r0 do_fetch: Fetcher failure for URL: =
'https://archive.apache.org/dist/httpd/httpd-2.4.54.tar.bz2'. Checksum =
mismatch!
>>> File: '/ct/yocto/imx-5.4.70/downloads/httpd-2.4.54.tar.bz2' has md5 =
checksum 861b43073ab416d689f1fc4dfa087711 when <I don't have this at =
hand, but bitbake will tell you what it should be> was expected
>>> If this change is expected (e.g. you have upgraded to a new version =
without updating the checksums) then you can use these lines within the =
recipe:
>>> SRC_URI[md5sum] =3D "861b43073ab416d689f1fc4dfa087711"
>>> SRC_URI[sha256sum] =3D =
"eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c340"
>>> Otherwise you should retry the download and/or check with upstream =
to determine if the file has become corrupted or otherwise unexpectedly =
modified.
>>>=20
>>> But then I don=E2=80=99t understand what needs to be done with what =
you said here:
>>>=20
>>>>> You then also need to copy the three new patches and any other
>>>>> patches that differs between zeus and master and put them in your
>>>>> layer together with the bbappend file (in a subdirectory called
>>>>> "recipes-httpd/apache2/apache2=E2=80=9D)
>>>=20
>>>=20
>>> My assumption here is that I need to copy the difference between the =
Zeus and Master recipe for apache2 and place them in a file here; =20
>>>=20
>>> 	recipies-httpd/apache2/apache2
>>>=20
>>> The name of the file will be apache2 and it will contain the diffs =
between Zeus and Master for the apache2 recipes. And the diff are from =
the following file:
>>>=20
>>> 	=
./sources/meta-openembedded/meta-webserver/recipes-httpd/apache2/apache2_2=
.4.41.bb
>>>=20
>>> Right?
>>>=20
>>>=20
>>> Thanks, Jim
>>>=20
>>>=20
>>>=20
>>>=20
>>>=20
>>>=20
>>>> On Aug 26, 2022, at 10:03 AM, Peter Kjellerstedt =
<peter.kjellerstedt@axis.com> wrote:
>>>>=20
>>>> [ In the future, please make sure to reply to list and not just to =
me. ]
>>>> [ Top posting since Outlook doesn=E2=80=99t support inline =
responses to HTML mails. ]
>>>>=20
>>>> No, you are supposed to copy the suggest text for the bbappend =
verbatim, with the exception of the SRC_URI[md5sum] which need to be =
corrected to match the actual MD5 sum (which bitbake will tell you when =
you try to build). The suggested additions/deletions for SRC_URI in the =
bbappend I suggested should be correct as specified, based on the =
differences between the apache2 recipe in Zeus and master. You will also =
need to copy the three new patch files from master of meta-webserver, =
and any of the other patches that have been updated between Zeus and =
master. Changing PV takes care of the actual update of the code to the =
new version (since it determines which tar ball is fetched from =
upstream).
>>>>=20
>>>> //Peter
>>>>=20
>>>> From: forums <forums@bitflipper.net>=20
>>>> Sent: den 26 augusti 2022 14:21
>>>> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
>>>> Subject: Re: [yocto] Bitbake + Patches
>>>>=20
>>>>=20
>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"
>>>>=20
>>>> LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3"
>>>>=20
>>>> PV =3D "2.4.54"
>>>>=20
>>>> SRC_URI +=3D =
"file://0008-Fix-perl-install-directory-to-usr-bin.patch \
>>>>        =
file://0009-support-apxs.in-force-destdir-to-be-empty-string.patch \
>>>>        file://0001-make_exports.awk-not-expose-the-path.patch"
>>>> SRC_URI_remove =3D "file://apache-configure_perlbin.patch"
>>>>=20
>>>> SRC_URI[md5sum] =3D "<I don't have this at hand, but bitbake will =
tell you what it should be>"
>>>> SRC_URI[sha256sum] =3D =
"eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c340"
>>>>=20
>>>>=20
>>>> H Peter. I have t admin, looking at the above bbappend, its really =
confusing to me. I=E2=80=99ve looked at some of the documents on bitbake =
and I just can=E2=80=99t find anything to teach me how to put a bbappend =
together to accomplish upgrading an application.
>>>>=20
>>>> Like for example:
>>>>=20
>>>> SRC_URI +=3D =
"file://0008-Fix-perl-install-directory-to-usr-bin.patch
>>>>=20
>>>> I believe this one should be:  =20
>>>>=20
>>>>                         SRC_URI +=3D file:/usr/bin/patch
>>>>=20
>>>> The next one:
>>>>=20
>>>> file://0009-support-apxs.in-force-destdir-to-be-empty-string.patch
>>>>=20
>>>> I=E2=80=99ve no idea what this one will nee to be.
>>>>=20
>>>> And this one:
>>>>=20
>>>> file://0001-make_exports.awk-not-expose-the-path.patch
>>>>=20
>>>> I don=E2=80=99t know what is supposed to go here either.
>>>>=20
>>>>=20
>>>> Then the SRC_URI_remove will be a pointer to the file containing =
the patches containing the diff=E2=80=99e between apache 12.4.1 and =
apache 2.4.54 ? I don=E2=80=99t think you can create a single patch file =
containing diff=E2=80=99s between multiple versions can you? I think it =
would have to be diff=E2=80=99s between apache 2.4.41 and 2.4.42. Right. =
Totally confused as to what to do here.
>>>>=20
>>>> Any further help appreciated.
>>>>=20
>>>> If you know of a resource for me to reference please pass it on. I =
just don=E2=80=99t see any clear documentation that explains how to =
construct a bbappend file.
>>>>=20
>>>>=20
>>>> Thanks, Jim
>>>=20
>>>=20
>>>=20
>>>=20
>>=20
>>=20
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#57937): =
https://lists.yoctoproject.org/g/yocto/message/57937
>> Mute This Topic: https://lists.yoctoproject.org/mt/93191096/7113531
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[forums@bitflipper.net]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>=20
>=20


