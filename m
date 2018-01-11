Return-Path: <mns@gomspace.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D74AE00E15; Thu, 11 Jan 2018 08:30:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.100 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 112211 seconds by postgrey-1.32 at yocto-www;
	Thu, 11 Jan 2018 08:30:53 PST
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0100.outbound.protection.outlook.com [104.47.1.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91826E00D32
	for <yocto@yoctoproject.org>; Thu, 11 Jan 2018 08:30:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gomspace01.onmicrosoft.com; s=selector1-gomspace-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=2FVM7RXnb7+p2C1FsN6x0C/oo0f0J1DQjN/NpHmf7YY=;
	b=g20kpa9OKK1/6p7ecz9AczjrW1fO+j1E3oSxzLW1hM3f3QjFF/C+kBL2VG1wPpjS4xxWNyHc7I283rVXfWVzDxJ37GXIDyrRVYhXovl7XppferAq2YflfnScIaWOSo4d8gF2HLaCCwRPtPFxiBn5AR6a7915zePioWsoms+yDOo=
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com (10.167.125.20) by
	HE1PR0402MB3321.eurprd04.prod.outlook.com (10.167.125.18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Thu, 11 Jan 2018 08:56:04 +0000
Received: from HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::70c2:d51e:8aee:c95]) by
	HE1PR0402MB3323.eurprd04.prod.outlook.com
	([fe80::70c2:d51e:8aee:c95%13]) with mapi id 15.20.0386.009;
	Thu, 11 Jan 2018 08:56:04 +0000
From: Martin Siegumfeldt <mns@gomspace.com>
To: Robert Yang <liezhi.yang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Issues building Extensible SDK
Thread-Index: AQHTid4hcPSCjsetV0e/ZjSsMzOfeKNuKwmAgAA0Vz0=
Date: Thu, 11 Jan 2018 08:56:04 +0000
Message-ID: <HE1PR0402MB3323AD56FD3FB5861E61E42AC4160@HE1PR0402MB3323.eurprd04.prod.outlook.com>
References: <HE1PR0402MB332361FF0CE06D405DE24AADC4110@HE1PR0402MB3323.eurprd04.prod.outlook.com>,
	<0fe12bc8-d43e-1d1a-2177-4a4a3d3ba04e@windriver.com>
