Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DEBFE00B20; Mon,  5 May 2014 04:46:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.82.254.106 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 411 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 May 2014 04:46:55 PDT
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.106])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8FC4E00975
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 04:46:54 -0700 (PDT)
Received: from [216.82.254.195:22792] by server-10.bemta-7.messagelabs.com id
	4D/82-15082-29877635; Mon, 05 May 2014 11:40:02 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-7.tower-200.messagelabs.com!1399290002!13502602!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 31154 invoked from network); 5 May 2014 11:40:02 -0000
Received: from mail.mx3.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-7.tower-200.messagelabs.com with RC4-SHA encrypted SMTP;
	5 May 2014 11:40:02 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Mon, 5 May 2014 06:40:16 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH02.digi.com ([fe80::4960:cfbf:ad5e:3cdb%20]) with mapi id
	14.03.0174.001; Mon, 5 May 2014 06:40:01 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: DL_DIR problems
Thread-Index: AQHPaFa/OWC9df7F40Oc5Ndjet7N6w==
Date: Mon, 5 May 2014 11:40:00 +0000
Message-ID: <CF8CE2C0.8C7E%seth.bollinger@digi.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [10.10.32.60]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 05 May 2014 08:05:44 -0700
Subject: DL_DIR problems
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
X-List-Received-Date: Mon, 05 May 2014 11:46:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <F596E70058C587459743FBF20981E8C2@digi.com>
Content-Transfer-Encoding: quoted-printable

Hello All,

We=92re trying to share a DL_DIR over NFS so all developers don=92t have to=
 re-download source files every time they want to do a clean build.  Unfort=
unately we=92re running into problems with lock files that are left behind =
by (sometimes) terminated processes.  This will block users who are trying =
subsequent builds.  How are others approaching this problem?

Thanks,

Seth

