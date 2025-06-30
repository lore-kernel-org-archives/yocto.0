Return-Path: <ferdinand0022@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B92BC8302D
	for <webhook@archiver.kernel.org>; Mon, 30 Jun 2025 10:56:59 +0000 (UTC)
Subject: Re: [yocto] WiFi driver on Radxa Zero 3W #devicedriver #make
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: ferdinand0022@gmail.com
X-Originating-Location: Turku, Southwest Finland, FI (84.249.64.42)
X-Originating-Platform: Linux Firefox 140
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 30 Jun 2025 03:56:51 -0700
References: <467a4e38-bcb5-4b19-a0f7-70f32974bb6f@gmail.com>
In-Reply-To: <467a4e38-bcb5-4b19-a0f7-70f32974bb6f@gmail.com>
Message-ID: <25560.1751281011452693605@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="LSW5v3PyJkkQKugHP6ph"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 30 Jun 2025 10:56:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65564

--LSW5v3PyJkkQKugHP6ph
Content-Type: multipart/alternative; boundary="wScjJX7SxvbetxsrstjL"

--wScjJX7SxvbetxsrstjL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot for the reply. It proceeded a bit more, but now it seems like =
the compilation is not running correctly.

>=20
> My edited file looks like this:
> SUMMARY =3D "Aicsemi aic8800 Wi-Fi driver"
> DESCRIPTION =3D "Aicsemi aic8800 Wi-Fi driver installation"
> LICENSE =3D "CLOSED"
> SRC_URI =3D
> "git://github.com/radxa-pkg/aic8800.git;branch=3Dmain;protocol=3Dhttps"
> SRCREV =3D "ac5c387ca74e17e91d14d87cd3ba140bb21faf6e"
> S =3D "${WORKDIR}/git"
> inherit module
>=20
> RPROVIDES:${PN} +=3D "kernel-module-aic8800"
>=20

After running the bitbake command on the module,=C2=A0 compilation from the=
 makefile seems to show this error:

>=20
> src/tools/aicrf_test/bt_test.c:1:10: fatal error: stdio.h: No such file o=
r
> directory
> | =C2=A0 =C2=A0 1 | #include <stdio.h>
> | =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~
> | src/tools/aicrf_test/wifi_test.c:1:10: fatal error: stdio.h: No such
> file or directory
> | =C2=A0 =C2=A0 1 | #include <stdio.h>
> | =C2=A0 =C2=A0 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~
> | compilation terminated.
>=20

Basically the default header files are not getting detected in the yocto bu=
ild process. I have gcc 13.3 already installed on the build host.
I have attached the generated logfile here.

--wScjJX7SxvbetxsrstjL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks a lot for the reply. It proceeded a bit more, but now it seems =
like the compilation is not running correctly.</div>
<div>
<blockquote>My edited file looks like this:
<div>SUMMARY =3D "Aicsemi aic8800 Wi-Fi driver"<br />DESCRIPTION =3D "Aicse=
mi aic8800 Wi-Fi driver installation"<br />LICENSE =3D "CLOSED"</div>
<div>SRC_URI =3D "git://github.com/radxa-pkg/aic8800.git;branch=3Dmain;prot=
ocol=3Dhttps"<br />SRCREV =3D "ac5c387ca74e17e91d14d87cd3ba140bb21faf6e"</d=
iv>
<div>S =3D "${WORKDIR}/git"</div>
<div>inherit module</div>
<div><br />RPROVIDES:${PN} +=3D "kernel-module-aic8800"</div>
</blockquote>
<br />After running the bitbake command on the module,&nbsp; compilation fr=
om the makefile seems to show this error:</div>
<blockquote>
<div>&nbsp;src/tools/aicrf_test/bt_test.c:1:10: fatal error: stdio.h: No su=
ch file or directory<br />| &nbsp; &nbsp; 1 | #include &lt;stdio.h&gt;<br /=
>| &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~<br />=
| src/tools/aicrf_test/wifi_test.c:1:10: fatal error: stdio.h: No such file=
 or directory<br />| &nbsp; &nbsp; 1 | #include &lt;stdio.h&gt;<br />| &nbs=
p; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;^~~~~~~~~<br />| compi=
lation terminated.</div>
</blockquote>
<div>&nbsp;</div>
<div>Basically the default header files are not getting detected in the yoc=
to build process. I have gcc 13.3 already installed on the build host.</div=
>
<div>I have attached the generated logfile here.</div>

--wScjJX7SxvbetxsrstjL--

--LSW5v3PyJkkQKugHP6ph
Content-Type: application/octet-stream; name="log.do_compile.124273"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="log.do_compile.124273"

