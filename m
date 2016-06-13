Return-Path: <hramasub@in.ibm.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A615E00E8E; Mon, 13 Jun 2016 09:34:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	HTML_MIME_NO_HTML_TAG,MIME_HTML_ONLY,RCVD_IN_DNSWL_LOW autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.156.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  0.4 HTML_MIME_NO_HTML_TAG HTML-only message, but there is no HTML tag
X-Greylist: delayed 6513 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Jun 2016 09:34:52 PDT
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com
	[148.163.156.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69DA6E00E88
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 09:34:52 -0700 (PDT)
Received: from pps.filterd (m0098404.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.11/8.16.0.11) with SMTP id
	u5DEic6r096351
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 10:46:18 -0400
Received: from e28smtp02.in.ibm.com (e28smtp02.in.ibm.com [125.16.236.2])
	by mx0a-001b2d01.pphosted.com with ESMTP id 23geqn2d82-1
	(version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 10:46:18 -0400
Received: from localhost
	by e28smtp02.in.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <yocto@yoctoproject.org> from <hramasub@in.ibm.com>;
	Mon, 13 Jun 2016 20:16:15 +0530
Received: from d28dlp01.in.ibm.com (9.184.220.126)
	by e28smtp02.in.ibm.com (192.168.1.132) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	Mon, 13 Jun 2016 20:16:11 +0530
X-IBM-Helo: d28dlp01.in.ibm.com
X-IBM-MailFrom: hramasub@in.ibm.com
X-IBM-RcptTo: yocto@yoctoproject.org
Received: from d28relay04.in.ibm.com (d28relay04.in.ibm.com [9.184.220.61])
	by d28dlp01.in.ibm.com (Postfix) with ESMTP id AFD94E0040
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 20:19:46 +0530 (IST)
Received: from d50lp03.ny.us.ibm.com (d50lp03.extnet.ibm.com [146.89.104.211])
	by d28relay04.in.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
	u5DEjXIP49479894
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 20:15:34 +0530
Received: from localhost
	by d50lp03.ny.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <yocto@yoctoproject.org> from <hramasub@in.ibm.com>;
	Mon, 13 Jun 2016 10:46:08 -0400
Received: from smtp.notes.na.collabserv.com (192.155.248.93)
	by d50lp03.ny.us.ibm.com (158.87.18.22) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256/256)
	Mon, 13 Jun 2016 10:46:07 -0400
X-IBM-Helo: smtp.notes.na.collabserv.com
X-IBM-MailFrom: hramasub@in.ibm.com
X-IBM-RcptTo: yocto@yoctoproject.org
Received: from /spool/local
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <yocto@yoctoproject.org> from <hramasub@in.ibm.com>;
	Mon, 13 Jun 2016 14:46:06 -0000
Received: from us1a3-smtp04.a3.dal06.isc4sb.com (10.106.154.237)
	by smtp.notes.na.collabserv.com (10.106.227.39) with
	smtp.notes.na.collabserv.com ESMTP; Mon, 13 Jun 2016 14:46:04 -0000
Received: from us1a3-mail111.a3.dal06.isc4sb.com ([10.146.45.113])
	by us1a3-smtp04.a3.dal06.isc4sb.com
	with ESMTP id 2016061314460153-315054 ;
	Mon, 13 Jun 2016 14:46:01 +0000 
In-Reply-To: 
From: "Hariharasubramanian Ramasubramanian" <hramasub@in.ibm.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Jun 2016 14:46:02 +0000
Sensitivity: 
References: 
MIME-Version: 1.0
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: Lotus Domino Web Server Build V851SAAS_05232016_FP5.1 June 03, 2016
X-LLNOutbound: False
X-Disclaimed: 10271
X-TNEFEvaluated: 1
x-cbid: 16061314-0004-0000-0000-0000029FE361
X-IBM-ISS-SpamDetectors: Score=0.439231; BY=0.282969; FL=0; FP=0; FZ=0; HX=0; 
	KW=0; PH=0; SC=0.439231; ST=0; TS=0; UL=0; ISC=
X-IBM-ISS-DetailInfo: BY=3.00005375; HX=3.00000240; KW=3.00000007;
	PH=3.00000004; SC=3.00000170; SDB=6.00715719; UDB=6.00333409;
	UTC=2016-06-13 14:46:04
x-cbparentid: 16061314-3202-0000-0000-000000BEC4EC
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
X-Content-Scanned: Fidelis XPS MAILER
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
Message-Id: <OF48437C7C.95D4B031-ON00257FD1.0050D5C9-00257FD1.00511E6D@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-06-13_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	spamscore=0 suspectscore=2
	malwarescore=0 phishscore=0 adultscore=0 bulkscore=0 classifier=spam
	adjust=0 reason=mlx scancount=1 engine=8.0.1-1604210000
	definitions=main-1606130166
Subject: IPMI server using OpenIPMI ?
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
X-List-Received-Date: Mon, 13 Jun 2016 16:34:55 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial;fo=
nt-size:10.5pt" ><div dir=3D"ltr" ><div>This OpenIPMI recipe (https://layer=
s.openembedded.org/layerindex/recipe/24126/) is enabled by the OpenClovis l=
ayer.</div>
<div><br>While OpenIPMI is a framework for implementing an IPMI management =
"client" tool, it does provide a "lanserv" module. This module acts as an I=
PMI simulator (on qemu) which helps in verifying/testing OpenIPMI client it=
self.</div>
<div>&nbsp;</div>
<div>I am currently evaluating the usage of "lanserv" module within OpenIPM=
I for implementing an IPMI server on the BMC(baseboard management controlle=
r) for the OpenBMC project (<a href=3D"https://github.com/openbmc" >https:/=
/github.com/openbmc</a>).</div>
<div>&nbsp;</div>
<div>Can this list comment/provide guidance on :<br>a) are there openembedd=
ed/yocto based projects which use OpenIPMI (lanserv) to build an IPMI serve=
r ?<br>b) alternate opensource IPMI toolkit/framework for implementing the =
IPMI server on the BMC ?</div>
<div>&nbsp;</div>
<div>Thanks in advance,<br>Hari !</div></div></div><BR>


