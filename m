Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A608FE00524; Wed, 25 Jun 2014 08:22:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.203 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97755E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 08:22:34 -0700 (PDT)
Received: from [216.82.241.132:32145] by server-11.bemta-8.messagelabs.com id
	36/48-14220-739EAA35; Wed, 25 Jun 2014 15:22:31 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-12.tower-45.messagelabs.com!1403709750!35965720!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 9219 invoked from network); 25 Jun 2014 15:22:31 -0000
Received: from mail.mx2.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-12.tower-45.messagelabs.com with RC4-SHA encrypted SMTP;
	25 Jun 2014 15:22:31 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Wed, 25 Jun 2014 10:22:25 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH03.digi.com ([fe80::484d:c326:e7f1:a9fd%25]) with mapi id
	14.03.0174.001; Wed, 25 Jun 2014 10:22:30 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpZt+9h4A///bqoCAAa6fAIABeREA///TFwCAAAnqgIAAXsaA//+/mgA=
Date: Wed, 25 Jun 2014 15:22:29 +0000
Message-ID: <CFD04364.9642%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<CFD02FD0.962B%seth.bollinger@digi.com>
	<CFD03993.963D%seth.bollinger@digi.com>
	<1746880.Dvn3uyFT8K@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1746880.Dvn3uyFT8K@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [10.10.32.63]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: File system for alternate partition
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
X-List-Received-Date: Wed, 25 Jun 2014 15:22:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <00A49043C57D7847814D0C10CD01F6A7@digi.com>
Content-Transfer-Encoding: quoted-printable


>Are you sure? IMAGE_POSTPROCESS_COMMAND runs after all of the image files
>have=20
>been created; at that time, the contents of the image has already been
>compressed or otherwise combined into the final output file(s), so I
>would think=20
>that would be too late to modify the contents.

I just unzipped the bz2 and most dirs were removed, only /var/lib/opkg
remains.  Is there any workaround for this, or should I wait for the bug
fix?

Seth


