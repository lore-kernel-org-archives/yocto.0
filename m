Return-Path: <btv1==8981b9693cf==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 769BFE00C84; Thu, 31 Mar 2016 16:11:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 943 seconds by postgrey-1.32 at yocto-www;
	Thu, 31 Mar 2016 16:11:16 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28B08E00C7E
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 16:11:16 -0700 (PDT)
X-ASG-Debug-ID: 1459464932-0b39aa668ade900001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id WD5fbNS5A2kyx46L (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO) for
	<yocto@yoctoproject.org>; Thu, 31 Mar 2016 15:55:32 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 31 Mar 2016 15:55:31 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Thu, 31 Mar 2016 15:55:31 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Debian Stretch build error "Install SDL devel"
X-ASG-Orig-Subj: Debian Stretch build error "Install SDL devel"
Thread-Index: AQHRi6Bs/OcTJN+KDUy6xQhciuh9Aw==
Date: Thu, 31 Mar 2016 22:55:30 +0000
Message-ID: <1459464929161.35262@seescan.com>
References: <32E0B8718AB0814882747D62286E529302958AF532@ex10.portwell.com.tw>,
	<1459379742245.35790@seescan.com>
In-Reply-To: <1459379742245.35790@seescan.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1459464932
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 420
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.4985 1.0000 0.0000
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.28347
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Debian Stretch build error "Install SDL devel"
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
X-List-Received-Date: Thu, 31 Mar 2016 23:11:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I know that Debian Stretch is not supported, but I'd like to help shake out=
 the errors to get support.


I'm on poky


commit 9fd145d27ec479668fac490a9f1078089f22bf59


I tried to build qemu-native and it failed with the following:


| ERROR: User requested feature sdl
|        configure was not able to find it.
|        Install SDL devel


libsdl1.2-dev is installed.


Any ideas?


Frederick

