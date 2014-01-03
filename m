Return-Path: <vidal.develone@gmail.com>
Received: from mail-qa0-f54.google.com (mail-qa0-f54.google.com
	[209.85.216.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80FEE007C6
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 08:46:02 -0800 (PST)
Received: by mail-qa0-f54.google.com with SMTP id f11so629979qae.6
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 08:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IyIC5lf3mT7wJ5TsAZfzFmt2dx/j27ms4u2Y2bMCQIg=;
	b=LHGWxDit/QrM/8ecwmwJV8ZsJ9GZvGbNUVHvwo9DCDGecdYMVJBuHh2hUeJfeDmGO9
	iMDq+E6PbcBolefC+edmrpijJ1HL72THzPMNYtpztsLMzXt288lASrg8jDH6uveLUZzY
	uObtr47uryknLVJ8DE+MbfK/qTH6PZOSgYH29bi097vY/dF1RdmjPHIvoyYYlkraOIXL
	G1ItCQlSFMllIa6SW/Kf5T5Wy5hrKZkBK7Ha9JkReIl3uzs1Xm6p+150MxhFHZpFRWOZ
	yp5ZdzvXeAdvP/itF5yaYJ0V7KMHRBrvsqG4t4NoXFA6SAXeedOY8URC4PUmb5VNsrV5
	kj9g==
MIME-Version: 1.0
X-Received: by 10.229.7.133 with SMTP id d5mr148158102qcd.10.1388767561272;
	Fri, 03 Jan 2014 08:46:01 -0800 (PST)
Received: by 10.140.37.49 with HTTP; Fri, 3 Jan 2014 08:46:01 -0800 (PST)
Date: Fri, 3 Jan 2014 09:46:01 -0700
Message-ID: <CANwz6nyQW9br6znzmLWLAM52n4UpQA1pbu9JBR0ZvT8UO8NQQw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: toolchain
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
X-List-Received-Date: Fri, 03 Jan 2014 16:46:04 -0000
X-Groupsio-MsgNum: 17654
Content-Type: multipart/mixed; boundary=001a1135ec942a6dbb04ef13a523

--001a1135ec942a6dbb04ef13a523
Content-Type: multipart/alternative; boundary=001a1135ec942a6db604ef13a521

--001a1135ec942a6db604ef13a521
Content-Type: text/plain; charset=ISO-8859-1

Hello all,
I am currently working with the zedboard using a rootfs generated with a
dylan branch of yocto (gsl, gnuplot, gnuradio, java, vlc, v4l-utils, and
openCV with C920 camera).  My zImage and devicetree.dtb were built with
yocto sdk.  My BOOT.BIN (FSBL system.bit and u-boot) were built with 14.4
of Xilinx Tools.  This requires dual booting a CentOS 6.4 x86_64 (Xilinx
Tools) and Fedora19 x86_64 (Yocto).  I have not been able to run Yocto on
CentOS since the need for higher version of python.

Is it possible to generate a BOOT.BIN with the files generated with
Yocto?

This requires 2 toolchains.  I was checking the difference between the 2
see the attached files.
Should the difference between the toolchains be of concern going forward?

My Xilinx tools are node locked and I can only use on a single system.
Is there a method to run Yocto on CentOS6.4 x86_64?
Any and all help will be appreciated.

Thanks

--001a1135ec942a6db604ef13a521
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<br>I am currently working with the zedboard usi=
ng a rootfs generated with a dylan branch of yocto (gsl, gnuplot, gnuradio,=
 java, vlc, v4l-utils, and openCV with C920 camera).=A0 My zImage and devic=
etree.dtb were built with yocto sdk.=A0 My BOOT.BIN (FSBL system.bit and u-=
boot) were built with 14.4 of Xilinx Tools.=A0 This requires dual booting a=
 CentOS 6.4 x86_64 (Xilinx Tools) and Fedora19 x86_64 (Yocto).=A0 I have no=
t been able to run Yocto on CentOS since the need for higher version of pyt=
hon.=A0 <br>
<br>Is it possible to generate a BOOT.BIN with the files generated with Yoc=
to?=A0=A0 <br><br>This requires 2 toolchains.=A0 I was checking the differe=
nce between the 2 see the attached files. <br>Should the difference between=
 the toolchains be of concern going forward?=A0 <br>
<br>My Xilinx tools are node locked and I can only use on a single system.<=
br>Is there a method to run Yocto on CentOS6.4 x86_64?<br>Any and all help =
will be appreciated.<br><br>Thanks=A0 <br></div>

--001a1135ec942a6db604ef13a521--

--001a1135ec942a6dbb04ef13a523
Content-Type: text/plain; charset=US-ASCII; name="poky-toolchain.txt"
Content-Disposition: attachment; filename="poky-toolchain.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hpzoayoh0

YXJtLXBva3ktbGludXgtZ251ZWFiaS1nY2MgLXYKVXNpbmcgYnVpbHQtaW4gc3BlY3MuCkNPTExF
Q1RfR0NDPWFybS1wb2t5LWxpbnV4LWdudWVhYmktZ2NjCkNPTExFQ1RfTFRPX1dSQVBQRVI9L29w
dC9wb2t5LzEuNC4zL3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9saWJleGVjL2Fy
bXY3YS12ZnAtbmVvbi1wb2t5LWxpbnV4LWdudWVhYmkvZ2NjL2FybS1wb2t5LWxpbnV4LWdudWVh
YmkvNC43LjIvbHRvLXdyYXBwZXIKVGFyZ2V0OiBhcm0tcG9reS1saW51eC1nbnVlYWJpCkNvbmZp
Z3VyZWQgd2l0aDogL2hvbWUvdmlkYWwvUE9LWS9keWxhbl9idWlsZC9wb2t5L2J1aWxkL3RtcC93
b3JrLXNoYXJlZC9nY2MtNC43LjItcjIwL2djYy00LjcuMi9jb25maWd1cmUgCi0tYnVpbGQ9eDg2
XzY0LWxpbnV4IAotLWhvc3Q9eDg2XzY0LXBva3lzZGstbGludXggCi0tdGFyZ2V0PWFybS1wb2t5
LWxpbnV4LWdudWVhYmkgCi0tcHJlZml4PS9vcHQvcG9reS8xLjQuMy9zeXNyb290cy94ODZfNjQt
cG9reXNkay1saW51eC91c3IgCi0tZXhlY19wcmVmaXg9L29wdC9wb2t5LzEuNC4zL3N5c3Jvb3Rz
L3g4Nl82NC1wb2t5c2RrLWxpbnV4L3VzciAKLS1iaW5kaXI9L29wdC9wb2t5LzEuNC4zL3N5c3Jv
b3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9iaW4vYXJtdjdhLXZmcC1uZW9uLXBva3ktbGlu
dXgtZ251ZWFiaSAKLS1zYmluZGlyPS9vcHQvcG9reS8xLjQuMy9zeXNyb290cy94ODZfNjQtcG9r
eXNkay1saW51eC91c3IvYmluL2FybXY3YS12ZnAtbmVvbi1wb2t5LWxpbnV4LWdudWVhYmkgCi0t
bGliZXhlY2Rpcj0vb3B0L3Bva3kvMS40LjMvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGludXgv
dXNyL2xpYmV4ZWMvYXJtdjdhLXZmcC1uZW9uLXBva3ktbGludXgtZ251ZWFiaSAKLS1kYXRhZGly
PS9vcHQvcG9reS8xLjQuMy9zeXNyb290cy94ODZfNjQtcG9reXNkay1saW51eC91c3Ivc2hhcmUg
Ci0tc3lzY29uZmRpcj0vb3B0L3Bva3kvMS40LjMvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGlu
dXgvZXRjIAotLXNoYXJlZHN0YXRlZGlyPS9vcHQvcG9reS8xLjQuMy9zeXNyb290cy94ODZfNjQt
cG9reXNkay1saW51eC9jb20gCi0tbG9jYWxzdGF0ZWRpcj0vb3B0L3Bva3kvMS40LjMvc3lzcm9v
dHMveDg2XzY0LXBva3lzZGstbGludXgvdmFyIAotLWxpYmRpcj0vb3B0L3Bva3kvMS40LjMvc3lz
cm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL2xpYi9hcm12N2EtdmZwLW5lb24tcG9reS1s
aW51eC1nbnVlYWJpIAotLWluY2x1ZGVkaXI9L29wdC9wb2t5LzEuNC4zL3N5c3Jvb3RzL3g4Nl82
NC1wb2t5c2RrLWxpbnV4L3Vzci9pbmNsdWRlIAotLW9sZGluY2x1ZGVkaXI9L29wdC9wb2t5LzEu
NC4zL3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9pbmNsdWRlIAotLWluZm9kaXI9
L29wdC9wb2t5LzEuNC4zL3N5c3Jvb3RzL3g4Nl82NC1wb2t5c2RrLWxpbnV4L3Vzci9zaGFyZS9p
bmZvIAotLW1hbmRpcj0vb3B0L3Bva3kvMS40LjMvc3lzcm9vdHMveDg2XzY0LXBva3lzZGstbGlu
dXgvdXNyL3NoYXJlL21hbiAKLS1kaXNhYmxlLXNpbGVudC1ydWxlcyAKLS1kaXNhYmxlLWRlcGVu
ZGVuY3ktdHJhY2tpbmcgCi0td2l0aC1saWJ0b29sLXN5c3Jvb3Q9L2hvbWUvdmlkYWwvUE9LWS9k
eWxhbl9idWlsZC9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbmF0aXZlc2RrLXBva3lz
ZGstbGludXggCi0td2l0aC1nbnUtbGQgCi0tZW5hYmxlLXNoYXJlZCAKLS1lbmFibGUtbGFuZ3Vh
Z2VzPWMsYysrIAotLWVuYWJsZS10aHJlYWRzPXBvc2l4IAotLWVuYWJsZS1tdWx0aWxpYiAKLS1l
bmFibGUtYzk5IAotLWVuYWJsZS1sb25nLWxvbmcgCi0tZW5hYmxlLXN5bXZlcnM9Z251IAotLWVu
YWJsZS1saWJzdGRjeHgtcGNoIAotLXByb2dyYW0tcHJlZml4PWFybS1wb2t5LWxpbnV4LWdudWVh
YmktIAotLXdpdGhvdXQtbG9jYWwtcHJlZml4IAotLWVuYWJsZS10YXJnZXQtb3B0c3BhY2UgCi0t
ZW5hYmxlLWx0byAKLS1lbmFibGUtbGlic3NwIAotLWRpc2FibGUtYm9vdHN0cmFwIAotLWRpc2Fi
bGUtbGlibXVkZmxhcCAKLS13aXRoLXN5c3RlbS16bGliIAotLXdpdGgtbGlua2VyLWhhc2gtc3R5
bGU9Z251IAotLWVuYWJsZS1saW5rZXItYnVpbGQtaWQgCi0td2l0aC1wcGw9bm8gCi0td2l0aC1j
bG9vZz1ubyAKLS1lbmFibGUtY2hlY2tpbmc9cmVsZWFzZSAKLS1lbmFibGUtY2hlYWRlcnM9Y19n
bG9iYWwgCi0td2l0aC1neHgtaW5jbHVkZS1kaXI9L29wdC9wb2t5LzEuNC4zL3N5c3Jvb3RzL2Fy
bXY3YS12ZnAtbmVvbi1wb2t5LWxpbnV4LWdudWVhYmkvdXNyL2luY2x1ZGUvYysrIAotLXdpdGgt
YnVpbGQtdGltZS10b29scz0vaG9tZS92aWRhbC9QT0tZL2R5bGFuX2J1aWxkL3Bva3kvYnVpbGQv
dG1wL3N5c3Jvb3RzL3g4Nl82NC1saW51eC91c3IvYXJtLXBva3ktbGludXgtZ251ZWFiaS9iaW4g
Ci0td2l0aC1zeXNyb290PS9vcHQvcG9reS8xLjQuMy9zeXNyb290cy9hcm12N2EtdmZwLW5lb24t
cG9reS1saW51eC1nbnVlYWJpIAotLXdpdGgtYnVpbGQtc3lzcm9vdD0vaG9tZS92aWRhbC9QT0tZ
L2R5bGFuX2J1aWxkL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3plZGJvYXJkIAotLWRpc2FibGUt
bGlidW53aW5kLWV4Y2VwdGlvbnMgCi0tZGlzYWJsZS1saWJzc3AgCi0tZGlzYWJsZS1saWJnb21w
IAotLWRpc2FibGUtbGlibXVkZmxhcCAKLS13aXRoLW1wZnI9L2hvbWUvdmlkYWwvUE9LWS9keWxh
bl9idWlsZC9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGst
bGludXggCi0td2l0aC1tcGM9L2hvbWUvdmlkYWwvUE9LWS9keWxhbl9idWlsZC9wb2t5L2J1aWxk
L3RtcC9zeXNyb290cy94ODZfNjQtbmF0aXZlc2RrLXBva3lzZGstbGludXggCi0tZW5hYmxlLW5s
cwpUaHJlYWQgbW9kZWw6IHBvc2l4CmdjYyB2ZXJzaW9uIDQuNy4yIChHQ0MpCg==

--001a1135ec942a6dbb04ef13a523
Content-Type: text/plain; charset=US-ASCII; name="xilinx-toolchain.txt"
Content-Disposition: attachment; filename="xilinx-toolchain.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hpzobo2k1

YXJtLXhpbGlueC1saW51eC1nbnVlYWJpLWdjYyAtdgpVc2luZyBidWlsdC1pbiBzcGVjcy4KQ09M
TEVDVF9HQ0M9YXJtLXhpbGlueC1saW51eC1nbnVlYWJpLWdjYwpDT0xMRUNUX0xUT19XUkFQUEVS
PS9vcHQvWGlsaW54LzE0LjQvU0RLL1NESy9nbnUvYXJtL2xpbi9iaW4vLi4vbGliZXhlYy9nY2Mv
YXJtLXhpbGlueC1saW51eC1nbnVlYWJpLzQuNi4zL2x0by13cmFwcGVyClRhcmdldDogYXJtLXhp
bGlueC1saW51eC1nbnVlYWJpCkNvbmZpZ3VyZWQgd2l0aDogL3NjcmF0Y2gvamFuaXNqby8yMDEy
LjAzLXhpbGlueC1saW51eC1saXRlL3NyYy9nY2MtNC42LTIwMTIuMDMvY29uZmlndXJlIAotLWJ1
aWxkPWk2ODYtcGMtbGludXgtZ251IAotLWhvc3Q9aTY4Ni1wYy1saW51eC1nbnUgCi0tdGFyZ2V0
PWFybS14aWxpbngtbGludXgtZ251ZWFiaSAKLS1lbmFibGUtdGhyZWFkcyAKLS1kaXNhYmxlLWxp
Ym11ZGZsYXAgCi0tZGlzYWJsZS1saWJzc3AgCi0tZGlzYWJsZS1saWJzdGRjeHgtcGNoIAotLWVu
YWJsZS1leHRyYS1zZ3h4bGl0ZS1tdWx0aWxpYnMgCi0td2l0aC1hcmNoPWFybXY1dGUgCi0td2l0
aC1jcHU9Y29ydGV4LWE5IAotLXdpdGgtZmxvYXQ9c29mdGZwIAotLXdpdGgtZnB1PW5lb24tZnAx
NiAKLS1kaXNhYmxlLW11bHRpbGliIAotLXdpdGgtZ251LWFzIAotLXdpdGgtZ251LWxkIAotLXdp
dGgtc3BlY3M9JyV7c2F2ZS10ZW1wczogLWZ2ZXJib3NlLWFzbX0gJXtmdW53aW5kLXRhYmxlc3xm
bm8tdW53aW5kLXRhYmxlc3xtYWJpPSp8ZmZyZWVzdGFuZGluZ3xub3N0ZGxpYjo7Oi1mdW53aW5k
LXRhYmxlc30gLURfX0NTX1NPVVJDRVJZR1hYX01BSl9fPTIwMTIgLURfX0NTX1NPVVJDRVJZR1hY
X01JTl9fPTMgLURfX0NTX1NPVVJDRVJZR1hYX1JFVl9fPTc5ICV7TzI6JXshZm5vLXJlbW92ZS1s
b2NhbC1zdGF0aWNzOiAtZnJlbW92ZS1sb2NhbC1zdGF0aWNzfX0gJXtPKjole098TzB8TzF8TzJ8
T3M6OzoleyFmbm8tcmVtb3ZlLWxvY2FsLXN0YXRpY3M6IC1mcmVtb3ZlLWxvY2FsLXN0YXRpY3N9
fX0nIAotLWVuYWJsZS1sYW5ndWFnZXM9YyxjKysgCi0tZW5hYmxlLXNoYXJlZCAKLS1lbmFibGUt
bHRvIAotLWVuYWJsZS1zeW12ZXJzPWdudSAKLS1lbmFibGUtX19jeGFfYXRleGl0IAotLXdpdGgt
cGtndmVyc2lvbj0nU291cmNlcnkgQ29kZUJlbmNoIExpdGUgMjAxMi4wMy03OScgCi0td2l0aC1i
dWd1cmw9aHR0cHM6Ly9zdXBwb3J0LmNvZGVzb3VyY2VyeS5jb20vR05VVG9vbGNoYWluLyAKLS1k
aXNhYmxlLW5scyAKLS1wcmVmaXg9L29wdC9jb2Rlc291cmNlcnkgCi0td2l0aC1zeXNyb290PS9v
cHQvY29kZXNvdXJjZXJ5L2FybS14aWxpbngtbGludXgtZ251ZWFiaS9saWJjIAotLXdpdGgtYnVp
bGQtc3lzcm9vdD0vc2NyYXRjaC9qYW5pc2pvLzIwMTIuMDMteGlsaW54LWxpbnV4LWxpdGUvaW5z
dGFsbC9hcm0teGlsaW54LWxpbnV4LWdudWVhYmkvbGliYyAKLS13aXRoLWdtcD0vc2NyYXRjaC9q
YW5pc2pvLzIwMTIuMDMteGlsaW54LWxpbnV4LWxpdGUvb2JqL3BrZy0yMDEyLjAzLTc5LWFybS14
aWxpbngtbGludXgtZ251ZWFiaS94aWxpbngtMjAxMi4wMy03OS1hcm0teGlsaW54LWxpbnV4LWdu
dWVhYmkuZXh0cmFzL2hvc3QtbGlicy1pNjg2LXBjLWxpbnV4LWdudS91c3IgCi0td2l0aC1tcGZy
PS9zY3JhdGNoL2phbmlzam8vMjAxMi4wMy14aWxpbngtbGludXgtbGl0ZS9vYmovcGtnLTIwMTIu
MDMtNzktYXJtLXhpbGlueC1saW51eC1nbnVlYWJpL3hpbGlueC0yMDEyLjAzLTc5LWFybS14aWxp
bngtbGludXgtZ251ZWFiaS5leHRyYXMvaG9zdC1saWJzLWk2ODYtcGMtbGludXgtZ251L3VzciAK
LS13aXRoLW1wYz0vc2NyYXRjaC9qYW5pc2pvLzIwMTIuMDMteGlsaW54LWxpbnV4LWxpdGUvb2Jq
L3BrZy0yMDEyLjAzLTc5LWFybS14aWxpbngtbGludXgtZ251ZWFiaS94aWxpbngtMjAxMi4wMy03
OS1hcm0teGlsaW54LWxpbnV4LWdudWVhYmkuZXh0cmFzL2hvc3QtbGlicy1pNjg2LXBjLWxpbnV4
LWdudS91c3IgCi0td2l0aC1wcGw9L3NjcmF0Y2gvamFuaXNqby8yMDEyLjAzLXhpbGlueC1saW51
eC1saXRlL29iai9wa2ctMjAxMi4wMy03OS1hcm0teGlsaW54LWxpbnV4LWdudWVhYmkveGlsaW54
LTIwMTIuMDMtNzktYXJtLXhpbGlueC1saW51eC1nbnVlYWJpLmV4dHJhcy9ob3N0LWxpYnMtaTY4
Ni1wYy1saW51eC1nbnUvdXNyIAotLXdpdGgtaG9zdC1saWJzdGRjeHg9Jy1zdGF0aWMtbGliZ2Nj
IC1XbCwtQnN0YXRpYywtbHN0ZGMrKywtQmR5bmFtaWMgLWxtJyAKLS13aXRoLWNsb29nPS9zY3Jh
dGNoL2phbmlzam8vMjAxMi4wMy14aWxpbngtbGludXgtbGl0ZS9vYmovcGtnLTIwMTIuMDMtNzkt
YXJtLXhpbGlueC1saW51eC1nbnVlYWJpL3hpbGlueC0yMDEyLjAzLTc5LWFybS14aWxpbngtbGlu
dXgtZ251ZWFiaS5leHRyYXMvaG9zdC1saWJzLWk2ODYtcGMtbGludXgtZ251L3VzciAKLS13aXRo
LWxpYmVsZj0vc2NyYXRjaC9qYW5pc2pvLzIwMTIuMDMteGlsaW54LWxpbnV4LWxpdGUvb2JqL3Br
Zy0yMDEyLjAzLTc5LWFybS14aWxpbngtbGludXgtZ251ZWFiaS94aWxpbngtMjAxMi4wMy03OS1h
cm0teGlsaW54LWxpbnV4LWdudWVhYmkuZXh0cmFzL2hvc3QtbGlicy1pNjg2LXBjLWxpbnV4LWdu
dS91c3IgCi0tZGlzYWJsZS1saWJnb21wIAotLWRpc2FibGUtbGliaXRtIAotLWVuYWJsZS1wb2lz
b24tc3lzdGVtLWRpcmVjdG9yaWVzIAotLXdpdGgtYnVpbGQtdGltZS10b29scz0vc2NyYXRjaC9q
YW5pc2pvLzIwMTIuMDMteGlsaW54LWxpbnV4LWxpdGUvaW5zdGFsbC9hcm0teGlsaW54LWxpbnV4
LWdudWVhYmkvYmluIAotLXdpdGgtYnVpbGQtdGltZS10b29scz0vc2NyYXRjaC9qYW5pc2pvLzIw
MTIuMDMteGlsaW54LWxpbnV4LWxpdGUvaW5zdGFsbC9hcm0teGlsaW54LWxpbnV4LWdudWVhYmkv
YmluClRocmVhZCBtb2RlbDogcG9zaXgKZ2NjIHZlcnNpb24gNC42LjMgKFNvdXJjZXJ5IENvZGVC
ZW5jaCBMaXRlIDIwMTIuMDMtNzkpCg==

--001a1135ec942a6dbb04ef13a523--
