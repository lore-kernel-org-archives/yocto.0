Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4167E00D39; Mon, 22 Apr 2019 13:32:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1CBEE00D1E
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 13:31:58 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id k2so13635136qtm.1
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2019 13:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6fg/CeviUrHLeJ1RjjfXq5hKqrzZzYL/TlYiullaCQA=;
	b=tdQK4Ym/w5vYzvX3tNxawnOtoJBC8tyTElK24lwN45Dc9JFVrTvFFkjUbE444yLoUX
	M8OAPamhLwKywAO+zdbLhKGtyqWlV43qvxJnAxQn9s2xUXo/xBHrJ5UbEvtYHRUq54hP
	akEqIT4c7eUPYLfMUbNXAeTm1SawCn9R6LKumQ/8uwHAGBGKlGZw9xRGYyZHqSSySZ9c
	JXiO5VPUSiwfdXwy4JMu/rrYe7w5H/Sih7AS6vRlzoruvxn7IU7dSMeXghxfhxWb9A9p
	xn7rhc4UGQK7eF2OxmdWQol2q7YDQARc7P9cRgpfbc7E8cdKhVYDsRARAf/KL0Im+Jkm
	AzRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6fg/CeviUrHLeJ1RjjfXq5hKqrzZzYL/TlYiullaCQA=;
	b=nf3JqbUPWOebwz+zMgE3XvDN962f3LsxLMPTBMj1wdmnM+2wkjaippmoufHUvuopYO
	8A8N5QN0ks8ZXSFJ/Hh4fuCrzA1+db53ed3skcBQG0TytK245/j4/KybuG9Vcx5Yg0hb
	b6/htqrdjBMAncOVrAwjs9d6KLK6GjGjBfE268OOvkdCDFq801ge8qWe6yXxfiEDKkNA
	XgtjTuUyW0ly8kwyMXm3HRpw502CcZtumTX6SNwdGjstcg3lL4o2Bf9kDhzcPrra9cj8
	7gEyH6USd2vayr9M5a1WU5qJT2rn6mXYz6+sUrriIqHqfgH7uJcm07qWzEPvd4rLezvO
	HDkw==
X-Gm-Message-State: APjAAAWIV20LwC/4hbjDGqtPOWrg7vsOG5v2JuqFxQnHgK0J0eoCwcjY
	CuBaBOT5hDrYwD8WHrDxaG8R+XJQZOVYTJp7l6bEc1GhCXc=
X-Google-Smtp-Source: APXvYqxBVsNx39MXw1hNjONsEaZWT2l95SnlB5QFvmcksC6aPTthc0HSR9na4Rn4HYvsWzIUMZxBdsAhoACSCKOx9JY=
X-Received: by 2002:ac8:1489:: with SMTP id l9mr9023026qtj.236.1555965118110; 
	Mon, 22 Apr 2019 13:31:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190421155339.6332-1-ayaka@soulik.info>
	<20190421155339.6332-3-ayaka@soulik.info>
	<CAMKF1spG3JO8qWQzCc9f9kFgOmP=TEJLoEJemspNs4+QEfwwnA@mail.gmail.com>
	<4F60B32B-282B-4FD0-8F4E-FB017593473A@soulik.info>
In-Reply-To: <4F60B32B-282B-4FD0-8F4E-FB017593473A@soulik.info>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Apr 2019 14:31:41 -0600
Message-ID: <CAMKF1sommkcqj=RTjOeh3hmQ203N0MRTvcsEV06W58xsm6XCHQ@mail.gmail.com>
To: Ayaka <ayaka@soulik.info>
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
X-List-Received-Date: Mon, 22 Apr 2019 20:32:00 -0000
Content-Type: multipart/alternative; boundary="00000000000025df5d0587245c48"

--00000000000025df5d0587245c48
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 22, 2019 at 12:29 AM Ayaka <ayaka@soulik.info> wrote:

