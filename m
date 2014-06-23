Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 165FDE00547; Mon, 23 Jun 2014 05:06:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [216.82.254.97 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 384 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Jun 2014 05:05:59 PDT
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D7B1E00283
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 05:05:59 -0700 (PDT)
Received: from [216.82.254.211:31241] by server-1.bemta-7.messagelabs.com id
	A7/6F-01656-5A618A35; Mon, 23 Jun 2014 11:59:33 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-2.tower-201.messagelabs.com!1403524772!8610306!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 401 invoked from network); 23 Jun 2014 11:59:32 -0000
Received: from mail.mx4.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-2.tower-201.messagelabs.com with RC4-SHA encrypted SMTP;
	23 Jun 2014 11:59:32 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Mon, 23 Jun 2014 06:59:29 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH02.digi.com ([fe80::4960:cfbf:ad5e:3cdb%20]) with mapi id
	14.03.0174.001; Mon, 23 Jun 2014 06:59:31 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpQ==
Date: Mon, 23 Jun 2014 11:59:30 +0000
Message-ID: <CFCD80D1.95CB%seth.bollinger@digi.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [172.26.1.22]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: File system for alternate partition
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
X-List-Received-Date: Mon, 23 Jun 2014 12:06:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <0FFAF0B42C48C848A9A6EA453ED05094@digi.com>
Content-Transfer-Encoding: quoted-printable

Hello All,

I need to generate a new file system for an alternate partition (not rootfs=
).  What=92s the best way to go about this?  I may need to create files wit=
h all different users/permission (perhaps root).  Do I need to use pseudo? =
 Are there any examples of this out there?

Thanks!

Seth

