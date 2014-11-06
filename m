Return-Path: <mikhail.zakharov@cognitivesystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A82E00860; Thu,  6 Nov 2014 13:20:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0004]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 13:20:39 PST
Received: from ironport.highqlp.com (ironport.highqlp.com [207.107.155.245])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD377E0084E
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 13:20:39 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApcVAJDlW1SsAWkL/2dsb2JhbABbgmwjVDABIwnLIAuIdBYBAQEBAQECWBcLgjkzCAQdAg1lOlEBFSlCJwQbE4gmAQQDqk2lNpVjBZMyg0WJDoYxhGCCboZtgUcBCgEBAYIjgjSBAwEBAQ
X-IPAS-Result: ApcVAJDlW1SsAWkL/2dsb2JhbABbgmwjVDABIwnLIAuIdBYBAQEBAQECWBcLgjkzCAQdAg1lOlEBFSlCJwQbE4gmAQQDqk2lNpVjBZMyg0WJDoYxhGCCboZtgUcBCgEBAYIjgjSBAwEBAQ
X-IronPort-AV: E=McAfee;i="5600,1067,7613"; a="60127"
X-IronPort-AV: E=Sophos;i="5.07,327,1413259200"; 
   d="scan'208";a="60127"
Received: from unknown (HELO cas.cognitivesystems.com) ([172.1.105.11])
	by ironport.cognitivesystems.com with ESMTP; 06 Nov 2014 16:19:11 -0500
Received: from mb.cognitivesystems.com (2002:ac01:680b::ac01:680b) by
	mb.cognitivesystems.com (2002:ac01:680b::ac01:680b) with Microsoft SMTP
	Server (TLS) id 15.0.995.29; Thu, 6 Nov 2014 16:20:43 -0500
Received: from mb.cognitivesystems.com ([fe80::8d75:bde8:1d24:bd44]) by
	mb.cognitivesystems.com ([fe80::8d75:bde8:1d24:bd44%12]) with mapi id
	15.00.0995.028; Thu, 6 Nov 2014 16:20:43 -0500
From: Mikhail Zakharov <mikhail.zakharov@cognitivesystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: do_make_scripts race condition with externalsrc
Thread-Index: AQHP+geFic+7cug8rkeNNFNB8FD6oQ==
Date: Thu, 6 Nov 2014 21:20:43 +0000
Message-ID: <ee1969c0e04c43e0866e8a2eb627c265@mb.cognitivesystems.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.1.105.2]
MIME-Version: 1.0
Subject: do_make_scripts race condition with externalsrc
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
X-List-Received-Date: Thu, 06 Nov 2014 21:20:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
=0A=
We are having problems with using externalsrc.bbclass for building=0A=
kernel modules (module.bbclass)=0A=
=0A=
When building multiple kernel modules from clean workspace in parallel,=0A=
if one of the modules inherits externalsrc, the build will fail with the=0A=
following error:=0A=
=0A=
OSError: [Errno 20] Not a directory:=0A=
'/home/user/poky/tmp/kernel-scripts.lock/home'=0A=
ERROR: Task 3=0A=
(/home/user/poky/meta-custom/recipes-kernel/externalsrc-module/externalsrc-=
module.bb,=0A=
do_make_scripts)=0A=
=0A=
full error log:=0A=
http://pastebin.com/aP5GMcsw=0A=
=0A=
contents of externalsrc-module.bb:=0A=
http://pastebin.com/QXY2r7dx=0A=
=0A=
re-running bitbake after the failure allows the build to complete=0A=
successfully.=0A=
=0A=
Any help with solutions/workarounds for this would be greatly appreciated.=
=0A=
=0A=
Kind regards,=0A=
Mikhail=0A=
=0A=
=0A=

