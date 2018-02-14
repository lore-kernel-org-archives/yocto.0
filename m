Return-Path: <btv1==5833c69e707==Fred.Ollinger@seescan.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 221D5E00DD1; Wed, 14 Feb 2018 13:21:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1142 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Feb 2018 13:21:27 PST
Received: from mail.seescan.com (mail3.seescan.com [69.43.145.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCD65E00DD1
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 13:21:27 -0800 (PST)
X-ASG-Debug-ID: 1518642144-0b39aa1a048b4a0001-yzSStA
Received: from WRIGHT.seescan.com ([192.168.11.30]) by mail.seescan.com with
	ESMTP id NsVZpjj2RRMJSjN9 (version=TLSv1.2
	cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NO);
	Wed, 14 Feb 2018 13:02:24 -0800 (PST)
X-Barracuda-Envelope-From: Fred.Ollinger@seescan.com
Received: from WRIGHT.seescan.com (192.168.11.30) by WRIGHT.seescan.com
	(192.168.11.30) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Wed, 14 Feb 2018 13:02:24 -0800
Received: from WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa]) by
	WRIGHT.seescan.com ([fe80::e4a9:8176:6f01:abfa%12]) with mapi id
	15.00.1263.000; Wed, 14 Feb 2018 13:02:24 -0800
From: Fred Ollinger <Fred.Ollinger@seescan.com>
To: Jean-Pierre Sainfeld <jean-pierre@anki.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] useradd-example.bb
X-ASG-Orig-Subj: Re: [yocto] useradd-example.bb
Thread-Index: AQHTpRJI+H1qzyQbDUq6kocUjxdzs6OkY+Hg
Date: Wed, 14 Feb 2018 21:02:23 +0000
Message-ID: <1518642098162.71210@seescan.com>
References: <CAEv37YucHQ7Oa8YzngU0kQOKrMBEez1_udeAcWqrX7D4-C6jmg@mail.gmail.com>
In-Reply-To: <CAEv37YucHQ7Oa8YzngU0kQOKrMBEez1_udeAcWqrX7D4-C6jmg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.30.2]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[192.168.11.30]
X-Barracuda-Start-Time: 1518642144
X-Barracuda-Encrypted: ECDHE-RSA-AES256-SHA384
X-Barracuda-URL: https://barracuda.seescan.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at seescan.com
X-Barracuda-Scan-Msg-Size: 1195
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0514 1.0000 -1.6909
X-Barracuda-Spam-Score: -1.69
X-Barracuda-Spam-Status: No,
	SCORE=-1.69 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.47929
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: useradd-example.bb
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
X-List-Received-Date: Wed, 14 Feb 2018 21:21:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

How are you deploying the final image on your device?

________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Jean-Pierre Sainfeld <jean-pierre@anki.com>
Sent: Tuesday, February 13, 2018 1:32 PM
To: yocto@yoctoproject.org
Subject: [yocto] useradd-example.bb

Hi,
I am working on yocto system at the jethro rev level.
I am looking to use the meta-skeleton useradd-example.bb<http://useradd-exa=
mple.bb> recipe
So far I have been successful in adding the required users and group
and creating files in the /usr/share directory
The current issue I am facing is the ownership of the created file
I see the right permissions at the do_install() time
however when the image is loaded in the target
those files are reverted to the root:root permissions

The requirement of our platform is that we can create specific users and
make some specific processes  and data files having the proper uid and ueid=
.

I have been able to do all this successfully on the target
but not through the yocto build system

Any assistance in this regard would be fantastic and very cool :-)



--
Jean-Pierre Sainfeld
408-508-1741

