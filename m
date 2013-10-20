Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A76E0074B
	for <yocto@yoctoproject.org>; Sun, 20 Oct 2013 09:30:23 -0700 (PDT)
Received: from [216.82.249.212:23664] by server-10.bemta-12.messagelabs.com id
	18/C7-14826-E1504625; Sun, 20 Oct 2013 16:30:22 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-3.tower-219.messagelabs.com!1382286618!1249280!1
X-Originating-IP: [203.101.96.7]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8191 invoked from network); 20 Oct 2013 16:30:21 -0000
Received: from unknown (HELO BLRINMSHTCAS01.bglrodc.lntinfotech.com)
	(203.101.96.7)
	by server-3.tower-219.messagelabs.com with AES128-SHA encrypted SMTP;
	20 Oct 2013 16:30:21 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.1.229]) by
	BLRINMSHTCAS01.bglrodc.lntinfotech.com ([172.28.0.81]) with mapi;
	Sun, 20 Oct 2013 22:00:18 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sun, 20 Oct 2013 21:55:23 +0530
Thread-Topic: =?Windows-1252?Q?How_to_enable_the_LTP_in_=93core-image-basic=94?=
Thread-Index: AQHOzTeEIL9HvB0qaUSB0Bc73xPamZn9x4bp
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52281@BLRINMSMBX01.bglrodc.lntinfotech.com>
References: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52280@BLRINMSMBX01.bglrodc.lntinfotech.com>
In-Reply-To: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52280@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: =?UTF-8?B?Rlc6IEhvdyB0byBlbmFibGUgdGhlIExUUCBpbiDigJxjb3JlLWltYWdlLWJhc2lj4oCd?=
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
X-List-Received-Date: Sun, 20 Oct 2013 16:30:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,=20
      I wants to share that - LTP packages has been build with "core-image-=
basic". Now the "core-image-basic" includes the ltp test scripts.=20
 I got the ltp test script on the QEMU and target under the "/opt/ltp".
I have executed the LTP test script successfully on QEMU as well as target.=
=20

Thanks a lot for the support.=20




Thanks & Regards
Amit K



________________________________________
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] On Be=
half Of Amit Kumar [Amit.Kumar@lntinfotech.com]
Sent: Sunday, October 20, 2013 7:24 AM
To: yocto@yoctoproject.org
Subject: [yocto] How to enable the LTP in =93core-image-basic=94

Hi,

How to enable the LTP in =93core-image-basic=94

I have tried to enable the LTP for =93core-image-basic=94  for that i have =
edit
=93core-image-basic.bb=94 -->  IMAGE_FEATURES +=3D "ssh-server-openssh ltp"=
 but the final executable image does not contains the ltp utiltiy.

Than i tried the add the =93tools-testapp=94 but in that case also in final=
 image no ltp.
Also tried to add the RDEPEND_${PN} +=3D "ltp" in the image recipe file but=
 still in am not able to see the ltp image in my final running image on qem=
u.

In all the cases during the bitbake build the ltp packages has been build b=
ut the image is not yet added in final running image.

Could you please suggest me what setp is missing, why it's not get added in=
 my final image?



Thanks & Regards
Amit K

The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and  using or disseminating the information,  and must notify the sen=
der and delete it from their system. L&T Infotech will not accept responsib=
ility or liability for the accuracy or completeness of, or the presence of =
any virus or disabling code in this e-mail"
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

