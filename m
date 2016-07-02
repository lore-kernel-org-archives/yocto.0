Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA83DE00C52; Fri,  1 Jul 2016 19:35:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0085.outbound.protection.outlook.com [104.47.33.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2325EE00C39
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 19:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=N9xmiCt+IzWWGqaIdJo66GqvSI79tTSpM4sKBD4Ld5w=;
	b=AmoeukU7Oxdhbi2+/QtA1bokXodR+3u/+RCJzxivH/7tOlKSySyO5iMvREB8zkmpKUOFaFRRYTyVw54hvv9efnWbAjo8B9wH67iyQNFdq64DjEJNgSpA84AATC/cJr9TEGWzK+rSA/kChmbKTBEPa5sQqTHrkC66gQDqyy/cssg=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1595.prod.exchangelabs.com (10.163.139.139) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Sat, 2 Jul 2016 02:19:05 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0523.025; Sat, 2 Jul 2016 02:19:05 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: Peter Bergin <peter.bergin@tritech.se>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ICECC build failures?
Thread-Index: AQHR0zQQ9w4VZhvuCkOEYF0Vkz5wtKAEaVuD
Date: Sat, 2 Jul 2016 02:19:05 +0000
Message-ID: <CY1PR0101MB159456674BD10C040F205953D7260@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15945556E27A16104116E87FD7250@CY1PR0101MB1594.prod.exchangelabs.com>,
	<43F0718C449F6A46B393DA2BEC8E01280CACB052@post>
In-Reply-To: <43F0718C449F6A46B393DA2BEC8E01280CACB052@post>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: e507def8-3518-4ff7-59d5-08d3a21f3db1
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1595;
	6:eOtufKSYLxJEBwcYLYHe9QOwXmogQKccMRBJLo6jorRBpr9tGvDnJyH6u10yqzXcp22sfzBRlLNBJhmdzoFwGptJ4/9nRxTA9FX9lSr6QmuomI4Xo2BRp/IzZRjdiaRJGvq5l0m6m88KCI+JIypjIZUobufSBeo5gdD150nrrmkicrEwccKG20197JaqsB8mHq6U0zUaRH1WXgFWzODKcjkOF34rgusNhLuYzZRoHBBuSWTR8nMZQG7alDdu1C5QSSfrty4SnG9xnRzLPxImkCrQf280zywsFN3zNJqLm7g60fRraMPZzaJ67tOSwkm8;
	5:GgiTFxOIRKNejRYAwwYaE+qv+pv1jLDiKNBxvppnW7ouqQYjTTa/pBKUJqhzMHfNNWfDSQQ6Y/yFZdHhV85dDRFA1G1J4FcfAArMOewqA1IQ/uqpzlGHhWVZxbFYj1PlA75RDapIma+Z70W6f9SA6w==;
	24:pyUxAp+2Iz4M63pMgqtTEEPoG7C69S4BygeyGwA7EiDO5AjvAw43jYafeH5vF4Xp7GFlQvGaF1BRVV9k5X8T9/Srlyx98c0ZfJMPfC7DGPo=;
	7:zgIosYosDm4pZe3WZLED6NOwR/pxlx1KQ1pDQc/xAl37E4eZBpzsqLM63saObq8BogFF9dArElwLZp4F/dDwWUVbywcLkQGreVXeB8oZh3sqyyxkB/FkiYJQhlkxohgAg6QXguECUDZ8nEUvRuzl19M8yZW6Kk4VVy3sTdzsHpzFIl7fXhGOmAFJX7Z7OdXGbwRnx8aiZ3lV7XyFvFRcr/ouHK7ubCpjhDBe1OBElObNzPecUcYA22VaIzHz0d2lFMPTzj8o6yLp7a00G3+9aQ==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1595;
x-microsoft-antispam-prvs: <CY1PR0101MB1595EA3FA86A8377D4569CF1D7260@CY1PR0101MB1595.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:CY1PR0101MB1595; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1595; 
x-forefront-prvs: 0991CAB7B3
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(7916002)(377454003)(24454002)(199003)(189002)(33656002)(7846002)(19580405001)(19580395003)(66066001)(2501003)(54356999)(87936001)(92566002)(10400500002)(76176999)(586003)(50986999)(3900700001)(3280700002)(189998001)(7736002)(7906003)(3660700001)(16236675004)(7696003)(345774005)(5003600100003)(74316002)(8936002)(68736007)(8676002)(5002640100001)(81156014)(9686002)(81166006)(105586002)(19625215002)(2906002)(86362001)(101416001)(5001770100001)(19617315012)(106356001)(107886002)(106116001)(15975445007)(102836003)(19627405001)(6116002)(77096005)(3846002)(2950100001)(2900100001)(11100500001)(122556002)(97736004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1595;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2016 02:19:05.1280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1595
Subject: Re: ICECC build failures?
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
X-List-Received-Date: Sat, 02 Jul 2016 02:35:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY1PR0101MB159456674BD10C040F205953D7260CY1PR0101MB1594_"

--_000_CY1PR0101MB159456674BD10C040F205953D7260CY1PR0101MB1594_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thank you for your comment.

So they are.  I will try to mask them one by one then.

________________________________
From: Peter Bergin <peter.bergin@tritech.se>
Sent: Friday, July 1, 2016 1:05 PM
To: Takashi Matsuzawa; yocto@yoctoproject.org
Subject: Re: [yocto] ICECC build failures?

Hi,

On 07/01/2016 03:18 AM, Takashi Matsuzawa wrote:

Hello Yocto.

Recently I am trying icecc with bitbake and amd halfway satisfied.
Good to see batch of my compilation jobs consumed by my build machines on i=
cemon
is not bad.

However, I can see my builds fail in certain condition eveytime and
wonder if it is a known issue and a workaround exists?

Symptom is the follows.

1) Using x86_64 build host and build machies.  All of them are running
Ubutnu 16.04.
2) My image is based on Fido (18.0).
3) I am just doing INHERIT +=3D "icecc" and the jobs are shared with
build machines correctly.
4) x86 (genericx86) build is OK with and without icecee.
5) imx (sabre6qauto) build is OK without icecc, but NG (fails) with icecc.

