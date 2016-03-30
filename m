Return-Path: <btv1==8974b1426fb==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36B5EE00920; Wed, 30 Mar 2016 16:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
X-Greylist: delayed 933 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Mar 2016 16:31:19 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59CD0E0086B
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 16:31:19 -0700 (PDT)
X-ASG-Debug-ID: 1459379745-0b39aa668ace120001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id ncjc47gpWlGobEdn (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO) for
	<yocto@yoctoproject.org>; Wed, 30 Mar 2016 16:15:45 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 30 Mar 2016 16:15:44 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Wed, 30 Mar 2016 16:15:44 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Qt5 embedded Japanese input
X-ASG-Orig-Subj: Qt5 embedded Japanese input
Thread-Index: AQHRitn+wwEI2uql506OROYYngpk0A==
Date: Wed, 30 Mar 2016 23:15:44 +0000
Message-ID: <1459379742245.35790@seescan.com>
References: <32E0B8718AB0814882747D62286E529302958AF532@ex10.portwell.com.tw>
In-Reply-To: <32E0B8718AB0814882747D62286E529302958AF532@ex10.portwell.com.tw>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.98]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1459379745
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 240
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.3349 1.0000 -0.2078
X-Barracuda-Spam-Score: -0.21
X-Barracuda-Spam-Status: No,
	SCORE=-0.21 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.28315
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Qt5 embedded Japanese input
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
X-List-Received-Date: Wed, 30 Mar 2016 23:31:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

There are methods in desktop linux which allow one to input Japanese (and o=
ther non-Latin language) text into text fields.


Does anyone have any experience with integrating a stand alone solution int=
o a Qt5 application?


Frederick

