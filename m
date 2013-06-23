Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EB77E01515
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 13:13:50 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id jw11so8033609veb.18
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 13:13:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=tYB8P3hCRz2nV1pprCwAd3PF7EoQP7YaJCNHUMPTE4w=;
	b=I33W4aTp7wka/pPNHk5myWcXOT/YCq7jgc2PHV3u4ehS1QpNn1WYBTwY2NpOPKXKUT
	bzm6J01/DegrUQ64P8Uh4TQCLy5+LrvtHil2K8rQkXaT9cM1t1sth/UGtpkwRThJT1Y+
	hslg8TJDonW3UlYdYlmdmqRp8+tIi6i3O1JjIyxFqxjjHlarUOof5ep2jZ4pOKrC6mNL
	Ut6HyHZboQIH8eIycqmVf4NEH2FaPG7h8UC4SmiwpKfsE/aTiv6NlOIwBFNp2n3rIBk2
	cByToBJQsWlg6CGXX0KemytW7cA7I+kvoilzRMUOPNCLvWXqG0+VQ0UA5bMPpquVqFjf
	9eyQ==
X-Received: by 10.58.207.195 with SMTP id ly3mr10014522vec.77.1372018430055;
	Sun, 23 Jun 2013 13:13:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.24.129 with HTTP; Sun, 23 Jun 2013 13:13:29 -0700 (PDT)
X-Originating-IP: [5.14.153.85]
In-Reply-To: <1366554239-12749-1-git-send-email-richard.purdie@linuxfoundation.org>
References: <1366554239-12749-1-git-send-email-richard.purdie@linuxfoundation.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 23 Jun 2013 23:13:29 +0300
Message-ID: <CAK18fxHs2=Fe8fwLuSh-munieDbyE1QQ1kEm9ByY-SbqGk1HpQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQleRXfrCzrUJnZCB8rHJUcQdYgPjcevfAXalY/wNgJIUHP4H/DjelYS5tw7gjwReZFnEvTy
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] linux-raspberrypi: Fix i2c issues
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
X-List-Received-Date: Sun, 23 Jun 2013 20:13:51 -0000
Content-Type: multipart/alternative; boundary=047d7b6d8d7c263c9304dfd7efd6

--047d7b6d8d7c263c9304dfd7efd6
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Apr 21, 2013 at 5:23 PM, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> I was having intermittent i2c issues on the device until I applied this
> kernel patch
> which I found online.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  .../sl030raspberrypii2ckernel.patch                |   32
> ++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_3.2.27.bb   |    1 +
>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb   |    1 +
>  3 files changed, 34 insertions(+)
>  create mode 100644
> recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
>
> diff --git
> a/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
> b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
> new file mode 100644
> index 0000000..8534ecb
> --- /dev/null
> +++
> b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patch
> @@ -0,0 +1,32 @@
> +Fix i2c timing errors.
> +
> +When Transmitting: Make SDA valid quarter of a cycle after the falling
> edge of SCL.
> +When Receiving: Sample SDA Quarter of a cycle after the rising edge of
> SCL.
> +
> +Upstream-Status: Pending
> +
> +RP 2013/04/21
> +
> +Index: git/drivers/i2c/busses/i2c-bcm2708.c
> +===================================================================
> +--- git.orig/drivers/i2c/busses/i2c-bcm2708.c  2013-01-06
> 17:15:00.754954587 +0000
> ++++ git/drivers/i2c/busses/i2c-bcm2708.c       2013-01-06
> 17:50:09.794905741 +0000
> +@@ -150,6 +150,7 @@
> +       unsigned long bus_hz;
> +       u32 cdiv;
> +       u32 c = BSC_C_I2CEN | BSC_C_INTD | BSC_C_ST | BSC_C_CLEAR_1;
> ++      u32 cdel;
> +
> +       bus_hz = clk_get_rate(bi->clk);
> +       cdiv = bus_hz / baudrate;
> +@@ -163,6 +164,10 @@
> +       bcm2708_wr(bi, BSC_A, bi->msg->addr);
> +       bcm2708_wr(bi, BSC_DLEN, bi->msg->len);
> +       bcm2708_wr(bi, BSC_C, c);
> ++
> ++      cdel = (cdiv / 4) & 0xffff;
> ++      cdel = cdel << 16 | cdel;
> ++      bcm2708_wr(bi, BSC_DEL, cdel);
> + }
> +
> + static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.2.27.bb
> index c7a12e6..a68186b 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.2.27.bb
> @@ -8,6 +8,7 @@ PV_append = "+git${SRCREV}"
>
>  SRCREV = "10182a3bc434b27740f81c2b836a1af943060241"
>  SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27 \
> +          file://sl030raspberrypii2ckernel.patch \
>            "
>  S = "${WORKDIR}/git"
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bbb/recipes-kernel/linux/
> linux-raspberrypi_3.6.11.bb
> index caee7f2..07b0ae8 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_3.6.11.bb
> @@ -8,6 +8,7 @@ PV_append = "+git${SRCREV}"
>
>  SRCREV = "31a951046155b27361127d9cf85a1f58719fe9b3"
>  SRC_URI = "git://
> github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
> +           file://sl030raspberrypii2ckernel.patch \
>            "
>  S = "${WORKDIR}/git"
>
> --
> 1.7.10.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

