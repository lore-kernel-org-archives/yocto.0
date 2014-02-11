Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B545CE0076F
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 02:59:25 -0800 (PST)
Received: by mail-ve0-f171.google.com with SMTP id pa12so5957790veb.16
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 02:59:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=RzyAyobD4CaOvuMeJ0FrbYy27FfIRjkIrq8ZDcQoRew=;
	b=YDmYkLyUsnkG4dZbWd5ukJHz2MB+M8VuWepHHVUVULfEW187a+2WlOPUNBlD3xLXxk
	QTwZCaK8KsPxlwH26Jw/yI6yfNeoW2YZZldyqIhwfeR27uat0MAiQrCO4bgsFWWv1zSf
	VN8E4t7M0uIZe5eqrB7fty0KKLDCvEFi0NOwAbXBK8YQAYL0VuE69Ke2K2F0XNaH1afL
	KUJcTtlkztxT+1fU/8zNTTc0ww/J69EUQSUmpWa7GyjR2sXwqNhVlYh82vcmtcwKpjJF
	ASO/MVj9NUy6uWj6Xzu26cfPcEZS7Wj+F9ZZNYd3guSKcTrtHfErCSdsfZ94cfBkjMcI
	Vn2A==
X-Gm-Message-State: ALoCoQmYp6FnTmxJull815vbYeOn/U32dy4NlzE0J9XDllUUPub8pnMGkF6OzNIPVlrRzee+Eljz
X-Received: by 10.221.29.137 with SMTP id ry9mr28041883vcb.6.1392116364247;
	Tue, 11 Feb 2014 02:59:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Tue, 11 Feb 2014 02:59:04 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CABgO3_PYHxNRoi3FTAhp1aLfXPuvhVNvq+VAaAgJXXMH7j2yTw@mail.gmail.com>
References: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
	<CAK18fxG+2MJPxA420ZvV17qrbB6mRL6a8WHn1uJyDFm4QcXWhw@mail.gmail.com>
	<CABgO3_PYHxNRoi3FTAhp1aLfXPuvhVNvq+VAaAgJXXMH7j2yTw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 11 Feb 2014 12:59:04 +0200
Message-ID: <CAK18fxHAhV0cG+TzDX4dL4tK=9eNwaGWmj8gUNqOVEBYKfExFg@mail.gmail.com>
To: Sebastien MENNETRIER <s.mennetrier@innotis.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2] Add initramfs support
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
X-List-Received-Date: Tue, 11 Feb 2014 10:59:25 -0000
Content-Type: multipart/alternative; boundary=001a1133935c60ccb804f21f596b

--001a1133935c60ccb804f21f596b
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Feb 10, 2014 at 12:05 PM, Sebastien MENNETRIER <
s.mennetrier@innotis.org> wrote:

