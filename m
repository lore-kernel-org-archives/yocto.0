Return-Path: <btv1==965e9e16acd==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9027E0045E; Mon,  6 Jun 2016 08:41:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1043 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Jun 2016 08:41:20 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFABFE003D9
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 08:41:20 -0700 (PDT)
X-ASG-Debug-ID: 1465226635-0b39aa1573b7ab0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id XgqrGWxD3rQTSHw6 (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 06 Jun 2016 08:23:55 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Mon, 6 Jun 2016 08:23:55 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Mon, 6 Jun 2016 08:23:55 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: "Burton, Ross" <ross.burton@intel.com>, "S.Jaritz@esa-grimma.de"
	<S.Jaritz@esa-grimma.de>
Thread-Topic: [yocto] How to execute a git submodule init/update?
X-ASG-Orig-Subj: Re: [yocto] How to execute a git submodule init/update?
Thread-Index: AQHRv9d+PPyrS2iKjk28oBIeM0t9xJ/cq9uA///jBpU=
Date: Mon, 6 Jun 2016 15:23:55 +0000
Message-ID: <1465226618023.55138@seescan.com>
References: <OFFAB40F65.5F400D73-ONC1257FCA.0034806A-C1257FCA.00350F2B@esa-grimma.de>,
	<CAJTo0LbWRBBLht1m2t+S5Xma8Kaf81Xjoi9ioJrt8QDQD=3ATQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbWRBBLht1m2t+S5Xma8Kaf81Xjoi9ioJrt8QDQD=3ATQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1465226635
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 835
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0275 1.0000 -1.8430
X-Barracuda-Spam-Score: -1.84
X-Barracuda-Spam-Status: No,
	SCORE=-1.84 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0
	tests=BSF_SC0_MISMATCH_TO
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.30214
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 BSF_SC0_MISMATCH_TO    Envelope rcpt doesn't match header
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to execute a git submodule init/update?
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
X-List-Received-Date: Mon, 06 Jun 2016 15:41:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

 $ git submodule init

 $ git submodule update


Also, there's git submodule foreach which allows you to do the same thing t=
o each submodule (such as checkout a different branch).


Frederick

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Burton, Ross <ross.burton@intel.com>
Sent: Monday, June 6, 2016 3:06 AM
To: S.Jaritz@esa-grimma.de
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to execute a git submodule init/update?


On 6 June 2016 at 10:39, <S.Jaritz@esa-grimma.de<mailto:S.Jaritz@esa-grimma=
.de>> wrote:
I have a git source which need some submodules. For that I need to execute =
"git submodule init" and "git submodule update". Any idea how to do it in a=
 comon way?

Use the gitsm: fetcher, which will do that for you.

Ross

