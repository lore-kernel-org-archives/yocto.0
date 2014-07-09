Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23096E006DB; Wed,  9 Jul 2014 06:58:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.82.254.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5195BE006EA
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 06:58:03 -0700 (PDT)
Received: from [216.82.254.195:33338] by server-1.bemta-7.messagelabs.com id
	BB/6E-07762-A6A4DB35; Wed, 09 Jul 2014 13:58:02 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-11.tower-200.messagelabs.com!1404914279!24166197!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 23733 invoked from network); 9 Jul 2014 13:58:01 -0000
Received: from mail.mx4.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-11.tower-200.messagelabs.com with RC4-SHA encrypted SMTP;
	9 Jul 2014 13:58:01 -0000
Received: from MCL-VMS-XCH01.digi.com (10.5.8.49) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Wed, 9 Jul 2014 08:58:01 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MCL-VMS-XCH01.digi.com ([fe80::5587:821d:f8e4:6578%13]) with mapi id
	14.03.0174.001; Wed, 9 Jul 2014 08:57:58 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpZt+9h4A///bqoCAAa6fAIABeREA///TFwCAAAnqgIAAXsaA//+/mgAACuvWAAKyNJsA
Date: Wed, 9 Jul 2014 13:57:57 +0000
Message-ID: <CFE2B38E.98BA%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<1746880.Dvn3uyFT8K@peggleto-mobl5.ger.corp.intel.com>
	<CFD04364.9642%seth.bollinger@digi.com>
	<4926257.DJ1LoBhQc2@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4926257.DJ1LoBhQc2@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [10.10.32.65]
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
X-List-Received-Date: Wed, 09 Jul 2014 13:58:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CBD7105F52366B4E967AAF98F5CA00F2@digi.com>
Content-Transfer-Encoding: quoted-printable


>I'm not sure without digging into it further (which I'm unable to do at
>the=20
>moment, perhaps someone else can.)

Just as an FYI for anyone who might find this thread interesting, I fixed
the problem by adding another hook into poky/lib/oe/image.py before the
IMAGE_CMD hook.

It defaults to doing nothing, but can be overridden by image recipes to
remove directories that have no value for the particular image.

diff --git a/meta/lib/oe/image.py b/meta/lib/oe/image.py
index c9b9033..c74821f 100644
--- a/meta/lib/oe/image.py
+++ b/meta/lib/oe/image.py
@@ -274,6 +274,7 @@ class Image(ImageDepGraph):
                 bb.data.update_data(localdata)
                 localdata.setVar('type', type)
=20
+                cmds.append("\t" + (localdata.getVar("IMAGE_CLEAN_FS",
True) or ""))
                 cmds.append("\t" + localdata.getVar("IMAGE_CMD", True))
                 cmds.append(localdata.expand("\tcd ${DEPLOY_DIR_IMAGE}"))


Seth