> Hi,
>
>
> 2014-02-09 Andrei Gherzan <andrei@gherzan.ro>:
>
> Hi,
>>
>>
>> On Fri, Jan 31, 2014 at 5:30 PM, S=E9bastien Mennetrier <
>> s.mennetrier@innotis.org> wrote:
>>
>>> Permit to build an image with initramfs.
>>>
>>> Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
>>> ---
>>>  classes/sdcard_image-rpi.bbclass | 5 ++++-
>>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/classes/sdcard_image-rpi.bbclass
>>> b/classes/sdcard_image-rpi.bbclass
>>> index 3ee4e94..815aaa9 100644
>>> --- a/classes/sdcard_image-rpi.bbclass
>>> +++ b/classes/sdcard_image-rpi.bbclass
>>> @@ -26,6 +26,9 @@ inherit image_types
>>>  # Set kernel and boot loader
>>>  IMAGE_BOOTLOADER ?=3D "bcm2835-bootfiles"
>>>
>>> +# Set initramfs extension
>>> +KERNEL_INITRAMFS ?=3D ""
>>> +
>>>
>>
>> I'm not sure how is this supposed to work. Could you please give more
>> info? I haven't seen this defined anywhere else so it must be something
>> custom you use.
>>
>
> When you would build an initramfs image, you must set this 3 kernel
> variables :
>      # Set initramfs
>      kernel_configure_variable BLK_DEV_INITRD y
>      kernel_configure_variable INITRAMFS_SOURCE ""
>      kernel_configure_variable RD_GZIP y
>
> And you must set INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE variables.
> These variables are used in kernel.bbclass from poky.
>
> The generated image name with initramfs feature is
> ${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin
>
> So you must set KERNEL_INITRAMFS in the machine.conf file with
> "-initramfs" in order to use this image in the mcopy below.
>
>

This was exactly my point. We need to document this somewhere (most
probably in README). Could you please add a patch which does this?


--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a1133935c60ccb804f21f596b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra">Hello,<br><br><div class=3D=
"gmail_quote">On Mon, Feb 10, 2014 at 12:05 PM, Sebastien MENNETRIER <span =
dir=3D"ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blan=
k">s.mennetrier@innotis.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<br><div><div class=3D"g=
mail_extra"><br><br><div class=3D"gmail_quote">2014-02-09 Andrei Gherzan <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">=
andrei@gherzan.ro</a>&gt;</span>:<div class=3D"">

<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote"><div>On Fri, Jan 31, 2014 at 5:30 PM, S=E9bastien Mennetrier <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_b=
lank">s.mennetrier@innotis.org</a>&gt;</span> wrote:<br>




<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div>Permit to build an i=
mage with initramfs.<br>
<br>
</div>Signed-off-by: S=E9bastien Mennetrier &lt;<a href=3D"mailto:s.mennetr=
ier@innotis.org" target=3D"_blank">s.mennetrier@innotis.org</a>&gt;<br>
<div><div>---<br>
=A0classes/sdcard_image-rpi.bbclass | 5 ++++-<br>
=A01 file changed, 4 insertions(+), 1 deletion(-)<br>
<br>
diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bb=
class<br>
index 3ee4e94..815aaa9 100644<br>
--- a/classes/sdcard_image-rpi.bbclass<br>
+++ b/classes/sdcard_image-rpi.bbclass<br>
@@ -26,6 +26,9 @@ inherit image_types<br>
=A0# Set kernel and boot loader<br>
=A0IMAGE_BOOTLOADER ?=3D &quot;bcm2835-bootfiles&quot;<br>
<br>
+# Set initramfs extension<br>
+KERNEL_INITRAMFS ?=3D &quot;&quot;<br>
+<br></div></div></blockquote><div><br></div></div><div>I&#39;m not sure ho=
w is this supposed to work. Could you please give more info? I haven&#39;t =
seen this defined anywhere else so it must be something custom you use.=A0<=
/div>


</div></div></div></blockquote><div><br></div><div></div></div><div>When yo=
u would build an initramfs image, you must set this 3 kernel=A0 variables :=
<br>=A0=A0=A0=A0 # Set initramfs<br>=A0=A0=A0=A0 kernel_configure_variable =
BLK_DEV_INITRD y<br>


=A0=A0=A0=A0 kernel_configure_variable INITRAMFS_SOURCE &quot;&quot;<br>=A0=
=A0=A0=A0 kernel_configure_variable RD_GZIP y<br><br>And you must set INITR=
AMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE variables. These variables are used i=
n kernel.bbclass from poky.<br>


<br></div>The generated image name with initramfs feature is ${KERNEL_IMAGE=
TYPE}-initramfs-${MACHINE}.bin</div><div class=3D"gmail_quote"><br><div>So =
you must set KERNEL_INITRAMFS in the machine.conf file with &quot;-initramf=
s&quot; in order to use this image in the mcopy below.<br>


</div><div class=3D""><div>=A0</div></div></div></div></div></div></blockqu=
ote><div><br></div><div>This was exactly my point. We need to document this=
 somewhere (most probably in README). Could you please add a patch which do=
es this?</div>

<div>=A0</div></div><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"te=
xt-align:center"></div><div style=3D"text-align:center"><div align=3D"left"=
 style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium"><b style=
=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-align:center=
">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a1133935c60ccb804f21f596b--
