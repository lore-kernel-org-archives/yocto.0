Return-Path: <SQuirem@fbdfrozen.com>
Received: from mail.fbdfrozen.com (mail.fbdfrozen.com [12.221.11.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0786CE013A2
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2013 06:43:13 -0700 (PDT)
X-ASG-Debug-ID: 1374068591-05fc4a0c0f299f0001-yzSStA
Received: from mail.fbdfrozen.com (fbdlp-ex2010.fbdlp.local
	[::ffff:192.168.40.23]) by mail.fbdfrozen.com with ESMTP id
	x3HKykH8NhoeI5hp for <yocto@yoctoproject.org>;
	Wed, 17 Jul 2013 08:43:11 -0500 (CDT)
X-Barracuda-Envelope-From: SQuirem@FBDFrozen.com
Received: from FBDLP-EX2010.fbdlp.local ([fe80::904:6795:6c68:8ee]) by
	FBDLP-EX2010.fbdlp.local ([fe80::904:6795:6c68:8ee%16]) with mapi id
	14.01.0421.002; Wed, 17 Jul 2013 08:43:11 -0500
From: Saddam Quirem <SQuirem@FBDFrozen.com>
X-Barracuda-Apparent-Source-IP: fe80::904:6795:6c68:8ee
X-Barracuda-BBL-IP: fe80::904:6795:6c68:8ee
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Enabling SFTP on libcurl package
X-ASG-Orig-Subj: Enabling SFTP on libcurl package
Thread-Index: Ac6C8Yi7yWhmdSpCTjWQ3lYVU2Xiaw==
Date: Wed, 17 Jul 2013 13:43:09 +0000
Message-ID: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.41.108]
MIME-Version: 1.0
X-Barracuda-Connect: fbdlp-ex2010.fbdlp.local[192.168.40.23]
X-Barracuda-Start-Time: 1374068591
X-Barracuda-URL: http://192.168.40.3:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at fbdfrozen.com
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.2.137028
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Enabling SFTP on libcurl package
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
X-List-Received-Date: Wed, 17 Jul 2013 13:43:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I've developing an application that uses libcurl using SFTP to transfer dat=
a.=20
When I finally cross-compiled my application and and tested it, it would
print this message: "Protocol sftp not supported or disabled in libcurl".
This means that the libcurl package I built did not have SSH enabled.

I'm wondering if there is some way I can get SFTP supported in libcurl?

I'm using meta-fsl-arm BSP for poky-dylan. Tagetting the i.MX6 processor.=

