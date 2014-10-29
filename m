Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD7EEE00849; Wed, 29 Oct 2014 02:01:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F165DE0082F
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 02:01:40 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.04,808,1406563200"; d="scan'208,217";a="42531116"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 29 Oct 2014 16:58:29 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id s9T91T7l018534
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 17:01:29 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Wed, 29 Oct 2014 17:01:41 +0800
From: "Li, Xin" <lixin.fnst@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Luajit Compile Error
Thread-Index: Ac/zUyijfOh8wUyFQbS0JB5/ClES0w==
Date: Wed, 29 Oct 2014 09:01:41 +0000
Message-ID: <A8FC939F80655644A89BB21CCD3741E87C1D73@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.37]
MIME-Version: 1.0
Subject: Luajit Compile Error
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
X-List-Received-Date: Wed, 29 Oct 2014 09:01:49 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_A8FC939F80655644A89BB21CCD3741E87C1D73G08CNEXMBPEKD02g0_"

--_000_A8FC939F80655644A89BB21CCD3741E87C1D73G08CNEXMBPEKD02g0_
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGksDQoNCkkgaW5jbHVkZSBsdWFqaXQgcGFja2FnZSBmcm9tIHRoZSBtZXRhLWVtYmVkZGVkIGFu
ZCBjb21waWxlIGl0Lg0KTXkgYnVpbGQgc3lzdGVtIGlzIENlbnRPUyg2NCBiaXQpLg0Kd2hlbiBJ
IGNvbXBpbGUgZm9yIHRoZSB0YXJnZXQoNjQgYml0KSxJdCBpcyBPSyx3aXRoIG5vIGVycm9ycy4N
CkJ1dCB3aGVuIEkgY29tcGlsZSBmb3IgdGhlIHRhcmdldCgzMiBiaXQpLGl0IGhhcyB0aGUgZm9s
bG93aW5nIGVycm9ycy4NCg0KSWYgeW91IGtub3cgdGhlIHNvbHV0aW9uLCBwbGVhc2UgaGVscCBt
ZSENCg0KVGhhbmsgeW91JkJlc3QgcmVnYXJkcw0KTGkgWGluDQoNCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCiQgY2F0IHRtcC93b3JrL2k1ODYtcG9reS1saW51eC9sdWFq
aXQvMi4wLjMtcjAvdGVtcC9sb2cuZG9fY29tcGlsZQ0KREVCVUc6IEV4ZWN1dGluZyBzaGVsbCBm
dW5jdGlvbiBkb19jb21waWxlDQpOT1RFOiBtYWtlIC1qIDEwIENST1NTPWk1ODYtcG9reS1saW51
eC0gVEFSR0VUX0NGTEFHUz0gLS1zeXNyb290PS95b2N0by93b3JrMDAxL2Zuc3QvbGl4aW4vcG9r
eS9idWlsZC54ODYvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgIC1tMzIgLW1hcmNoPWk1ODYgVEFSR0VU
X0xERkxBR1M9IC0tc3lzcm9vdD0veW9jdG8vd29yazAwMS9mbnN0L2xpeGluL3Bva3kvYnVpbGQu
eDg2L3RtcC9zeXNyb290cy9xZW11eDg2IFRBUkdFVF9TSExERkxBR1M9IC0tc3lzcm9vdD0veW9j
dG8vd29yazAwMS9mbnN0L2xpeGluL3Bva3kvYnVpbGQueDg2L3RtcC9zeXNyb290cy9xZW11eDg2
IEhPU1RfQ0M9Z2NjICAtbTMyDQo9PT09IEJ1aWxkaW5nIEx1YUpJVCAyLjAuMyA9PT09DQptYWtl
IC1DIHNyYw0KbWFrZVsxXTogRW50ZXJpbmcgZGlyZWN0b3J5IGAveW9jdG8vd29yazAwMS9mbnN0
L2xpeGluL3Bva3kvYnVpbGQueDg2L3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9sdWFqaXQvMi4w
LjMtcjAvTHVhSklULTIuMC4zL3NyYycNCkJVSUxEVk0gICBsal92bS5zDQpFcnJvcjogcG9pbnRl
ciBzaXplIG1pc21hdGNoIGluIGNyb3NzLWJ1aWxkLg0KQlVJTERWTSAgIGxqX2ZmZGVmLmgNClRy
eTogbWFrZSBIT1NUX0NDPSJnY2MgLW0zMiIgQ1JPU1M9Li4uDQoNCkJVSUxEVk0gICBsal9iY2Rl
Zi5oDQptYWtlWzFdOiAqKiogW2xqX3ZtLnNdIEVycm9yIDENCm1ha2VbMV06ICoqKiBXYWl0aW5n
IGZvciB1bmZpbmlzaGVkIGpvYnMuLi4uRXJyb3I6IHBvaW50ZXIgc2l6ZSBtaXNtYXRjaCBpbiBj
cm9zcy1idWlsZC4NClRyeTogbWFrZSBIT1NUX0NDPSJnY2MgLW0zMiIgQ1JPU1M9Li4uDQoNCg0K
bWFrZVsxXTogKioqIFtsal9mZmRlZi5oXSBFcnJvciAxDQpFcnJvcjogcG9pbnRlciBzaXplIG1p
c21hdGNoIGluIGNyb3NzLWJ1aWxkLg0KVHJ5OiBtYWtlIEhPU1RfQ0M9ImdjYyAtbTMyIiBDUk9T
Uz0uLi4NCg0KbWFrZVsxXTogKioqIFtsal9iY2RlZi5oXSBFcnJvciAxDQptYWtlWzFdOiBMZWF2
aW5nIGRpcmVjdG9yeSBgL3lvY3RvL3dvcmswMDEvZm5zdC9saXhpbi9wb2t5L2J1aWxkLng4Ni90
bXAvd29yay9pNTg2LXBva3ktbGludXgvbHVhaml0LzIuMC4zLXIwL0x1YUpJVC0yLjAuMy9zcmMn
DQptYWtlOiAqKiogW2RlZmF1bHRdIEVycm9yIDINCkVSUk9SOiBvZV9ydW5tYWtlIGZhaWxlZA0K
DQoNCg0K