Thank you. Patch merged.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b6d8d7c263c9304dfd7efd6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sun, Apr 21, 2013 at 5:23 PM, Richard Purdie <span dir=
=3D"ltr">&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=
=3D"_blank">richard.purdie@linuxfoundation.org</a>&gt;</span> wrote:<br><di=
v class=3D"gmail_extra">

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I was having inte=
rmittent i2c issues on the device until I applied this kernel patch<br>
which I found online.<br>
<br>
Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfou=
ndation.org">richard.purdie@linuxfoundation.org</a>&gt;<br>
---<br>
=A0.../sl030raspberrypii2ckernel.patch =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 32 ++++++++++++++++++++<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.2.27.bb" targ=
et=3D"_blank">linux-raspberrypi_3.2.27.bb</a> =A0 | =A0 =A01 +<br>
=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" targ=
et=3D"_blank">linux-raspberrypi_3.6.11.bb</a> =A0 | =A0 =A01 +<br>
=A03 files changed, 34 insertions(+)<br>
=A0create mode 100644 recipes-kernel/linux/linux-raspberrypi/sl030raspberry=
pii2ckernel.patch<br>
<br>
diff --git a/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckern=
el.patch b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel=
.patch<br>
new file mode 100644<br>
index 0000000..8534ecb<br>
--- /dev/null<br>
+++ b/recipes-kernel/linux/linux-raspberrypi/sl030raspberrypii2ckernel.patc=
h<br>
@@ -0,0 +1,32 @@<br>
+Fix i2c timing errors.<br>
+<br>
+When Transmitting: Make SDA valid quarter of a cycle after the falling edg=
e of SCL.<br>
+When Receiving: Sample SDA Quarter of a cycle after the rising edge of SCL=
.<br>
+<br>
+Upstream-Status: Pending<br>
+<br>
+RP 2013/04/21<br>
+<br>
+Index: git/drivers/i2c/busses/i2c-bcm2708.c<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+--- git.orig/drivers/i2c/busses/i2c-bcm2708.c =A02013-01-06 17:15:00.75495=
4587 +0000<br>
++++ git/drivers/i2c/busses/i2c-bcm2708.c =A0 =A0 =A0 2013-01-06 17:50:09.7=
94905741 +0000<br>
+@@ -150,6 +150,7 @@<br>
+ =A0 =A0 =A0 unsigned long bus_hz;<br>
+ =A0 =A0 =A0 u32 cdiv;<br>
+ =A0 =A0 =A0 u32 c =3D BSC_C_I2CEN | BSC_C_INTD | BSC_C_ST | BSC_C_CLEAR_1=
;<br>
++ =A0 =A0 =A0u32 cdel;<br>
+<br>
+ =A0 =A0 =A0 bus_hz =3D clk_get_rate(bi-&gt;clk);<br>
+ =A0 =A0 =A0 cdiv =3D bus_hz / baudrate;<br>
+@@ -163,6 +164,10 @@<br>
+ =A0 =A0 =A0 bcm2708_wr(bi, BSC_A, bi-&gt;msg-&gt;addr);<br>
+ =A0 =A0 =A0 bcm2708_wr(bi, BSC_DLEN, bi-&gt;msg-&gt;len);<br>
+ =A0 =A0 =A0 bcm2708_wr(bi, BSC_C, c);<br>
++<br>
++ =A0 =A0 =A0cdel =3D (cdiv / 4) &amp; 0xffff;<br>
++ =A0 =A0 =A0cdel =3D cdel &lt;&lt; 16 | cdel;<br>
++ =A0 =A0 =A0bcm2708_wr(bi, BSC_DEL, cdel);<br>
+ }<br>
+<br>
+ static irqreturn_t bcm2708_i2c_interrupt(int irq, void *dev_id)<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.2.2=
7.bb" target=3D"_blank">linux-raspberrypi_3.2.27.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.2.27.bb" target=3D"_blank">linux-=
raspberrypi_3.2.27.bb</a><br>


index c7a12e6..a68186b 100644<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.2.27.bb" t=
arget=3D"_blank">linux-raspberrypi_3.2.27.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.2.27.bb" t=
arget=3D"_blank">linux-raspberrypi_3.2.27.bb</a><br>
@@ -8,6 +8,7 @@ PV_append =3D &quot;+git${SRCREV}&quot;<br>
<br>
=A0SRCREV =3D &quot;10182a3bc434b27740f81c2b836a1af943060241&quot;<br>
=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.g=
it;protocol=3Dgit;branch=3Drpi-3.2.27" target=3D"_blank">github.com/raspber=
rypi/linux.git;protocol=3Dgit;branch=3Drpi-3.2.27</a> \<br>
+ =A0 =A0 =A0 =A0 =A0file://sl030raspberrypii2ckernel.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.1=
1.bb" target=3D"_blank">linux-raspberrypi_3.6.11.bb</a> b/recipes-kernel/li=
nux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" target=3D"_blank">linux-=
raspberrypi_3.6.11.bb</a><br>


index caee7f2..07b0ae8 100644<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" t=
arget=3D"_blank">linux-raspberrypi_3.6.11.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_3.6.11.bb" t=
arget=3D"_blank">linux-raspberrypi_3.6.11.bb</a><br>
@@ -8,6 +8,7 @@ PV_append =3D &quot;+git${SRCREV}&quot;<br>
<br>
=A0SRCREV =3D &quot;31a951046155b27361127d9cf85a1f58719fe9b3&quot;<br>
=A0SRC_URI =3D &quot;git://<a href=3D"http://github.com/raspberrypi/linux.g=
it;protocol=3Dgit;branch=3Drpi-3.6.y" target=3D"_blank">github.com/raspberr=
ypi/linux.git;protocol=3Dgit;branch=3Drpi-3.6.y</a> \<br>
+ =A0 =A0 =A0 =A0 =A0 file://sl030raspberrypii2ckernel.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0&quot;<br>
=A0S =3D &quot;${WORKDIR}/git&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.7.10.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br>Thank=A0you. Patch merged.=A0<br clear=
=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:ce=
nter"></div><div style=3D"text-align:center"><div align=3D"left" style=3D"f=
ont-family:&#39;Times New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7b6d8d7c263c9304dfd7efd6--
