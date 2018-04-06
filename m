Return-Path: <mark.junghanns@spectra.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DB89E00956; Fri,  6 Apr 2018 06:23:17 -0700 (PDT)
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
X-Greylist: delayed 574 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Apr 2018 06:23:15 PDT
Received: from mail.spectra.de (mail.spectra.de [195.85.237.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2219E005A9
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 06:23:15 -0700 (PDT)
X-SPECTRA-MailScanner-EFA-Watermark: 1523625213.5714@QveFA/Sc/rmtR7SWulQ7/A
X-SPECTRA-MailScanner-EFA-From: mark.junghanns@spectra.de
X-SPECTRA-MailScanner-EFA: Found to be clean
X-SPECTRA-MailScanner-EFA-ID: 0A4F5A02E8.A9724
X-SPECTRA-MailScanner-EFA-Information: Please contact it-team@spectra.de for
	more information
Received: from AresMail.spectra.netz (unknown [172.16.10.11])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mail.spectra.de (Postfix) with ESMTPS id 0A4F5A02E8
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 15:13:33 +0200 (CEST)
Received: from ARESMAIL.spectra.netz ([::1]) by AresMail.spectra.netz ([::1])
	with mapi id 14.03.0123.003; Fri, 6 Apr 2018 15:13:32 +0200
From: Mark Junghanns <mark.junghanns@spectra.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-virtualization -> docker not packaged when using
	PACKAGE_CLASSES ?= "package_deb"
Thread-Index: AdPNpZZOYDIvElIxRdmdYCUOL7J0uA==
Date: Fri, 6 Apr 2018 13:13:31 +0000
Message-ID: <EEF480D2AA622D48BD0D761FB54F5B1BE0D57D@AresMail.spectra.netz>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.10.20]
x-esetresult: clean, is OK
x-esetid: 37303A29125E4C616C7066
MIME-Version: 1.0
Subject: meta-virtualization -> docker not packaged when using PACKAGE_CLASSES ?= "package_deb"
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
X-List-Received-Date: Fri, 06 Apr 2018 13:23:17 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,
I encountered a funny behavior the other day. While trying to integrate Doc=
ker into my image using the openembedded meta-virtualization layer, I happe=
ned to not being able to get my image finalized.

Usually I build with
            PACKAGE_CLASSES ?=3D "package_deb".

I also added
            DISTRO_FEATURES_append =3D " virtualization"

The build process aborts at some point within do_rootfs, stating something =
like that the package 'docker' could not be found. I tracked down the probl=
em to docker's  build/tmp/work/<something>/docker/<version>/deploy-debs/ di=
rectory. I found the following packages:

docker-contrib_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64=
.deb
docker-distribution-dev_v2.6.2-r0_amd64.deb
docker-registry_v2.6.2-r0_amd64.deb
docker-dbg_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.deb
docker-distribution-ptest_v2.6.2-r0_amd64.deb
docker-distribution-dbg_v2.6.2-r0_amd64.deb
docker-ptest_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa935c-r0_amd64.d=
eb


The package that is actually missing, is the docker package itself. I suppo=
se it would be named docker_17.06.0+gite639a70fbe999d96354a5bcf560231b7b8aa=
935c-r0_amd64.deb.

There is not any single warning or error thrown whatsoever during the build=
 of docker, it seems to just silently refusing to build the package.

Yet, when change PACKAGE_CLASSES ?=3D "package_deb" to PACKAGE_CLASSES ?=3D=
 "package_rpm" it would build all required docker RPM-Packages just fine. A=
t the end of the day I way able to get a complete image with Docker integra=
ted, which is fine for the moment. Unfortunately I need to stick with the D=
EB format for update reasons, so eventually I need to deal with this issue =
again.

Has anyone seen this happening as well? Any idea, where and how to fix this=
?

Thanks in advance for your help!

Mark

