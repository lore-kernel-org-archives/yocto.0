Return-Path: <sebmennetrier@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F2DE00747
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 02:05:46 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id y20so664659ier.18
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 02:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=jxYPZiJFkE+3j/Mduv6hPiSXf+sfdZvV2WPdfb0YPjo=;
	b=rBHVLR8T3+m12rZmqMNj4E95+q7I69qml9tNa76fCSHnJErSOf5q8SwfjJVhX9SuY6
	Mdo3h59+J+haUfqEc429z5grgKsmIxbg/NNlYCh4s0kkGPYT7YZ5rPltGuQ8TOA6fuI9
	sHZnK0m2HZcnoRIsjjazKXBXqoQ8pN986NvswXT2tQnil8i0iGq6cRhzONfdKHlAt5Lq
	lv62lzXbePtFl3i3c+5Dwtl/1ix/9H6GwbXY//ViOKy5XLsnnTMt2WX0K6aSTyCRZSBT
	GoRUPIzlZkV24HtR52yn8zRqiPNe3An2J7SsEx3VT9D4kJGSHTtz0KDRCJAmC91jvGes
	CLzA==
MIME-Version: 1.0
X-Received: by 10.50.110.3 with SMTP id hw3mr13159442igb.12.1392026745311;
	Mon, 10 Feb 2014 02:05:45 -0800 (PST)
Sender: sebmennetrier@gmail.com
Received: by 10.43.141.70 with HTTP; Mon, 10 Feb 2014 02:05:45 -0800 (PST)
In-Reply-To: <CAK18fxG+2MJPxA420ZvV17qrbB6mRL6a8WHn1uJyDFm4QcXWhw@mail.gmail.com>
References: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
	<CAK18fxG+2MJPxA420ZvV17qrbB6mRL6a8WHn1uJyDFm4QcXWhw@mail.gmail.com>
Date: Mon, 10 Feb 2014 11:05:45 +0100
X-Google-Sender-Auth: PDBZ5Dzvsb_Oo8WUuEK8dhCCykY
Message-ID: <CABgO3_PYHxNRoi3FTAhp1aLfXPuvhVNvq+VAaAgJXXMH7j2yTw@mail.gmail.com>
From: Sebastien MENNETRIER <s.mennetrier@innotis.org>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Mon, 10 Feb 2014 10:05:49 -0000
Content-Type: multipart/alternative; boundary=089e013cbd50ac19fa04f20a7b82

--089e013cbd50ac19fa04f20a7b82
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,


2014-02-09 Andrei Gherzan <andrei@gherzan.ro>:

> Hi,
>
>
> On Fri, Jan 31, 2014 at 5:30 PM, S=E9bastien Mennetrier <
> s.mennetrier@innotis.org> wrote:
>
>> Permit to build an image with initramfs.
>>
>> Signed-off-by: S=E9bastien Mennetrier <s.mennetrier@innotis.org>
>> ---
>>  classes/sdcard_image-rpi.bbclass | 5 ++++-
>>  1 file changed, 4 insertions(+), 1 deletion(-)
>>
>> diff --git a/classes/sdcard_image-rpi.bbclass
>> b/classes/sdcard_image-rpi.bbclass
>> index 3ee4e94..815aaa9 100644
>> --- a/classes/sdcard_image-rpi.bbclass
>> +++ b/classes/sdcard_image-rpi.bbclass
>> @@ -26,6 +26,9 @@ inherit image_types
>>  # Set kernel and boot loader
>>  IMAGE_BOOTLOADER ?=3D "bcm2835-bootfiles"
>>
>> +# Set initramfs extension
>> +KERNEL_INITRAMFS ?=3D ""
>> +
>>
>
> I'm not sure how is this supposed to work. Could you please give more
> info? I haven't seen this defined anywhere else so it must be something
> custom you use.
>

When you would build an initramfs image, you must set this 3 kernel
variables :
     # Set initramfs
     kernel_configure_variable BLK_DEV_INITRD y
     kernel_configure_variable INITRAMFS_SOURCE ""
     kernel_configure_variable RD_GZIP y

And you must set INITRAMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE variables.
These variables are used in kernel.bbclass from poky.

The generated image name with initramfs feature is
${KERNEL_IMAGETYPE}-initramfs-${MACHINE}.bin

So you must set KERNEL_INITRAMFS in the machine.conf file with "-initramfs"
in order to use this image in the mcopy below.


>
>
>>  # Boot partition volume id
>>  BOOTDD_VOLUME_ID ?=3D "${MACHINE}"
>>
>> @@ -91,7 +94,7 @@ IMAGE_CMD_rpi-sdimg () {
>>         BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${SDIMG} unit b print | awk=
 '/ 1
>> / { print substr($4, 1, length($4 -1)) / 512 /2 }')
>>         mkfs.vfat -n "${BOOTDD_VOLUME_ID}" -S 512 -C ${WORKDIR}/boot.img
>> $BOOT_BLOCKS
>>         mcopy -i ${WORKDIR}/boot.img -s
>> ${DEPLOY_DIR_IMAGE}/bcm2835-bootfiles/* ::/
>> -       mcopy -i ${WORKDIR}/boot.img -s
>> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}-${MACHINE}.bin ::kernel.img
>> +       mcopy -i ${WORKDIR}/boot.img -s
>> ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bi=
n
>> ::kernel.img
>>
>>         if [ -n ${FATPAYLOAD} ] ; then
>>                 echo "Copying payload into VFAT"
>> --
>> 1.8.1.2
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>
> --
> *Andrei Gherzan*
> m: +40.744.478.414 |  f: +40.31.816.28.12
>



--=20

Regards,
S=E9bastien

--089e013cbd50ac19fa04f20a7b82
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">2014-02-09 Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D=
"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</spa=
n>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote"><div class=3D"im">On Fri, Jan 31, 2014 at 5:30 PM, S=E9bastien M=
ennetrier <span dir=3D"ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org"=
 target=3D"_blank">s.mennetrier@innotis.org</a>&gt;</span> wrote:<br>


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
</div></div></div></blockquote><div><br></div><div></div><div>When you woul=
d build an initramfs image, you must set this 3 kernel=A0 variables :<br>=
=A0=A0=A0=A0 # Set initramfs<br>=A0=A0=A0=A0 kernel_configure_variable BLK_=
DEV_INITRD y<br>
=A0=A0=A0=A0 kernel_configure_variable INITRAMFS_SOURCE &quot;&quot;<br>=A0=
=A0=A0=A0 kernel_configure_variable RD_GZIP y<br><br>And you must set INITR=
AMFS_IMAGE and INITRAMFS_IMAGE_BUNDLE variables. These variables are used i=
n kernel.bbclass from poky.<br>
<br></div>The generated image name with initramfs feature is ${KERNEL_IMAGE=
TYPE}-initramfs-${MACHINE}.bin</div><div class=3D"gmail_quote"><br><div>So =
you must set KERNEL_INITRAMFS in the machine.conf file with &quot;-initramf=
s&quot; in order to use this image in the mcopy below.<br>
</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div><=
div class=3D"im">
=A0# Boot partition volume id<br>
=A0BOOTDD_VOLUME_ID ?=3D &quot;${MACHINE}&quot;<br>
<br>
@@ -91,7 +94,7 @@ IMAGE_CMD_rpi-sdimg () {<br>
=A0 =A0 =A0 =A0 BOOT_BLOCKS=3D$(LC_ALL=3DC parted -s ${SDIMG} unit b print =
| awk &#39;/ 1 / { print substr($4, 1, length($4 -1)) / 512 /2 }&#39;)<br>
=A0 =A0 =A0 =A0 mkfs.vfat -n &quot;${BOOTDD_VOLUME_ID}&quot; -S 512 -C ${WO=
RKDIR}/boot.img $BOOT_BLOCKS<br>
=A0 =A0 =A0 =A0 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/bcm2835=
-bootfiles/* ::/<br>
- =A0 =A0 =A0 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_=
IMAGETYPE}-${MACHINE}.bin ::kernel.img<br>
+ =A0 =A0 =A0 mcopy -i ${WORKDIR}/boot.img -s ${DEPLOY_DIR_IMAGE}/${KERNEL_=
IMAGETYPE}${KERNEL_INITRAMFS}-${MACHINE}.bin ::kernel.img<br>
<br>
=A0 =A0 =A0 =A0 if [ -n ${FATPAYLOAD} ] ; then<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 echo &quot;Copying payload into VFAT&quot;<=
br>
--<br>
1.8.1.2<br>
<br></div><div class=3D"im">
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></div></blockquote></div><div class=3D"im"><br><br clear=3D"all=
"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"><=
div style=3D"font-family:&#39;Times New Roman&#39;;font-size:medium" align=
=3D"left">


<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font color=3D"#333333" face=3D"Arial" size=3D"=
-1"><br></font><font color=3D"#333333" face=3D"Arial" size=3D"-1">m: <a hre=
f=3D"tel:%2B40.744.478.414" value=3D"+40744478414" target=3D"_blank">+40.74=
4.478.414</a> | =A0f: <a href=3D"tel:%2B40.31.816.28.12" value=3D"+40318162=
812" target=3D"_blank">+40.31.816.28.12</a></font><br>


</div></div></div>
</div></div></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div dir=3D"ltr"><div><=
br>Regards,<br></div>S=E9bastien<br></div>
</div></div></div>

--089e013cbd50ac19fa04f20a7b82--
