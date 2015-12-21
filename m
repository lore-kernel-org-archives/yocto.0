Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E34C0E00ABE; Sun, 20 Dec 2015 22:04:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0047.outbound.protection.outlook.com [104.47.101.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A624E00956
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 22:04:05 -0800 (PST)
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM (10.164.118.148) by
	MA1PR01MB0055.INDPRD01.PROD.OUTLOOK.COM (10.164.118.147) with Microsoft
	SMTP Server (TLS) id 15.1.361.13; Mon, 21 Dec 2015 06:04:01 +0000
Received: from MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) by
	MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM ([10.164.118.148]) with mapi id
	15.01.0361.006; Mon, 21 Dec 2015 06:04:01 +0000
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] How to add disk space to qemumips image
Thread-Index: AQHROwUXYbaE7JKN0Uq7pvQIncB0557Ua9gAgACH5D8=
Date: Mon, 21 Dec 2015 06:03:59 +0000
Message-ID: <MA1PR01MB00563CB09CD69B9554C87F7E82E40@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB00569830BC74B09868831E5282E30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>,
	<CAMKF1soDYYREu56B7LOuDpJ5JZVRCJyXaDxJ_B3bL-fAix5dXQ@mail.gmail.com>
In-Reply-To: <CAMKF1soDYYREu56B7LOuDpJ5JZVRCJyXaDxJ_B3bL-fAix5dXQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Raghavendra.Kakarla@inedasystems.com; 
x-originating-ip: [25.164.117.4]
x-microsoft-exchange-diagnostics: 1; MA1PR01MB0055;
	5:AsgTj0NerAOwyt1CbU/k+PsVPlsMlSeZW6AS7EvDIu7zGVeJcStsgtZu1joPVuq/ieOTU/RRyOc94wm8M5ImftyCQCOLqar2GD8qBqMgpp0LCtlAAL8Cxp8xqenVda4tSs9d95ENwTf+5qFYb9wEIA==;
	24:52UVxtII3h1WOezNb2wx8gwHHcokh//qTPFu9MUlsiwnXWsv52j3h698xWXVwuf/c63woAiwZibDgl2Omrtkx1V4D5rh34WhmYlUjGUU7i8=;
	20:Tze5BG1/ZfcfFzlB0Pcbxey/5DRQGXH8pflw3HVbMF4AwuspCvl9ISPuHQb+HbZqtOjmhL2q5+MkjBzTTdKOBvSllixrS+jbs18uZ2bkR5bBgC7ognwDCyI8yqroB2WzcaeaPS2DxfaYX0FqXILNHWCTUKbWAQLN6i7epJLjcCg=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:MA1PR01MB0055;
x-microsoft-antispam-prvs: <MA1PR01MB0055E4227EA1255C48F4847D82E40@MA1PR01MB0055.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(520078)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:MA1PR01MB0055; BCL:0; PCL:0; RULEID:; SRVR:MA1PR01MB0055; 
x-forefront-prvs: 079756C6B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(377454003)(51874003)(53754006)(189002)(199003)(54356999)(2900100001)(2950100001)(77096005)(15975445007)(5003600100002)(76176999)(3846002)(6116002)(10400500002)(97736004)(122556002)(586003)(87936001)(1096002)(33656002)(5001960100002)(81156007)(110136002)(50986999)(1220700001)(101416001)(19580395003)(189998001)(5004730100002)(86362001)(575784001)(92566002)(16601075003)(5002640100001)(19580405001)(106116001)(5008740100001)(40100003)(102836003)(106356001)(11100500001)(105586002)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MA1PR01MB0055;
	H:MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: inedasystems.com does not
	designate permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: inedasystems.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2015 06:03:59.1196 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 854eba29-8407-45bb-9043-7b8b086143dd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB0055
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add disk space to qemumips image
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
X-List-Received-Date: Mon, 21 Dec 2015 06:04:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am try to build the nodejs-5.3 in yocto but I got the following errors.

That errors also not consistent. They are changes for compile to compile.

Could you please help in solving this issue.

The errors are as follows:

mips32r22r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target=
/http_parser/deps/http_parser/http_parser.o
| make[1]: execvp: printf: Argument list too long
| make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/t=
estpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.=
0/out/Release/obj.target/deps/openssl/libopenssl.a] Error 127
| make[1]: *** Waiting for unfinished jobs.



Log data follows:
| DEBUG: Executing shell function do_compile
| make -C out BUILDTYPE=3DRelease V=3D1
| make[1]: Entering directory `/media/testuser/b156d50b-387f-4037-b97b-e0de=
6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-=
r1.0/node-v5.3.0/out'
|   LD_LIBRARY_PATH=3D/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/=
home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node=
-v5.3.0/out/Release/lib.host:/media/testuser/b156d50b-387f-4037-b97b-e0de62=
59af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1=
.0/node-v5.3.0/out/Release/lib.target:$LD_LIBRARY_PATH; export LD_LIBRARY_P=
ATH; cd ../deps/v8/tools/gyp; mkdir -p /media/testuser/b156d50b-387f-4037-b=
97b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodej=
s/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni; "/media/t=
estuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/poky/build/tmp/wo=
rk/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Release/mksnapshot=
" --log-snapshot-positions --logfile "/media/testuser/b156d50b-387f-4037-b9=
7b-e0de6259af11/home/testpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs=
/5.3.0-r1.0/node-v5.3.0/out/Release/obj.target/v8_snapshot/geni/snapshot.lo=
g" "/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc2/poky/=
build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out/Releas=
e/obj.target/v8_snapshot/geni/snapshot.cc" ""
| /bin/sh: /media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/testpc=
2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.0/out=
/Release/mksnapshot: cannot execute binary file: Exec format error
| make[1]: *** [/media/testuser/b156d50b-387f-4037-b97b-e0de6259af11/home/t=
estpc2/poky/build/tmp/work/mips32r2-poky-linux/nodejs/5.3.0-r1.0/node-v5.3.=
0/out/Release/obj.target/v8_snapshot/geni/snapshot.cc] Error 126

Thanks in advance.

Regards,
Raghavendra K.
________________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Monday, December 21, 2015 3:24 AM
To: Raghavendra Kakarla
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] How to add disk space to qemumips image

On Sun, Dec 20, 2015 at 1:03 AM, Raghavendra Kakarla
<Raghavendra.Kakarla@inedasystems.com> wrote:
> Hi All,
>
>
> I want to install some package using nodjs. The package itself having the
> more memory but in my qemumips I have 1000MB of free diskspace.
>
>
> Could please help in adding the extra diskspace to qemimips image.

Read Documentation e.g.

http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-IMAGE_R=
OOTFS_EXTRA_SPACE
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-IMAGE_O=
VERHEAD_FACTOR

>
>
> Thanks in advance.
>
>
> Regards,
>
> Raghavendra K.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

______________________________________________________________________
This email has been scanned by the Symantec Email Security.cloud service.
For more information please visit http://www.symanteccloud.com
______________________________________________________________________

