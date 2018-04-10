Return-Path: <mark.junghanns@spectra.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D2CCE00AD8; Tue, 10 Apr 2018 02:31:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.85.237.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.spectra.de (mail.spectra.de [195.85.237.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D6F1E009BC
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 02:31:40 -0700 (PDT)
X-SPECTRA-MailScanner-EFA-Watermark: 1523957479.92316@HYX3tlS9Z6Ui8W5sDP2KTg
X-SPECTRA-MailScanner-EFA-From: mark.junghanns@spectra.de
X-SPECTRA-MailScanner-EFA: Found to be clean
X-SPECTRA-MailScanner-EFA-ID: 9B72DA052A.ABF7F
X-SPECTRA-MailScanner-EFA-Information: Please contact it-team@spectra.de for
	more information
Received: from AresMail.spectra.netz (unknown [172.16.10.11])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.spectra.de (Postfix) with ESMTPS id 9B72DA052A;
	Tue, 10 Apr 2018 11:31:18 +0200 (CEST)
Received: from ARESMAIL.spectra.netz ([::1]) by AresMail.spectra.netz ([::1])
	with mapi id 14.03.0123.003; Tue, 10 Apr 2018 11:31:18 +0200
From: Mark Junghanns <mark.junghanns@spectra.de>
To: 'Bruce Ashfield' <bruce.ashfield@windriver.com>,
	"'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-virtualization -> docker not packaged when using
	PACKAGE_CLASSES ?= "package_deb"
Thread-Index: AdPNpZZOYDIvElIxRdmdYCUOL7J0uACWO50AACwIy1A=
Date: Tue, 10 Apr 2018 09:31:17 +0000
Message-ID: <EEF480D2AA622D48BD0D761FB54F5B1BE0D7FC@AresMail.spectra.netz>
References: <EEF480D2AA622D48BD0D761FB54F5B1BE0D57D@AresMail.spectra.netz>
	<0e5a2248-9f4b-ba47-cb3d-8377f1aa3c8f@windriver.com>
In-Reply-To: <0e5a2248-9f4b-ba47-cb3d-8377f1aa3c8f@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.100.146]
x-esetresult: clean, is OK
x-esetid: 37303A29125E4C616C7C62
MIME-Version: 1.0
Subject: Re: meta-virtualization -> docker not packaged when using PACKAGE_CLASSES ?= "package_deb"
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
X-List-Received-Date: Tue, 10 Apr 2018 09:31:44 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Bruce,

unfortunately, there is not a single warning or error message whatsoever th=
rown. The first occasion, some error message is thrown, occurs during do_ro=
otfs where it complains about the missing package "docker" - which is obvio=
usly missing as it has not been build.

As I mentioned in my original post, the docker package is being built when =
using the rpm backend though.

Mark

-----Urspr=FCngliche Nachricht-----
Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]=
 Im Auftrag von Bruce Ashfield
Gesendet: Montag, 9. April 2018 16:30
An: Mark Junghanns; yocto@yoctoproject.org
Betreff: Re: [yocto] meta-virtualization -> docker not packaged when using =
PACKAGE_CLASSES ?=3D "package_deb"

On 04/06/2018 09:13 AM, Mark Junghanns wrote:
> Hello,
> I encountered a funny behavior the other day. While trying to integrate D=
ocker into my image using the openembedded meta-virtualization layer, I hap=
pened to not being able to get my image finalized.
>=20
> Usually I build with
>              PACKAGE_CLASSES ?=3D "package_deb".
>=20
> I also added
>              DISTRO_FEATURES_append =3D " virtualization"
>=20
> The build process aborts at some point within do_rootfs, stating somethin=
g like that the package 'docker' could not be found. I tracked down the pro=
blem to docker's  build/tmp/work/<something>/docker/<version>/deploy-debs/ =
directory. I found the following packages:
>=20
> docker-contrib_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_
> amd64.deb docker-distribution-dev_v2.6.2-r0_amd64.deb
> docker-registry_v2.6.2-r0_amd64.deb
> docker-dbg_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd6
> 4.deb docker-distribution-ptest_v2.6.2-r0_amd64.deb
> docker-distribution-dbg_v2.6.2-r0_amd64.deb
> docker-ptest_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_am
> d64.deb
>=20
>=20
> The package that is actually missing, is the docker package itself. I sup=
pose it would be named docker_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8=
aa935c-r0_amd64.deb.
>=20
> There is not any single warning or error thrown whatsoever during the bui=
ld of docker, it seems to just silently refusing to build the package.
>=20
> Yet, when change PACKAGE_CLASSES ?=3D "package_deb" to PACKAGE_CLASSES ?=
=3D "package_rpm" it would build all required docker RPM-Packages just fine=
. At the end of the day I way able to get a complete image with Docker inte=
grated, which is fine for the moment. Unfortunately I need to stick with th=
e DEB format for update reasons, so eventually I need to deal with this iss=
ue again.
>=20
> Has anyone seen this happening as well? Any idea, where and how to fix th=
is?

I've never seen this, but then again, I've also never used the .deb package=
 backend.

When you were building with .debs, and your image had "docker' in the image=
 install .. was there any errors thrown due to the package not being create=
d ?

Bruce

>=20
> Thanks in advance for your help!
>=20
> Mark
>=20

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

