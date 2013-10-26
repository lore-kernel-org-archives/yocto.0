Return-Path: <bart.houkes@sogeti.nl>
Received: from barracuda1.sogeti.nl (barracuda1.sogeti.nl [194.151.67.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7529BE0177D
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 11:23:29 -0700 (PDT)
X-ASG-Debug-ID: 1382811808-03c2540c631231750001-yzSStA
Received: from Heafitz.SGTI.NL ([10.234.192.94]) by barracuda1.sogeti.nl with
	ESMTP id 8InltAr2XiZTAiSZ for <yocto@yoctoproject.org>;
	Sat, 26 Oct 2013 20:23:28 +0200 (CEST)
X-Barracuda-Envelope-From: bart.houkes@sogeti.nl
X-ASG-Whitelist: Client
Received: from Sogmb1.SGTI.NL ([fe80::4c8:63ab:e438:d2e5]) by Heafitz.SGTI.NL
	([fe80::4cd:e589:1805:7a82%11]) with mapi;
	Sat, 26 Oct 2013 20:23:30 +0200
From: "Houkes, Bart" <bart.houkes@sogeti.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 26 Oct 2013 20:23:25 +0200
Thread-Topic: What is poky/<bsp>-user-config.cfg doing and where to get it?
X-ASG-Orig-Subj: What is poky/<bsp>-user-config.cfg doing and where to get it?
Thread-Index: AQHO0nh4sByKqDxW50uykWkbRVpBcQ==
Message-ID: <FBA0FF4F0EC22C4AAFF3D9FD07EF2E383A5C6DAE6A@SOGMB1.SGTI.NL>
Accept-Language: en-US, nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, nl-NL
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[10.234.192.94]
X-Barracuda-Start-Time: 1382811808
X-Barracuda-URL: http://10.234.200.14:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at sogeti.nl
X-Barracuda-BRTS-Status: 1
Subject: What is poky/<bsp>-user-config.cfg doing and where to get it?
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
X-List-Received-Date: Sat, 26 Oct 2013 18:23:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

The script  yocto-kernel   is crashing, because it cannot open the file  /p=
oky/atmel-user-config.cfg
Apperantly, it is <bsp-name> + "-user-config.cfg" and should be in the poky=
 scripts directory.

Who can give me some background about this file, I'm puzzeld (again) ?
Where do I find documentation about this file?

greetings,
Bart Houkes
bart.houkes@sogeti.nl

Disclaimer:=0D
This message contains information that may be privileged or confidential an=
d is the property of Sogeti Nederland B.V. or its Group members. It is inte=
nded only for the person to whom it is addressed. If you are not the intend=
ed recipient, you are not authorized to read, print, retain, copy, dissemin=
ate, distribute, or use this message or any part thereof. If you receive th=
is message in error, please notify the sender immediately and delete all co=
pies of this message.

