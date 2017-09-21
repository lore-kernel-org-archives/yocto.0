Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AC6DE00CC2; Thu, 21 Sep 2017 03:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EB60E00C14
	for <yocto@yoctoproject.org>; Thu, 21 Sep 2017 03:36:23 -0700 (PDT)
Received: from DEBEMAIL001.kostal.int ([10.20.2.181]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v8LAaGEL003745 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Thu, 21 Sep 2017 12:36:17 +0200
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL001.kostal.int 
	(10.20.2.181) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Thu, 
	21 Sep 2017 12:36:16 +0200
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1320.000; Thu, 21 Sep 2017 12:36:16 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Public key for U-Boot verified boot is not inserted in DTB when 
	rebuilding from sstate
Thread-Index: AdMyqoNPUyvvVz3ATOKXntRCdGhWWA==
Date: Thu, 21 Sep 2017 10:36:16 +0000
Message-ID: <3f15ed46219a40ce8cfe8ba5ab6b43f7@DEBEMAIL002.kostal.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Subject: Public key for U-Boot verified boot is not inserted in DTB when rebuilding from sstate
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
X-List-Received-Date: Thu, 21 Sep 2017 10:36:25 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a problem with U-Boot verified boot and the sstate caching of build =
artifacts.

On a clean rebuild (deleted sstate and tmp dir), the signed FIT image and U=
-Boot incl. the public key are correctly created.
But when I delete the tmp dir and let bitbake recreate it from sstate, the =
public key in U-Boot is missing.

The task sequence according to uboot-sign.bbclass is:

#   u-boot:do_deploy_dtb
#   u-boot:do_deploy
#   virtual/kernel:do_assemble_fitimage
#   u-boot:do_concat_dtb
#   u-boot:do_install

The problem seems to be that while assembling the FIT image (from the kerne=
l recipe), the U-Boot DTB in DEPLOY_IMAGE_DIR is modified and the public ke=
y is inserted. After that U-Boot and the new DTB are concatenated. This hap=
pens for the U-Boot image in DEPLOYDIR as well in DEPLOY_IMAGE_DIR.

The problem now is, that the sstate caches the versions of U-Boot and DTB w=
hile deploying it. Since this happens before assembling the FIT image, the =
sstate now contains U-Boot and DTB without the public key.

U-Boot unfortunately (silently!) disables verified boot when the public key=
 is not available in the DTB.

I already filed a bug (#12112) for this, but has anybody an idea how to eas=
ily fix this (other than cleaning the sstate of U-Boot/Kernel after deletin=
g the tmp dir)?

A possible solution would be to remove the dependency between kernel and U-=
Boot. But in this case it would be necessary to insert the public key into =
the DTB while building U-Boot without using the FIT image from the kernel b=
uild. Unfortunately uboot-mkimage does not support this at the moment.


Regards
Christian

--=20
KOSTAL Industrie Elektrik GmbH
www.kostal-industrie-elektrik.com


KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. =
Marwin Kinzl, Dipl.-Oec. Andreas Kostal


