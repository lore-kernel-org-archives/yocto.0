Return-Path: <btv1==926561f462b==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39321E00DDC; Thu, 28 Apr 2016 08:25:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.seescan.com (unknown [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93EACE00DD9
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2016 08:25:10 -0700 (PDT)
X-ASG-Debug-ID: 1461857108-0b39aa668920b910001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id ejZsHKuwJTqc5KUy (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 28 Apr 2016 08:25:08 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Thu, 28 Apr 2016 08:25:08 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Thu, 28 Apr 2016 08:25:08 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Burton, Ross" <ross.burton@intel.com>, "S.Jaritz@esa-grimma.de"
	<S.Jaritz@esa-grimma.de>
Thread-Topic: [yocto] how to configure the build packages of a makefile based
	libary
X-ASG-Orig-Subj: Re: [yocto] how to configure the build packages of a makefile
	based libary
Thread-Index: AQHRoUclgcPSoZnVVkWpU3Tj70VxR5+fyiEA//+22hE=
Date: Thu, 28 Apr 2016 15:25:07 +0000
Message-ID: <1461857100201.50766@seescan.com>
References: <OFCE91FA1F.8F1BAE31-ONC1257FA3.0034C745-C1257FA3.00360637@esa-grimma.de>
	<CAJTo0LZxD=ddhu4zkEZXi9=a4KufoiYnf7QG_-n5LgUHXifU_A@mail.gmail.com>
	<OF1318AFAF.4F1EB7F1-ONC1257FA3.0041651C-C1257FA3.0042D0D2@esa-grimma.de>,
	<CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
In-Reply-To: <CAJTo0LbzDJ4=GcYO71VNeVA7RYqnWPpu_zxDPgKcNBBAune48g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1461857108
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 872
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0186 1.0000 -1.8997
X-Barracuda-Spam-Score: -1.90
X-Barracuda-Spam-Status: No,
	SCORE=-1.90 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.29132
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to configure the build packages of a makefile based libary
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
X-List-Received-Date: Thu, 28 Apr 2016 15:25:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Add to bb recipe:


FILES_${PN} +=3D "/usr/local"


Section 9.2:


https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#qa-errors-=
and-warnings



________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Burton, Ross <ross.burton@intel.com>
Sent: Thursday, April 28, 2016 5:44 AM
To: S.Jaritz@esa-grimma.de
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] how to configure the build packages of a makefile base=
d libary


On 28 April 2016 at 13:09, <S.Jaritz@esa-grimma.de<mailto:S.Jaritz@esa-grim=
ma.de>> wrote:
ERROR: QA Issue: libhiredis: Files/directories were installed but not shipp=
ed in any package:
  /usr/local

It either hard-codes /usr/local as the prefix, or if it respects a prefix v=
ariable you should also pass in ${prefix} ${libdir} ${includedir} and so on=
.

Ross