In-Reply-To: <0fe12bc8-d43e-1d1a-2177-4a4a3d3ba04e@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [79.171.149.172]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1PR0402MB3321;
	7:gRMlYcgqNiM8ftMueA3io2Nif8d6Kfo6uNRyeVYeiWFrl8BKpM5RB3fDfW1KE+Rd7JCE5or9REGyCG2qbrIPcWh/TmV+3tHqolitVASv0JrV7MYZHgTLrpf0kaziNX+2Xv4GQNPnFCVkMk0+X/Aui2IburlBxPBtNk8RufgeZvgWXkIrvGl7s/OUtz/i/VKJkvUShGracvKrsEPzjGjcZoHUh2Qa9kJRZXJBzMS26nah5dBVDDH6JKzOB8bUwQuV
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 540f8713-fe12-40d5-3680-08d558d1259c
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020063)(4652020)(7021093)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:HE1PR0402MB3321; 
x-ms-traffictypediagnostic: HE1PR0402MB3321:
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mns@gomspace.com; 
x-microsoft-antispam-prvs: <HE1PR0402MB3321278497B5EF63741C13FFC4160@HE1PR0402MB3321.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231023)(944501134)(6041268)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:HE1PR0402MB3321; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:HE1PR0402MB3321; 
x-forefront-prvs: 0549E6FD50
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39380400002)(39840400004)(346002)(366004)(376002)(396003)(24454002)(199004)(189003)(105586002)(2501003)(5250100002)(55016002)(6606003)(5660300001)(81166006)(9686003)(99286004)(3846002)(2900100001)(3660700001)(3280700002)(81156014)(8676002)(6436002)(66066001)(53936002)(8936002)(54896002)(6246003)(25786009)(6116002)(2950100002)(229853002)(7736002)(478600001)(53546011)(97736004)(59450400001)(6506007)(76176011)(33656002)(19627405001)(86362001)(106356001)(7696005)(14454004)(74316002)(2906002)(68736007)(316002)(575784001)(102836004)(110136005)(42262002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR0402MB3321;
	H:HE1PR0402MB3323.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: gomspace.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: vP8+oS1y8W/7EY9NZqk6epmXr2RWDGrVviWdNB7KtLVdQUXt1emfOuFaWGL7Uwt8MNSxWL8vKhVqkll39MO1oA==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gomspace.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 540f8713-fe12-40d5-3680-08d558d1259c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2018 08:56:04.4103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91ed1e54-6d8b-4599-84d8-65fe75fda3d1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3321
Subject: Re: Issues building Extensible SDK
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
X-List-Received-Date: Thu, 11 Jan 2018 16:30:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR0402MB3323AD56FD3FB5861E61E42AC4160HE1PR0402MB3323_"

--_000_HE1PR0402MB3323AD56FD3FB5861E61E42AC4160HE1PR0402MB3323_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Robert,


Thank you very much, adding the lines


require conf/distro/include/yocto-uninative.inc
INHERIT +=3D "uninative"


to the distro configuration enables the build to succeed.


Br,

Martin

________________________________
From: Robert Yang <liezhi.yang@windriver.com>
Sent: Thursday, January 11, 2018 6:45:29 AM
To: Martin Siegumfeldt; yocto@yoctoproject.org
Subject: Re: [yocto] Issues building Extensible SDK

Hi Martin,

Try:

$ bitbake -e | grep '^INHERIT=3D.*uninative'

If there is nothing, then add the following line to conf/local.conf:

INHERIT +=3D "uninative"

// Robert

On 01/10/2018 03:46 PM, Martin Siegumfeldt wrote:
> Hi,
>
> We have a custom piece of (Zynq based) HW that we render a custom distro =
using Yocto. I am trying to build the extensible SDK but run into the below=
 error:
>
> pokyuser@03c19f8798ba:/workdir/krogoth/build$ bitbake core-image-minimal =
-c populate_sdk_ext
> Loading cache: 100% |####################################################=
###########################################################################=
###########################################################################=
######################################| Time: 0:00:00
> Loaded 2675 entries from dependency cache.
> Parsing recipes: 100% |##################################################=
###########################################################################=
###########################################################################=
######################################| Time: 0:00:01
> Parsing of 1915 .bb files complete (1913 cached, 2 parsed). 2677 targets,=
 377 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        =3D "1.34.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "ubuntu-16.04"
> TARGET_SYS        =3D "arm-oe-linux-gnueabi"
> MACHINE           =3D "zynq-soft-z7000-mb-v2"
> DISTRO            =3D "gomspace"
> DISTRO_VERSION    =3D "2.0"
> TUNE_FEATURES     =3D "arm armv7a vfp thumb neon callconvention-hard cort=
exa9"
> TARGET_FPU        =3D "hard"
> meta              =3D "pyro:9c75151116aa293dc8567c237d7e4da5bdec90e3"
> meta-xilinx       =3D "pyro:18097af3120a394a8e6933b7abc85e73e508c7e3"
> meta-oe
> meta-filesystems
> meta-networking
> meta-python       =3D "pyro:dfbdd28d206a74bf264c2f7ee0f7b3e5af587796"
> meta-z7000        =3D "pyro:b255ea4575b40d77a2f5dc9200de0718f979f175"
>
> Initialising tasks: 100% |###############################################=
###########################################################################=
###########################################################################=
######################################| Time: 0:00:03
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Error executing a p=
ython function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure w=
as:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>       0001:
>   *** 0002:copy_buildsystem(d)
>       0003:
> File: '/workdir/krogoth/openembedded-core/meta/classes/populate_sdk_ext.b=
bclass', lineno: 298, function: copy_buildsystem
>       0294:            f.write('TCLIBCAPPEND =3D ""\n')
>       0295:            f.write('DL_DIR =3D "${TOPDIR}/downloads"\n')
>       0296:
>       0297:            f.write('INHERIT +=3D "%s"\n' % 'uninative')
>   *** 0298:            f.write('UNINATIVE_CHECKSUM[%s] =3D "%s"\n\n' % (d=
.getVar('BUILD_ARCH'), uninative_checksum))
>       0299:            f.write('CONF_VERSION =3D "%s"\n\n' % d.getVar('CO=
NF_VERSION', False))
>       0300:
>       0301:            # Some classes are not suitable for SDK, remove th=
em from INHERIT
>       0302:            f.write('INHERIT_remove =3D "%s"\n' % d.getVar('SD=
K_INHERIT_BLACKLIST', False))
> Exception: UnboundLocalError: local variable 'uninative_checksum' referen=
ced before assignment
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed: co=
py_buildsystem
> ERROR: Logfile of failure stored in: /workdir/krogoth/build/tmp-glibc/wor=
k/zynq_soft_z7000_mb_v2-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/log=
.do_populate_sdk_ext.8408
> ERROR: Task (/workdir/krogoth/openembedded-core/meta/recipes-core/images/=
core-image-minimal.bb:do_populate_sdk_ext) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2214 tasks of which 2210 didn't need to be=
 rerun and 1 failed.
>
> Summary: 1 task failed:
>    /workdir/krogoth/openembedded-core/meta/recipes-core/images/core-image=
-minimal.bb:do_populate_sdk_ext
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>
>
> The standard SDK builds successfully all the way back from Fido throughou=
t Rocko, however we would now like to build the Extensible SDK. Krogoth ver=
sion builds it successfully, but Pyro and Rocko throws the above error (hav=
en't tested Morty).
>
> I am unable to reproduce using Poky and thus assume it to be related to t=
he configuration of our distro/image. Any suggestions are highly appreciate=
d.
>
> Thanks,
> Martin
>
>
>

--_000_HE1PR0402MB3323AD56FD3FB5861E61E42AC4160HE1PR0402MB3323_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi Robert,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thank you very much, adding the l=
ines</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>require conf/distro/include/yocto-uninative.inc</div>
<div>INHERIT &#43;=3D &quot;uninative&quot;</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0">to the distro configuration enabl=
es the build to succeed.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Br,</p>
<p style=3D"margin-top:0;margin-bottom:0">Martin</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Robert Yang &lt;liezh=
i.yang@windriver.com&gt;<br>
<b>Sent:</b> Thursday, January 11, 2018 6:45:29 AM<br>
<b>To:</b> Martin Siegumfeldt; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Issues building Extensible SDK</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Martin,<br>
<br>
Try:<br>
<br>
$ bitbake -e | grep '^INHERIT=3D.*uninative'<br>
<br>
If there is nothing, then add the following line to conf/local.conf:<br>
<br>
INHERIT &#43;=3D &quot;uninative&quot;<br>
<br>
// Robert<br>
<br>
On 01/10/2018 03:46 PM, Martin Siegumfeldt wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; We have a custom piece of (Zynq based) HW that we render a custom dist=
ro using Yocto. I am trying to build the extensible SDK but run into the be=
low error:<br>
&gt; <br>
&gt; pokyuser@03c19f8798ba:/workdir/krogoth/build$ bitbake core-image-minim=
al -c populate_sdk_ext<br>
&gt; Loading cache: 100% |#################################################=
###########################################################################=
###########################################################################=
#########################################|
 Time: 0:00:00<br>
&gt; Loaded 2675 entries from dependency cache.<br>
&gt; Parsing recipes: 100% |###############################################=
###########################################################################=
###########################################################################=
#########################################|
 Time: 0:00:01<br>
&gt; Parsing of 1915 .bb files complete (1913 cached, 2 parsed). 2677 targe=
ts, 377 skipped, 0 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; <br>
&gt; Build Configuration:<br>
&gt; BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.34.0&=
quot;<br>
&gt; BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x8=
6_64-linux&quot;<br>
&gt; NATIVELSBSTRING&nbsp;&nbsp; =3D &quot;ubuntu-16.04&quot;<br>
&gt; TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-oe-=
linux-gnueabi&quot;<br>
&gt; MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;zynq-soft-z7000-mb-v2&quot;<br>
&gt; DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; =3D &quot;gomspace&quot;<br>
&gt; DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;2.0&quot;<br>
&gt; TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm armv7a vfp thumb n=
eon callconvention-hard cortexa9&quot;<br>
&gt; TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;hard&qu=
ot;<br>
&gt; meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; =3D &quot;pyro:9c75151116aa293dc8567c237d7e4da5bdec90e3&quot;<=
br>
&gt; meta-xilinx&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;pyro:18097af=
3120a394a8e6933b7abc85e73e508c7e3&quot;<br>
&gt; meta-oe<br>
&gt; meta-filesystems<br>
&gt; meta-networking<br>
&gt; meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;pyro:dfbdd28=
d206a74bf264c2f7ee0f7b3e5af587796&quot;<br>
&gt; meta-z7000&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;pyro:b2=
55ea4575b40d77a2f5dc9200de0718f979f175&quot;<br>
&gt; <br>
&gt; Initialising tasks: 100% |############################################=
###########################################################################=
###########################################################################=
#########################################|
 Time: 0:00:03<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Error executing =
a python function in exec_python_func() autogenerated:<br>
&gt; <br>
&gt; The stack trace of python calls that resulted in this exception/failur=
e was:<br>
&gt; File: 'exec_python_func() autogenerated', lineno: 2, function: &lt;mod=
ule&gt;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0001:<br>
&gt;&nbsp;&nbsp; *** 0002:copy_buildsystem(d)<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0003:<br>
&gt; File: '/workdir/krogoth/openembedded-core/meta/classes/populate_sdk_ex=
t.bbclass', lineno: 298, function: copy_buildsystem<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0294:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f.write('TCLIBCAPPEND =3D &quot;&quot=
;\n')<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0295:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f.write('DL_DIR =3D &quot;${TOPDIR}/d=
ownloads&quot;\n')<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0296:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0297:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f.write('INHERIT &#43;=3D &quot;%s&qu=
ot;\n' % 'uninative')<br>
&gt;&nbsp;&nbsp; *** 0298:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; f.write('UNINATIVE_CHECKSUM[%s] =3D &quot;%s&quot;\n\n' %=
 (d.getVar('BUILD_ARCH'), uninative_checksum))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0299:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f.write('CONF_VERSION =3D &quot;%s&qu=
ot;\n\n' % d.getVar('CONF_VERSION', False))<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0300:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0301:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Some classes are not suitable for S=
DK, remove them from INHERIT<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0302:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f.write('INHERIT_remove =3D &quot;%s&=
quot;\n' % d.getVar('SDK_INHERIT_BLACKLIST', False))<br>
&gt; Exception: UnboundLocalError: local variable 'uninative_checksum' refe=
renced before assignment<br>
&gt; <br>
&gt; ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed:=
 copy_buildsystem<br>
&gt; ERROR: Logfile of failure stored in: /workdir/krogoth/build/tmp-glibc/=
work/zynq_soft_z7000_mb_v2-oe-linux-gnueabi/core-image-minimal/1.0-r0/temp/=
log.do_populate_sdk_ext.8408<br>
&gt; ERROR: Task (/workdir/krogoth/openembedded-core/meta/recipes-core/imag=
es/core-image-minimal.bb:do_populate_sdk_ext) failed with exit code '1'<br>
&gt; NOTE: Tasks Summary: Attempted 2214 tasks of which 2210 didn't need to=
 be rerun and 1 failed.<br>
&gt; <br>
&gt; Summary: 1 task failed:<br>
&gt;&nbsp;&nbsp;&nbsp; /workdir/krogoth/openembedded-core/meta/recipes-core=
/images/core-image-minimal.bb:do_populate_sdk_ext<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt; <br>
&gt; <br>
&gt; The standard SDK builds successfully all the way back from Fido throug=
hout Rocko, however we would now like to build the Extensible SDK. Krogoth =
version builds it successfully, but Pyro and Rocko throws the above error (=
haven't tested Morty).<br>
&gt; <br>
&gt; I am unable to reproduce using Poky and thus assume it to be related t=
o the configuration of our distro/image. Any suggestions are highly appreci=
ated.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Martin<br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font></div>
</body>
</html>

--_000_HE1PR0402MB3323AD56FD3FB5861E61E42AC4160HE1PR0402MB3323_--
