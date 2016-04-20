Return-Path: <btv1==91899773384==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA9D0E00D0D; Wed, 20 Apr 2016 10:41:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 953 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Apr 2016 10:41:25 PDT
Received: from mail.seescan.com (mail3.seescan.com [69.43.130.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89F21E006D3
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 10:41:25 -0700 (PDT)
X-ASG-Debug-ID: 1461173131-0b39aa66891aea60001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id qemsE9gCBOnmUB4W (version=TLSv1
	cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Apr 2016 10:25:31 -0700 (PDT)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1044.25;
	Wed, 20 Apr 2016 10:25:30 -0700
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1044.021; Wed, 20 Apr 2016 10:25:30 -0700
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Moti Cohen <motic.mail@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] MySQL recipe for yocto
X-ASG-Orig-Subj: Re: [yocto] MySQL recipe for yocto
Thread-Index: AQHRmyjOLapru0AWo0+245L7Iv2QYZ+THL+A
Date: Wed, 20 Apr 2016 17:25:29 +0000
Message-ID: <1461173123581.97537@seescan.com>
References: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
In-Reply-To: <CAHvG4AC_F76W0GH=fYuv8YMa66hPDqNGv_g4fo_qwBra5muxgg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [50.59.178.108]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1461173131
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 1688
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.2235 1.0000 -0.7063
X-Barracuda-Spam-Score: -0.71
X-Barracuda-Spam-Status: No,
	SCORE=-0.71 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.28906
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: MySQL recipe for yocto
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
X-List-Received-Date: Wed, 20 Apr 2016 17:41:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'd start with the mysql recipe and update the source reference and try to =
build it.


If this fails, you might need to change some other things.


Here's a howto on writing a recipe:


https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-re=
cipe-writing-a-new-recipe



________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Moti Cohen <motic.mail@gmail.com>
Sent: Wednesday, April 20, 2016 10:18 AM
To: yocto@yoctoproject.org
Subject: [yocto] MySQL recipe for yocto

Hi all,
this is my 1'st post to this list so I hope I'm doing it right :)

I need to add MySQL for my yocto build.
Looking online for a recipe - i found that there is one for MySQL under:
/meta-openembedded/meta-oe/recipes-support/mysql/..
The thing is that instead of MySQL, the recipe reffers to MariaDB which is =
a kind of a drop-in replacemnet and since I need to have the "real" MySQL i=
n my build - I cannot use it.
looking into history log of mysql in the meta-openembedded git, it can be s=
een the the switch between MySQL and MariaDB was made at 2013 and from then=
 onwards it's MariaDB.

http://cgit.openembedded.org/meta-openembedded/commit/meta-oe/recipes-suppo=
rt/mysql?id=3D72e23c12296fbc77193898c38426add58d0c2d71

Now to the question, do you know how can I add the "real" MySQL to my build=
 ?
looking before 2013 at the meta-openembedded git i can find a recipe for My=
SQL which seems to support a "real" MySQL however, it's very old version (5=
.1) and I'm not sure how and if I can update it to one of the latest (e.g. =
MySQL 5.6).

Will appriciate any feedback on this.
Thanks in advance,
Motico

