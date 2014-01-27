Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 117D9E005B3
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2014 22:52:23 -0800 (PST)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 5A18836B2B
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 12:22:00 +0530 (IST)
Received: from GUREXHT02.ASIAN.AD.ARICENT.COM (gurexht02.asian.ad.aricent.com
	[10.203.171.138]) (using TLSv1 with cipher RC4-MD5 (128/128 bits))
	(No client certificate requested)
	by jaguar.aricent.com (Postfix) with ESMTP id 429EE36B27
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 12:22:00 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT02.ASIAN.AD.ARICENT.COM ([10.203.171.138]) with mapi;
	Mon, 27 Jan 2014 12:22:00 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 27 Jan 2014 12:21:59 +0530
Thread-Topic: Error in configuring multilib ie libstdc++ for c++
Thread-Index: Ac8bLEaZHpscqqOsQiSwhwoc4Ol+YQ==
Message-ID: <17797116383D4341B029FDF34C22BF6A72FEFCE970@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-TM-AS-MML: No
Subject: Error in configuring multilib ie libstdc++ for c++
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
X-List-Received-Date: Mon, 27 Jan 2014 06:52:27 -0000
X-Groupsio-MsgNum: 17910
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_"

--_004_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to compile both c and c++ multilib for elf toolchain but its gi=
ving error in configuring the same for c++. Logs are attached with this mai=
l. And EXTRA_OECONF passed are as below:

EXTRA_OECONF +=3D "--with-sysroot=3D${TMPDIR}/sysroots/${BUILD_SYS}/usr/lib=
/mips32-nlm-elf.gcc-cross-initial/gcc/mips64-nlm-elf/4.6.3 \
                --enable-threads \
                --enable-multilib \
                --disable-libmudflap \
                --disable-libssp \
                --disable-libstdcxx-pch \
                --with-gnu-as \
                --with-gnu-ld \
                --with-mips-plt \
                 --enable-languages=3Dc,c++ \
                --enable-lto \
                --disable-nls \
                --disable-shared \
                --disable-threads \
                --disable-libgomp \
                --without-headers \
                --with-newlib \
                --disable-decimal-float \
                --disable-libffi \
                --disable-libquadmath \
                --disable-libitm \
                --enable-poison-system-directories \
                --with-gxx-include-dir=3D${TMPDIR}/sysroots/${BUILD_SYS}/us=
r/${TARGET_SYS}/usr/include/c++ \
                --enable-cxx-flags=3D'-G0 -mno-gpopt' \

Please suggest me the way to resolve this issue.

Regards,
Rohit Jindal





=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to compile both c and c&#43;&#43; multil=
ib for elf toolchain but its giving error in configuring the same for c&#43=
;&#43;. Logs are attached with this mail. And EXTRA_OECONF passed are as be=
low:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">EXTRA_OECONF &#43;=3D &quot;--with-sysroot=3D${TMPDI=
R}/sysroots/${BUILD_SYS}/usr/lib/mips32-nlm-elf.gcc-cross-initial/gcc/mips6=
4-nlm-elf/4.6.3 \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-threads \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-multilib \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libmudflap \<o:p></o:p></p=
>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--disable-libssp \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libstdcxx-pch \<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gnu-as \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gnu-ld \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-mips-plt \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--enable-languages=3Dc,c&#43;&=
#43; \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-lto \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-nls \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-shared \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-threads \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libgomp \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --without-headers \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-newlib \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-decimal-float \<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libffi \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libquadmath \<o:p></o:p></=
p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-libitm \<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-poison-system-directories \=
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --with-gxx-include-dir=3D${TMPDIR}/s=
ysroots/${BUILD_SYS}/usr/${TARGET_SYS}/usr/include/c&#43;&#43; \<o:p></o:p>=
</p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --enable-cxx-flags=3D'-G0 -mno-gpopt=
' \<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please suggest me the way to resolve this issue.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Rohit Jindal<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_--

--_004_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_
Content-Type: application/octet-stream;
	name="error in configuring multilib for c++.log"
Content-Description: error in configuring multilib for c++.log
Content-Disposition: attachment;
	filename="error in configuring multilib for c++.log"; size=18874;
	creation-date="Mon, 27 Jan 2014 06:46:55 GMT";
	modification-date="Mon, 27 Jan 2014 06:46:55 GMT"
Content-Transfer-Encoding: base64

