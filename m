Return-Path: <forums@bitflipper.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37609ECAAA2
	for <webhook@archiver.kernel.org>; Mon, 29 Aug 2022 02:49:43 +0000 (UTC)
Received: from omta33.uswest2.a.cloudfilter.net
 (omta33.uswest2.a.cloudfilter.net [35.89.44.32])
 by mx.groups.io with SMTP id smtpd.web11.66199.1661741381196491721
 for <yocto@lists.yoctoproject.org>;
 Sun, 28 Aug 2022 19:49:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bitflipper.net header.s=default header.b=eoebdgd3;
 spf=pass (domain: bitflipper.net, ip: 35.89.44.32,
 mailfrom: forums@bitflipper.net)
Received: from eig-obgw-6001a.ext.cloudfilter.net ([10.0.30.140])
	by cmsmtp with ESMTP
	id SU7poFdnSsYJKSUqKoJLFA; Mon, 29 Aug 2022 02:49:40 +0000
Received: from gator4161.hostgator.com ([108.167.133.17])
	by cmsmtp with ESMTP
	id SUqIoSLOvJzQ5SUqIo6DJV; Mon, 29 Aug 2022 02:49:39 +0000
X-Authority-Analysis: v=2.4 cv=MaV/Brzf c=1 sm=1 tr=0 ts=630c2943
 a=wy83rNxz+atVFkX2aYqp/w==:117 a=zmJLnD9S6R+eT+5CidqXXQ==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=IkcTkHD0fZMA:10 a=biHskzXt2R4A:10
 a=myVjTR8LsXQA:10 a=mV9VRH-2AAAA:8 a=3-RhneuVAAAA:8 a=OycbvLwyAAAA:8
 a=aqdNDSJpzFylkptGxJYA:9 a=QEXdDO2ut3YA:10 a=VLVLkjT_5ZicWzSuYqSo:22
 a=K7D-rfjolMOoSJWbC0j4:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=bitflipper.net; s=default; h=To:References:Message-Id:
	Content-Transfer-Encoding:Cc:Date:In-Reply-To:From:Subject:Mime-Version:
	Content-Type:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Yq+21bwBGmmu7b/Z3hmxv5AvSEhVYg4KwLzqZWJU/V0=; b=eoebdgd37io/1MGwCSKQYk8aOs
	JLGF3IB8pBgrmLU+f1miMH/eoWvqbaANoaEMbiDyyU7SYe8FIxI6wozcfQA/8Do+zEDvmLI69ItG1
	69FAji1d+te7Yx6A7t6HN4IbIBpJ81iQpG4GpsDvzb/hQJ7nctxvXiUdiwDmTV00qLz4lGAHb/0OH
	LLBiVLM0A4dCfMM/7xBW7Nnt6zvLEdOTeUjPqzS7emtsdQw9JwbQF11rI7tiXpszKiqK1+d+YhLT7
	+g7p9VcoxIZzMiJlAQ9NYrj7aRWck7Lv1ctywH3eCRe5OTMdFd2kamn7IxWVRSGmWtrblfKe3+D2y
	DNC1Okkg==;
Received: from pool-173-48-211-43.bstnma.fios.verizon.net
 ([173.48.211.43]:51208 helo=smtpclient.apple)
	by gator4161.hostgator.com with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <forums@bitflipper.net>)
	id 1oSUqH-000SUm-GQ;
	Sun, 28 Aug 2022 21:49:37 -0500
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
Subject: Re: [yocto] Bitbake + Patches
From: forums <forums@bitflipper.net>
In-Reply-To: <9222c257155a4d5aa93db2f0f9d1047b@axis.com>
Date: Sun, 28 Aug 2022 22:49:35 -0400
Cc: "Yocto (yocto@lists.yoctoproject.org)" <yocto@lists.yoctoproject.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <7B020362-F600-4BF9-BFC0-9E7C93CAE605@bitflipper.net>
References: <53C07165-3951-4450-B175-E323971C8DEC@bitflipper.net>
 <CAMKF1spvyQh1czn+HiKmppXBCO_tkor_3Ogfj6wguwA0x+tAyA@mail.gmail.com>
 <fcfe7d1380ab4d2598cff5004028d419@axis.com>
 <B58205E1-72E9-41F6-9A52-A440A62C3C6B@bitflipper.net>
 <899c12e4c6d34a4298b84b7abf022a82@axis.com>
 <0C54FD2B-AEAB-4425-9CEB-FFCA85458A16@bitflipper.net>
 <9222c257155a4d5aa93db2f0f9d1047b@axis.com>
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
X-Exim-ID: 1oSUqH-000SUm-GQ
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: pool-173-48-211-43.bstnma.fios.verizon.net (smtpclient.apple)
 [173.48.211.43]:51208
X-Source-Auth: forums@bitflipper.net
X-Email-Count: 1
X-Org: HG=hgshared;ORG=hostgator;
X-Source-Cap: YmFsc29uODg7YmFsc29uODg7Z2F0b3I0MTYxLmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CMAE-Envelope: 
 MS4xfNIMgPYjODaKFQBVYp3PhCJgue+sVNl5ZY8x4ilRebrYaPr+7b4PugofHWKDWjapDmhqg/CLG1sAGY8KrLlaX+ZdVI+Nogv2mP2Vg21A9iy0MiIAaWqY
 lvc+x/N4mcGc+721knsZHD6eiUTyhVUG0ATjUv3xiCPSo7CFkaNQffOBg6tNcRgwikFhzOSo7vGlSf935c/C0zMeXJB3dFO3F5uzG6l9xbA16qmorwH7xrtK
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Aug 2022 02:49:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57932



