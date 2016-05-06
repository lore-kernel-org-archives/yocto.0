Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C885AE00E33; Thu,  5 May 2016 20:16:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0049.outbound.protection.outlook.com [104.47.101.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2A33E00C8D
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 20:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=iw4dUDv7Kn5/sC7tb4/DnOMgUCzEdvtZSmG/mG3ScF4=;
	b=a/EC5Sce1+bR3D8PJaL+qPOjixtL1ZB5E7n/0a1bslbLCQizCpDPCPPpO8vYVz4YRc3K9rVszB50RdAiMOfFyKtlKmmuAqbWzoCMbU9lwe8KNUiABWv9nCZw2yv9Uh5D0L10hzIfm+6FKSwm7B+X3WSTwH92FiyGRq7MtsWKieY=
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) by
	PN1PR01MB0335.INDPRD01.PROD.OUTLOOK.COM (10.164.140.139) with Microsoft
	SMTP Server (TLS) id 15.1.485.9; Fri, 6 May 2016 03:16:39 +0000
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) with mapi id
	15.01.0485.014; Fri, 6 May 2016 03:16:39 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Error while buildng SGX
Thread-Index: AQHRoVFBiLXzqbXXxUGm3oZY8ypKv5+hyKEAgANcKQuAAKwEAIAA506PgASQj9M=
Date: Fri, 6 May 2016 03:16:39 +0000
Message-ID: <PN1PR01MB03330E00BD2451A3F0D3D736EF7D0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1spbbhuJsxrKg_hW+nrzXn8oG7iXiejDmTxusUgqFebmeQ@mail.gmail.com>
	<PN1PR01MB03335EB964C553EDFD8B3C9BEF790@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>,
	<6D8F8D7A-41DF-4CF7-8363-059BA95294FB@gmail.com>,
	<PN1PR01MB0333D44ABADD6C708D844EEEEF7A0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <PN1PR01MB0333D44ABADD6C708D844EEEEF7A0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=inedasystems.com; 
x-originating-ip: [175.101.7.226]
x-ms-office365-filtering-correlation-id: 7d9f52d4-db87-4290-bac6-08d3755cd6fb
x-microsoft-exchange-diagnostics: 1; PN1PR01MB0335;
	5:CBrjCLQJPXFgCjXVanl2r81Kxknf+DHqK6SSGOhQWkE+vgiS4VDK5mHWf/WC+WRIiF0ncwaiapBhKlbw1BVUpfcLmEfKfiuYKIhOcoiIhKsspSzv6GRf6fIA8IfVD2Ffr135+6syQnKyVVmOgJMElA==;
	24:K0Laq9dpVFYx6DHOsSbYQ9UbYJZP/+2M7VVsXbRxis3Jq4kW3m7YgkR09AS7WBtLNlEgtW+XFa/hvBGxIzZKq0aSnArOO31fsT447X/1/ho=;
	7:jXnKb0RYwoGPcFTJ+xpeubOUgyx5NFRc0eL05MIQoWvcJjSUvr1OrH7rv0peOV4b049+Fshv7rPoqJy7IYSQKhuDpOdBUc7AFZqDPWb3/kOQR5TKEAixyJGH94/VNdY4zY3xuaj8gore+KxEbJg+vgvfOHzT4xjah5drGBvaRrSny4GQJk5ZSCdPojoJciRu;
	20:7+rDa13tTaJ5MZmG2eJFDGNkP6XkSxM0NrSlGFMfIXoip1P5d3s+n94DZKalc1gzpNxm33uE81DuLELjgTteAqnWOQivAMRPYbJdrPoFD7XFv2pdiqCxHBlSu2yZrOl13iYtL8u7N0hvayMCmE7/Ngal2YzvbUN2RaiuzHwi0fs=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:PN1PR01MB0335;
x-microsoft-antispam-prvs: <PN1PR01MB0335D72BF748F5983B581477EF7D0@PN1PR01MB0335.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:PN1PR01MB0335; BCL:0; PCL:0; RULEID:; SRVR:PN1PR01MB0335; 
x-forefront-prvs: 09347618C4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(377454003)(53754006)(110136002)(9686002)(92566002)(33656002)(189998001)(19580395003)(31430400001)(19580405001)(11100500001)(5004730100002)(10400500002)(66066001)(3660700001)(3280700002)(8936002)(122556002)(86362001)(16601075003)(5008740100001)(54356999)(76176999)(81166005)(5003600100002)(102836003)(6116002)(1220700001)(3846002)(2900100001)(2950100001)(50986999)(77096005)(15975445007)(5890100001)(586003)(4326007)(87936001)(93886004)(106116001)(2906002)(5002640100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:PN1PR01MB0335;
	H:PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2016 03:16:39.3009 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0335
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error while buildng SGX
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
X-List-Received-Date: Fri, 06 May 2016 03:16:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi

Can you please help me in this

Thanks and Regards,
Harinath


________________________________________
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Harinath maddelal <Harinath.maddela@inedasystems.com>
Sent: Tuesday, May 3, 2016 11:13:13 AM
To: Khem Raj
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Error while buildng SGX

Hi

There is one point that i missed out in the last mail.

We have earlier used yocto-1.7.3 and SGX was build fine.
Now we migrated to yocto-1.8.1 and the issue occurs

Yocto-1.7.3 uses compiler of version mipsel-poky-linux-gcc-4.9.1 whereas Yo=
cto-1.8.1 uses version of mipsel-poky-linux-gcc-4.9.2

Is there any way to mention in the poky, to build Yocto-1.8.1 using compile=
r mipsel-poky-linux-gcc-4.9.1 rather than it using mipsel-poky-linux-gcc-4.=
9.2?


Thanks and Regards,
Harinath


________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, May 2, 2016 9:15:58 PM
To: Harinath maddelal
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Error while buildng SGX

> On May 1, 2016, at 10:44 PM, Harinath maddelal <Harinath.maddela@inedasys=
tems.com> wrote:
>
> Hi
>
>> The same builds fine when i use my local gcc of version 4.8.3.
>
> By this i mean we are using our local copy of mips toolchain(mips-linux-g=
nu-gcc-4.8.3)
>
> So i have used poky mips toolchain to build the entire poky(except SGX).
> SGX is built with our local copy of mips toolchain (as it was giving the =
build errors when built with poky mips toolchain, log file attached for ref=
erence)

SGX build system is probably hardcoding CC/CXX variables and not letting en=
vironment to override it. When you build with poky, its important
that CC and CXX variables are effective in the components make system.

>
> Is there any way to build the complete poky using local mips toolchain ra=
ther than using the poky mips toolchain? I just want to know how to use our=
 local toolchain setup to build entire poky.

you should look into external toolchain recipes, Some samples like sourcery=
 toolchain and Linaro toolchain are available as samples.
I for one would advise to not go this route. Since you are not able to take=
 advantage of integration that YP had done using internal
toolchain.

>
> Kindly help me in this regard
>
> Thanks and Regards,
> Harinath
>
>
> ________________________________________
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Saturday, April 30, 2016 7:41:40 AM
> To: Harinath maddelal
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Error while buildng SGX
>
> On Thu, Apr 28, 2016 at 6:34 AM, Harinath maddelal
> <Harinath.maddela@inedasystems.com> wrote:
>> Hi all,
>>
>>
>> When i build sgx using yocto, im getting following errors.
>>
>> The same builds fine when i use my local gcc of version 4.8.3.
>>
>>
>> I have used 1.8.1 Yocto its using 4.9.2 gcc.
>>
>>
>> Can you please help me resolve the issue. Thanks in advance
>>
>>
>> Following is the console build error log
>
> Please provide compiler cmdline for the failing compile, most probably
> its due to messed up -isystem
> on cmdline
>
> ______________________________________________________________________
> This email has been scanned by the Symantec Email Security.cloud service.
> For more information please visit http://www.symanteccloud.com
> ______________________________________________________________________
> <log.do_compile>

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

