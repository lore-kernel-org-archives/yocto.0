Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E42BCE00C44; Sun, 21 Apr 2019 23:29:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_QP_LONG_LINE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4475E00BC8
	for <yocto@yoctoproject.org>; Sun, 21 Apr 2019 23:29:21 -0700 (PDT)
Received: from [192.168.10.231] (unknown [103.29.142.67])
	by kozue.soulik.info (Postfix) with ESMTPSA id 59F3C100D52;
	Mon, 22 Apr 2019 15:29:35 +0900 (JST)
Mime-Version: 1.0 (1.0)
From: Ayaka <ayaka@soulik.info>
X-Mailer: iPad Mail (16A404)
In-Reply-To: <CAMKF1spG3JO8qWQzCc9f9kFgOmP=TEJLoEJemspNs4+QEfwwnA@mail.gmail.com>
Date: Mon, 22 Apr 2019 14:29:18 +0800
Message-Id: <4F60B32B-282B-4FD0-8F4E-FB017593473A@soulik.info>
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-3-ayaka@soulik.info>
	<CAMKF1spG3JO8qWQzCc9f9kFgOmP=TEJLoEJemspNs4+QEfwwnA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org, romain.perier@gmail.com
Subject: Re: [PATCH 2/5] conf/machine: add rk3399 support
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
X-List-Received-Date: Mon, 22 Apr 2019 06:29:31 -0000
Content-Type: multipart/alternative;
	boundary=Apple-Mail-224978E8-63D1-422F-8B5E-1FE6C2791D2B
Content-Transfer-Encoding: 7bit

--Apple-Mail-224978E8-63D1-422F-8B5E-1FE6C2791D2B
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable



> On Apr 22, 2019, at 11:47 AM, Khem Raj <raj.khem@gmail.com> wrote:
>=20
> This seems more a bsp layer thing may be meta-rockchip is better for this o=
r meta-firefly=20
>=20
You want to make a board vendor maintain a layer repository themselves? I sa=
w every meta bsp repository would have some configures files. And those boar=
ds are sold around the world having many users, it is waste time to make peo=
ple to collect layers.

