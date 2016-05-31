Return-Path: <btv1==95975651a96==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E0E6E00EB0; Tue, 31 May 2016 09:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1184 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 May 2016 09:45:17 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46D57E00DBC
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 09:45:17 -0700 (PDT)
X-ASG-Debug-ID: 1464711878-0b39aa157180a10001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id PjMrAWekb8vTvSrQ (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO) for
	<yocto@yoctoproject.org>; Tue, 31 May 2016 09:24:38 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Tue, 31 May 2016 09:24:38 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Tue, 31 May 2016 09:24:38 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: calibrator fails to run
X-ASG-Orig-Subj: calibrator fails to run
Thread-Index: AQHRu1jswgNttUyqmUKh22+sn7JaGw==
Date: Tue, 31 May 2016 16:24:37 +0000
Message-ID: <1464711861504.4240@seescan.com>
References: <1464704048-29897-1-git-send-email-bobadeshrikant@gmail.com>
In-Reply-To: <1464704048-29897-1-git-send-email-bobadeshrikant@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1464711878
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1661
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.1105 1.0000 -1.3302
X-Barracuda-Spam-Score: -1.33
X-Barracuda-Spam-Status: No,
	SCORE=-1.33 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.30056
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: calibrator fails to run
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
X-List-Received-Date: Tue, 31 May 2016 16:45:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Goal: Run a cross compiled executable called calibrator from git://git.ti.c=
om/wilink8-wlan/18xx-ti-utils.git=0A=
=0A=
Here's my build script:=0A=
=0A=
export NFSROOT=3D/srv/imx/CS65X-dev=0A=
=0A=
export CROSS_COMPILE=3D/opt/prickle/1.7.2/sysroots/x86_64-pricklesdk-linux/=
usr/bin/arm-prickle-linux-gnueabi/arm-prickle-lin    ux-gnueabi-=0A=
=0A=
export NLVER=3D3=0A=
=0A=
export CFLAGS=3D"-mfloat-abi=3Dhard -I/opt/prickle/1.7.2/sysroots/cortexa9h=
f-vfp-neon-prickle-linux-gnueabi/usr/include/libnl3    "=0A=
=0A=
make =0A=
=0A=
sudo make install NFSROOT=3D/srv/imx/CS65X-dev=0A=
=0A=
----------------------------------------------------------------=0A=
=0A=
This will build the library and install it onto my system.=0A=
=0A=
However, when I run it, I get:=0A=
=0A=
root@yocto:~# /usr/bin/calibrator =0A=
-sh: /usr/bin/calibrator: No such file or directory=0A=
=0A=
But the file does exist, and it even looks like the proper type of executab=
le:=0A=
=0A=
root@yocto:~# file /usr/bin/calibrator  =0A=
                                                                           =
       =0A=
/usr/bin/calibrator: ELF 32-bit LSB executable, ARM, EABI5 version 1 (SYSV)=
, dynamically linked (uses shared libs), for GNU/Li=0A=
nux 2.6.32, BuildID[sha1]=3D96e4d113a9e1a0e90fd60d8d0a59e19323457b5d, strip=
ped=0A=
=0A=
Here's my hardware info:=0A=
=0A=
root@yocto:~# cat /proc/cpuinfo =0A=
processor       : 0=0A=
model name      : ARMv7 Processor rev 10 (v7l)=0A=
BogoMIPS        : 1988.29=0A=
Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls =0A=
CPU implementer : 0x41=0A=
CPU architecture: 7=0A=
CPU variant     : 0x2=0A=
CPU part        : 0xc09=0A=
CPU revision    : 10=0A=
=0A=
Hardware        : Freescale i.MX6 Quad/DualLite (Device Tree)=0A=
Revision        : 0000=0A=
Serial          : 0000000000000000=0A=
=0A=
Any ideas on where to start?=0A=
=0A=
Thanks.=0A=
=0A=
Frederick=

