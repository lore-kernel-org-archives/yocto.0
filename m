Return-Path: <a.spin@datawatt.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAD39E00CC8; Thu,  7 Sep 2017 12:38:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 18756 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Sep 2017 12:38:00 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0049.outbound.protection.outlook.com [104.47.2.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4963EE00CC9
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 12:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=datawatt.onmicrosoft.com; s=selector1-datawatt-nl;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=y546BEYcI4QSr0Kj963ffnG8AwK77/OJaAvnNN1A8r4=;
	b=eVPjoMbE5kV+/qAtCrDtAaOxy9oyU1X8s7GVjKcBxajsqrUx9Ab3gt6HonjEK2F2Iuurbv/qX65nTM6+z11DmJ7lzj5cAU8v5RbKM3XalSbsNfB+SQGqqOll817JmoXoPou4Tkn1GJU+SBEh3Ozm3K+7iPd+84VOiHrg7f5FrHg=
Received: from DB5PR01MB1445.eurprd01.prod.exchangelabs.com (10.164.36.23) by
	DB5PR01MB1237.eurprd01.prod.exchangelabs.com (10.162.153.15) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.13.10;
	Thu, 7 Sep 2017 14:09:37 +0000
Received: from DB5PR01MB1445.eurprd01.prod.exchangelabs.com
	([fe80::8c4d:310c:a976:6c61]) by
	DB5PR01MB1445.eurprd01.prod.exchangelabs.com
	([fe80::8c4d:310c:a976:6c61%14]) with mapi id 15.20.0035.010;
	Thu, 7 Sep 2017 14:09:36 +0000
From: Alberto Spin <a.spin@datawatt.nl>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Using standard SDK to build LKM
Thread-Index: AdMn3v5+sCmheLMqRb6PMnY+LeHxmg==
Date: Thu, 7 Sep 2017 14:09:36 +0000
Message-ID: <DB5PR01MB1445A61F2935F69DDDE21A7B9B940@DB5PR01MB1445.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US, nl-NL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=a.spin@datawatt.nl; 
x-originating-ip: [213.126.127.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5PR01MB1237;
	6:Ds9nbdplZ2k5TPISV44/a4YrSv5jGFbvxQ3kHeOfYo/PWU88+ZGT9s1IDHyhS/+VsSxKb8HUCCjcHtdkY2JX1zAXotZM/MF2YJvi6S6UIfaaXKvO/nzVxBiR7/XtAZzGFKzhv1rI1Cs3kCNmNVMDUH//vxfPfDISV5f9VEnvtX2IUY6MIQ7VxzaJ7amdW5PFq8Ohgxsduh0Sa2ImAJkvJDzg1osGF47EBiVX96NSTItb/I61Wu48EZpMipbqZ+51QiUoTv29udmx2lDKQLUCPr3RwsABf06bLSZbo9pusR/6On+Ky+8wris6poHab43EN7NURUM/uYH/v7PFfhIpmg==;
	5:MmjcwJtkde160o6SOTpSgBughED5NuIgc16onH4Ua/JZNcLrVzruFjnKtxOeES6Zvm3gyUSNDVCE3fdqg5FCSxf92wFpQWk8ZUpBA2v74xRE0NejO79AH+OAguDH0o9Pa9Akk5rFwuFX3ZMjpoT9cQ==;
	24:+r+WajM1zS7aq60JATqJjpijQlrT3czu9cIWd+JxE53KiikeyMOtOMccAgfsqDoaIl0triZsjU4hLATwHl9O91A6ij32WwaCJhacbx8XsXE=;
	7:AnLtkEwRhwbWY28/CxSH//MW6mIym/+f7J5DsOX1fVPUiVNgbszWdxriahVpa31qQSKhsNVVAHKcYhHXg6OeB80DwQN1g0cwNMG66I7IvK61C836RtPhZRnoq1mqxFgyEsWvbPz1SVS91DxaUu3zPRZtlpdQO4xV8Kwm4DPfRmG3cBKuVVr32L5kf+UncBpIQqvhMhLHk60rtaAe4oyOEtQ7VrJXy8ltAnqI6BkwiDo=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 8a2e313a-db83-444a-6150-08d4f5fa12aa
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(2017082002075)(300000503095)(300135400095)(2017052603199)(201703131423075)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:DB5PR01MB1237; 
X-MS-TrafficTypeDiagnostic: DB5PR01MB1237:|DB5PR01MB1237:
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-microsoft-antispam-prvs: <DB5PR01MB1237FF6622A2AAF5A95EE7289B940@DB5PR01MB1237.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(100000703101)(100105400095)(6041248)(20161123560025)(2016111802025)(20161123562025)(20161123555025)(20161123558100)(20161123564025)(201703131423075)(201703061421075)(6043046)(6072148)(6042181)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB5PR01MB1237; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB5PR01MB1237; 
x-forefront-prvs: 04238CD941
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(288314003)(189002)(199003)(14454004)(2906002)(81166006)(81156014)(1730700003)(66066001)(97736004)(6506006)(966005)(110136004)(189998001)(3660700001)(74316002)(2900100001)(7736002)(8936002)(8676002)(53936002)(790700001)(86362001)(5660300001)(33656002)(68736007)(7696004)(6116002)(3846002)(102836003)(74482002)(6916009)(50986999)(54356999)(5640700003)(99286003)(6436002)(54896002)(6306002)(9686003)(106356001)(55016002)(105586002)(2501003)(3280700002)(101416001)(2351001)(5250100002)(5630700001)(25786009)(508600001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR01MB1237;
	H:DB5PR01MB1445.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: datawatt.nl does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2017 14:09:36.8930 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5afcf6a4-fc33-42be-9014-b6cf5e6ea885
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR01MB1237
X-Microsoft-Exchange-Diagnostics: 1; DB5PR01MB1237;
	23:TcgwOQGN1hMucSuQEHFTmSb8My5l7d/sfWaKWHFIx0pbMecs/n7pbUWm14Z+WpTzj2Ztn+q4zO0iOaqoJvjvp4POQl0ukuDbwPgmb5AriKrpCcdkv2JwDsWmbiZD6APqLIzdw+8FRDKecfvX99SCOw==
X-OriginatorOrg: datawatt.nl
X-Mailman-Approved-At: Mon, 11 Sep 2017 08:08:54 -0700
Subject: Using standard SDK to build LKM
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
X-List-Received-Date: Thu, 07 Sep 2017 19:38:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5PR01MB1445A61F2935F69DDDE21A7B9B940DB5PR01MB1445eurp_"

--_000_DB5PR01MB1445A61F2935F69DDDE21A7B9B940DB5PR01MB1445eurp_
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

I've build a Standard SDK using yocto

      bitbake angstrom-lxde-image -c populate_sdk

I made sure that the kernel sources are included in the SDK

TOOLCHAIN_TARGET_TASK_append =3D "kernel-devsrc"

After installing the generated SDK at my workstation (separate machine from=
 my build host), I verified that the kernel sources are present

In the directory where the SDK has been installed, the kernel subdirectory =
has been added.

datawatt@O-LINUX-1:~/toolchain/sysroots/armv7at2hf-neon-angstrom-linux-gnue=
abi/usr/src$ tree -L 1
.
=86=80=80 backfire
=86=80=80 debug
=84=80=80 kernel

3 directories, 0 files

Next I'm trying to build a simple LKM


  *   First I source the environment setup script

*********
I'm using this c-source:

/**
* @file    hello.c
* @author  Derek Molloy
* @date    4 April 2015
* @version 0.1
* @brief  An introductory "Hello World!" loadable kernel module (LKM) that =
can display a message
* in the /var/log/kern.log file when the module is loaded and removed. The =
module can accept an
* argument when it is loaded -- the name, which appears in the kernel log f=
iles.
* @see http://www.derekmolloy.ie/ for a full description and follow-up desc=
riptions.
*/

#include <linux/init.h>             // Macros used to mark up functions e.g=
., __init __exit
#include <linux/module.h>           // Core header for loading LKMs into th=
e kernel
#include <linux/kernel.h>           // Contains types, macros, functions fo=
r the kernel

MODULE_LICENSE("GPL");              ///< The license type -- this affects r=
untime behavior
MODULE_AUTHOR("Derek Molloy");      ///< The author -- visible when you use=
 modinfo
MODULE_DESCRIPTION("A simple Linux driver for the BBB.");  ///< The descrip=
tion -- see modinfo
MODULE_VERSION("0.1");              ///< The version of the module

static char *name =3D "world";        ///< An example LKM argument -- defau=
lt value is "world"
module_param(name, charp, S_IRUGO); ///< Param desc. charp =3D char ptr, S_=
IRUGO can be read/not changed
MODULE_PARM_DESC(name, "The name to display in /var/log/kern.log");  ///< p=
arameter description

/** @brief The LKM initialization function
*  The static keyword restricts the visibility of the function to within th=
is C file. The __init
*  macro means that for a built-in driver (not a LKM) the function is only =
used at initialization
*  time and that it can be discarded and its memory freed up after that poi=
nt.
*  @return returns 0 if successful
*/
static int __init helloBBB_init(void){
   printk(KERN_INFO "EBB: Hello %s from the BBB LKM!\n", name);
   return 0;
}

/** @brief The LKM cleanup function
*  Similar to the initialization function, it is static. The __exit macro n=
otifies that if this
*  code is used for a built-in driver (not a LKM) that this function is not=
 required.
*/
static void __exit helloBBB_exit(void){
   printk(KERN_INFO "EBB: Goodbye %s from the BBB LKM!\n", name);
}

/** @brief A module must use the module_init() module_exit() macros from li=
nux/init.h, which
*  identify the initialization function at insertion time and the cleanup f=
unction (as
*  listed above)
*/
module_init(helloBBB_init);
module_exit(helloBBB_exit);

**********
And this makefile:

datawatt@O-LINUX-1:~/workspace-lkm/hello$ cat Makefile
obj-m+=3Dhello.o

#KDIR :=3D /lib/modules/$(shell uname -r)/build/

KDIR :=3D $(SDKTARGETSYSROOT)/usr/src/kernel/

all:
        make -C $(KDIR) M=3D$(PWD) modules
clean:
        make -C $(KDIR) M=3D$(PWD) clean


***********
Next I start the build process, by executing make and I get an error which =
I can't fix:


datawatt@O-LINUX-1:~/workspace-lkm/hello$ make
make -C /home/datawatt/toolchain/sysroots/armv7at2hf-neon-angstrom-linux-gn=
ueabi/usr/src/kernel/ M=3D/home/datawatt/workspace-lkm/hello modules
make[1]: Entering directory '/home/datawatt/toolchain/sysroots/armv7at2hf-n=
eon-angstrom-linux-gnueabi/usr/src/kernel'
  CC [M]  /home/datawatt/workspace-lkm/hello/hello.o
/bin/sh: scripts/basic/fixdep: No such file or directory
scripts/Makefile.build:264: recipe for target '/home/datawatt/workspace-lkm=
/hello/hello.o' failed
make[2]: *** [/home/datawatt/workspace-lkm/hello/hello.o] Error 1
Makefile:1387: recipe for target '_module_/home/datawatt/workspace-lkm/hell=
o' failed
make[1]: *** [_module_/home/datawatt/workspace-lkm/hello] Error 2
make[1]: Leaving directory '/home/datawatt/toolchain/sysroots/armv7at2hf-ne=
on-angstrom-linux-gnueabi/usr/src/kernel'
Makefile:8: recipe for target 'all' failed
make: *** [all] Error 2

Any help is appreciated.

Alberto Spin











--_000_DB5PR01MB1445A61F2935F69DDDE21A7B9B940DB5PR01MB1445eurp_
Content-Type: text/html; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dkoi8-r">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1449811958;
	mso-list-type:hybrid;
	mso-list-template-ids:-870916444 -1726590420 68354051 68354053 68354049 68=
354051 68354053 68354049 68354051 68354053;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NL" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">I&#8217;ve build a Standard SDK using yocto=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bitbake angs=
trom-lxde-image -c populate_sdk<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">I made sure that the kernel sources are inc=
luded in the SDK<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">TOOLCHAIN_TARGET_TASK_append =3D &#8220;ker=
nel-devsrc&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">After installing the generated SDK at my wo=
rkstation (separate machine from my build host), I verified that the kernel=
 sources are present<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">In the directory where the SDK has been ins=
talled, the kernel subdirectory has been added.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">datawatt@O-LINUX-1:~/toolchain/sysroots/arm=
v7at2hf-neon-angstrom-linux-gnueabi/usr/src$ tree -L 1<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">=86=80=80 backfire<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">=86=80=80 debug<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">=84=80=80 kernel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">3 directories, 0 files<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">Next I&#8217;m trying to build a simple LKM
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l0 level1 =
lfo1"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Cour=
ier New&quot;">First I source the environment setup script<o:p></o:p></span=
></li></ul>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">*********<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;">I&#8217;m using this c-source:<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
/**<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
* @file&nbsp;&nbsp;&nbsp; hello.c<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
* @author&nbsp; Derek Molloy<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
</span><span lang=3D"EN-US" style=3D"font-family:&quot;Courier New&quot;">*=
 @date&nbsp;&nbsp;&nbsp; 4 April 2015<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">* @version 0.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">* @brief&nbsp; An introductory &quot;Hello World!&quot; load=
able kernel module (LKM) that can display a message<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">* in the /var/log/kern.log file when the module is loaded an=
d removed. The module can accept an<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">* argument when it is loaded -- the name, which appears in t=
he kernel log files.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">* @see http://www.derekmolloy.ie/ for a full description and=
 follow-up descriptions.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">#include &lt;linux/init.h&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Macros used to mark up functio=
ns e.g., __init __exit<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">#include &lt;linux/module.h&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Core header for loading LKMs into the ke=
rnel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">#include &lt;linux/kernel.h&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; // Contains types, macros, functions for th=
e kernel<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">MODULE_LICENSE(&quot;GPL&quot;);&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ///&lt; The license type=
 -- this affects runtime behavior<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">MODULE_AUTHOR(&quot;Derek Molloy&quot;);&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; ///&lt; The author -- visible when you use modinfo<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">MODULE_DESCRIPTION(&quot;A simple Linux driver for the BBB.&=
quot;);&nbsp; ///&lt; The description -- see modinfo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">MODULE_VERSION(&quot;0.1&quot;);&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ///&lt; The version of t=
he module<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">static char *name =3D &quot;world&quot;;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; ///&lt; An example LKM argument -- default value is =
&quot;world&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">module_param(name, charp, S_IRUGO); ///&lt; Param desc. char=
p =3D char ptr, S_IRUGO can be read/not changed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">MODULE_PARM_DESC(name, &quot;The name to display in /var/log=
/kern.log&quot;);&nbsp; ///&lt; parameter description<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">/** @brief The LKM initialization function<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; The static keyword restricts the visibility of the f=
unction to within this C file. The __init<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; macro means that for a built-in driver (not a LKM) t=
he function is only used at initialization<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; time and that it can be discarded and its memory fre=
ed up after that point.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; @return returns 0 if successful<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">static int __init helloBBB_init(void){<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">&nbsp;&nbsp; printk(KERN_INFO &quot;EBB: Hello %s from the B=
BB LKM!\n&quot;, name);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">&nbsp;&nbsp; return 0;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">/** @brief The LKM cleanup function<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; Similar to the initialization function, it is static=
. The __exit macro notifies that if this<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; code is used for a built-in driver (not a LKM) that =
this function is not required.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">static void __exit helloBBB_exit(void){<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">&nbsp;&nbsp; printk(KERN_INFO &quot;EBB: Goodbye %s from the=
 BBB LKM!\n&quot;, name);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">/** @brief A module must use the module_init() module_exit()=
 macros from linux/init.h, which<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; identify the initialization function at insertion ti=
me and the cleanup function (as<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*&nbsp; listed above)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">*/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">module_init(helloBBB_init);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">module_exit(helloBBB_exit);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">**********
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">And this makefile:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">datawatt@O-LINUX-1:~/workspace-lkm/hello$ cat Makefile<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">obj-m&#43;=3Dhello.o<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">#KDIR :=3D /lib/modules/$(shell uname -r)/build/<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">KDIR :=3D $(SDKTARGETSYSROOT)/usr/src/kernel/<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">all:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; make -C $(KDIR) M=
=3D$(PWD) modules<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">clean:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; make -C $(KDIR) M=
=3D$(PWD) clean<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">***********<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Next I start the build process, by executing make and I get =
an error which I can&#8217;t fix:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">datawatt@O-LINUX-1:~/workspace-lkm/hello$ make<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">make -C /home/datawatt/toolchain/sysroots/armv7at2hf-neon-an=
gstrom-linux-gnueabi/usr/src/kernel/ M=3D/home/datawatt/workspace-lkm/hello=
 modules<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">make[1]: Entering directory '/home/datawatt/toolchain/sysroo=
ts/armv7at2hf-neon-angstrom-linux-gnueabi/usr/src/kernel'<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">&nbsp; CC [M]&nbsp; /home/datawatt/workspace-lkm/hello/hello=
.o<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">/bin/sh: scripts/basic/fixdep: No such file or directory<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">scripts/Makefile.build:264: recipe for target '/home/datawat=
t/workspace-lkm/hello/hello.o' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">make[2]: *** [/home/datawatt/workspace-lkm/hello/hello.o] Er=
ror 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Makefile:1387: recipe for target '_module_/home/datawatt/wor=
kspace-lkm/hello' failed<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">make[1]: *** [_module_/home/datawatt/workspace-lkm/hello] Er=
ror 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">make[1]: Leaving directory '/home/datawatt/toolchain/sysroot=
s/armv7at2hf-neon-angstrom-linux-gnueabi/usr/src/kernel'<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Makefile:8: recipe for target 'all' failed<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">make: *** [all] Error 2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Any help is appreciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;">Alberto Spin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Cour=
ier New&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_DB5PR01MB1445A61F2935F69DDDE21A7B9B940DB5PR01MB1445eurp_--
