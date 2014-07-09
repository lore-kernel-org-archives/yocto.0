Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50308E006EA; Wed,  9 Jul 2014 07:37:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.1 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE012E006B9
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 07:37:54 -0700 (PDT)
Received: from [216.82.249.147:60243] by server-1.bemta-12.messagelabs.com id
	19/BA-27691-1C35DB35; Wed, 09 Jul 2014 14:37:53 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-9.tower-29.messagelabs.com!1404916672!29254615!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 26930 invoked from network); 9 Jul 2014 14:37:53 -0000
Received: from mail.mx2.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-9.tower-29.messagelabs.com with RC4-SHA encrypted SMTP;
	9 Jul 2014 14:37:53 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Wed, 9 Jul 2014 09:37:55 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH03.digi.com ([fe80::484d:c326:e7f1:a9fd%25]) with mapi id
	14.03.0174.001; Wed, 9 Jul 2014 09:37:51 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Inadvertent RootFS permission pollution
Thread-Index: AQHPm4NcfbAjuNVqS0iFUu+j4fS2CQ==
Date: Wed, 9 Jul 2014 14:37:50 +0000
Message-ID: <CFE2BDED.98CE%seth.bollinger@digi.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [10.10.32.65]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Inadvertent RootFS permission pollution
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
X-List-Received-Date: Wed, 09 Jul 2014 14:37:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7CDB9906D01E9A40B1E4501309D75B57@digi.com>
Content-Transfer-Encoding: quoted-printable

Hello,

I recently ran into a problem where I had trouble determining why the setgi=
d bit was set in my rootfs.  It turns out that debian has this bit set on /=
usr/local (where I was building from), and thus inherited this bit from tha=
t directory tree.  This surprised me, so I thought I would pass it along in=
 case it saves anyone else some time.

Thanks,

Seth

