Return-Path: <btv1==064dfc80805==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6B62E00CB2; Mon, 12 Sep 2016 20:51:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1123 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Sep 2016 20:51:18 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18492E00CAB
	for <yocto@yoctoproject.org>; Mon, 12 Sep 2016 20:51:18 -0700 (PDT)
X-ASG-Debug-ID: 1473737553-0b39aa35131f6a0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id 4jgVFSA4BasdQP8F (version=TLSv1.2
	cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO);
	Mon, 12 Sep 2016 20:32:33 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Mon, 12 Sep 2016 20:32:33 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1210.000; Mon, 12 Sep 2016 20:32:33 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Rudolf Streif <rudolf.streif@gmail.com>, Vijayakumar Badiger
	<vijayakumarmb@gmail.com>
Thread-Topic: [yocto] Compilation error
X-ASG-Orig-Subj: Re: [yocto] Compilation error
Thread-Index: AQHSDV3hVThjvXp9kUSAv0r4jOLmu6B3HbwA//+mKLs=
Date: Tue, 13 Sep 2016 03:32:32 +0000
Message-ID: <1473737552217.72706@seescan.com>
References: <CAJ58UNkB-kvS=bcSKSe6h4RHhg-rOqqJy+c9URsYOfNzN-f58A@mail.gmail.com>,
	<CAEKp-abhpsWFtTwwy9rQrRAA_yZtuJ-Qr69OjdDiaM+QWfksZQ@mail.gmail.com>
In-Reply-To: <CAEKp-abhpsWFtTwwy9rQrRAA_yZtuJ-Qr69OjdDiaM+QWfksZQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [72.207.14.60]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1473737553
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1083
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.2267 1.0000 -0.6899
X-Barracuda-Spam-Score: -0.69
X-Barracuda-Spam-Status: No,
	SCORE=-0.69 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.32852
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Compilation error
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
X-List-Received-Date: Tue, 13 Sep 2016 03:51:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Smells like you didn't include a file.


man 2 close says:


#include <unistd.h>


Frederick

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Rudolf Streif <rudolf.streif@gmail.com>
Sent: Monday, September 12, 2016 6:53 PM
To: Vijayakumar Badiger
Cc: Yocto Discussion Mailing List
Subject: Re: [yocto] Compilation error


What recipe? Ideally you want to fix the code and add the function declarat=
ion.

Kind regards,
Rudolf J Streif

On Sep 12, 2016 6:26 PM, "Vijayakumar Badiger" <vijayakumarmb@gmail.com<mai=
lto:vijayakumarmb@gmail.com>> wrote:
Hello All,

I am getting an compilation error like below. Can you pls let me know how t=
o fix this one. Thanks in advance.



 error: implicit declaration of function 'close' [-Werror=3Dimplicit-functi=
on-declaration]
|             close(fd);

Cheers,
Vijay

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto


