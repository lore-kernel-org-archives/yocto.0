Return-Path: <Harinath.maddela@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8435FE00D36; Mon,  2 May 2016 22:43:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0055.outbound.protection.outlook.com [104.47.101.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0C1E00CB5
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 22:43:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=inedasystems.onmicrosoft.com; s=selector1-inedasystems-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=vJQTBPHvhPHNb2Eq4eRr47g3zHxVBVpitCGBsv1HQlA=;
	b=TUwP7QW2G6Q8gMwsz21PRXOPoyChnqwv2IFThyAd1Y9ykmdymp09YMvM0txa1vi1xOji08yQU822BbozH/UR6knOhL6bkSCWfAZ5hqxOegxcIcvAD0WbuCI+wEdQwCgXmDpHY+nm+3FRzkyOwEnzP6YiRDkMpuSyqfnrtQsNENU=
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM (10.164.140.137) with Microsoft
	SMTP Server (TLS) id 15.1.485.9; Tue, 3 May 2016 05:43:14 +0000
Received: from PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) by
	PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM ([10.164.140.137]) with mapi id
	15.01.0485.011; Tue, 3 May 2016 05:43:14 +0000
From: Harinath maddelal <Harinath.maddela@inedasystems.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Error while buildng SGX
Thread-Index: AQHRoVFBiLXzqbXXxUGm3oZY8ypKv5+hyKEAgANcKQuAAKwEAIAA506P
Date: Tue, 3 May 2016 05:43:13 +0000
Message-ID: <PN1PR01MB0333D44ABADD6C708D844EEEEF7A0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
References: <PN1PR01MB03339D46A7D7D48583BF087AEF650@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1spbbhuJsxrKg_hW+nrzXn8oG7iXiejDmTxusUgqFebmeQ@mail.gmail.com>
	<PN1PR01MB03335EB964C553EDFD8B3C9BEF790@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>,
	<6D8F8D7A-41DF-4CF7-8363-059BA95294FB@gmail.com>
In-Reply-To: <6D8F8D7A-41DF-4CF7-8363-059BA95294FB@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com;
	dmarc=none action=none header.from=inedasystems.com; 
x-originating-ip: [175.101.7.226]
x-ms-office365-filtering-correlation-id: bdf78b02-4e0d-443f-1953-08d37315d1f9
x-microsoft-exchange-diagnostics: 1; PN1PR01MB0333;
	5:pZsYnD7//E32jsrhzI28gOs0iABmAMY1UTy4LD0InRR9PFpmy1CEp60QC3GD9iluHrBGcYBP7dOW/b3ujoIFUE1TtgY3LwNb/bDBCBhfDf21BJ7QKhpmG+kcED9vf7A42+zERO0+5ks2di6VB1geTQ==;
	24:NG/aHkmLbKlX54vx/pgWti67oL+e1+11hOU9AwzxQmzo9YEz1fLkyi0e5FAH7avhL4f0d9KE7jYtn2ntzkNIwYtbbiAninvX8sIriSB1cBQ=;
	7:7W0jxTbp0Axi1Ft8h3fncaZBwly5sjoFpJJjtskAoHp9SFo0cXk/jCL90Q69GLGK/tSZW/H+nQwun7wUaag6Ah/KYFrNLxCR99zxVTu1amtM8PP4rRZ+ZzKOWJBDngFe7b0hI0WhpY0+4csYftcp+Qvg7r6HiEfHXtZf8LlBXYElllPWm4KZ+stSrEBxPqhM;
	20:Mk/W2HtmLQpRVBVSqXiMUxovOk8sCfayRy7Vdgsl7AWQP5Dma16L/Lazl+J56Stxet48Ff6Sjm6eTZecb5pywNjT+pc0jUF3rvWFlR5EC63JaJ6b1hoRYE3iJn4Upm5iCs0Ouf0xNoMS18jOfsh+xZynxpaB2YcsqQ/RjHrZBSs=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:PN1PR01MB0333;
x-microsoft-antispam-prvs: <PN1PR01MB03331C39913B7881AD83F15CEF7A0@PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:PN1PR01MB0333; BCL:0; PCL:0; RULEID:; SRVR:PN1PR01MB0333; 
x-forefront-prvs: 0931CB1479
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(51874003)(24454002)(377454003)(53754006)(86362001)(50986999)(54356999)(33656002)(76176999)(87936001)(6116002)(586003)(4326007)(1220700001)(102836003)(3846002)(122556002)(5003600100002)(9686002)(3280700002)(2906002)(3660700001)(31430400001)(5890100001)(8936002)(81166005)(110136002)(77096005)(10400500002)(11100500001)(189998001)(15975445007)(5004730100002)(92566002)(2900100001)(66066001)(2950100001)(5002640100001)(106116001)(5008740100001)(16601075003)(19580395003)(19580405001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:PN1PR01MB0333;
	H:PN1PR01MB0333.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2016 05:43:13.9579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN1PR01MB0333
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
X-List-Received-Date: Tue, 03 May 2016 05:43:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

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


