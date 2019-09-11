Return-Path: <Kamal.Pandey@ifm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5672E00E08; Wed, 11 Sep 2019 08:08:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [91.90.150.80 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1038 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 Sep 2019 08:08:26 PDT
Received: from s2080.ppsmtp.net (s2080.ppsmtp.net [91.90.150.80])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CCDE008F2
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 08:08:25 -0700 (PDT)
Received: from pps.filterd (s2080.ppsmtp.net [127.0.0.1])
	by s2080.ppsmtp.net (8.16.0.27/8.16.0.27) with SMTP id x8BEhi4E020985
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 16:51:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ifm.com;
	h=from : to : subject :
	date : message-id : mime-version : content-type :
	content-transfer-encoding; s=pps;
	bh=dblVS9usrjU9DfiC0Z8RKECMyEYIEE6tGPA8Vj1Iuw0=;
	b=g7itTbPr4AyZtS5xOy9A9fv65UXSevgZ6u5NTmqBRM4j3xNMRTFNfn1cXcjtw8O9c1Ri
	vPAbdThPh6F+tnlHdeMkUKNDDKqjbT2lt0wGPxfiu3z8g2vk//YKhxI7og8KMUABqfKh
	fxyv4BbfM1u8WCiBL58DZ0k1Y8gzb0wqb0+9Bjh/QIG4gBa0z56c4ixeukKro4BS0JSP
	oRucsiYPp+OYipaq/a5latA5Lzs8mF/GayA73mcpT/iNjid0bCmsNQRWV+YWrpiY8ija
	b8kQuMSWUw00NzIlqAkhZBbGNIOHxRSLu4jb0k6SnvZPlvYe2ORu+YnsGyjr8pHGlgTL
	mA== 
Received: from deesdmz226.dmz.es.de.ifm (mail26.ifm.com [194.156.152.226])
	by s2080.ppsmtp.net with ESMTP id 2ux8pb3rkr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 16:51:05 +0200
Received: from deesdmz226.dmz.es.de.ifm (localhost.localdomain [127.0.0.1])
	by deesdmz226.dmz.es.de.ifm (Postfix) with ESMTP id 7611B70383E
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2019 16:51:05 +0200 (CEST)
From: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: assembler error: missing immediate expression at operand 1 --
	`dsb`
Thread-Index: AdVor4bGU8fZG6Y/RyOuVD2maUaRPg==
Date: Wed, 11 Sep 2019 14:51:04 +0000
Message-ID: <9b4538f588e0409b8ab06b530f22997e@ifm.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.29.169.82]
X-TM-AS-Product-Ver: SMEX-12.5.0.2039-8.5.1020-24904.006
X-TM-AS-Result: No-8.291300-5.000000-10
X-TMASE-MatchedRID: tjEGPsGKY1Kb6XtTE4EZZMjz0VPUnBA1xyopNNpabDlemWwoCXDj9S4W
	6yQyD9zpZflNUldJcENbFK4yjcGA+mE12GZvI1jl+CjwEqX1p7lDGK25XyJeOxw0HKhKjTfpOuj
	aVn7d2G2KWP5eRxzbsFHhfKSz2XBNJL07trKZ+y1swYo64ufkVWwr51epbUAtUekjLrC3lTAYij
	GHxpmrmXZ3x3xAAXcjYnAKxv9nxqVDq2SVEk72KAtuKBGekqUpbGVEmIfjf3sTyxlC4x4QvrElo
	b4WvMXy1G7hboMO4l5Bf8AwRFYOHUtVF0WQijsk
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--8.291300-5.000000
X-TMASE-Version: SMEX-12.5.0.2039-8.5.1020-24904.006
X-TM-SNTS-SMTP: 8E54451FC8BF3F242134D986E794BB3E52EE466BC4B4DD8A8B0715B550943B6D2002:9
x-c2processedorg: 02c94ccb-b9eb-40fe-af38-4bcaa8aaafa4
MIME-Version: 1.0
X-CompuMailGateway: Version: 7.00.0.19367.x86_64 COMPUMAIL Date:
	20190911145105Z
X-Proofpoint-ID: SID=2ux8pb3rkr QID=2ux8pb3rkr-1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-09-11_08:, , signatures=0
Subject: assembler error: missing immediate expression at operand 1 -- `dsb`
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
X-List-Received-Date: Wed, 11 Sep 2019 15:08:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi=20
I was trying to compile the rpmsg-lite library provided by NXP for my ZC102=
 board. While compiling I was getting the error as follows:

| Scanning dependencies of target rpmsg-lite
| [ 10%] Building C object rpmsg-lite/CMakeFiles/rpmsg-lite.dir/lib/rpmsg_l=
ite/rpmsg_lite.c.o
| [ 20%] Building C object rpmsg-lite/CMakeFiles/rpmsg-lite.dir/lib/rpmsg_l=
ite/rpmsg_ns.c.o
| [ 30%] Building C object rpmsg-lite/CMakeFiles/rpmsg-lite.dir/lib/virtio/=
virtqueue.c.o
| [ 40%] Building C object rpmsg-lite/CMakeFiles/rpmsg-lite.dir/lib/rpmsg_l=
ite/porting/environment/rpmsg_env_bm.c.o
| {standard input}: Assembler messages:
| {standard input}:199: Error: missing immediate expression at operand 1 --=
 `dsb'
| {standard input}:216: Error: missing immediate expression at operand 1 --=
 `dsb'
| {standard input}:232: Error: missing immediate expression at operand 1 --=
 `dsb'
| rpmsg-lite/CMakeFiles/rpmsg-lite.dir/build.make:158: recipe for target 'r=
pmsg-lite/CMakeFiles/rpmsg-lite.dir/lib/rpmsg_lite/porting/environment/rpms=
g_env_bm.c.o' failed
| make[2]: *** [rpmsg-lite/CMakeFiles/rpmsg-lite.dir/lib/rpmsg_lite/porting=
/environment/rpmsg_env_bm.c.o] Error 1
| CMakeFiles/Makefile2:122: recipe for target 'rpmsg-lite/CMakeFiles/rpmsg-=
lite.dir/all' failed
| make[1]: *** [rpmsg-lite/CMakeFiles/rpmsg-lite.dir/all] Error 2
| Makefile:83: recipe for target 'all' failed
| make: *** [all] Error 2
| WARNING: exit code 2 from a shell command.
| ERROR: Function failed: do_compile (log file is located at /home/iepl007/=
yocto_build/build_openamp/tmp/work/pdm3_zynqmp-pdm3-linux/vhip-bsp-r5-0/201=
8.3+gitAUTOINC+fb88b32f6e-r0/temp/log.do_compile.32551)
ERROR: Task (/home/iepl007/yocto_build/poky/../meta-ifm-vhip-openamp-dev/re=
cipes-rpmsg-lite/vhip_bsp_r5_0/vhip-bsp-r5-0.bb:do_compile) failed with exi=
t code '1'

While compiling mannualy without using bitbake recipe I am able to compile =
successfully.
Can someone help me resolve the issue, any pointers will be appreciated.
I am using Xilinx sdk 2018.3
Thanks & Regards
Kamal Pandey=20


