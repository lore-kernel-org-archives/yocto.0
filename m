Return-Path: <Brett.R.Nicholas.TH@dartmouth.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 705E2E00BB3; Fri, 30 Jun 2017 14:16:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.41 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3606 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Jun 2017 14:16:48 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0041.outbound.protection.outlook.com [104.47.40.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C02EE00B9F
	for <yocto@yoctoproject.org>; Fri, 30 Jun 2017 14:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dartmouth.edu;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=3IX0Ue1XxaUjb4jKa+Vhp9WMNuAg/lwjAkc5Mxur4sc=;
	b=X0qPqjB/6C3ccCFALLgFt9gyZ3BtlV9erkoB4jII6hcl1aqzGk9OZMMzNfHBgkIOZyZzyK8tlc6E843weanRt/Jvk2x2H8R8M3JGYs41UcYua3g9oaQU45Lvfp9PcHTnn56up3fP0XQn7YFA3YTF3fIOUjYlpMIeNidk8C1SR0E=
Received: from BN3PR03MB1462.namprd03.prod.outlook.com (10.163.35.13) by
	BN3PR03MB1462.namprd03.prod.outlook.com (10.163.35.13) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1220.11; Fri, 30 Jun 2017 19:45:19 +0000
Received: from BN3PR03MB1462.namprd03.prod.outlook.com ([10.163.35.13]) by
	BN3PR03MB1462.namprd03.prod.outlook.com ([10.163.35.13]) with mapi id
	15.01.1220.011; Fri, 30 Jun 2017 19:45:19 +0000
From: "Brett R. Nicholas" <Brett.R.Nicholas.TH@dartmouth.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] out-of-tree module issues with cmake:
	CMAKE_SYSTEM_VERSION undefined within yocto build system
Thread-Index: AQHS8dlniOzdgSHV8ESZkCuE7+c9xg==
Date: Fri, 30 Jun 2017 19:45:19 +0000
Message-ID: <BN3PR03MB1462AFEA6CF0FFF88080F01AE0D30@BN3PR03MB1462.namprd03.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=dartmouth.edu;
x-originating-ip: [129.170.71.141]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3PR03MB1462;
	7:4dbs968JxqjmI81lxpjq6LhD7I4ILysNSFDIXauxWNNM1Zl0WgWARCovdt7ldFglw8P80XI43d3/YN6leZYglRBmCeV8sEDMXHoaqnnONzTudPrx6ErbrlSDrtm3ix5aC9XSLW2l67LKh51SvDWBll96TcvPg2W9Ku4H/qJn3P4ALwhdX3jXA9PJx7+B4JM4dgpG3YwG8/Pw7ELZrUcJS1Ysx6+uoWGAq4OgOgkEjJotOW4O9+R9TZsYOaelNkuHPi/zx0fw3ipo0e1YpMgxL7KeFFiMenALrFVW84NxKtZAKBJ28oIT1UCigIVQiQN47tczI2sSCQ4jJdAiTGNiRprL2PGek+3wHvEi/ytDAT13H0sNpZ7ppQwxrz7slt0571COaZJ2XJaOSCMe64N+kISrmDbNUMZ7cW8InA4M5TLmotM5w2Cf9sHME8ZBpr5j60HGthkpKbr5tmTL/IKTWgQiO/F8dyU1VqCnFkKJRreZomRqXhML9jlUCWAC0HYix+f09fWxXFLnXOyxtgc+lPgSXQWmG9LIQrey7dWawjIRix+fDueL6Batdo/nRmvGjNjmgsCGi1GSF4ev2MqoNCsLTg542Qz5rFJeSyNk7AP02iVPRmHWO7AMmTvUJoA/rVk8MZzQ0WmDwybfQiLcusg4+YlachgHAw3szSQTxlghYjsMnwtQr+tunP1U99MJ2PKl5ntS8E0Lb0QvHJbbyYZeRUd8N+qt3RsPPI8DhjXWIPQHp4FgB/5kVkCvtBUxCCbZQM0jB1bFk/GSj1nRTEu05nqEKypBNXpeZ8DC1/Y=