The following is the failure log.
It says relocation record error during linkage.  I googled for a while
and learned similar error could be seen if there is binutils (libtool)
version mistmatch.

Maybe a) the host-provided native toolchain and b) yocto-provided
native/cross toolchain have version mismatch?  But I do not see this
error when I am not using icecc.  I just think if it is OK without
icecc, the same should be expected even if I use icecc (it just runs
the same toolchain on different PCs?)

=3D=3D=3D=3D
| x86_64-pokysdk-linux-libtool: link: x86_64-pokysdk-linux-gcc
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux
-shared   .libs/conf.o .libs/confmisc.o .libs/input.o .libs/output.o
.libs/async.o .libs/error.o .libs/dlmisc.o .libs/socket.o
.libs/shmarea.o .libs/userfile.o .libs/names.o   -Wl,--whole-archive
control/.libs/libcontrol.a mixer/.libs/libmixer.a pcm/.libs/libpcm.a
timer/.libs/libtimer.a rawmidi/.libs/librawmidi.a
hwdep/.libs/libhwdep.a seq/.libs/libseq.a ucm/.libs/libucm.a
alisp/.libs/libalisp.a -Wl,--no-whole-archive
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-lm -ldl -lpthread -lrt
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux
-O2 -Wl,--version-script=3DVersions -Wl,--no-undefined -Wl,-rpath-link
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr=
/lib
-Wl,-O1 -Wl,-rpath-link
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib
-Wl,-O1   -Wl,-soname -Wl,libasound.so.2 -o .libs/libasound.so.2.0.0
| /mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-linux/usr/libexec/x86_64-=
pokysdk-linux/gcc/x86_64-pokysdk-linux/4.9.2/ld:
.libs/conf.o: relocation R_X86_64_32 against `.rodata.str1.1' can not
be used when making a shared object; recompile with -fPIC
| .libs/conf.o: error adding symbols: Bad value
| collect2: error: ld returned 1 exit status
| Makefile:484: recipe for target 'libasound.la' failed
| make[2]: *** [libasound.la] Error 1
| make[2]: Leaving directory
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'
| Makefile:538: recipe for target 'all-recursive' failed
| make[1]: *** [all-recursive] Error 1
| make[1]: Leaving directory
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'
| Makefile:399: recipe for target 'all-recursive' failed
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_compile (log file is located at
/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/natives=
dk-alsa-lib/1.0.28-r0/temp/log.do_compile.31561)
=3D=3D=3D=3D





Some packages does not work with ICECC in a similar way some package do not=
 work with PARALLEL_MAKE. You can work with the variable ICECC_USER_PACKAGE=
_BL to disable ICECC compilation for the failing packages.


Best regards,
/Peter<http://www.yoctoproject.org/docs/2.0.2/mega-manual/mega-manual.html#=
var-ICECC_USER_PACKAGE_BL>

--_000_CY1PR0101MB159456674BD10C040F205953D7260CY1PR0101MB1594_
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
<p>Thank you for your comment.</p>
<p>So they are. &nbsp;I will try to mask them one by one then.</p>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Peter Bergin &lt;pete=
r.bergin@tritech.se&gt;<br>
<b>Sent:</b> Friday, July 1, 2016 1:05 PM<br>
<b>To:</b> Takashi Matsuzawa; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] ICECC build failures?</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">Hi,<br>
<br>
On 07/01/2016 03:18 AM, Takashi Matsuzawa wrote:<br>
</div>
<blockquote type=3D"cite">
<pre>Hello Yocto.=0A=
=0A=
Recently I am trying icecc with bitbake and amd halfway satisfied.=0A=
Good to see batch of my compilation jobs consumed by my build machines on i=
cemon=0A=
is not bad.=0A=
=0A=
However, I can see my builds fail in certain condition eveytime and=0A=
wonder if it is a known issue and a workaround exists?=0A=
=0A=
Symptom is the follows.=0A=
=0A=
1) Using x86_64 build host and build machies.&nbsp; All of them are running=
=0A=
Ubutnu 16.04.=0A=
2) My image is based on Fido (18.0).=0A=
3) I am just doing INHERIT &#43;=3D &quot;icecc&quot; and the jobs are shar=
ed with=0A=
build machines correctly.=0A=
4) x86 (genericx86) build is OK with and without icecee.=0A=
5) imx (sabre6qauto) build is OK without icecc, but NG (fails) with icecc.=
=0A=
=0A=
The following is the failure log.=0A=
It says relocation record error during linkage.&nbsp; I googled for a while=
=0A=
and learned similar error could be seen if there is binutils (libtool)=0A=
version mistmatch.=0A=
=0A=
Maybe a) the host-provided native toolchain and b) yocto-provided=0A=
native/cross toolchain have version mismatch?&nbsp; But I do not see this=
=0A=
error when I am not using icecc.&nbsp; I just think if it is OK without=0A=
icecc, the same should be expected even if I use icecc (it just runs=0A=
the same toolchain on different PCs?)=0A=
=0A=
=3D=3D=3D=3D=0A=
| x86_64-pokysdk-linux-libtool: link: x86_64-pokysdk-linux-gcc=0A=
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux=0A=
-shared&nbsp; &nbsp;.libs/conf.o .libs/confmisc.o .libs/input.o .libs/outpu=
t.o=0A=
.libs/async.o .libs/error.o .libs/dlmisc.o .libs/socket.o=0A=
.libs/shmarea.o .libs/userfile.o .libs/names.o&nbsp; &nbsp;-Wl,--whole-arch=
ive=0A=
control/.libs/libcontrol.a mixer/.libs/libmixer.a pcm/.libs/libpcm.a=0A=
timer/.libs/libtimer.a rawmidi/.libs/librawmidi.a=0A=
hwdep/.libs/libhwdep.a seq/.libs/libseq.a ucm/.libs/libucm.a=0A=
alisp/.libs/libalisp.a -Wl,--no-whole-archive=0A=
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib=0A=
-L/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux/o=
pt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib=0A=
-lm -ldl -lpthread -lrt=0A=
--sysroot=3D/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokys=
dk-linux=0A=
-O2 -Wl,--version-script=3DVersions -Wl,--no-undefined -Wl,-rpath-link=0A=
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr/lib=0A=
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/usr=
/lib=0A=
-Wl,-O1 -Wl,-rpath-link=0A=
-Wl,/mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-nativesdk-pokysdk-linux=
/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib=0A=
-Wl,-rpath -Wl,/opt/narwhal/3.14.52-1.1.1/sysroots/x86_64-pokysdk-linux/lib=
=0A=
-Wl,-O1&nbsp; &nbsp;-Wl,-soname -Wl,libasound.so.2 -o .libs/libasound.so.2.=
0.0=0A=
| /mnt/ssd2/yocto/dev/tmp/imx-wk1/sysroots/x86_64-linux/usr/libexec/x86_64-=
pokysdk-linux/gcc/x86_64-pokysdk-linux/4.9.2/ld:=0A=
.libs/conf.o: relocation R_X86_64_32 against `.rodata.str1.1' can not=0A=
be used when making a shared object; recompile with -fPIC=0A=
| .libs/conf.o: error adding symbols: Bad value=0A=
| collect2: error: ld returned 1 exit status=0A=
| Makefile:484: recipe for target 'libasound.la' failed=0A=
| make[2]: *** [libasound.la] Error 1=0A=
| make[2]: Leaving directory=0A=
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'=0A=
| Makefile:538: recipe for target 'all-recursive' failed=0A=
| make[1]: *** [all-recursive] Error 1=0A=
| make[1]: Leaving directory=0A=
'/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/native=
sdk-alsa-lib/1.0.28-r0/build/src'=0A=
| Makefile:399: recipe for target 'all-recursive' failed=0A=
| make: *** [all-recursive] Error 1=0A=
| ERROR: oe_runmake failed=0A=
| WARNING: exit code 1 from a shell command.=0A=
| ERROR: Function failed: do_compile (log file is located at=0A=
/mnt/ssd2/yocto/dev/tmp/imx-wk1/work/x86_64-nativesdk-pokysdk-linux/natives=
dk-alsa-lib/1.0.28-r0/temp/log.do_compile.31561)=0A=
=3D=3D=3D=3D=0A=
=0A=
=0A=
=0A=
</pre>
</blockquote>
<br>
Some packages does not work with ICECC in a similar way some package do not=
 work with PARALLEL_MAKE. You can work with the variable<code> ICECC_USER_P=
ACKAGE_BL to disable ICECC compilation for the failing packages.<br>
<br>
<br>
Best regards,<br>
/Peter</code><a class=3D"link" href=3D"http://www.yoctoproject.org/docs/2.0=
.2/mega-manual/mega-manual.html#var-ICECC_USER_PACKAGE_BL" title=3D"ICECC_U=
SER_PACKAGE_BL" style=3D"text-decoration:underline; color:rgb(68,68,68); fo=
nt-family:Verdana,Sans,sans-serif; font-size:medium; font-style:normal; fon=
t-variant:normal; font-weight:normal; letter-spacing:normal; line-height:24=
px; orphans:auto; text-align:start; text-indent:0px; text-transform:none; w=
hite-space:normal; widows:1; word-spacing:0px; background:rgb(255,255,255)"=
><code class=3D"filename" style=3D"font-size:medium; font-family:Courier,mo=
nospace"></code></a>
</div>
</div>
</div>
</body>
</html>

--_000_CY1PR0101MB159456674BD10C040F205953D7260CY1PR0101MB1594_--