Hi Peter. In my mind this process is starting to come together as to why =
is happening. So I copied the bbappend file as is  and I did get the =
error your expected that I would about the md5sum:


ERROR: apache2-2.4.54-r0 do_fetch: Checksum failure fetching =
https://archive.apache.org/dist/httpd/httpd-2.4.54.tar.bz2
ERROR: apache2-2.4.54-r0 do_fetch: Fetcher failure for URL: =
'https://archive.apache.org/dist/httpd/httpd-2.4.54.tar.bz2'. Checksum =
mismatch!
File: '/ct/yocto/imx-5.4.70/downloads/httpd-2.4.54.tar.bz2' has md5 =
checksum 861b43073ab416d689f1fc4dfa087711 when <I don't have this at =
hand, but bitbake will tell you what it should be> was expected
If this change is expected (e.g. you have upgraded to a new version =
without updating the checksums) then you can use these lines within the =
recipe:
SRC_URI[md5sum] =3D "861b43073ab416d689f1fc4dfa087711"
SRC_URI[sha256sum] =3D =
"eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c340"
Otherwise you should retry the download and/or check with upstream to =
determine if the file has become corrupted or otherwise unexpectedly =
modified.

But then I don=E2=80=99t understand what needs to be done with what you =
said here:

>> You then also need to copy the three new patches and any other
>> patches that differs between zeus and master and put them in your
>> layer together with the bbappend file (in a subdirectory called
>> "recipes-httpd/apache2/apache2=E2=80=9D)


My assumption here is that I need to copy the difference between the =
Zeus and Master recipe for apache2 and place them in a file here; =20

	recipies-httpd/apache2/apache2

The name of the file will be apache2 and it will contain the diffs =
between Zeus and Master for the apache2 recipes. And the diff are from =
the following file:

	=
./sources/meta-openembedded/meta-webserver/recipes-httpd/apache2/apache2_2=
.4.41.bb

Right?


Thanks, Jim






> On Aug 26, 2022, at 10:03 AM, Peter Kjellerstedt =
<peter.kjellerstedt@axis.com> wrote:
>=20
> [ In the future, please make sure to reply to list and not just to me. =
]
> [ Top posting since Outlook doesn=E2=80=99t support inline responses =
to HTML mails. ]
> =20
> No, you are supposed to copy the suggest text for the bbappend =
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
> =20
> //Peter
> =20
> From: forums <forums@bitflipper.net>=20
> Sent: den 26 augusti 2022 14:21
> To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> Subject: Re: [yocto] Bitbake + Patches
> =20
> =20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${BPN}:"
>=20
> LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dbddeddfac80b2c9a882241d008bb41c3"
>=20
> PV =3D "2.4.54"
>=20
> SRC_URI +=3D "file://0008-Fix-perl-install-directory-to-usr-bin.patch =
\
>           =
file://0009-support-apxs.in-force-destdir-to-be-empty-string.patch \
>           file://0001-make_exports.awk-not-expose-the-path.patch"
> SRC_URI_remove =3D "file://apache-configure_perlbin.patch"
>=20
> SRC_URI[md5sum] =3D "<I don't have this at hand, but bitbake will tell =
you what it should be>"
> SRC_URI[sha256sum] =3D =
"eb397feeefccaf254f8d45de3768d9d68e8e73851c49afd5b7176d1ecf80c340"
> =20
> =20
> H Peter. I have t admin, looking at the above bbappend, its really =
confusing to me. I=E2=80=99ve looked at some of the documents on bitbake =
and I just can=E2=80=99t find anything to teach me how to put a bbappend =
together to accomplish upgrading an application.
> =20
> Like for example:
> =20
> SRC_URI +=3D "file://0008-Fix-perl-install-directory-to-usr-bin.patch
> =20
> I believe this one should be:  =20
> =20
>                            SRC_URI +=3D file:/usr/bin/patch
> =20
> The next one:
> =20
> file://0009-support-apxs.in-force-destdir-to-be-empty-string.patch
> =20
> I=E2=80=99ve no idea what this one will nee to be.
> =20
> And this one:
> =20
> file://0001-make_exports.awk-not-expose-the-path.patch
> =20
> I don=E2=80=99t know what is supposed to go here either.
> =20
> =20
> Then the SRC_URI_remove will be a pointer to the file containing the =
patches containing the diff=E2=80=99e between apache 12.4.1 and apache =
2.4.54 ? I don=E2=80=99t think you can create a single patch file =
containing diff=E2=80=99s between multiple versions can you? I think it =
would have to be diff=E2=80=99s between apache 2.4.41 and 2.4.42. Right. =
Totally confused as to what to do here.
> =20
> Any further help appreciated.
> =20
> If you know of a resource for me to reference please pass it on. I =
just don=E2=80=99t see any clear documentation that explains how to =
construct a bbappend file.
> =20
> =20
> Thanks, Jim