>
>
> On Apr 22, 2019, at 11:47 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
> This seems more a bsp layer thing may be meta-rockchip is better for this
> or meta-firefly
>
> You want to make a board vendor maintain a layer repository themselves? I
> saw every meta bsp repository would have some configures files. And those
> boards are sold around the world having many users, it is waste time to
> make people to collect layers.
>

It depends on how motivated the community is for example look at
meta-raspberrypi layer which effectively is a board layer using Broadcom
chip
So either way I am not suggesting one way or another if meta-rockchip
maintainer likes to maintain them then it=E2=80=99s ok

>
> Anyway, I hope the chip support would be merged.
>
> On Sun, Apr 21, 2019 at 10:06 AM Randy 'ayaka' Li <ayaka@soulik.info>
> wrote:
>
>> RK3399 is a new generation powerful SoC from Rockchip, which has
>> Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.
>>
>> Signed-off-by: Randy 'ayaka' Li <ayaka@soulik.info>
>> ---
>>  conf/machine/excavator-rk3399.conf | 10 ++++++++++
>>  conf/machine/firefly-rk3399.conf   | 15 +++++++++++++++
>>  conf/machine/include/rk3399.inc    | 17 +++++++++++++++++
>>  3 files changed, 42 insertions(+)
>>  create mode 100644 conf/machine/excavator-rk3399.conf
>>  create mode 100644 conf/machine/firefly-rk3399.conf
>>  create mode 100644 conf/machine/include/rk3399.inc
>>
>> diff --git a/conf/machine/excavator-rk3399.conf
>> b/conf/machine/excavator-rk3399.conf
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
>> diff --git a/conf/machine/firefly-rk3399.conf
>> b/conf/machine/firefly-rk3399.conf
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
>> +#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance
>> Platform.
>> +#http://www.t-firefly.com/en/
>> +
>> +include conf/machine/include/rk3399.inc
>> +
>> +PREFERRED_PROVIDER_virtual/kernel =3D "linux-rockchip"
>> +KERNEL_DEVICETREE =3D "rockchip/rk3399-firefly-linux.dtb"
>> +UBOOT_MACHINE =3D "evb-rk3399_defconfig"
>> +
>> +GPTIMG_APPEND =3D "console=3DttyS2,1500000n8 rw root=3DPARTUUID=3D614e0=
000-0000
>> rootfstype=3Dext4 init=3D/sbin/init"
>> diff --git a/conf/machine/include/rk3399.inc
>> b/conf/machine/include/rk3399.inc
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
>> --
>> 2.20.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--00000000000025df5d0587245c48
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Apr 22, 2019 at 12:29 AM Ayaka &lt;<a href=3D"mailt=
o:ayaka@soulik.info">ayaka@soulik.info</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><div dir=3D"auto"><br><div dir=3D"ltr"><br>On Apr 22, 20=
19, at 11:47 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=
=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br><br></div><blockquote type=
=3D"cite"><div dir=3D"ltr"><div><div dir=3D"auto">This seems more a bsp lay=
er thing may be meta-rockchip is better for this or meta-firefly=C2=A0</div=
></div><div><br></div></div></blockquote><span style=3D"background-color:rg=
ba(255,255,255,0)">You want to make a board vendor maintain a layer reposit=
ory themselves? I saw every meta bsp repository would have some configures =
files. And those boards are sold around the world having many users, it is =
waste time to make people to collect layers.</span><div></div></div></block=
quote><div dir=3D"auto"><br></div><div dir=3D"auto">It depends on how motiv=
ated the community is for example look at meta-raspberrypi layer which effe=
ctively is a board layer using Broadcom chip</div><div dir=3D"auto">So eith=
er way I am not suggesting one way or another if meta-rockchip maintainer l=
ikes to maintain them then it=E2=80=99s ok=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div dir=3D"auto"><div><br></div><div>Anyway, I hope the chip sup=
port would be merged.</div></div><div dir=3D"auto"><div><br><div><div><bloc=
kquote type=3D"cite"><div dir=3D"ltr"><div><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 21, 2019 at 10:06 AM Randy &#3=
9;ayaka&#39; Li &lt;<a href=3D"mailto:ayaka@soulik.info" target=3D"_blank">=
ayaka@soulik.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">RK=
3399 is a new generation powerful SoC from Rockchip, which has<br>
Dual Cortex-A72 + Quad Cortex-A53, 64-bit CPU.<br>
<br>
Signed-off-by: Randy &#39;ayaka&#39; Li &lt;<a href=3D"mailto:ayaka@soulik.=
info" target=3D"_blank">ayaka@soulik.info</a>&gt;<br>
---<br>
=C2=A0conf/machine/excavator-rk3399.conf | 10 ++++++++++<br>
=C2=A0conf/machine/firefly-rk3399.conf=C2=A0 =C2=A0| 15 +++++++++++++++<br>
=C2=A0conf/machine/include/rk3399.inc=C2=A0 =C2=A0 | 17 +++++++++++++++++<b=
r>
=C2=A03 files changed, 42 insertions(+)<br>
=C2=A0create mode 100644 conf/machine/excavator-rk3399.conf<br>
=C2=A0create mode 100644 conf/machine/firefly-rk3399.conf<br>
=C2=A0create mode 100644 conf/machine/include/rk3399.inc<br>
<br>
diff --git a/conf/machine/excavator-rk3399.conf b/conf/machine/excavator-rk=
3399.conf<br>
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
+KERNEL_DEVICETREE =3D &quot;rk3399-sapphire-excavator-linux.dtb&quot;<br>
+UBOOT_MACHINE =3D &quot;evb-rk3399_defconfig&quot;<br>
diff --git a/conf/machine/firefly-rk3399.conf b/conf/machine/firefly-rk3399=
.conf<br>
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
+#@DESCRIPTION: Firefly-RK3399 is a Six-Core 64-bit High-Performance Platfo=
rm.<br>
+#<a href=3D"http://www.t-firefly.com/en/" rel=3D"noreferrer" target=3D"_bl=
ank">http://www.t-firefly.com/en/</a><br>
+<br>
+include conf/machine/include/rk3399.inc<br>
+<br>
+PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-rockchip&quot;<br>
+KERNEL_DEVICETREE =3D &quot;rockchip/rk3399-firefly-linux.dtb&quot;<br>
+UBOOT_MACHINE =3D &quot;evb-rk3399_defconfig&quot;<br>
+<br>
+GPTIMG_APPEND =3D &quot;console=3DttyS2,1500000n8 rw root=3DPARTUUID=3D614=
e0000-0000 rootfstype=3Dext4 init=3D/sbin/init&quot;<br>
diff --git a/conf/machine/include/rk3399.inc b/conf/machine/include/rk3399.=
inc<br>
new file mode 100644<br>
index 0000000..6e2af57<br>
--- /dev/null<br>
+++ b/conf/machine/include/rk3399.inc<br>
@@ -0,0 +1,17 @@<br>
+# Copyright (C) 2019 SUMOMO Computer Association<br>
+# Released under the MIT license (see COPYING.MIT for the terms)<br>
+<br>
+SOC_FAMILY =3D &quot;rk3399&quot;<br>
+<br>
+require conf/machine/include/tune-cortexa72.inc<br>
+require conf/machine/include/soc-family.inc<br>
+<br>
+PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux&quot;<br>
+SERIAL_CONSOLES =3D &quot;1500000;ttyS2&quot;<br>
+KERNEL_IMAGETYPE =3D &quot;Image&quot;<br>
+#KBUILD_DEFCONFIG =3D &quot;multi_v8_defconfig&quot;<br>
+<br>
+PREFERRED_PROVIDER_virtual/bootloader ?=3D &quot;u-boot-rockchip&quot;<br>
+<br>
+IMAGE_FSTYPES =3D &quot;rockchip-gpt-img&quot;<br>
+IMAGE_CLASSES =3D &quot;rockchip-gpt-img&quot;<br>
-- <br>
2.20.1<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</div></blockquote></div></div></div></div></blockquote></div></div>

--00000000000025df5d0587245c48--
