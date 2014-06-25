Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6515E00559; Wed, 25 Jun 2014 05:58:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.198 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.198])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB25E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 05:58:22 -0700 (PDT)
Received: from [216.82.241.196:60433] by server-6.bemta-8.messagelabs.com id
	41/28-08185-A67CAA35; Wed, 25 Jun 2014 12:58:18 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-13.tower-46.messagelabs.com!1403701098!36349314!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 23578 invoked from network); 25 Jun 2014 12:58:18 -0000
Received: from mail.mx1.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-13.tower-46.messagelabs.com with RC4-SHA encrypted SMTP;
	25 Jun 2014 12:58:18 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Wed, 25 Jun 2014 07:58:07 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH02.digi.com ([fe80::4960:cfbf:ad5e:3cdb%20]) with mapi id
	14.03.0174.001; Wed, 25 Jun 2014 07:58:17 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpZt+9h4A///bqoCAAa6fAIABeREA///TFwA=
Date: Wed, 25 Jun 2014 12:58:16 +0000
Message-ID: <CFD02FD0.962B%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<CFCDB10A.95E3%seth.bollinger@digi.com>
	<CFCF191E.9615%seth.bollinger@digi.com>
	<1766239.kehHZp5Wf7@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1766239.kehHZp5Wf7@peggleto-mobl5.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 25 Jun 2014 12:58:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <A4BA19EEC6BB864781647C12A2087B3C@digi.com>
Content-Transfer-Encoding: quoted-printable


>You could just delete these within a function added to
>ROOTFS_POSTPROCESS_COMMAND, and that's probably the way to deal with it
>for=20
>now; however for the future I do think the build system ought to be able
>to=20
>clean these files up itself if they aren't supposed to be there. I've
>created a=20
>bug to track the issue:
>
>https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D6478

It looks like the POSTPROCESS commands are run too early.  Subsequent
actions depend on that directory structure (pre-linking, etc.).  It looks
like I would need some way to hook _cleanup() in the RootFS subclass.

Seth


