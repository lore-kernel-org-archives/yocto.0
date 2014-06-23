Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12D84E00507; Mon, 23 Jun 2014 08:34:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.243.196 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 379 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Jun 2014 08:34:39 PDT
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6B41E0027B
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 08:34:39 -0700 (PDT)
Received: from [216.82.241.132:56953] by server-4.bemta-8.messagelabs.com id
	4C/95-04679-19748A35; Mon, 23 Jun 2014 15:28:17 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-2.tower-45.messagelabs.com!1403537296!38206306!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 24418 invoked from network); 23 Jun 2014 15:28:16 -0000
Received: from mail.mx3.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-2.tower-45.messagelabs.com with RC4-SHA encrypted SMTP;
	23 Jun 2014 15:28:16 -0000
Received: from MCL-VMS-XCH01.digi.com (10.5.8.49) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Mon, 23 Jun 2014 10:28:10 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MCL-VMS-XCH01.digi.com ([fe80::5587:821d:f8e4:6578%13]) with mapi id
	14.03.0174.001; Mon, 23 Jun 2014 10:28:15 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: =?iso-8859-1?Q?S=F8ren_Holm?= <sgh@sgh.dk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpZt+9h4A///bqoA=
Date: Mon, 23 Jun 2014 15:28:14 +0000
Message-ID: <CFCDB10A.95E3%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com> <1786383.3DlYgSqWZF@koontz>
In-Reply-To: <1786383.3DlYgSqWZF@koontz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [172.26.1.36]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 23 Jun 2014 15:34:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <CDD6AA683A718C40BBD911BC12C84E3F@digi.com>
Content-Transfer-Encoding: quoted-printable


>Make bitbake give you a tar.bz2 and then create the partitions etc.
>yourself=20
>using an additional script. Wether it could be integrate I do not know.

I guess I didn=B9t think about using a full image as I would need to remove
a bunch of stuff, but maybe that is the best way.  That way I can keep the
flexibility of defining recipes that would be installed to my data
partition image.  I will give it a try.

Seth