REVCVUc6IEV4ZWN1dGluZyBzaGVsbCBmdW5jdGlvbiBkb19jb21waWxlCk5PVEU6IG1ha2UgLWog
MTYgS0VSTkVMX1NSQz0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4YV96ZXJvL2J1
aWxkL3RtcC1nbGliYy93b3JrLXNoYXJlZC9yYWR4YS16ZXJvLTN3L2tlcm5lbC1zb3VyY2UgS0VS
TkVMX1BBVEg9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90
bXAtZ2xpYmMvd29yay1zaGFyZWQvcmFkeGEtemVyby0zdy9rZXJuZWwtc291cmNlIEtFUk5FTF9W
RVJTSU9OPTYuMTUuMC1yYzYtbmV4dC0yMDI1MDUxNi15b2N0by1zdGFuZGFyZCBDQz1hYXJjaDY0
LW9lLWxpbnV4LWdjYyAgICAtZnVzZS1sZD1iZmQgLWZjYW5vbi1wcmVmaXgtbWFwICAtZm1hY3Jv
LXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWls
ZC90bXAtZ2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAvMS4wL2dpdD0v
dXNyL3NyYy9kZWJ1Zy9haWM4ODAwLzEuMCAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL3Rlc3Rf
dXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1wLWdsaWJjL3dvcmsvcmFkeGFf
emVyb18zdy1vZS1saW51eC9haWM4ODAwLzEuMC9naXQ9L3Vzci9zcmMvZGVidWcvYWljODgwMC8x
LjAgIC1mbWFjcm8tcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4
YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrL3JhZHhhX3plcm9fM3ctb2UtbGludXgvYWljODgw
MC8xLjAvZ2l0PS91c3Ivc3JjL2RlYnVnL2FpYzg4MDAvMS4wICAtZmRlYnVnLXByZWZpeC1tYXA9
L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMv
d29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAvMS4wL2dpdD0vdXNyL3NyYy9kZWJ1
Zy9haWM4ODAwLzEuMCAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL3Rlc3RfdXNlci9wcm9qZWN0
L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1wLWdsaWJjL3dvcmsvcmFkeGFfemVyb18zdy1vZS1s
aW51eC9haWM4ODAwLzEuMC9yZWNpcGUtc3lzcm9vdD0gIC1mbWFjcm8tcHJlZml4LW1hcD0vaG9t
ZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3Jr
L3JhZHhhX3plcm9fM3ctb2UtbGludXgvYWljODgwMC8xLjAvcmVjaXBlLXN5c3Jvb3Q9ICAtZmRl
YnVnLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9i
dWlsZC90bXAtZ2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAvMS4wL3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZT0gICAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2Vy
L3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMvd29yay1zaGFyZWQvcmFk
eGEtemVyby0zdy9rZXJuZWwtc291cmNlPS91c3Ivc3JjL2tlcm5lbCAgLWZtYWNyby1wcmVmaXgt
bWFwPS9ob21lL3Rlc3RfdXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1wLWds
aWJjL3dvcmstc2hhcmVkL3JhZHhhLXplcm8tM3cva2VybmVsLXNvdXJjZT0vdXNyL3NyYy9rZXJu
ZWwgIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4
YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrLXNoYXJlZC9yYWR4YS16ZXJvLTN3L2tlcm5lbC1i
dWlsZC1hcnRpZmFjdHM9L3Vzci9zcmMva2VybmVsICAtZm1hY3JvLXByZWZpeC1tYXA9L2hvbWUv
dGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMvd29yay1z
aGFyZWQvcmFkeGEtemVyby0zdy9rZXJuZWwtYnVpbGQtYXJ0aWZhY3RzPS91c3Ivc3JjL2tlcm5l
bCAgTEQ9YWFyY2g2NC1vZS1saW51eC1sZC5iZmQgICBBUj1hYXJjaDY0LW9lLWxpbnV4LWFyICBP
QkpDT1BZPWFhcmNoNjQtb2UtbGludXgtb2JqY29weSAgU1RSSVA9YWFyY2g2NC1vZS1saW51eC1z
dHJpcCBPPS9ob21lL3Rlc3RfdXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1w
LWdsaWJjL3dvcmstc2hhcmVkL3JhZHhhLXplcm8tM3cva2VybmVsLWJ1aWxkLWFydGlmYWN0cyBL
QlVJTERfRVhUUkFfU1lNQk9MUz0KZWNobyAtZSAiZ2l0IGNsb25lIGh0dHBzOi8vZ2l0aHViLmNv
bS9yYWR4YS1wa2cvYWljODgwMC5naXRcbmdpdCBjaGVja291dCBhYzVjMzg3Y2E3NGUxN2U5MWQx
NGQ4N2NkM2JhMTQwYmIyMWZhZjZlIiA+ICJTT1VSQ0UiCmFhcmNoNjQtb2UtbGludXgtZ2NjICAg
IC1mdXNlLWxkPWJmZCAtZmNhbm9uLXByZWZpeC1tYXAgIC1mbWFjcm8tcHJlZml4LW1hcD0vaG9t
ZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3Jr
L3JhZHhhX3plcm9fM3ctb2UtbGludXgvYWljODgwMC8xLjAvZ2l0PS91c3Ivc3JjL2RlYnVnL2Fp
Yzg4MDAvMS4wICAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9j
dG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4
L2FpYzg4MDAvMS4wL2dpdD0vdXNyL3NyYy9kZWJ1Zy9haWM4ODAwLzEuMCAgLWZtYWNyby1wcmVm
aXgtbWFwPS9ob21lL3Rlc3RfdXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1w
LWdsaWJjL3dvcmsvcmFkeGFfemVyb18zdy1vZS1saW51eC9haWM4ODAwLzEuMC9naXQ9L3Vzci9z
cmMvZGVidWcvYWljODgwMC8xLjAgIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIv
cHJvamVjdC95b2N0by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrL3JhZHhhX3plcm9f
M3ctb2UtbGludXgvYWljODgwMC8xLjAvZ2l0PS91c3Ivc3JjL2RlYnVnL2FpYzg4MDAvMS4wICAt
ZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVy
by9idWlsZC90bXAtZ2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAvMS4w
L3JlY2lwZS1zeXNyb290PSAgLWZtYWNyby1wcmVmaXgtbWFwPS9ob21lL3Rlc3RfdXNlci9wcm9q
ZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1wLWdsaWJjL3dvcmsvcmFkeGFfemVyb18zdy1v
ZS1saW51eC9haWM4ODAwLzEuMC9yZWNpcGUtc3lzcm9vdD0gIC1mZGVidWctcHJlZml4LW1hcD0v
aG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93
b3JrL3JhZHhhX3plcm9fM3ctb2UtbGludXgvYWljODgwMC8xLjAvcmVjaXBlLXN5c3Jvb3QtbmF0
aXZlPSAgIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9y
YWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrLXNoYXJlZC9yYWR4YS16ZXJvLTN3L2tlcm5l
bC1zb3VyY2U9L3Vzci9zcmMva2VybmVsICAtZm1hY3JvLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91
c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMvd29yay1zaGFyZWQv
cmFkeGEtemVyby0zdy9rZXJuZWwtc291cmNlPS91c3Ivc3JjL2tlcm5lbCAgLWZkZWJ1Zy1wcmVm
aXgtbWFwPS9ob21lL3Rlc3RfdXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1w
LWdsaWJjL3dvcmstc2hhcmVkL3JhZHhhLXplcm8tM3cva2VybmVsLWJ1aWxkLWFydGlmYWN0cz0v
dXNyL3NyYy9rZXJuZWwgIC1mbWFjcm8tcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIvcHJvamVj
dC95b2N0by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrLXNoYXJlZC9yYWR4YS16ZXJv
LTN3L2tlcm5lbC1idWlsZC1hcnRpZmFjdHM9L3Vzci9zcmMva2VybmVsICAgICAgc3JjL3Rvb2xz
L2FpY3JmX3Rlc3QvYnRfdGVzdC5jICAgLW8gc3JjL3Rvb2xzL2FpY3JmX3Rlc3QvYnRfdGVzdAph
YXJjaDY0LW9lLWxpbnV4LWdjYyAgICAtZnVzZS1sZD1iZmQgLWZjYW5vbi1wcmVmaXgtbWFwICAt
Zm1hY3JvLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVy
by9idWlsZC90bXAtZ2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAvMS4w
L2dpdD0vdXNyL3NyYy9kZWJ1Zy9haWM4ODAwLzEuMCAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21l
L3Rlc3RfdXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1wLWdsaWJjL3dvcmsv
cmFkeGFfemVyb18zdy1vZS1saW51eC9haWM4ODAwLzEuMC9naXQ9L3Vzci9zcmMvZGVidWcvYWlj
ODgwMC8xLjAgIC1mbWFjcm8tcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0
by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrL3JhZHhhX3plcm9fM3ctb2UtbGludXgv
YWljODgwMC8xLjAvZ2l0PS91c3Ivc3JjL2RlYnVnL2FpYzg4MDAvMS4wICAtZmRlYnVnLXByZWZp
eC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAt
Z2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAvMS4wL2dpdD0vdXNyL3Ny
Yy9kZWJ1Zy9haWM4ODAwLzEuMCAgLWZkZWJ1Zy1wcmVmaXgtbWFwPS9ob21lL3Rlc3RfdXNlci9w
cm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQvdG1wLWdsaWJjL3dvcmsvcmFkeGFfemVyb18z
dy1vZS1saW51eC9haWM4ODAwLzEuMC9yZWNpcGUtc3lzcm9vdD0gIC1mbWFjcm8tcHJlZml4LW1h
cD0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGli
Yy93b3JrL3JhZHhhX3plcm9fM3ctb2UtbGludXgvYWljODgwMC8xLjAvcmVjaXBlLXN5c3Jvb3Q9
ICAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFf
emVyby9idWlsZC90bXAtZ2xpYmMvd29yay9yYWR4YV96ZXJvXzN3LW9lLWxpbnV4L2FpYzg4MDAv
MS4wL3JlY2lwZS1zeXNyb290LW5hdGl2ZT0gICAtZmRlYnVnLXByZWZpeC1tYXA9L2hvbWUvdGVz
dF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMvd29yay1zaGFy
ZWQvcmFkeGEtemVyby0zdy9rZXJuZWwtc291cmNlPS91c3Ivc3JjL2tlcm5lbCAgLWZtYWNyby1w
cmVmaXgtbWFwPS9ob21lL3Rlc3RfdXNlci9wcm9qZWN0L3lvY3RvL3JhZHhhX3plcm8vYnVpbGQv
dG1wLWdsaWJjL3dvcmstc2hhcmVkL3JhZHhhLXplcm8tM3cva2VybmVsLXNvdXJjZT0vdXNyL3Ny
Yy9rZXJuZWwgIC1mZGVidWctcHJlZml4LW1hcD0vaG9tZS90ZXN0X3VzZXIvcHJvamVjdC95b2N0
by9yYWR4YV96ZXJvL2J1aWxkL3RtcC1nbGliYy93b3JrLXNoYXJlZC9yYWR4YS16ZXJvLTN3L2tl
cm5lbC1idWlsZC1hcnRpZmFjdHM9L3Vzci9zcmMva2VybmVsICAtZm1hY3JvLXByZWZpeC1tYXA9
L2hvbWUvdGVzdF91c2VyL3Byb2plY3QveW9jdG8vcmFkeGFfemVyby9idWlsZC90bXAtZ2xpYmMv
d29yay1zaGFyZWQvcmFkeGEtemVyby0zdy9rZXJuZWwtYnVpbGQtYXJ0aWZhY3RzPS91c3Ivc3Jj
L2tlcm5lbCAgICAgIHNyYy90b29scy9haWNyZl90ZXN0L3dpZmlfdGVzdC5jICAgLW8gc3JjL3Rv
b2xzL2FpY3JmX3Rlc3Qvd2lmaV90ZXN0CnNyYy90b29scy9haWNyZl90ZXN0L2J0X3Rlc3QuYzox
OjEwOiBmYXRhbCBlcnJvcjogc3RkaW8uaDogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQogICAg
MSB8ICNpbmNsdWRlIDxzdGRpby5oPgogICAgICB8ICAgICAgICAgIF5+fn5+fn5+fgpzcmMvdG9v
bHMvYWljcmZfdGVzdC93aWZpX3Rlc3QuYzoxOjEwOiBmYXRhbCBlcnJvcjogc3RkaW8uaDogTm8g
c3VjaCBmaWxlIG9yIGRpcmVjdG9yeQogICAgMSB8ICNpbmNsdWRlIDxzdGRpby5oPgogICAgICB8
ICAgICAgICAgIF5+fn5+fn5+fgpjb21waWxhdGlvbiB0ZXJtaW5hdGVkLgpjb21waWxhdGlvbiB0
ZXJtaW5hdGVkLgptYWtlOiAqKiogWzxidWlsdGluPjogc3JjL3Rvb2xzL2FpY3JmX3Rlc3QvYnRf
dGVzdF0gRXJyb3IgMQptYWtlOiAqKiogV2FpdGluZyBmb3IgdW5maW5pc2hlZCBqb2JzLi4uLgpt
YWtlOiAqKiogWzxidWlsdGluPjogc3JjL3Rvb2xzL2FpY3JmX3Rlc3Qvd2lmaV90ZXN0XSBFcnJv
ciAxCkVSUk9SOiBvZV9ydW5tYWtlIGZhaWxlZApXQVJOSU5HOiBleGl0IGNvZGUgMSBmcm9tIGEg
c2hlbGwgY29tbWFuZC4K

--LSW5v3PyJkkQKugHP6ph--