Anyway, I hope the chip support would be merged.
>> On Sun, Apr 21, 2019 at 10:06 AM Randy 'ayaka' Li <ayaka@soulik.info> wro=
te:
>> RK3399 is a new generation powerful SoC from Rockchip, which has
>> Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.
>>=20
>> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
>> ---
>>  conf/machine/excavator-rk3399.conf | 10 ++++++++++
>>  conf/machine/firefly-rk3399.conf   | 15 +++++++++++++++
>>  conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
>>  3 files changed, 42 insertions(+)
>>  create mode 100644 conf/machine/excavator-rk3399.conf
>>  create mode 100644 conf/machine/firefly-rk3399.conf
>>  create mode 100644 conf/machine/include/rk3399.inc
>>=20
>> diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-=
rk3399.conf
>> new file mode 100644
>> index 0000000..c7134d2
>> --- /dev/null
>> +++ b/conf/machine/excavator-rk3399.conf
>> @@ -0,0 +1,10 @@
>> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +#@TYPE: Machine
>> +#@NAME: EXCAVATOR 3399
>> +
>> +include conf/machine/include/rk3399.inc
>> +
>> +KERNEL_DEVICETREE =3D "rk3399-sapphire-excavator-linux.dtb"
>> +UBOOT_MACHINE =3D "evb-rk3399_defconfig"
>> diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk33=
99.conf
>> new file mode 100644
>> index 0000000..fefafed
>> --- /dev/null
>> +++ b/conf/machine/firefly-rk3399.conf
>> @@ -0,0 +1,15 @@
>> +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +#@TYPE: Machine
>> +#@NAME: Firefly RK3399
>> +#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Plat=
form.
>> +#http://www.t-firefly.com/en/
>> +
>> +include conf/machine/include/rk3399.inc
>> +
>> +PREFERRED_PROVIDER_virtual/kernel =3D "linux-rockchip"
>> +KERNEL_DEVICETREE =3D "rockchip/rk3399-firefly-linux.dtb"
>> +UBOOT_MACHINE =3D "evb-rk3399_defconfig"
>> +
>> +GPTIMG_APPEND =3D "console=3DttyS2,1500000n8 rw root=3DPARTUUID=3D614e00=
00-0000 rootfstype=3Dext4 init=3D/sbin/init"
>> diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk339=
9.inc
>> new file mode 100644
>> index 0000000..6e2af57
>> --- /dev/null
>> +++ b/conf/machine/include/rk3399.inc
>> @@ -0,0 +1,17 @@
>> +# Copyright (C) 2019 SUMOMO Computer Association
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +SOC_FAMILY =3D "rk3399"
>> +
>> +require conf/machine/include/tune-cortexa72.inc
>> +require conf/machine/include/soc-family.inc
>> +
>> +PREFERRED_PROVIDER_virtual/kernel =3D "linux"
>> +SERIAL_CONSOLES =3D "1500000;ttyS2"
>> +KERNEL_IMAGETYPE =3D "Image"
>> +#KBUILD_DEFCONFIG =3D "multi_v8_defconfig"
>> +
>> +PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot-rockchip"
>> +
>> +IMAGE_FSTYPES =3D "rockchip-gpt-img"
>> +IMAGE_CLASSES =3D "rockchip-gpt-img"
>> --=20
>> 2.20.1
>>=20
>> --=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-224978E8-63D1-422F-8B5E-1FE6C2791D2B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><br><div dir=3D"ltr"><br>On Apr 22, 2019, a=
t 11:47 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt; wrote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"=
><div><div dir=3D"auto">This seems more a bsp layer thing may be meta-rockch=
ip is better for this or meta-firefly&nbsp;</div></div><div><br></div></div>=
</blockquote><span style=3D"background-color: rgba(255, 255, 255, 0);">You w=
ant to make a board vendor maintain a layer repository themselves? I saw eve=
ry meta bsp repository would have some configures files. And those boards ar=
e sold around the world having many users, it is waste time to make people t=
o collect layers.</span><div><br></div><div>Anyway, I hope the chip support w=
ould be merged.<br><div><div><blockquote type=3D"cite"><div dir=3D"ltr"><div=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Ap=
r 21, 2019 at 10:06 AM Randy 'ayaka' Li &lt;<a href=3D"mailto:ayaka@soulik.i=
nfo">ayaka@soulik.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
>RK3399 is a new generation powerful SoC from Rockchip, which has<br>
Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.<br>
<br>
Signed-off-by: Randy 'ayaka' Li &lt;<a href=3D"mailto:ayaka@soulik.info" tar=
get=3D"_blank">ayaka@soulik.info</a>&gt;<br>
---<br>
&nbsp;conf/machine/excavator-rk3399.conf | 10 ++++++++++<br>
&nbsp;conf/machine/firefly-rk3399.conf&nbsp; &nbsp;| 15 +++++++++++++++<br>
&nbsp;conf/machine/include/rk3399.inc&nbsp; &nbsp; | 17 +++++++++++++++++<br=
>
&nbsp;3 files changed, 42 insertions(+)<br>
&nbsp;create mode 100644 conf/machine/excavator-rk3399.conf<br>
&nbsp;create mode 100644 conf/machine/firefly-rk3399.conf<br>
&nbsp;create mode 100644 conf/machine/include/rk3399.inc<br>
<br>
diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk3=
399.conf<br>
new file mode 100644<br>
index 0000000..c7134d2<br>
--- /dev/null<br>
+++ b/conf/machine/excavator-rk3399.conf<br>
@@ -0,0 +1,10 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: EXCAVATOR 3399<br>
+<br>
+include conf/machine/include/rk3399.inc<br>
+<br>
+KERNEL_DEVICETREE =3D "rk3399-sapphire-excavator-linux.dtb"<br>
+UBOOT_MACHINE =3D "evb-rk3399_defconfig"<br>
diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399.=
conf<br>
new file mode 100644<br>
index 0000000..fefafed<br>
--- /dev/null<br>
+++ b/conf/machine/firefly-rk3399.conf<br>
@@ -0,0 +1,15 @@<br>
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+#@TYPE: Machine<br>
+#@NAME: Firefly RK3399<br>
+#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Platfor=
m.<br>
+#<a href=3D"http://www.t-firefly.com/en/" rel=3D"noreferrer" target=3D"_bla=
nk">http://www.t-firefly.com/en/</a><br>
+<br>
+include conf/machine/include/rk3399.inc<br>
+<br>
+PREFERRED_PROVIDER_virtual/kernel =3D "linux-rockchip"<br>
+KERNEL_DEVICETREE =3D "rockchip/rk3399-firefly-linux.dtb"<br>
+UBOOT_MACHINE =3D "evb-rk3399_defconfig"<br>
+<br>
+GPTIMG_APPEND =3D "console=3DttyS2,1500000n8 rw root=3DPARTUUID=3D614e0000-=
0000 rootfstype=3Dext4 init=3D/sbin/init"<br>
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.i=
nc<br>
new file mode 100644<br>
index 0000000..6e2af57<br>
--- /dev/null<br>
+++ b/conf/machine/include/rk3399.inc<br>
@@ -0,0 +1,17 @@<br>
+# Copyright (C) 2019 SUMOMO Computer Association<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+SOC_FAMILY =3D "rk3399"<br>
+<br>
+require conf/machine/include/tune-cortexa72.inc<br>
+require conf/machine/include/soc-family.inc<br>
+<br>
+PREFERRED_PROVIDER_virtual/kernel =3D "linux"<br>
+SERIAL_CONSOLES =3D "1500000;ttyS2"<br>
+KERNEL_IMAGETYPE =3D "Image"<br>
+#KBUILD_DEFCONFIG =3D "multi_v8_defconfig"<br>
+<br>
+PREFERRED_PROVIDER_virtual/bootloader ?=3D "u-boot-rockchip"<br>
+<br>
+IMAGE_FSTYPES =3D "rockchip-gpt-img"<br>
+IMAGE_CLASSES =3D "rockchip-gpt-img"<br>
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproje=
ct.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</div></blockquote></div></div></div></body></html>=

--Apple-Mail-224978E8-63D1-422F-8B5E-1FE6C2791D2B--