Q2hlY2tpbmcgbXVsdGlsaWIgY29uZmlndXJhdGlvbiBmb3IgbGlic3RkYysrLXYzLi4uDQpDb25m
aWd1cmluZyBpbiBtaXBzNjQteHh4LWVsZi9saWJzdGRjKystdjMNCmNvbmZpZ3VyZTogbG9hZGlu
ZyBjYWNoZSAuL2NvbmZpZy5jYWNoZQ0KY2hlY2tpbmcgYnVpbGQgc3lzdGVtIHR5cGUuLi4gaTY4
Ni1wYy1saW51eC1nbnUNCmNoZWNraW5nIGhvc3Qgc3lzdGVtIHR5cGUuLi4gbWlwczY0LXh4eC1l
bGYNCmNoZWNraW5nIHRhcmdldCBzeXN0ZW0gdHlwZS4uLiBtaXBzNjQteHh4LWVsZg0KY2hlY2tp
bmcgZm9yIGEgQlNELWNvbXBhdGlibGUgaW5zdGFsbC4uLiAvdXNyL2Jpbi9pbnN0YWxsIC1jDQpj
aGVja2luZyB3aGV0aGVyIGJ1aWxkIGVudmlyb25tZW50IGlzIHNhbmUuLi4geWVzDQpjaGVja2lu
ZyBmb3IgbWlwczY0LXh4eC1lbGYtc3RyaXAuLi4gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVp
bGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi9zdHJpcA0KY2hl
Y2tpbmcgZm9yIGEgdGhyZWFkLXNhZmUgbWtkaXIgLXAuLi4gL2Jpbi9ta2RpciAtcA0KY2hlY2tp
bmcgZm9yIGdhd2suLi4gZ2F3aw0KY2hlY2tpbmcgd2hldGhlciBtYWtlICBzZXRzICQoTUFLRSku
Li4geWVzDQpjaGVja2luZyBmb3IgbWlwczY0LXh4eC1lbGYtZ2NjLi4uIC9ob21lL25ldGxvZ2lj
L0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbmV0bG9n
aWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL25ldGxvZ2lj
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9i
aW4vIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3Mv
ZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9h
ZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAt
aXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9z
cy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUNCmNoZWNraW5nIGZvciBzdWZmaXggb2Yg
b2JqZWN0IGZpbGVzLi4uIG8NCmNoZWNraW5nIHdoZXRoZXIgd2UgYXJlIHVzaW5nIHRoZSBHTlUg
QyBjb21waWxlci4uLiB5ZXMNCmNoZWNraW5nIHdoZXRoZXIgL2hvbWUvbmV0bG9naWMvRG93bmxv
YWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9uZXRsb2dpYy9Eb3du
bG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbmV0bG9naWMvRG93bmxv
YWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIv
aG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlw
czY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxk
RUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVt
IC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9t
aXBzNjQteHh4LWVsZi9zeXMtaW5jbHVkZSAgICBhY2NlcHRzIC1nLi4uIHllcw0KY2hlY2tpbmcg
Zm9yIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94
Z2NjIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2Nj
LyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2Vs
Zi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYv
aW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9t
ZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0
LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVM
Ri9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgb3B0
aW9uIHRvIGFjY2VwdCBJU08gQzg5Li4uIHVuc3VwcG9ydGVkDQpjaGVja2luZyB3aGV0aGVyIHdl
IGFyZSB1c2luZyB0aGUgR05VIEMrKyBjb21waWxlci4uLiB5ZXMNCmNoZWNraW5nIHdoZXRoZXIg
L2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2Mg
LUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1C
L2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21p
cHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0
YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL25l
dGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4
LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2lu
c3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5jbHVkZSAgICBhY2NlcHRz
IC1nLi4uIHllcw0KY2hlY2tpbmcgaG93IHRvIHJ1biB0aGUgQyBwcmVwcm9jZXNzb3IuLi4gL2hv
bWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIv
aG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hv
bWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2
NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxs
L21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL25ldGxv
Z2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVs
Zi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3Rh
bGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5jbHVkZSAgICAtRQ0KY2hlY2tp
bmcgZm9yIGdyZXAgdGhhdCBoYW5kbGVzIGxvbmcgbGluZXMgYW5kIC1lLi4uIC9iaW4vZ3JlcA0K
Y2hlY2tpbmcgZm9yIGVncmVwLi4uIC9iaW4vZ3JlcCAtRQ0KY2hlY2tpbmcgd2hldGhlciBsbiAt
cyB3b3Jrcy4uLiB5ZXMNCmNoZWNraW5nIGZvciBtaXBzNjQteHh4LWVsZi1hcy4uLiAvaG9tZS9u
ZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvYXMNCmNoZWNraW5n
IGZvciBtaXBzNjQteHh4LWVsZi1hci4uLiAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVM
Ri9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluL2FyDQpjaGVja2luZyBm
b3IgbWlwczY0LXh4eC1lbGYtcmFubGliLi4uIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxk
RUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vcmFubGliDQpjaGVj
a2luZyB3aGV0aGVyIHRvIGVuYWJsZSBtYWludGFpbmVyLXNwZWNpZmljIHBvcnRpb25zIG9mIE1h
a2VmaWxlcy4uLiBubw0KY29uZmlndXJlOiBDUFUgY29uZmlnIGRpcmVjdG9yeSBpcyBjcHUvbWlw
cw0KY29uZmlndXJlOiBPUyBjb25maWcgZGlyZWN0b3J5IGlzIG9zL2dlbmVyaWMNCmNoZWNraW5n
IGhvdyB0byBwcmludCBzdHJpbmdzLi4uIHByaW50Zg0KY2hlY2tpbmcgZm9yIGEgc2VkIHRoYXQg
ZG9lcyBub3QgdHJ1bmNhdGUgb3V0cHV0Li4uIC9iaW4vc2VkDQpjaGVja2luZyBmb3IgZmdyZXAu
Li4gL2Jpbi9ncmVwIC1GDQpjaGVja2luZyBmb3IgbGQgdXNlZCBieSAvaG9tZS9uZXRsb2dpYy9E
b3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL25ldGxvZ2lj
L0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9uZXRsb2dpYy9E
b3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmlu
LyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2Vs
Zi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQv
QnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlz
eXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3Mv
ZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgLi4uIC9ob21lL25ldGxvZ2ljL0Rvd25s
b2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy9jb2xsZWN0LWxkDQpjaGVja2luZyBpZiB0
aGUgbGlua2VyICgvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MvY29sbGVjdC1sZCkgaXMgR05VIGxkLi4uIHllcw0KY2hlY2tpbmcgZm9yIEJTRC0gb3Ig
TVMtY29tcGF0aWJsZSBuYW1lIGxpc3RlciAobm0pLi4uIC9ob21lL25ldGxvZ2ljL0Rvd25sb2Fk
L0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy9ubQ0KY2hlY2tpbmcgdGhlIG5hbWUgbGlzdGVy
ICgvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2Mvbm0p
IGludGVyZmFjZS4uLiBCU0Qgbm0NCmNoZWNraW5nIHRoZSBtYXhpbXVtIGxlbmd0aCBvZiBjb21t
YW5kIGxpbmUgYXJndW1lbnRzLi4uIDk4MzA0DQpjaGVja2luZyB3aGV0aGVyIHRoZSBzaGVsbCB1
bmRlcnN0YW5kcyBzb21lIFhTSSBjb25zdHJ1Y3RzLi4uIHllcw0KY2hlY2tpbmcgd2hldGhlciB0
aGUgc2hlbGwgdW5kZXJzdGFuZHMgIis9Ii4uLiB5ZXMNCmNoZWNraW5nIGZvciAvaG9tZS9uZXRs
b2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvY29sbGVjdC1sZCBvcHRp
b24gdG8gcmVsb2FkIG9iamVjdCBmaWxlcy4uLiAtcg0KY2hlY2tpbmcgZm9yIG1pcHM2NC14eHgt
ZWxmLW9iamR1bXAuLi4gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9t
aXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi9vYmpkdW1wDQpjaGVja2luZyBob3cgdG8g
cmVjb2duaXplIGRlcGVuZGVudCBsaWJyYXJpZXMuLi4gdW5rbm93bg0KY2hlY2tpbmcgZm9yIG1p
cHM2NC14eHgtZWxmLWFyLi4uIChjYWNoZWQpIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxk
RUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vYXINCmNoZWNraW5n
IGZvciBtaXBzNjQteHh4LWVsZi1zdHJpcC4uLiAoY2FjaGVkKSAvaG9tZS9uZXRsb2dpYy9Eb3du
bG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluL3N0
cmlwDQpjaGVja2luZyBmb3IgbWlwczY0LXh4eC1lbGYtcmFubGliLi4uIChjYWNoZWQpIC9ob21l
L25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQt
eHh4LWVsZi9iaW4vcmFubGliDQpjaGVja2luZyBjb21tYW5kIHRvIHBhcnNlIC9ob21lL25ldGxv
Z2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy9ubSBvdXRwdXQgZnJvbSAv
aG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAt
Qi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIv
aG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlw
czY0LXh4eC1lbGYvYmluLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3Rh
bGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbmV0
bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgt
ZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5z
dGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIG9iamVjdC4u
LiBmYWlsZWQNCmNoZWNraW5nIGZvciBBTlNJIEMgaGVhZGVyIGZpbGVzLi4uIG5vDQpjaGVja2lu
ZyBmb3Igc3lzL3R5cGVzLmguLi4gbm8NCmNoZWNraW5nIGZvciBzeXMvc3RhdC5oLi4uIG5vDQpj
aGVja2luZyBmb3Igc3RkbGliLmguLi4gbm8NCmNoZWNraW5nIGZvciBzdHJpbmcuaC4uLiBubw0K
Y2hlY2tpbmcgZm9yIG1lbW9yeS5oLi4uIG5vDQpjaGVja2luZyBmb3Igc3RyaW5ncy5oLi4uIG5v
DQpjaGVja2luZyBmb3IgaW50dHlwZXMuaC4uLiBubw0KY2hlY2tpbmcgZm9yIHN0ZGludC5oLi4u
IG5vDQpjaGVja2luZyBmb3IgdW5pc3RkLmguLi4gbm8NCmNoZWNraW5nIGZvciBkbGZjbi5oLi4u
IG5vDQpjaGVja2luZyBmb3Igb2JqZGlyLi4uIC5saWJzDQpjaGVja2luZyBpZiAvaG9tZS9uZXRs
b2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL25l
dGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9uZXRs
b2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1l
bGYvYmluLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Ny
b3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93
bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1
ZGUgLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBz
Y3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIHN1cHBvcnRzIC1mbm8tcnR0
aSAtZm5vLWV4Y2VwdGlvbnMuLi4gbm8NCmNoZWNraW5nIGZvciAvaG9tZS9uZXRsb2dpYy9Eb3du
bG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL25ldGxvZ2ljL0Rv
d25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9uZXRsb2dpYy9Eb3du
bG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluLyAt
Qi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9t
aXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVp
bGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0
ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxm
L21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIG9wdGlvbiB0byBwcm9kdWNlIFBJQy4uLiAt
ZlBJQyAtRFBJQw0KY2hlY2tpbmcgaWYgL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYv
b2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVM
Ri9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYv
aW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9uZXRsb2dp
Yy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYv
bGliMzIvIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL25ldGxv
Z2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVs
Zi9zeXMtaW5jbHVkZSAgICBQSUMgZmxhZyAtZlBJQyAtRFBJQyB3b3Jrcy4uLiB5ZXMNCmNoZWNr
aW5nIGlmIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2dj
Yy94Z2NjIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4v
Z2NjLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3Nz
L2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRF
TEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAv
aG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlw
czY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWls
ZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAg
c3RhdGljIGZsYWcgLXN0YXRpYyB3b3Jrcy4uLiBubw0KY2hlY2tpbmcgaWYgL2hvbWUvbmV0bG9n
aWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9uZXRs
b2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUvbmV0bG9n
aWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxm
L2Jpbi8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9z
cy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25s
b2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRl
IC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Ny
b3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5jbHVkZSAgICBzdXBwb3J0cyAtYyAtbyBmaWxl
Lm8uLi4geWVzDQpjaGVja2luZyBpZiAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9v
YmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxG
L29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9p
bnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluLyAtQi9ob21lL25ldGxvZ2lj
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9s
aWIzMi8gLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9t
aXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbmV0bG9n
aWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxm
L3N5cy1pbmNsdWRlICAgIHN1cHBvcnRzIC1jIC1vIGZpbGUuby4uLiAoY2FjaGVkKSB5ZXMNCmNo
ZWNraW5nIHdoZXRoZXIgdGhlIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9n
Y2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2Jq
L2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3Rh
bGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUvbmV0bG9naWMvRG93
bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMy
LyAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNj
cm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9E
b3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lz
LWluY2x1ZGUgICAgbGlua2VyICgvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmov
Z2NjMl9lbGYvLi9nY2MvY29sbGVjdC1sZCkgc3VwcG9ydHMgc2hhcmVkIGxpYnJhcmllcy4uLiB5
ZXMNCmNoZWNraW5nIGR5bmFtaWMgbGlua2VyIGNoYXJhY3RlcmlzdGljcy4uLiBubw0KY2hlY2tp
bmcgaG93IHRvIGhhcmRjb2RlIGxpYnJhcnkgcGF0aHMgaW50byBwcm9ncmFtcy4uLiBpbW1lZGlh
dGUNCmNoZWNraW5nIHdoZXRoZXIgc3RyaXBwaW5nIGxpYnJhcmllcyBpcyBwb3NzaWJsZS4uLiB5
ZXMNCmNoZWNraW5nIGlmIGxpYnRvb2wgc3VwcG9ydHMgc2hhcmVkIGxpYnJhcmllcy4uLiBubw0K
Y2hlY2tpbmcgd2hldGhlciB0byBidWlsZCBzaGFyZWQgbGlicmFyaWVzLi4uIG5vDQpjaGVja2lu
ZyB3aGV0aGVyIHRvIGJ1aWxkIHN0YXRpYyBsaWJyYXJpZXMuLi4geWVzDQpjaGVja2luZyBob3cg
dG8gcnVuIHRoZSBDKysgcHJlcHJvY2Vzc29yLi4uIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1
aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQv
QnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1
aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hvbWUv
bmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14
eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9p
bnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAvaG9t
ZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0
LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgLUUNCmNoZWNraW5nIGZvciBsZCB1c2VkIGJ5IC9ob21l
L25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hv
bWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21l
L25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQt
eHh4LWVsZi9iaW4vIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9t
aXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9tZS9uZXRsb2dp
Yy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYv
aW5jbHVkZSAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxs
L21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAuLi4gL2hvbWUvbmV0
bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL2NvbGxlY3QtbGQNCmNo
ZWNraW5nIGlmIHRoZSBsaW5rZXIgKC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29i
ai9nY2MyX2VsZi8uL2djYy9jb2xsZWN0LWxkKSBpcyBHTlUgbGQuLi4geWVzDQpjaGVja2luZyB3
aGV0aGVyIHRoZSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYv
Li9nY2MveGdjYyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2Vs
Zi8uL2djYy8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNj
cm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvYmluLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1
aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0
ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxm
L21pcHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQv
QnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRl
ICAgIGxpbmtlciAoL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxm
Ly4vZ2NjL2NvbGxlY3QtbGQpIHN1cHBvcnRzIHNoYXJlZCBsaWJyYXJpZXMuLi4gbm8NCmNoZWNr
aW5nIGZvciAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9n
Y2MveGdjYyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8u
L2djYy8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9z
cy9lbGYvbWlwczY0LXh4eC1lbGYvYmluLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxk
RUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0g
L2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21p
cHM2NC14eHgtZWxmL2luY2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVp
bGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAg
IG9wdGlvbiB0byBwcm9kdWNlIFBJQy4uLiAtZlBJQyAtRFBJQw0KY2hlY2tpbmcgaWYgL2hvbWUv
bmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjL3hnY2MgLUIvaG9t
ZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvIC1CL2hvbWUv
bmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14
eHgtZWxmL2Jpbi8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21p
cHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1pc3lzdGVtIC9ob21lL25ldGxvZ2lj
L0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9p
bmNsdWRlIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwv
bWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5jbHVkZSAgICBQSUMgZmxhZyAtZlBJ
QyAtRFBJQyB3b3Jrcy4uLiB5ZXMNCmNoZWNraW5nIGlmIC9ob21lL25ldGxvZ2ljL0Rvd25sb2Fk
L0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbmV0bG9naWMvRG93bmxv
YWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2Fk
L0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9iaW4vIC1CL2hv
bWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2
NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVM
Ri9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVkZSAtaXN5c3RlbSAv
aG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlw
czY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgc3RhdGljIGZsYWcgLXN0YXRpYyB3b3Jrcy4uLiBu
bw0KY2hlY2tpbmcgaWYgL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJf
ZWxmLy4vZ2NjL3hnY2MgLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2Nj
Ml9lbGYvLi9nY2MvIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9t
aXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2Jpbi8gLUIvaG9tZS9uZXRsb2dpYy9Eb3dubG9h
ZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvbGliMzIvIC1p
c3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3Nz
L2VsZi9taXBzNjQteHh4LWVsZi9pbmNsdWRlIC1pc3lzdGVtIC9ob21lL25ldGxvZ2ljL0Rvd25s
b2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9zeXMtaW5j
bHVkZSAgICBzdXBwb3J0cyAtYyAtbyBmaWxlLm8uLi4geWVzDQpjaGVja2luZyBpZiAvaG9tZS9u
ZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MveGdjYyAtQi9ob21l
L25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy8gLUIvaG9tZS9u
ZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4
eC1lbGYvYmluLyAtQi9ob21lL25ldGxvZ2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlw
c2Nyb3NzL2VsZi9taXBzNjQteHh4LWVsZi9saWIzMi8gLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMv
RG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL2lu
Y2x1ZGUgLWlzeXN0ZW0gL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9t
aXBzY3Jvc3MvZWxmL21pcHM2NC14eHgtZWxmL3N5cy1pbmNsdWRlICAgIHN1cHBvcnRzIC1jIC1v
IGZpbGUuby4uLiAoY2FjaGVkKSB5ZXMNCmNoZWNraW5nIHdoZXRoZXIgdGhlIC9ob21lL25ldGxv
Z2ljL0Rvd25sb2FkL0J1aWxkRUxGL29iai9nY2MyX2VsZi8uL2djYy94Z2NjIC1CL2hvbWUvbmV0
bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvb2JqL2djYzJfZWxmLy4vZ2NjLyAtQi9ob21lL25ldGxv
Z2ljL0Rvd25sb2FkL0J1aWxkRUxGL2luc3RhbGwvbWlwc2Nyb3NzL2VsZi9taXBzNjQteHh4LWVs
Zi9iaW4vIC1CL2hvbWUvbmV0bG9naWMvRG93bmxvYWQvQnVpbGRFTEYvaW5zdGFsbC9taXBzY3Jv
c3MvZWxmL21pcHM2NC14eHgtZWxmL2xpYjMyLyAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3du
bG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNjcm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvaW5jbHVk
ZSAtaXN5c3RlbSAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9pbnN0YWxsL21pcHNj
cm9zcy9lbGYvbWlwczY0LXh4eC1lbGYvc3lzLWluY2x1ZGUgICAgbGlua2VyICgvaG9tZS9uZXRs
b2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9lbGYvLi9nY2MvY29sbGVjdC1sZCkgc3Vw
cG9ydHMgc2hhcmVkIGxpYnJhcmllcy4uLiBubw0KY2hlY2tpbmcgZHluYW1pYyBsaW5rZXIgY2hh
cmFjdGVyaXN0aWNzLi4uIG5vDQpjaGVja2luZyBob3cgdG8gaGFyZGNvZGUgbGlicmFyeSBwYXRo
cyBpbnRvIHByb2dyYW1zLi4uIGltbWVkaWF0ZQ0KY2hlY2tpbmcgZm9yIGV4Y2VwdGlvbiBtb2Rl
bCB0byB1c2UuLi4gY2FsbCBmcmFtZQ0KY2hlY2tpbmcgZm9yIGVuYWJsZWQgUENILi4uIG5vDQpj
aGVja2luZyBmb3IgdGhyZWFkIG1vZGVsIHVzZWQgYnkgR0NDLi4uIHNpbmdsZQ0KY2hlY2tpbmcg
Zm9yIGF0b21pYyBidWlsdGlucyBmb3IgYm9vbC4uLiB5ZXMNCmNoZWNraW5nIGZvciBhdG9taWMg
YnVpbHRpbnMgZm9yIHNob3J0Li4uIHllcw0KY2hlY2tpbmcgZm9yIGF0b21pYyBidWlsdGlucyBm
b3IgaW50Li4uIHllcw0KY2hlY2tpbmcgZm9yIGF0b21pYyBidWlsdGlucyBmb3IgbG9uZyBsb25n
Li4uIG5vDQpjaGVja2luZyBmb3IgSVNPL0lFQyBUUiAyNDczMyAuLi4gbm8NCmNoZWNraW5nIGZv
ciBnKysgdGhhdCBzdXBwb3J0cyAtZmZ1bmN0aW9uLXNlY3Rpb25zIC1mZGF0YS1zZWN0aW9ucy4u
LiB5ZXMNCmNoZWNraW5nIGZvciB1bmRlcmx5aW5nIEkvTyB0byB1c2UuLi4gc3RkaW8NCmNoZWNr
aW5nIGZvciBDIGxvY2FsZSB0byB1c2UuLi4gZ2VuZXJpYw0KY2hlY2tpbmcgZm9yIHN0ZDo6YWxs
b2NhdG9yIGJhc2UgY2xhc3MuLi4gbmV3DQpjb25maWd1cmU6ICJDIiBoZWFkZXIgc3RyYXRlZ3kg
c2V0IHRvIGNfZ2xvYmFsDQpjaGVja2luZyBmb3IgZW5hYmxlZCBsb25nIGxvbmcgc3BlY2lhbGl6
YXRpb25zLi4uIHllcw0KY2hlY2tpbmcgd2NoYXIuaCB1c2FiaWxpdHkuLi4gbm8NCmNoZWNraW5n
IHdjaGFyLmggcHJlc2VuY2UuLi4gbm8NCmNoZWNraW5nIGZvciB3Y2hhci5oLi4uIG5vDQpjaGVj
a2luZyBmb3IgbWJzdGF0ZV90Li4uIG5vDQpjaGVja2luZyB3Y3R5cGUuaCB1c2FiaWxpdHkuLi4g
bm8NCmNoZWNraW5nIHdjdHlwZS5oIHByZXNlbmNlLi4uIG5vDQpjaGVja2luZyBmb3Igd2N0eXBl
LmguLi4gbm8NCmNoZWNraW5nIGZvciBlbmFibGVkIHdjaGFyX3Qgc3BlY2lhbGl6YXRpb25zLi4u
IG5vDQpjaGVja2luZyBmb3IgSVNPIEM5OSBzdXBwb3J0IGluIDxtYXRoLmg+Li4uIG5vDQpjaGVj
a2luZyB0Z21hdGguaCB1c2FiaWxpdHkuLi4gbm8NCmNoZWNraW5nIHRnbWF0aC5oIHByZXNlbmNl
Li4uIG5vDQpjaGVja2luZyBmb3IgdGdtYXRoLmguLi4gbm8NCmNoZWNraW5nIGNvbXBsZXguaCB1
c2FiaWxpdHkuLi4gbm8NCmNoZWNraW5nIGNvbXBsZXguaCBwcmVzZW5jZS4uLiBubw0KY2hlY2tp
bmcgZm9yIGNvbXBsZXguaC4uLiBubw0Kbm8NCmNoZWNraW5nIGZvciBJU08gQzk5IHN1cHBvcnQg
aW4gPHN0ZGlvLmg+Li4uIG5vDQpjaGVja2luZyBmb3IgSVNPIEM5OSBzdXBwb3J0IGluIDxzdGRs
aWIuaD4uLi4gbm8NCmNoZWNraW5nIGZvciBmdWxseSBlbmFibGVkIElTTyBDOTkgc3VwcG9ydC4u
LiBubw0KY29uZmlndXJlOiBEZWJ1ZyBidWlsZCBmbGFncyBzZXQgdG8gLWczIC1PMA0KY2hlY2tp
bmcgZm9yIGFkZGl0aW9uYWwgZGVidWcgYnVpbGQuLi4gbm8NCmNvbmZpZ3VyZTogdGFyZ2V0LWxp
YmdvbXAgbm90IGJ1aWx0DQpjaGVja2luZyBmb3IgcGFyYWxsZWwgbW9kZSBzdXBwb3J0Li4uIG5v
DQpjaGVja2luZyBmb3IgZXh0cmEgY29tcGlsZXIgZmxhZ3MgZm9yIGJ1aWxkaW5nLi4uIC1HMCAt
bW5vLWdwb3B0DQpjaGVja2luZyBmb3IgZXh0ZXJuIHRlbXBsYXRlIHN1cHBvcnQuLi4geWVzDQpj
aGVja2luZyBmb3IgRU9XTkVSREVBRC4uLiBubw0KY2hlY2tpbmcgZm9yIEVOT1RSRUNPVkVSQUJM
RS4uLiBubw0KY2hlY2tpbmcgZm9yIEVOT0xJTksuLi4gbm8NCmNoZWNraW5nIGZvciBFUFJPVE8u
Li4gbm8NCmNoZWNraW5nIGZvciBFTk9EQVRBLi4uIG5vDQpjaGVja2luZyBmb3IgRU5PU1IuLi4g
bm8NCmNoZWNraW5nIGZvciBFTk9TVFIuLi4gbm8NCmNoZWNraW5nIGZvciBFVElNRS4uLiBubw0K
Y2hlY2tpbmcgZm9yIEVCQURNU0cuLi4gbm8NCmNoZWNraW5nIGZvciBFQ0FOQ0VMRUQuLi4gbm8N
CmNoZWNraW5nIGZvciBFT1ZFUkZMT1cuLi4gbm8NCmNoZWNraW5nIGZvciBFTk9UU1VQLi4uIG5v
DQpjaGVja2luZyBmb3IgRUlEUk0uLi4gbm8NCmNoZWNraW5nIGZvciBFVFhUQlNZLi4uIG5vDQpj
aGVja2luZyBmb3IgaW50NjRfdC4uLiBjaGVja2luZyBmb3IgTEZTIHN1cHBvcnQuLi4gbm8NCmNo
ZWNraW5nIHN5cy9pb2N0bC5oIHVzYWJpbGl0eS4uLiBubw0KY2hlY2tpbmcgc3lzL2lvY3RsLmgg
cHJlc2VuY2UuLi4gbm8NCmNoZWNraW5nIGZvciBzeXMvaW9jdGwuaC4uLiBubw0KY2hlY2tpbmcg
c3lzL2ZpbGlvLmggdXNhYmlsaXR5Li4uIG5vDQpjaGVja2luZyBzeXMvZmlsaW8uaCBwcmVzZW5j
ZS4uLiBubw0KY2hlY2tpbmcgZm9yIHN5cy9maWxpby5oLi4uIG5vDQpjaGVja2luZyBmb3IgcG9s
bC4uLiBubw0KY2hlY2tpbmcgZm9yIFNfSVNSRUcgb3IgU19JRlJFRy4uLiBubw0KY2hlY2tpbmcg
c3lzL3Vpby5oIHVzYWJpbGl0eS4uLiBubw0KY2hlY2tpbmcgc3lzL3Vpby5oIHByZXNlbmNlLi4u
IG5vDQpjaGVja2luZyBmb3Igc3lzL3Vpby5oLi4uIG5vDQpjaGVja2luZyBmb3Igd3JpdGV2Li4u
IG5vDQpjaGVja2luZyBmb3IgY29tcGxleC5oLi4uIChjYWNoZWQpIG5vDQpubw0KY2hlY2tpbmcg
Zm9yIElTTyBDOTkgc3VwcG9ydCB0byBUUjEgaW4gPGN0eXBlLmg+Li4uIG5vDQpjaGVja2luZyBm
ZW52LmggdXNhYmlsaXR5Li4uIG5vDQpjaGVja2luZyBmZW52LmggcHJlc2VuY2UuLi4gbm8NCmNo
ZWNraW5nIGZvciBmZW52LmguLi4gbm8NCm5vDQpjaGVja2luZyBmb3IgSVNPIEM5OSBzdXBwb3J0
IHRvIFRSMSBpbiA8c3RkaW50Lmg+Li4uIG5vDQpjaGVja2luZyBmb3IgSVNPIEM5OSBzdXBwb3J0
IHRvIFRSMSBpbiA8bWF0aC5oPi4uLiBubw0Kbm8NCm5vDQpjaGVja2luZyBzdGRib29sLmggdXNh
YmlsaXR5Li4uIG5vDQpjaGVja2luZyBzdGRib29sLmggcHJlc2VuY2UuLi4geWVzDQpjb25maWd1
cmU6IFdBUk5JTkc6IHN0ZGJvb2wuaDogcHJlc2VudCBidXQgY2Fubm90IGJlIGNvbXBpbGVkDQpj
b25maWd1cmU6IFdBUk5JTkc6IHN0ZGJvb2wuaDogICAgIGNoZWNrIGZvciBtaXNzaW5nIHByZXJl
cXVpc2l0ZSBoZWFkZXJzPw0KY29uZmlndXJlOiBXQVJOSU5HOiBzdGRib29sLmg6IHNlZSB0aGUg
QXV0b2NvbmYgZG9jdW1lbnRhdGlvbg0KY29uZmlndXJlOiBXQVJOSU5HOiBzdGRib29sLmg6ICAg
ICBzZWN0aW9uICJQcmVzZW50IEJ1dCBDYW5ub3QgQmUgQ29tcGlsZWQiDQpjb25maWd1cmU6IFdB
Uk5JTkc6IHN0ZGJvb2wuaDogcHJvY2VlZGluZyB3aXRoIHRoZSBjb21waWxlcidzIHJlc3VsdA0K
Y2hlY2tpbmcgZm9yIHN0ZGJvb2wuaC4uLiBubw0KY2hlY2tpbmcgZm9yIHRoZSB2YWx1ZSBvZiBF
T0YuLi4gY29uZmlndXJlOiBlcnJvcjogY29tcHV0aW5nIEVPRiBmYWlsZWQNCm1ha2VbMV06ICoq
KiBbY29uZmlndXJlLXRhcmdldC1saWJzdGRjKystdjNdIEVycm9yIDENCm1ha2VbMV06IExlYXZp
bmcgZGlyZWN0b3J5IGAvaG9tZS9uZXRsb2dpYy9Eb3dubG9hZC9CdWlsZEVMRi9vYmovZ2NjMl9l
bGYnDQoNCg==

--_004_17797116383D4341B029FDF34C22BF6A72FEFCE970GUREXMB01ASIA_--