x-ms-office365-filtering-correlation-id: 54b334dd-fed4-49a1-7e52-08d4bff089e7
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(300000502095)(300135100095)(22001)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BN3PR03MB1462; 
x-ms-traffictypediagnostic: BN3PR03MB1462:
x-microsoft-antispam-prvs: <BN3PR03MB1462CDA9506F1F751F22B8F0E0D30@BN3PR03MB1462.namprd03.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(236129657087228)(148574349560750);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(6041248)(201703131423075)(201702281529075)(201702281528075)(201703061421075)(201703061406153)(20161123560025)(20161123555025)(20161123562025)(20161123564025)(20161123558100)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BN3PR03MB1462; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BN3PR03MB1462; 
x-forefront-prvs: 0354B4BED2
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39840400002)(39400400002)(39410400002)(39850400002)(39860400002)(14454004)(2900100001)(5660300001)(102836003)(99286003)(110136004)(53936002)(5640700003)(38730400002)(2501003)(54896002)(55016002)(1730700003)(8676002)(9686003)(7696004)(75432002)(478600001)(7736002)(3846002)(72206003)(6606003)(19627405001)(6506006)(66066001)(77096006)(25786009)(8936002)(81166006)(189998001)(6436002)(86362001)(54356999)(6116002)(74316002)(2351001)(50986999)(88552002)(6916009)(230783001)(33656002)(3660700001)(3280700002)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR03MB1462;
	H:BN3PR03MB1462.namprd03.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: dartmouth.edu
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2017 19:45:19.1226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 995b0936-48d6-40e5-a31e-bf689ec9446f
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB1462
Subject: out-of-tree module issues with cmake: CMAKE_SYSTEM_VERSION undefined within yocto build system
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
X-List-Received-Date: Fri, 30 Jun 2017 21:16:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN3PR03MB1462AFEA6CF0FFF88080F01AE0D30BN3PR03MB1462namp_"

--_000_BN3PR03MB1462AFEA6CF0FFF88080F01AE0D30BN3PR03MB1462namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi there,


I'm trying to incorporate an out-of-tree kernel module alongside of a share=
d library and test program into my Yocto build. The project housing the mod=
ule, library, and test needs to use Cmake.


My question: How can I make CMake aware of the target kernel source path (i=
.e. ${KERNEL_SRC} or ${KERNEL_STAGING_DIR} if I were using a makefile and i=
nheriting the modules.bbclass)?


I ask because I get build failures when I incorporate the project into Yoct=
o build system. Everything builds fine on the host machine outside of Yocto=
. However when I try and incorporate the project into Yocto, the build fail=
s because the CMAKE_SYSTEM_VERSION variable (which I use to provide the pat=
h to the kernel source) is somehow unset by the Yocto build system.


I know the CMAKE_SYSTEM_VERSION variable is erased and causing the failure =
from comparing the error message (below) with my CMakeLists.txt


Yocto error message:

......

| make[3]: Entering directory '/home/brett/Thesis/Zynq_Linux/Yocto/wslinux/=
build/tmp/work/zedboard_zynq7-poky-linux-gnueabi/wssha256-kmod/0.1-r0/build=
/modules/wssha256kern'
| make[3]: warning: jobserver unavailable: using -j1.  Add '+' to parent ma=
ke rule.
| make[3]: *** /lib/modules//build: No such file or directory.  Stop.

......



My CMakeLists.txt for the module is as follows:

SET( MODULE_NAME wssha256kern)
SET( MODULE_SOURCE_FILES ${MODULE_NAME}.c)
SET( MODULE_FILE ${MODULE_NAME}.ko)
SET( MODULE_OUTPUT_DIR ${CMAKE_BINARY_DIR}/modules/${MODULE_NAME})

SET( KERNEL_SRC "/lib/modules/${CMAKE_SYSTEM_VERSION}/build" ) # <----- THI=
S IS WHERE THE VARIABLE IS NEEDED!!!!!

SET( KBUILD_COMMAND ${CMAKE_MAKE_PROGRAM} -C ${KERNEL_SRC} M=3D${MODULE_OUT=
PUT_DIR} modules)

CONFIGURE_FILE( Kbuild.in ${MODULE_OUTPUT_DIR}/Kbuild)

FOREACH( MODULE_SOURCE_FILE ${MODULE_SOURCE_FILES} )
    CONFIGURE_FILE(
        ${MODULE_SOURCE_FILE}
        ${MODULE_OUTPUT_DIR}/${MODULE_SOURCE_FILE}
        COPYONLY
    )
ENDFOREACH( MODULE_SOURCE_FILE )

ADD_CUSTOM_COMMAND(
    OUTPUT ${MODULE_OUTPUT_DIR}/${MODULE_FILE}
    COMMAND ${KBUILD_COMMAND}
    WORKING_DIRECTORY ${MODULE_OUTPUT_DIR}
    DEPENDS ${MODULE_SOURCE_FILES} Kbuild.in
    VERBATIM
)

ADD_CUSTOM_TARGET(
    ${MODULE_NAME}
    ALL
    DEPENDS ${MODULE_OUTPUT_DIR}/${MODULE_FILE}
)


How can I pass the Yocto Kernel source location (for the target, not the ho=
st) to my project's CMake?


Thanks,

Brett


