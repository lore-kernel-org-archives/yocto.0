Return-Path: <sanjaycvr35412@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CDDC433F5
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 12:01:18 +0000 (UTC)
Subject: echo and read shell script functions in post install script doesn't
 display messages
To: yocto@lists.yoctoproject.org
From: sanjaycvr35412@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (165.225.122.193)
X-Originating-Platform: Windows Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 14 Dec 2021 04:01:17 -0800
Message-ID: <Ej9S.1639483277512579356.RkJN@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sbYEra043UrOubVmbe02"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 12:01:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55582

--sbYEra043UrOubVmbe02
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am trying to execute a script in *=E2=80=9Cpkg_postinst_ontarget_${PN}=E2=
=80=9D* to configure the static IP address of the embedded board. The scrip=
t executes at first boot, but *it doesn=E2=80=99t display echo or read mess=
ages.* These messages are required to improve user experience with the setu=
p process.

Script is as below:

pkg_postinst_ontarget_${PN} () {

#!/bin/sh -e

# This will run on first boot

echo "Starting setup script..."

read -p "Enter the IP address: " ipAddress

read -p "Enter the netmask: " netmask

read -p "Enter network gateway: " gateway

cat >> /etc/network/interfaces << EOF

iface eth0 inet static

address $ipAddress

netmask $netmask

gateway $gateway

EOF

}

Please help me to fix the problem in displaying *echo* and *read* messages =
to improve user experience with the setup process.

Thanks,

Sanjay Kumar

--sbYEra043UrOubVmbe02
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">Hi All,=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">=C2=A0<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">I am tr=
ying to execute a script in=C2=A0<strong>=E2=80=9Cpkg_postinst_ontarget_${P=
N}=E2=80=9D</strong>=C2=A0to configure the static IP address of the embedde=
d board. The script executes at first boot, but=C2=A0<strong>it doesn=E2=80=
=99t display echo or read messages.=C2=A0</strong>These messages are requir=
ed to improve user experience with the setup process.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">=C2=A0<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">Script =
is as below:</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">pkg_postinst_ontarget_${PN} () {</span></e=
m></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0 =C2=A0#!/bin/sh -e</span></em=
></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 # This will run on firs=
t boot</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 echo &#34;Starting setu=
p script...&#34;</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 read -p &#34;Enter the =
IP address: &#34; ipAddress</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 read -p &#34;Enter the =
netmask: &#34; netmask</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 read -p &#34;Enter netw=
ork gateway: &#34; gateway</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 cat &gt;&gt; /etc/netwo=
rk/interfaces &lt;&lt; EOF</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">iface eth0 inet static</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 address $ipAddress</spa=
n></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 netmask $netmask</span>=
</em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">=C2=A0=C2=A0=C2=A0 gateway $gateway</span>=
</em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">EOF</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;"><em><sp=
an style=3D"background: yellow;">}</span></em></p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">=C2=A0<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">Please =
help me to fix the problem in displaying=C2=A0<strong>echo</strong>=C2=A0an=
d=C2=A0<strong>read</strong>=C2=A0messages to improve user experience with =
the setup process.</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">=C2=A0<=
/p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">Thanks,=
</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">Sanjay =
Kumar</p>
<p class=3D"DefangedMsoNormal" style=3D"margin: 0in; color: #222222; font-s=
ize: 11pt; font-family: Calibri, sans-serif;" style=3D"margin:0px;">=C2=A0<=
/p>

--sbYEra043UrOubVmbe02--

