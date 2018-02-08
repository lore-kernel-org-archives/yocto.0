Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67416E00E43; Thu,  8 Feb 2018 00:49:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5463CE00D6D
	for <yocto@yoctoproject.org>; Thu,  8 Feb 2018 00:49:21 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 93C1435CE57;
	Thu,  8 Feb 2018 08:49:20 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 3MBxB4FN2VTn; Thu,  8 Feb 2018 08:49:12 +0000 (UTC)
Received: from [192.168.0.101] (unknown [62.240.103.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id DAFB935C149;
	Thu,  8 Feb 2018 08:49:11 +0000 (UTC)
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Mime-Version: 1.0 (1.0)
Date: Thu, 8 Feb 2018 09:13:28 +0200
Message-Id: <5DDA13F5-FD4C-4A18-8A8D-5A311097EEF2@dynamicdevices.co.uk>
References: <CAMm5SjSds4Fs=4vu=owwfKpJo_EYbOe5MzAdNesgzzMhJ2ytxg@mail.gmail.com>
In-Reply-To: <CAMm5SjSds4Fs=4vu=owwfKpJo_EYbOe5MzAdNesgzzMhJ2ytxg@mail.gmail.com>
To: =?utf-8?Q?M=C3=A1t=C3=A9_T=C3=BCske?= <matetuske@gmail.com>
X-Mailer: iPhone Mail (15D60)
Cc: yocto@yoctoproject.org
Subject: Re: mono build issue
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
X-List-Received-Date: Thu, 08 Feb 2018 08:49:24 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-690A8F62-4EE4-4FCA-B04B-9FF7EDBC865B
Content-Transfer-Encoding: 7bit

--Apple-Mail-690A8F62-4EE4-4FCA-B04B-9FF7EDBC865B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable



> On 7 Feb 2018, at 22:43, M=C3=A1t=C3=A9 T=C3=BCske <matetuske@gmail.com> w=
rote:
>=20
> Hi,
>=20
> I try to build custom image with mono. Previously I did it successfully, b=
ut now I ran into some issue and I cannot solve it.
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micr=
osoft.Build.Engine.dll contained in package mono-libs-3.5 requires mono(Syst=
em.Xml), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micr=
osoft.Build.Utilities.v3.5.dll contained in package mono-libs-3.5 requires m=
ono(System), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micr=
osoft.Build.Engine.dll contained in package mono-libs-3.5 requires mono(msco=
rlib), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configu=
ration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(mscorlib), but no providers found in RDEPEN=
DS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configu=
ration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(System.Xml), but no providers found in RDEP=
ENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configu=
ration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(System), but no providers found in RDEPENDS=
_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configu=
ration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(System.Configuration), but no providers fou=
nd in RDEPENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configu=
ration-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-co=
nfiguration-crypto requires mono(Mono.Security), but no providers found in R=
DEPENDS_mono-configuration-crypto? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6-api/Mono=
.Debugger.Soft.dll contained in package mono-api-4.6 requires mono(Mono.Ceci=
l), but no providers found in RDEPENDS_mono-api-4.6? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.2-api/Mo=
no.Debugger.Soft.dll contained in package mono-api-4.6.2 requires mono(Mono.=
Cecil), but no providers found in RDEPENDS_mono-api-4.6.2? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.7-api/Mono=
.Debugger.Soft.dll contained in package mono-api-4.7 requires mono(Mono.Ceci=
l), but no providers found in RDEPENDS_mono-api-4.7? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/xbuild/Micro=
soft/NuGet/Microsoft.NuGet.Build.Tasks.dll contained in package mono-xbuild r=
equires mono(mscorlib), but no providers found in RDEPENDS_mono-xbuild? [fil=
e-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.1-api/Mo=
no.Debugger.Soft.dll contained in package mono-api-4.6.1 requires mono(Mono.=
Cecil), but no providers found in RDEPENDS_mono-api-4.6.1? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/gac/Mono.Mes=
saging.RabbitMQ/4.0.0.0__0738eb9f132ed756/Mono.Messaging.RabbitMQ.dll contai=
ned in package mono-gac requires mono(mscorlib), but no providers found in R=
DEPENDS_mono-gac? [file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.5/Microsof=
t.CodeAnalysis.Scripting.dll contained in package mono-libs-4.5 requires mon=
o(System.Runtime.Loader), but no providers found in RDEPENDS_mono-libs-4.5? [=
file-rdeps]
> ERROR: mono-5.4.1.6-r0 do_package_qa: QA run found fatal errors. Please co=
nsider fixing them.
> ERROR: mono-5.4.1.6-r0 do_package_qa: Function failed: do_package_qa
> Can you help me with this?
>=20
> regards,
> Matthew
Hi,

I=E2=80=99m in the middle of the Red Sea at the moment but if you can provid=
e your build configuration I=E2=80=99ll take a look next week (assuming this=
 hasn=E2=80=99t been resolved in the meantime)

Cheers,

Alex


> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-690A8F62-4EE4-4FCA-B04B-9FF7EDBC865B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div></div><div><br></div><div><br>On 7 Feb=
 2018, at 22:43, M=C3=A1t=C3=A9 T=C3=BCske &lt;<a href=3D"mailto:matetuske@g=
mail.com">matetuske@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=3D=
"cite"><div><div dir=3D"ltr">Hi,<div><br></div><div>I try to build custom im=
age with mono. Previously I did it successfully, but now I ran into some iss=
ue and I cannot solve it.</div><pre id=3D"gmail-hterm:copy-to-clipboard-sour=
ce" style=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;word-spacing:0px;text-decoration-s=
tyle:initial;text-decoration-color:initial">ERROR: mono-5.4.1.6-r0 do_packag=
e_qa: QA Issue: /usr/lib/mono/3.5-api/Microsoft.Build.Engine.dll contained i=
n package mono-libs-3.5 requires mono(System.Xml), but no providers found in=
 RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micros=
oft.Build.Utilities.v3.5.dll contained in package mono-libs-3.5 requires mon=
o(System), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/3.5-api/Micros=
oft.Build.Engine.dll contained in package mono-libs-3.5 requires mono(mscorl=
ib), but no providers found in RDEPENDS_mono-libs-3.5? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configura=
tion-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-conf=
iguration-crypto requires mono(mscorlib), but no providers found in RDEPENDS=
_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configura=
tion-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-conf=
iguration-crypto requires mono(System.Xml), but no providers found in RDEPEN=
DS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configura=
tion-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-conf=
iguration-crypto requires mono(System), but no providers found in RDEPENDS_m=
ono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configura=
tion-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-conf=
iguration-crypto requires mono(System.Configuration), but no providers found=
 in RDEPENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/mono-configura=
tion-crypto/4.5/Mono.Configuration.Crypto.dll contained in package mono-conf=
iguration-crypto requires mono(Mono.Security), but no providers found in RDE=
PENDS_mono-configuration-crypto? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6-api/Mono.D=
ebugger.Soft.dll contained in package mono-api-4.6 requires mono(Mono.Cecil)=
, but no providers found in RDEPENDS_mono-api-4.6? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.2-api/Mono=
.Debugger.Soft.dll contained in package mono-api-4.6.2 requires mono(Mono.Ce=
cil), but no providers found in RDEPENDS_mono-api-4.6.2? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.7-api/Mono.D=
ebugger.Soft.dll contained in package mono-api-4.7 requires mono(Mono.Cecil)=
, but no providers found in RDEPENDS_mono-api-4.7? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/xbuild/Microso=
ft/NuGet/Microsoft.NuGet.Build.Tasks.dll contained in package mono-xbuild re=
quires mono(mscorlib), but no providers found in RDEPENDS_mono-xbuild? [file=
-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.6.1-api/Mono=
.Debugger.Soft.dll contained in package mono-api-4.6.1 requires mono(Mono.Ce=
cil), but no providers found in RDEPENDS_mono-api-4.6.1? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/gac/Mono.Messa=
ging.RabbitMQ/4.0.0.0__0738eb9f132ed756/Mono.Messaging.RabbitMQ.dll containe=
d in package mono-gac requires mono(mscorlib), but no providers found in RDE=
PENDS_mono-gac? [file-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA Issue: /usr/lib/mono/4.5/Microsoft.=
CodeAnalysis.Scripting.dll contained in package mono-libs-4.5 requires mono(=
System.Runtime.Loader), but no providers found in RDEPENDS_mono-libs-4.5? [f=
ile-rdeps]
ERROR: mono-5.4.1.6-r0 do_package_qa: QA run found fatal errors. Please cons=
ider fixing them.
ERROR: mono-5.4.1.6-r0 do_package_qa: Function failed: do_package_qa<br></pr=
e><div><pre id=3D"gmail-hterm:copy-to-clipboard-source" style=3D"color:rgb(0=
,0,0);font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;word-spacing:0px;text-decoration-style:initial;text-decora=
tion-color:initial"><span style=3D"font-family:arial,sans-serif;color:rgb(34=
,34,34)">Can you help me with this?</span>
</pre><pre id=3D"gmail-hterm:copy-to-clipboard-source" style=3D"color:rgb(0,=
0,0);font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;tex=
t-transform:none;word-spacing:0px;text-decoration-style:initial;text-decorat=
ion-color:initial"><span style=3D"font-family:arial,sans-serif;color:rgb(34,=
34,34)"><br></span></pre><pre id=3D"gmail-hterm:copy-to-clipboard-source" st=
yle=3D"color:rgb(0,0,0);font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;word-spacing:0px;text-decoration-style:i=
nitial;text-decoration-color:initial"><span style=3D"font-family:arial,sans-=
serif;color:rgb(34,34,34)">regards,</span></pre><pre id=3D"gmail-hterm:copy-=
to-clipboard-source" style=3D"color:rgb(0,0,0);font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;=
text-decoration-style:initial;text-decoration-color:initial"><span style=3D"=
font-family:arial,sans-serif;color:rgb(34,34,34)">Matthew</span></pre></div>=
</div>
</div></blockquote><div>Hi,</div><div><br></div><div>I=E2=80=99m in the midd=
le of the Red Sea at the moment but if you can provide your build configurat=
ion I=E2=80=99ll take a look next week (assuming this hasn=E2=80=99t been re=
solved in the meantime)</div><div><br></div><div>Cheers,</div><div><br></div=
><div>Alex</div><div><br></div><br><blockquote type=3D"cite"><div><span>-- <=
/span><br><span>_______________________________________________</span><br><s=
pan>yocto mailing list</span><br><span><a href=3D"mailto:yocto@yoctoproject.=
org">yocto@yoctoproject.org</a></span><br><span><a href=3D"https://lists.yoc=
toproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto<=
/a></span><br></div></blockquote></body></html>=

--Apple-Mail-690A8F62-4EE4-4FCA-B04B-9FF7EDBC865B--