--_000_BN3PR03MB1462AFEA6CF0FFF88080F01AE0D30BN3PR03MB1462namp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi there,</p>
<p><br>
</p>
<p>I'm trying to incorporate an out-of-tree kernel module alongside of a sh=
ared library and test program into my Yocto build. The project housing the =
module, library, and test needs to use Cmake.
</p>
<p><br>
</p>
<p><span>My question: How can I make CMake aware of the target kernel sourc=
e path (i.e. ${KERNEL_SRC} or ${KERNEL_STAGING_DIR} if I were using a makef=
ile and inheriting the modules.bbclass)?&nbsp;</span></p>
<p><br>
</p>
<p>I ask because I get build failures when I incorporate the project into Y=
octo build system. Everything builds fine on the host machine outside of Yo=
cto. However when I try and incorporate the project into Yocto, the build f=
ails because the CMAKE_SYSTEM_VERSION
 variable (which I&nbsp;use to provide the path to the kernel source) is so=
mehow unset by the Yocto build system.</p>
<p><br>
</p>
<p>I know the CMAKE_SYSTEM_VERSION variable is erased and causing the failu=
re from comparing the error message (below) with my CMakeLists.txt<br>
</p>
<p><br>
</p>
<p><b>Yocto error message: <br>
</b></p>
<p><b>......</b><br>
</p>
<p></p>
<div><span style=3D"font-family: &quot;Courier New&quot;,monospace;">| </sp=
an><span style=3D"font-family: &quot;Courier New&quot;,monospace;">make[3]:=
 Entering directory '/home/brett/Thesis/Zynq_Linux/Yocto/wslinux/build/tmp/=
work/zedboard_zynq7-poky-linux-gnueabi/wssha256-kmod/0.1-r0/build/modules/w=
ssha256kern'</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">| make[3]: =
warning: jobserver unavailable: using -j1.&nbsp; Add '&#43;' to parent make=
 rule.</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">| make[3]: =
*** /lib/modules//build: No such file or directory.&nbsp; Stop.</span><br>
</div>
<p></p>
<p><b>......</b></p>
<p><br>
</p>
<p><br>
</p>
<p>My CMakeLists.txt for the module is as follows: <br>
</p>
<p></p>
<div><span style=3D"font-family: &quot;Courier New&quot;,monospace;">SET( M=
ODULE_NAME wssha256kern)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">SET( MODULE=
_SOURCE_FILES ${MODULE_NAME}.c)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">SET( MODULE=
_FILE ${MODULE_NAME}.ko)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">SET( MODULE=
_OUTPUT_DIR ${CMAKE_BINARY_DIR}/modules/${MODULE_NAME})</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">SET( KERNEL=
_SRC &quot;/lib/modules/${CMAKE_SYSTEM_VERSION}/build&quot; ) # &lt;----- T=
HIS IS WHERE THE VARIABLE IS NEEDED!!!!!<br>
<br>
</span><span style=3D"font-family: &quot;Courier New&quot;,monospace;">SET(=
 KBUILD_COMMAND ${CMAKE_MAKE_PROGRAM} -C ${KERNEL_SRC} M=3D${MODULE_OUTPUT_=
DIR} modules)</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">CONFIGURE_F=
ILE( Kbuild.in ${MODULE_OUTPUT_DIR}/Kbuild)</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">FOREACH( MO=
DULE_SOURCE_FILE ${MODULE_SOURCE_FILES} )</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;CONFIGURE_FILE(</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp; &nbsp;${MODULE_SOURCE_FILE}</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp; &nbsp;${MODULE_OUTPUT_DIR}/${MODULE_SOURCE_FILE}</span=
><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;&nbsp;&nbsp; &nbsp;COPYONLY</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;)</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">ENDFOREACH(=
 MODULE_SOURCE_FILE )</span><br>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">ADD_CUSTOM_=
COMMAND(</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;OUTPUT ${MODULE_OUTPUT_DIR}/${MODULE_FILE}</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;COMMAND ${KBUILD_COMMAND}</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;WORKING_DIRECTORY ${MODULE_OUTPUT_DIR}</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;DEPENDS ${MODULE_SOURCE_FILES} Kbuild.in</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;VERBATIM</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">)</span><br=
>
<br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">ADD_CUSTOM_=
TARGET(</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;${MODULE_NAME}</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;ALL</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">&nbsp;&nbsp=
; &nbsp;DEPENDS ${MODULE_OUTPUT_DIR}/${MODULE_FILE}</span><br>
<span style=3D"font-family: &quot;Courier New&quot;,monospace;">)</span><br=
>
</div>
<br>
<p></p>
<p>How can I pass the Yocto Kernel source location (for the target, not the=
 host) to my project's CMake?
<br>
</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Brett<br>
</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_BN3PR03MB1462AFEA6CF0FFF88080F01AE0D30BN3PR03MB1462namp_--