--_000_A8FC939F80655644A89BB21CCD3741E87C1D73G08CNEXMBPEKD02g0_
Content-Type: text/html; charset="shift_jis"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dshift_jis=
">
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">Hi,<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">I in=
clude luajit package from the meta-embedded and compile it.<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">My b=
uild system is CentOS(64 bit).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">when=
 I compile for the target(64 bit),It is OK,with no errors.<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">But =
when I compile for the target(32 bit),it has the following errors.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">If you know the solution, please help me!</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:#1F497D">&nbsp;</span><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">Than=
k you&amp;Best regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt">Li X=
in<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-------------------------------=
---------------------------------------------------------------<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ cat tmp/work/i586-poky-linux/=
luajit/2.0.3-r0/temp/log.do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">DEBUG: Executing shell function=
 do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">NOTE: make -j 10 CROSS=3Di586-p=
oky-linux- TARGET_CFLAGS=3D --sysroot=3D/yocto/work001/fnst/lixin/poky/buil=
d.x86/tmp/sysroots/qemux86&nbsp; -m32 -march=3Di586 TARGET_LDFLAGS=3D --sys=
root=3D/yocto/work001/fnst/lixin/poky/build.x86/tmp/sysroots/qemux86
 TARGET_SHLDFLAGS=3D --sysroot=3D/yocto/work001/fnst/lixin/poky/build.x86/t=
mp/sysroots/qemux86 HOST_CC=3Dgcc&nbsp; -m32<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">=3D=3D=3D=3D Building LuaJIT 2.=
0.3 =3D=3D=3D=3D<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make -C src<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: Entering directory `/y=
octo/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.=
3-r0/LuaJIT-2.0.3/src'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDVM&nbsp;&nbsp; lj_vm.s<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: pointer size mismatch in=
 cross-build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDVM&nbsp;&nbsp; lj_ffdef.h<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Try: make HOST_CC=3D&quot;gcc -=
m32&quot; CROSS=3D...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">BUILDVM&nbsp;&nbsp; lj_bcdef.h<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [lj_vm.s] Error 1<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** Waiting for unfini=
shed jobs....Error: pointer size mismatch in cross-build.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Try: make HOST_CC=3D&quot;gcc -=
m32&quot; CROSS=3D...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [lj_ffdef.h] Error=
 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Error: pointer size mismatch in=
 cross-build.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Try: make HOST_CC=3D&quot;gcc -=
m32&quot; CROSS=3D...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: *** [lj_bcdef.h] Error=
 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make[1]: Leaving directory `/yo=
cto/work001/fnst/lixin/poky/build.x86/tmp/work/i586-poky-linux/luajit/2.0.3=
-r0/LuaJIT-2.0.3/src'<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">make: *** [default] Error 2<o:p=
></o:p></span></p>
<div style=3D"mso-element:para-border-div;border:none;border-bottom:solid w=
indowtext 1.0pt;padding:0cm 0cm 1.0pt 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><span lang=3D"EN-U=
S">ERROR: oe_runmake failed<o:p></o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt"><o:p=
>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_A8FC939F80655644A89BB21CCD3741E87C1D73G08CNEXMBPEKD02g0_--
