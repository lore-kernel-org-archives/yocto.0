Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18D23E008EC; Mon,  3 Nov 2014 06:23:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBCFBE008BA
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 06:22:51 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhkFAKOOV1SHCzIm/2dsb2JhbABcgmsjVFgEzgaHTQKBIBYBAQEBAQF8hAIBAQEBAxJzBAIBCA0IAQwdBzIUEQEBBAESCBqIHwEMqFaefQEBAQEBAQQBAQEBAQEBAQEBARMEkF84gy2BHgWLOIZihE+ISYZtiimECYN4bAGBR4EDAQEB
X-IronPort-AV: E=Sophos;i="5.07,308,1413259200"; d="scan'208";a="92897543"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	03 Nov 2014 09:22:49 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 09:22:49 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Mon, 3 Nov 2014 09:22:48 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] How to debug dependency/setscene/sstate issues
Thread-Index: Ac/1y75N0KVW1nbGS6yguTxUJ5ovGQAKq5OAAAchGJAAYcLNgAAKILZg
Date: Mon, 3 Nov 2014 14:22:48 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798411584D4@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984114ED96@AZ-US1EXMB03.global.avaya.com>
	<5454DB3F.9080209@mindchasers.com>
	<30C2D590D16A5C46ADFE65219103779841151DE1@AZ-US1EXMB03.global.avaya.com>
	<D07D3A8A.4D1C6%belen.barros.pena@intel.com>
In-Reply-To: <D07D3A8A.4D1C6%belen.barros.pena@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Re: How to debug dependency/setscene/sstate issues
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
X-List-Received-Date: Mon, 03 Nov 2014 14:23:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Bel=E9n,

> -----Original Message-----
> From: Barros Pena, Belen [mailto:belen.barros.pena@intel.com]
> Sent: November 03, 2014 9:12 AM
>=20
> Hi Martin,
>=20
> You probably found this already, but just in case. The instructions to se=
t up
> Toaster:
>=20
> https://wiki.yoctoproject.org/wiki/Toaster
>=20
> When you select a build, the 'Tasks' section in the left navigation will =
tell
> you which tasks used shared state objects (tasks with outcome 'cached'),
> and which tasks didn't find a valid shared state object and executed inst=
ead
> (tasks with cache attempt set to 'File not in cache'). If you click on a =
task
> name, you will see which file the task looked for and where. This might h=
elp
> debug your issue.
>=20
> There is a video explaining the Tasks information in Toaster at
>=20
> https://wiki.yoctoproject.org/wiki/images/a/a4/Toaster-manual-
> v5.webmhd.web
> m
>=20

Thanks for the info. I am now using Toaster successfully.

MV

