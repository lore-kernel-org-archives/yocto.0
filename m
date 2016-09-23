Return-Path: <btv1==074afc221fd==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FE4EE00CA3; Fri, 23 Sep 2016 13:21:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 658 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Sep 2016 13:21:20 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 779AFE008E3
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 13:21:20 -0700 (PDT)
X-ASG-Debug-ID: 1474661421-0b39aa3514c1480001-yzSStA
Received: from GODDARD.seescan.com ([192.168.44.20]) by mail.seescan.com with
	ESMTP id BxIK64SLCCMtW1nO (version=TLSv1.2
	cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO);
	Fri, 23 Sep 2016 13:10:21 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from GODDARD.seescan.com (192.168.44.20) by GODDARD.seescan.com
	(192.168.44.20) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Fri, 23 Sep 2016 13:10:17 -0700
Received: from GODDARD.seescan.com ([fe80::9481:8617:c4a4:7ef3]) by
	GODDARD.seescan.com ([fe80::9481:8617:c4a4:7ef3%12]) with mapi id
	15.00.1210.000; Fri, 23 Sep 2016 13:10:17 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Karim ATIKI <karim_atiki@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  How to add my own c++ project into a Yocto distro
X-ASG-Orig-Subj: Re: [yocto] How to add my own c++ project into a Yocto distro
Thread-Index: AQHSFdSHJskZI8hC7UGtsIyPBFU8r6CHgKXF
Date: Fri, 23 Sep 2016 20:10:17 +0000
Message-ID: <1474661403062.36694@seescan.com>
References: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<CAHp02QN12xqYjCTD1wHWKEsvt0z9rmo01qsQfwYfYZGxtNU9dQ@mail.gmail.com>,
	<HE1PR01MB1883F7F4A2DB619936A62D5492C80@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
In-Reply-To: <HE1PR01MB1883F7F4A2DB619936A62D5492C80@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.44.20]
X-Barracuda-Start-Time: 1474661421
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1432
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.1836 1.0000 -0.9150
X-Barracuda-Spam-Score: -0.92
X-Barracuda-Spam-Status: No,
	SCORE=-0.92 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.33165
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: How to add my own c++ project into a Yocto distro
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
X-List-Received-Date: Fri, 23 Sep 2016 20:21:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Here's how to write a recipe:


http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-recipe-=
writing-a-new-recipe


When we started, we also had custom Makefiles. However, we found it was eas=
ier to add our recipes to automake before making a bitbake recipe.

Automake is a challenge to get started, but worth learning.

I don't regret our move to it.

There are other options that work equally in yocto, though, like cmake.


https://www.gnu.org/software/automake/manual/html_node/Hello-World.html

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Karim ATIKI <karim_atiki@hotmail.com>
Sent: Friday, September 23, 2016 12:53 PM
To: yocto@yoctoproject.org
Subject: [yocto] How to add my own c++ project into a Yocto distro


Hi all,


I have setup a Poky distribution based on a core-image-sato image for both =
RaspberryPi and Toradex Colibri T20.

I have an X11 environment working fine.


Right now, I need to compile our software we developped.

I basically need to fetch SVN repositories and finally to launch a makefile=
 to get everyting work.

The makefile is however not based on autotools. It's a custom makefiles wit=
h regular dependencies.


I just don't know how to achieve this step in Yocto ?

Should I add a recipe ?

Is there a link that describes what I need to achieve ?


Thanks


Karim

