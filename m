Return-Path: <washbudh@mail.uc.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FE4DE00C27; Tue,  5 Apr 2016 09:53:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3644 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Apr 2016 09:52:57 PDT
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0105.outbound.protection.outlook.com [157.56.110.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCECEE00C02
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 09:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mailuc.onmicrosoft.com; s=selector1-mail-uc-edu;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=FjSwcaSaqcJDlUbpjupwKCorpvd5BU4DOEgLltkUIzc=;
	b=fPO1QMwVR2sJBhDnY5qM5QDAhcfC0uUERz7sSupzquRm4ywn1x8+6vaAZZHgicDhwao4KHgsTSatOx8Zk7FXKqdaFiMrrwMHfDnjSODdS4xtfe0RP+ulBsecoLPKTB03hA9nE3Clo2appegry6dsUFe1n/JL1A2jxMgxaPs6Eas=
Received: from BN3PR01MB1304.prod.exchangelabs.com (10.163.35.28) by
	BN3PR01MB1303.prod.exchangelabs.com (10.163.35.27) with Microsoft SMTP
	Server (TLS) id 15.1.453.11; Tue, 5 Apr 2016 15:18:34 +0000
Received: from BN3PR01MB1304.prod.exchangelabs.com ([10.163.35.28]) by
	BN3PR01MB1304.prod.exchangelabs.com ([10.163.35.28]) with mapi id
	15.01.0453.021; Tue, 5 Apr 2016 15:18:35 +0000
From: "Washburn, David (washbudh)" <washbudh@mail.uc.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Help Cross Compiling for AVR
Thread-Index: AQHRi2HWc03XbM+zJk+5KHILHo61yw==
Date: Tue, 5 Apr 2016 15:18:35 +0000
Message-ID: <BN3PR01MB130439626CBEDC020B6F455887990@BN3PR01MB1304.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=mail.uc.edu;
x-originating-ip: [25.162.169.4]
x-ms-office365-filtering-correlation-id: 81ac0d3d-6dc9-400b-3068-08d35d658e65
x-microsoft-exchange-diagnostics: 1; BN3PR01MB1303;
	5:B1Vd/X52LRHvbcCNCIJ+lz2DgTY0FEIof/ClznPDlALajAjvBy+3cQhHHlBojmo+iX+cZweSGkJ8sGJox1IgBgtWSO0x1McWST+a9BQAry4Mc/KZ4Pr90b4BZRq8Zre15tbWpOFXH4Cvkr92FwTxCg==;
	24:WYiFOqKNVNnexaI2Gbz7fOLgYauLy9cnc1UDKMq//A24mpu3ViM0OjNkTwn0SZQfGD8O9SPBq6qqqEJ+Ru2pq6vJoqwF0vgRtTlk1PVnO5U=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR01MB1303;
x-microsoft-antispam-prvs: <BN3PR01MB1303E7342A1C89AB59561556879E0@BN3PR01MB1303.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BN3PR01MB1303; BCL:0; PCL:0; RULEID:; SRVR:BN3PR01MB1303; 
x-forefront-prvs: 0903DD1D85
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(51874003)(53754006)(71364002)(586003)(6116002)(3846002)(15975445007)(19617315012)(10400500002)(2501003)(2351001)(1220700001)(102836003)(19627405001)(450100001)(16236675004)(3280700002)(2906002)(5008740100001)(2900100001)(1096002)(189998001)(88552002)(81166005)(5640700001)(5003600100002)(229853001)(107886002)(92566002)(110136002)(1730700002)(77096005)(3660700001)(5004730100002)(74316001)(19580395003)(87936001)(5002640100001)(66066001)(19625215002)(106116001)(75432002)(54356999)(50986999)(122556002)(86362001)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR01MB1303;
	H:BN3PR01MB1304.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: mail.uc.edu
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2016 15:18:35.0823 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f5222e6c-5fc6-48eb-8f03-73db18203b63
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR01MB1303
X-Mailman-Approved-At: Wed, 06 Apr 2016 08:14:50 -0700
Subject: Help Cross Compiling for AVR
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
X-List-Received-Date: Tue, 05 Apr 2016 16:53:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN3PR01MB130439626CBEDC020B6F455887990BN3PR01MB1304prod_"

--_000_BN3PR01MB130439626CBEDC020B6F455887990BN3PR01MB1304prod_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am attempting to get the AVR Toolchain working inside of Yocto, but unfor=
tunately I'm relatively new to Yocto and keep seeing various errors I canno=
t resolve. I was able to follow the instructions HERE<http://www.nongnu.org=
/avr-libc/user-manual/install_tools.html> to get everything working locally=
, but I'm seeing various issues inside of Yocto. I was able to get binutils=
 configured and installed correctly but I haven't had any luck getting GCC =
installed. I am able to get pass the configure and compile stages in Yocto,=
 but when I get to the install task, there's always a failure. The failure =
stems from this task below, which is a part of GCC:

# Add unwind.h, it comes from libgcc which we don't want to build again
install /build-bundle/poky/build/tmp/sysroots/x86_64-linux/usr/lib/avr/gcc/=
avr/4.9.3/include/unwind.h
/build-bundle/poky/build/tmp/work/cortexa53-vfp-neon-poky-linux-gnueabi/gcc=
-target-avr/4.9.3-r0/image/usr/lib/gcc/avr/4.9.3/include/

The reason it fails is because one of the two paths is always incorrect, no=
 matter how I attempt to configure the build. If I configure the TARGET_SYS=
 to be 'avr' during the install task, the path to 'unwind.h' becomes what i=
s shown above, but the unwind header is not there. I *think* it's due to th=
e fact that the TARGET_SYS was set to our default 'arm-poky-linux-gnueabi' =
during the configure stage. If I try to set the configuration to have a TAR=
GET_SYS of 'avr' it might resolve the issue, but unfortunately doing this c=
auses the compile stage to fail with:
    | Makefile:1571: t-oe: No such file or directory
    | make[1]: *** No rule to make target `t-oe'.  Stop.

I am using a slightly modified version of the recipes shown in the link bel=
ow.
         https://lists.yoctoproject.org/pipermail/yocto/2014-December/02278=
1.html

Lastly, here is a link to the GCC commit that talks about the need to copy =
over the file that is causing issues for me:
         https://gcc.gnu.org/ml/gcc-patches/2003-03/msg00367.html

Thanks in advance for any help you can give, and I apologize if any of this=
 is unclear, I am still relatively new to Yocto.

Kind Regards,
      David Washburn




--_000_BN3PR01MB130439626CBEDC020B6F455887990BN3PR01MB1304prod_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p></p>
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
Hi All,&nbsp;</div>
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
<br>
</div>
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
I am attempting to get the AVR Toolchain working inside of Yocto, but unfor=
tunately I'm relatively new to Yocto and keep seeing various errors I canno=
t resolve. I was able to follow the instructions&nbsp;<a href=3D"http://www=
.nongnu.org/avr-libc/user-manual/install_tools.html" target=3D"_blank" styl=
e=3D"color:rgb(17,85,204)">HERE</a>&nbsp;to
 get everything working locally, but I'm seeing various issues inside of Yo=
cto.&nbsp;<span style=3D"font-size:12.8px">I was able to get binutils confi=
gured and installed correctly but I haven't had any luck getting GCC instal=
led. I am able to get pass the configure
 and compile stages in Yocto, but when I get to the install task, there's a=
lways a failure. The failure stems from this task below, which is a part of=
 GCC:</span></div>
<br style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:1=
2.8px">
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
# Add unwind.h, it comes from libgcc which we don't want to build again</di=
v>
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
install&nbsp;/build-bundle/poky/<wbr>build/tmp/sysroots/x86_64-<wbr>linux/u=
sr/lib/avr/gcc/avr/4.9.<wbr>3/include/unwind.h&nbsp;</div>
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
/build-bundle/poky/<wbr>build/tmp/work/cortexa53-vfp-<wbr>neon-poky-linux-g=
nueabi/gcc-<wbr>target-avr/4.9.3-r0/image/usr/<wbr>lib/gcc/avr/4.9.3/includ=
e/</div>
<div style=3D"color:rgb(34,34,34); font-family:arial,sans-serif; font-size:=
12.8px">
<div><br>
</div>
<div><span style=3D"font-size:12.8px">The reason it fails is because one of=
 the two paths is always incorrect, no matter how I attempt to configure th=
e build. If I configure the TARGET_SYS to be&nbsp;'avr'&nbsp;during the ins=
tall task, the path to 'unwind.h' becomes what
 is shown above, but the unwind header is not there. I *think* it's due to =
the fact that the TARGET_SYS was set to our default&nbsp;'<span>arm-poky-li=
nux-gnueabi' during the configure stage.&nbsp;</span>If I try to set the co=
nfiguration to have a TARGET_SYS of 'avr'
 it might resolve the issue, but unfortunately doing this causes the compil=
e stage to fail with:</span></div>
<div><span style=3D"font-size:12.8px">
<div><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>| Makefile:1571: t-oe: No such fi=
le or directory</div>
<div><span>&nbsp;&nbsp;&nbsp;&nbsp;</span>| make[1]: *** No rule to make ta=
rget `t-oe'. &nbsp;Stop.</div>
<br>
</span></div>
<div><span style=3D"font-size:12.8px">I am using a slightly modified versio=
n of the recipes shown in the link below.</span><br>
</div>
<div><span style=3D"font-size:12.8px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-December/022781=
.html" target=3D"_blank" title=3D"https://lists.yoctoproject.org/pipermail/=
yocto/2014-December/022781.html=0A=
Ctrl&#43;Click or tap to follow the link" style=3D"color:rgb(17,85,204)">ht=
tps://lists.yoctoproject.<wbr>org/pipermail/yocto/2014-<wbr>December/022781=
.html</a></span></div>
<div><span style=3D"font-size:12.8px"><br>
</span></div>
<div><span style=3D"font-size:12.8px">Lastly, here is a link to the GCC com=
mit that talks about the need to copy over the file that is causing issues =
for me:</span></div>
<div><span style=3D"font-size:12.8px">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a =
href=3D"https://gcc.gnu.org/ml/gcc-patches/2003-03/msg00367.html" target=3D=
"_blank" style=3D"color:rgb(17,85,204)">https://gcc.gnu.org/ml/gcc-<wbr>pat=
ches/2003-03/msg00367.html</a></span></div>
<div><br>
</div>
<div>Thanks in advance for any help you can give, and I apologize if any of=
 this is unclear, I am still relatively new to Yocto.</div>
<div><br>
</div>
<div>Kind Regards,</div>
<div>&nbsp; &nbsp; &nbsp; David Washburn</div>
<div><br>
</div>
<div><br>
</div>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_BN3PR01MB130439626CBEDC020B6F455887990BN3PR01MB1304prod_--
