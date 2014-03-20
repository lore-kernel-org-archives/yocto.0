Return-Path: <ashish.dalela@gmail.com>
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB87E00895
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 23:48:44 -0700 (PDT)
Received: by mail-yk0-f176.google.com with SMTP id 19so1172369ykq.7
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 23:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=3BnZ4FyFbysmdfI6tBfLpOWyd0TLzkLMkv2JvqpIZro=;
	b=rQWqeuMrJvNnXdAGclrVpIf2B9s1BDrKkJ/7tQVpPYvAOv6YuB3yp8L/M+WenoARQW
	OcN5da2BT73DtUhPHYSQEo/nkvnWxxMR7blEQxu+RqgQG6AhzQyXIKPgmdT5bNrvpZWD
	B199zceCY78AmMtmus9Dt1rhLvCuFAcjRrnyMLrurxR+m3LQArMgN15+aIWnx/+cPezS
	7iyoy4+A/8h7sFR3lTKNGbJFfBjmWOsbVoyymVvAI+JQcHCCTClCj/TBVXvPQlV/8DS4
	infii8jMXHLpG/sKg9drMazF748M2XxJt4ngx7sy9iOmumviDhnSuHMnOIHbpbhCij7T
	70OA==
MIME-Version: 1.0
X-Received: by 10.236.163.73 with SMTP id z49mr24396038yhk.43.1395298123469;
	Wed, 19 Mar 2014 23:48:43 -0700 (PDT)
Received: by 10.170.63.69 with HTTP; Wed, 19 Mar 2014 23:48:43 -0700 (PDT)
Date: Thu, 20 Mar 2014 12:18:43 +0530
Message-ID: <CABhkJRebWkHYUWXu77n2kg20Ti3P8bYgE2UzfY8UO6T5K_tYew@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Yocto not packaging "m" kernel modules
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
X-List-Received-Date: Thu, 20 Mar 2014 06:48:47 -0000
Content-Type: multipart/alternative; boundary=20cf303f6cb801587e04f504290c

--20cf303f6cb801587e04f504290c
Content-Type: text/plain; charset=ISO-8859-1

In my build I see that the kernel modules which are specified as modular (
"m" in the kernel config) are not being packaged withe rootfs. The modules
specified as built-in ("y" in the kernel config) are being packaged in the
rootfs. This seems to be reverse of what it should be.

As an example, I have the following options for my kernel config specified
additionally as part of my BSP layer. The modules "y" are packaged with
rootfs but "m" are not.

CONFIG_USB_NET_CDCETHER=y
CONFIG_USB_NET_CDC_EEM=m
CONFIG_USB_NET_CDC_NCM=y
CONFIG_USB_NET_SMSC75XX=m
CONFIG_USB_NET_CDC_SUBSET=y

How do I fix this? Making everything "y" is not a good idea if I want to
avoid loading these until really needed.

Thanks
-Ashish

--20cf303f6cb801587e04f504290c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div>In my build I see that the kernel modules which a=
re specified as modular ( &quot;m&quot; in the kernel config) are not being=
 packaged withe rootfs. The modules specified as built-in (&quot;y&quot; in=
 the kernel config) are being packaged in the rootfs. This seems to be reve=
rse of what it should be.</div>
<div><br></div><div>As an example, I have the following options for my kern=
el config specified additionally as part of my BSP layer. The modules &quot=
;y&quot; are packaged with rootfs but &quot;m&quot; are not.</div><div>
<br></div><div><div>CONFIG_USB_NET_CDCETHER=3Dy</div><div>CONFIG_USB_NET_CD=
C_EEM=3Dm</div><div>CONFIG_USB_NET_CDC_NCM=3Dy</div><div>CONFIG_USB_NET_SMS=
C75XX=3Dm</div><div>CONFIG_USB_NET_CDC_SUBSET=3Dy</div></div><div><br></div=
><div>
How do I fix this? Making everything &quot;y&quot; is not a good idea if I =
want to avoid loading these until really needed.</div><div><br></div><div>T=
hanks</div><div>-Ashish</div><div><br></div></div>

--20cf303f6cb801587e04f504290c--
