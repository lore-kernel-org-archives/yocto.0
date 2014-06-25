Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1092BE00524; Wed, 25 Jun 2014 06:33:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7A05E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 06:33:50 -0700 (PDT)
Received: from [216.82.249.147:43377] by server-2.bemta-12.messagelabs.com id
	D7/4C-20646-CBFCAA35; Wed, 25 Jun 2014 13:33:48 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-8.tower-29.messagelabs.com!1403703227!32664497!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 29034 invoked from network); 25 Jun 2014 13:33:48 -0000
Received: from mail.mx3.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-8.tower-29.messagelabs.com with RC4-SHA encrypted SMTP;
	25 Jun 2014 13:33:48 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Wed, 25 Jun 2014 08:33:36 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH02.digi.com ([fe80::4960:cfbf:ad5e:3cdb%20]) with mapi id
	14.03.0174.001; Wed, 25 Jun 2014 08:33:46 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpZt+9h4A///bqoCAAa6fAIABeREA///TFwCAAAnqgA==
Date: Wed, 25 Jun 2014 13:33:46 +0000
Message-ID: <CFD03993.963D%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<CFCDB10A.95E3%seth.bollinger@digi.com>
	<CFCF191E.9615%seth.bollinger@digi.com>
	<1766239.kehHZp5Wf7@peggleto-mobl5.ger.corp.intel.com>
	<CFD02FD0.962B%seth.bollinger@digi.com>
In-Reply-To: <CFD02FD0.962B%seth.bollinger@digi.com>
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
X-List-Received-Date: Wed, 25 Jun 2014 13:33:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <9B13E6557D509B4A958FDAAE3C9B574A@digi.com>
Content-Transfer-Encoding: quoted-printable


>It looks like the POSTPROCESS commands are run too early.  Subsequent
>actions depend on that directory structure (pre-linking, etc.).  It looks
>like I would need some way to hook _cleanup() in the RootFS subclass.

Actually scratch the above comment.  I wasn=B9t reading the log spew
correctly.  The problem comes in at the image process.  So, I was able to
add an IMAGE_POSTPROCESS_COMMAND and that works.

Thanks!

Seth


