Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7FCAE00D07; Wed, 18 May 2016 06:58:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1092 seconds by postgrey-1.32 at yocto-www;
	Wed, 18 May 2016 06:58:40 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0091.outbound.protection.outlook.com [207.46.100.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2D43E00C39
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 06:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=55I0zGQNFbsU+DBqYv6jAj9GpR1qIThQNCm2O8Dv87g=;
	b=ZkZHumeUdFDiL0eIEEjD0bE2kLzTcPioxVEYXhGCw4qFyh5T43yS6HbVhRuMM972PkZs2fKubwXxhw2ZuzGnRJwt8rXhuXfnVIyB6HGrCdt41UNf/ARwJm/15jeGQzvlRVLh033+ay+q2JIZ6NRmm1KjkfQyByuGPBGU8cbW2KM=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1596.prod.exchangelabs.com (10.163.139.14) with Microsoft
	SMTP Server (TLS) id 15.1.497.12; Wed, 18 May 2016 13:25:14 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0497.019; Wed, 18 May 2016 13:25:14 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Cannot create symlink to 'x86_64-pokysdk-linux' error
Thread-Index: AQHRsQitxVHWDnkXaECPFpDcULnQKA==
Date: Wed, 18 May 2016 13:25:14 +0000
Message-ID: <CY1PR0101MB1594A81055F87CEFE3750D0BD7490@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=uievolution.com;
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 3c799182-8822-4fe3-b106-08d37f1fd8e4
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1596;
	5:59JUV+DISojzmZtAHMbvYHGZwSmOqtCJiLbpp8gB7J521UYBq/qODs1unOqTYaMRTxuPH9kGxcmAfBKhTcjcOFviZW+cg+DjtjbmAVmcfsyT6PadO+01Y877GMQfjLYRUE/ZkfDV9YKj4Vtn6KjU1A==;
	24:X0SwyYwGst15KtZqwSs2aepLHoZRYL9OXVqUHJ7qrLQxY1MFg88uhK8LZvP/OXsbJTjKNEBmXN0HP46lZyBwMQebiolGQg7cV4aHuYWsFd4=;
	7:hX0MGvUMMxJO4aqZ47MI9JHIMtUHKAeihtotAICiqoRr2IVGnBL+xXsJfkGuiSZeXICysBw8eUy8zTX3qvJptkgJWewLa8sCecqWaBboQ4hWEh4uW0dyJgThIKV4I65QUD1qpCgEEwFV1t3dhhi0Okl3WK78pcTaZTweAAuJ4OU3M1RW4HxEaKAADpG+S8j0
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1596;
x-microsoft-antispam-prvs: <CY1PR0101MB1596C7A1C12B8609C1ED0DCBD7490@CY1PR0101MB1596.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:CY1PR0101MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1596; 
x-forefront-prvs: 0946DC87A1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(5004730100002)(2351001)(229853001)(5002640100001)(106116001)(19627405001)(5003600100002)(11100500001)(6116002)(102836003)(586003)(1220700001)(450100001)(5008740100001)(19580395003)(19617315012)(10400500002)(66066001)(19625215002)(74316001)(87936001)(16236675004)(33656002)(230783001)(50986999)(54356999)(92566002)(110136002)(77096005)(107886002)(9686002)(31430400001)(5640700001)(2906002)(2900100001)(86362001)(189998001)(15975445007)(3660700001)(8676002)(1730700003)(81166006)(3280700002)(8936002)(122556002)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1596;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None; MLV:sfv;
	LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2016 13:25:14.3326 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1596
Subject: Cannot create symlink to 'x86_64-pokysdk-linux' error
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
X-List-Received-Date: Wed, 18 May 2016 13:58:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB1594A81055F87CEFE3750D0BD7490CY1PR0101MB1594_"

--_000_CY1PR0101MB1594A81055F87CEFE3750D0BD7490CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello yocto.
I have been successfully building several yocto based target trees,
but now trying qemux86-64 build and it is causing error.  Familiar
with the below sympthom and maybe you have any suggestion?

I think this begain happening when I did -c populate_sdk, but not sure.
The other targets (including qemux86) is building fine.  I am now
re-building it again after removing downloads, sstate-cache, tmp, etc.

=3D=3D=3D=3D
ERROR: Error executing a python function in
/home/tmatsuzawa/wk/yocto_x64/wk1/build-root/poky/meta/recipes-devtools/gcc=
/libgcc_5.2.bb<http://libgcc_5.2.bb/>:

...
Exception: CalledProcessError: Command 'cd
/mnt/sdb1/yocto/dev/tmp/yocto_x64-wk1/work/x86_64-nativesdk-pokysdk-linux/n=
ativesdk-libgcc/5.2.0-r0/sysroot-destdir;
find . -type d -print | tar -cf - -C
/mnt/sdb1/yocto/dev/tmp/yocto_x64-wk1/work/x86_64-nativesdk-pokysdk-linux/n=
ativesdk-libgcc/5.2.0-r0/sysroot-destdir
-p --files-from - --no-recursion | tar -xf - -C
/mnt/sdb1/yocto/dev/tmp/yocto_x64-wk1/sysroots/x86_64-nativesdk-pokysdk-lin=
ux'
returned non-zero exit status 2 with output tar:
./opt/poky-agl/1.0+snapshot/sysroots/x86_64-pokysdk-linux/usr/lib/x86_64-po=
ky-linux:
Cannot create symlink to 'x86_64-pokysdk-linux': File exists
tar: ./opt/poky-agl/1.0+snapshot/sysroots/x86_64-pokysdk-linux/usr/lib/x86_=
64-poky-linux:
Cannot create symlink to 'x86_64-pokysdk-linux': File exists
...
=3D=3D=3D=3D

I think this is copying files using tar as follows, and in the
copeid-to directory there is already 'x86_64-pokysdk-linux' directory
whereas in copied-from directory it is a symbolic link.  Hence tar
fails.

(coppied-from)
${TMPDIR}/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc/5.2.0-r0/sys=
root-destdir
x86_64-poky-linux -> x86_64-pokysdk-linux (symlink)
x86_64-pokysdk-linux (directory)

=3D>

(copied-to)
${TMPDIR}/sysroots/x86_64-nativesdk-pokysdk-linux
x86_64-poky-linux (directory)
x86_64-pokysdk-linux (directory)


--_000_CY1PR0101MB1594A81055F87CEFE3750D0BD7490CY1PR0101MB1594_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; f=
ont-size: 14px;">Hello yocto.</span><br style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">I have been successfully building several yocto based target =
trees,</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-=
serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">but now trying qemux86-64 build and it is causing error.&nbsp=
; Familiar</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, s=
ans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">with the below sympthom and maybe you have any suggestion?</s=
pan><br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; fo=
nt-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">I think this begain happening when I did -c populate_sdk, but=
 not sure.</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, s=
ans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">The other targets (including qemux86) is building fine.&nbsp;=
 I am now</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, sa=
ns-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">re-building it again after removing downloads, sstate-cache, =
tmp, etc.</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, sa=
ns-serif; font-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">=3D=3D=3D=3D</span><br style=3D"color: rgb(34, 34, 34); font-=
family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">ERROR: Error executing a python function in</span><br style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">/home/tmatsuzawa/wk/yocto_x64/</span><wbr style=3D"color: rgb=
(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">wk1/build-root/poky/meta/</span><wbr style=3D"color: rgb(34, 34, 34); fo=
nt-family: arial, sans-serif; font-size: 14px;"><span style=3D"color: rgb(3=
4, 34, 34); font-family: arial, sans-serif; font-size: 14px;">recipes-devto=
ols/gcc/</span><a href=3D"http://libgcc_5.2.bb/" data-saferedirecturl=3D"ht=
tps://www.google.com/url?hl=3Dja&amp;q=3Dhttp://libgcc_5.2.bb&amp;source=3D=
gmail&amp;ust=3D1463664219214000&amp;usg=3DAFQjCNESHbBl77NXk1HUszmMYvKNt5So=
0Q" rel=3D"noreferrer" target=3D"_blank" style=3D"color: rgb(17, 85, 204); =
font-family: arial, sans-serif; font-size: 14px;">libgcc_5.<wbr>2.bb</a><sp=
an style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-si=
ze: 14px;">:</span><br style=3D"color: rgb(34, 34, 34); font-family: arial,=
 sans-serif; font-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">...</span><br style=3D"color: rgb(34, 34, 34); font-family: a=
rial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">Exception: CalledProcessError: Command 'cd</span><br style=3D=
"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">/mnt/sdb1/yocto/dev/tmp/yocto_</span><wbr style=3D"color: rgb=
(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">x64-wk1/work/x86_64-nativesdk-</span><wbr style=3D"color: rgb(34, 34, 34=
); font-family: arial, sans-serif; font-size: 14px;"><span style=3D"color: =
rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">pokysdk-=
linux/nativesdk-</span><wbr style=3D"color: rgb(34, 34, 34); font-family: a=
rial, sans-serif; font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); =
font-family: arial, sans-serif; font-size: 14px;">libgcc/5.2.0-r0/sysroot-<=
/span><wbr style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif;=
 font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); font-family: aria=
l, sans-serif; font-size: 14px;">destdir;</span><br style=3D"color: rgb(34,=
 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">find . -type d -print | tar -cf - -C</span><br style=3D"color=
: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">/mnt/sdb1/yocto/dev/tmp/yocto_</span><wbr style=3D"color: rgb=
(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">x64-wk1/work/x86_64-nativesdk-</span><wbr style=3D"color: rgb(34, 34, 34=
); font-family: arial, sans-serif; font-size: 14px;"><span style=3D"color: =
rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">pokysdk-=
linux/nativesdk-</span><wbr style=3D"color: rgb(34, 34, 34); font-family: a=
rial, sans-serif; font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); =
font-family: arial, sans-serif; font-size: 14px;">libgcc/5.2.0-r0/sysroot-<=
/span><wbr style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif;=
 font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); font-family: aria=
l, sans-serif; font-size: 14px;">destdir</span><br style=3D"color: rgb(34, =
34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">-p --files-from - --no-recursion | tar -xf - -C</span><br sty=
le=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14=
px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">/mnt/sdb1/yocto/dev/tmp/yocto_</span><wbr style=3D"color: rgb=
(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=
=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px=
;">x64-wk1/sysroots/x86_64-</span><wbr style=3D"color: rgb(34, 34, 34); fon=
t-family: arial, sans-serif; font-size: 14px;"><span style=3D"color: rgb(34=
, 34, 34); font-family: arial, sans-serif; font-size: 14px;">nativesdk-poky=
sdk-linux'</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, s=
ans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">returned non-zero exit status 2 with output tar:</span><br st=
yle=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 1=
4px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">./opt/poky-agl/1.0&#43;snapshot/</span><wbr style=3D"color: r=
gb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span sty=
le=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14=
px;">sysroots/x86_64-pokysdk-linux/</span><wbr style=3D"color: rgb(34, 34, =
34); font-family: arial, sans-serif; font-size: 14px;"><span style=3D"color=
: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">usr/li=
b/x86_64-poky-linux:</span><br style=3D"color: rgb(34, 34, 34); font-family=
: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">Cannot create symlink to 'x86_64-pokysdk-linux': File exists<=
/span><br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; =
font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">tar: ./opt/poky-agl/1.0&#43;snapshot/</span><wbr style=3D"col=
or: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;"><spa=
n style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-siz=
e: 14px;">sysroots/x86_64-pokysdk-linux/</span><wbr style=3D"color: rgb(34,=
 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=3D"=
color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">u=
sr/lib/x86_64-poky-linux:</span><br style=3D"color: rgb(34, 34, 34); font-f=
amily: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">Cannot create symlink to 'x86_64-pokysdk-linux': File exists<=
/span><br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; =
font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">...</span><br style=3D"color: rgb(34, 34, 34); font-family: a=
rial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">=3D=3D=3D=3D</span><br style=3D"color: rgb(34, 34, 34); font-=
family: arial, sans-serif; font-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">I think this is copying files using tar as follows, and in th=
e</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif=
; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">copeid-to directory there is already 'x86_64-pokysdk-linux' d=
irectory</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, san=
s-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">whereas in copied-from directory it is a symbolic link.&nbsp;=
 Hence tar</span><br style=3D"color: rgb(34, 34, 34); font-family: arial, s=
ans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">fails.</span><br style=3D"color: rgb(34, 34, 34); font-family=
: arial, sans-serif; font-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">(coppied-from)</span><br style=3D"color: rgb(34, 34, 34); fon=
t-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">${TMPDIR}/work/x86_64-</span><wbr style=3D"color: rgb(34, 34,=
 34); font-family: arial, sans-serif; font-size: 14px;"><span style=3D"colo=
r: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">nativ=
esdk-pokysdk-linux/</span><wbr style=3D"color: rgb(34, 34, 34); font-family=
: arial, sans-serif; font-size: 14px;"><span style=3D"color: rgb(34, 34, 34=
); font-family: arial, sans-serif; font-size: 14px;">nativesdk-libgcc/5.2.0=
-r0/</span><wbr style=3D"color: rgb(34, 34, 34); font-family: arial, sans-s=
erif; font-size: 14px;"><span style=3D"color: rgb(34, 34, 34); font-family:=
 arial, sans-serif; font-size: 14px;">sysroot-destdir</span><br style=3D"co=
lor: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">x86_64-poky-linux -&gt; x86_64-pokysdk-linux (symlink)</span>=
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">x86_64-pokysdk-linux (directory)</span><br style=3D"color: rg=
b(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">=3D&gt;</span><br style=3D"color: rgb(34, 34, 34); font-famil=
y: arial, sans-serif; font-size: 14px;">
<br style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-s=
ize: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">(copied-to)</span><br style=3D"color: rgb(34, 34, 34); font-f=
amily: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">${TMPDIR}/sysroots/x86_64-</span><wbr style=3D"color: rgb(34,=
 34, 34); font-family: arial, sans-serif; font-size: 14px;"><span style=3D"=
color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 14px;">n=
ativesdk-pokysdk-linux</span><br style=3D"color: rgb(34, 34, 34); font-fami=
ly: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">x86_64-poky-linux (directory)</span><br style=3D"color: rgb(3=
4, 34, 34); font-family: arial, sans-serif; font-size: 14px;">
<span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; font=
-size: 14px;">x86_64-pokysdk-linux (directory)</span><br>
</p>
<p><span style=3D"color: rgb(34, 34, 34); font-family: arial, sans-serif; f=
ont-size: 14px;"><br>
</span></p>
</div>
</body>
</html>

--_000_CY1PR0101MB1594A81055F87CEFE3750D0BD7490CY1PR0101MB1594_--
