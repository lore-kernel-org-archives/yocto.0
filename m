Return-Path: <Nicholas.Crast@saabsensis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 189FEE00852; Fri, 19 Sep 2014 09:53:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtpmail.saabsensis.com (smtpmail.saabsensis.com [173.225.55.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5962EE00819
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 09:53:20 -0700 (PDT)
Received: from [10.92.64.54] (helo=ssa-syr-dimstar4.saabusa.com)
	by smtpmail.saabsensis.com with esmtps (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XV1Qt-0002xa-8D; Fri, 19 Sep 2014 12:53:19 -0400
Received: from corpmail01.corp.sensis.com ([10.93.64.16])
	by ssa-syr-dimstar4.saabusa.com with esmtp (Exim 4.72)
	(envelope-from <Nicholas.Crast@saabsensis.com>)
	id 1XV1QZ-000611-O5; Fri, 19 Sep 2014 12:52:59 -0400
Received: from CORPMAIL01.corp.sensis.com ([10.93.64.16]) by
	corpmail01.corp.sensis.com ([10.93.64.16]) with mapi id 14.03.0195.001;
	Fri, 19 Sep 2014 12:52:59 -0400
From: "Crast, Nicholas" <Nicholas.Crast@saabsensis.com>
To: jags gediya <jags.gediya@gmail.com>, "meta-freescale@yoctoproject.org"
	<meta-freescale@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Start daemon or execute script at boot time
Thread-Index: AQHP1BzE4PxWjqh7hkOEYVNjcM72jpwIq/yw
Date: Fri, 19 Sep 2014 16:52:59 +0000
Message-ID: <36A43B0E1E88D84791516F9D44BC48331B3D8630@corpmail01.corp.sensis.com>
References: <CAP3RZogedpFsq8r+2yoydjQ3M=jAhCA8Oby02mZaP-=7=K_EZA@mail.gmail.com>
In-Reply-To: <CAP3RZogedpFsq8r+2yoydjQ3M=jAhCA8Oby02mZaP-=7=K_EZA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.93.80.50]
MIME-Version: 1.0
X-Sensis-MailScanner-Information: Scanned at Sensis Corporation by MailScanner
X-Sensis-MailScanner-ID: 1XV1QZ-000611-O5
X-Sensis-MailScanner: Found to be clean
X-Sensis-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-1.9, required 5, autolearn=not spam,
	BAYES_00 -1.90)
X-Sensis-MailScanner-From: nicholas.crast@saabsensis.com
Subject: Re: Start daemon or execute script at boot time
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
X-List-Received-Date: Fri, 19 Sep 2014 16:53:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Take a look at this link:

http://docs.openembedded.ru/update-rc-d_class.html

It has some good examples and explanation about how to modify the startup s=
equence.=20

-Nick

----------------------------------------
Nick Crast
Associate Software Engineer
Saab Sensis Corporation
Phone: 315-445-5703
Email: Nicholas.Crast@saabsensis.com

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of jags gediya
Sent: Friday, September 19, 2014 11:17 AM
To: meta-freescale@yoctoproject.org; yocto@yoctoproject.org
Subject: [yocto] Start daemon or execute script at boot time

Hi All,

If i want to execute some thing or start daemon at boot time, where can i m=
ake changes in yocto source code, so that it reflects in the file-system?


Thanks,
Jags
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto
-
This message is intended only for the addressee and may contain information=
 that is company confidential or privileged.  Any technical data in this me=
ssage may be exported only in accordance with the U.S. International Traffi=
c in Arms Regulations (22 CFR Parts 120-130) or the Export Administration R=
egulations (15 CFR Parts 730-774). Unauthorized use is strictly prohibited =
and may be unlawful. If you are not the intended recipient, or the person r=
esponsible for delivering to the intended recipient, you should not read, c=
opy, disclose or otherwise use this message. If you have received this emai=
l in error, please delete it, and advise the sender immediately.=20
-          =

