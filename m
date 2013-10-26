Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29E49E01776
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 22:17:27 -0700 (PDT)
Received: from [216.82.254.20:46030] by server-17.bemta-7.messagelabs.com id
	B2/46-23055-5605B625; Sat, 26 Oct 2013 05:17:25 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-9.tower-47.messagelabs.com!1382764642!2038978!1
X-Originating-IP: [203.101.96.7]
X-StarScan-Received: 
X-StarScan-Version: 6.9.12; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 19077 invoked from network); 26 Oct 2013 05:17:24 -0000
Received: from unknown (HELO BLRINMSHTCAS01.bglrodc.lntinfotech.com)
	(203.101.96.7)
	by server-9.tower-47.messagelabs.com with AES128-SHA encrypted SMTP;
	26 Oct 2013 05:17:24 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.1.229]) by
	BLRINMSHTCAS01.bglrodc.lntinfotech.com ([172.28.0.81]) with mapi;
	Sat, 26 Oct 2013 10:47:21 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 26 Oct 2013 10:47:20 +0530
Thread-Topic: telnetd is not running with "core-image-basic"
Thread-Index: AQHO0gqlJnyRWrdaqEKYEZdjjkDF0w==
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5FD52282@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: telnetd is not running with "core-image-basic"
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
X-List-Received-Date: Sat, 26 Oct 2013 05:17:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
     I tried to run the telnetd with "core-image-basic". I follow up the fo=
llowing step to enable the telnetd support in my layer.
I have build the latest inetutils recipe with my layer, the latest version =
of inteutils is "intetutils_1.9.1". I have build the packages successful.
But the telnetd is not available in my "core-image-basic". When i run the t=
he image under QEMU, there is no telnetd under "/usr/sbin/" or "/usr/bin".
It's not present at all.

I have also tried to add the "initscript-telnetd" refer from meta-arago. Bu=
t not succeed.

Please guild me- how can i will get it with my core-image-basic image. Am i=
 missing any step here for that?




Thanks & Regards
Amit K



The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and  using or disseminating the information,  and must notify the sen=
der and delete it from their system. L&T Infotech will not accept responsib=
ility or liability for the accuracy or completeness of, or the presence of =
any virus or disabling code in this e-mail"

