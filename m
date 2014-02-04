Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D20E0071E
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 03:03:51 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id lh14so5637181vcb.38
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 03:03:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=kSNXNAm7J/JzOW23H+N+auu610H0rpiREnRqozxId3o=;
	b=gRGsSKBK0x+BC1ANlp2BBI25GDRSme3epXyjPLSReUsQ31JbFun7QuVDvf7X0/YaZT
	zU8rpzzkSJ0QqZtuiDjD6LfkbhcZ5DRPIwDUd4CJNyZ9/0neCV1XdgYv1/x1NzUlIR/X
	q/sksm9bLIPSfYF4HRJ1SJXB08jzFIvKyuXK9gBB1LYWd/T+plARL4vu8MGOXV0Pxj/T
	MpvpMLGE09sMSL6ZeD6AHxtN7YHW+i8hIpxt95SUK8ZgeHQs+bu6NjqWqjmxwxDalL6v
	gGBYd9b0VoiGhSGcqLAxZL94uZYWvBDrtAyosGffQMCGonie4soBF4fML2pRq9XYAnzk
	r7DQ==
X-Gm-Message-State: ALoCoQn80A6/Att++YihDR8rUfVofBQnJXIuyAH9Do4kzPOh3D9uPWX8hsHZvi/3LPIGzeZf7c5g
X-Received: by 10.220.106.84 with SMTP id w20mr32503410vco.18.1391511830775;
	Tue, 04 Feb 2014 03:03:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Tue, 4 Feb 2014 03:03:30 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CABgO3_PqTspCQ3s4LJ3+Rpx9YtegTLGMs=fPis_3a+CypriKBA@mail.gmail.com>
References: <1391182212-10378-1-git-send-email-s.mennetrier@innotis.org>
	<CABgO3_PqTspCQ3s4LJ3+Rpx9YtegTLGMs=fPis_3a+CypriKBA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 4 Feb 2014 13:03:30 +0200
Message-ID: <CAK18fxF=zwaHu8=0R_OGqPaGtFGdDmNCjkOzeS-0RR9s4LNXAA@mail.gmail.com>
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
X-List-Received-Date: Tue, 04 Feb 2014 11:03:52 -0000
Content-Type: multipart/alternative; boundary=047d7b3435c05fe39504f1929855

--047d7b3435c05fe39504f1929855
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 4, 2014 at 9:45 AM, Sebastien MENNETRIER <
s.mennetrier@innotis.org> wrote:

> Ping ?
>
>
Been busy this weekend. Will try to take a look on the pending patches
until Tuesday. Thanks.


>
> 2014-01-31 S=E9bastien Mennetrier <s.mennetrier@innotis.org>:
>
> Permit to build an image with initramfs.
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
>>
>
>
> --
>
> Regards,
> S=E9bastien
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b3435c05fe39504f1929855
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Feb 4, 2014 at 9:45 AM, Sebastien MENNETRIER <span dir=3D"l=
tr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank">s.men=
netrier@innotis.org</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Ping ?</div><div class=3D"g=
mail_extra"><br></div></blockquote><div><br></div><div>Been busy this weeke=
nd. Will try to take a look on the pending patches until Tuesday. Thanks.</=
div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">2014-01-31 S=E9bastien Mennetrier <span dir=3D"=
ltr">&lt;<a href=3D"mailto:s.mennetrier@innotis.org" target=3D"_blank">s.me=
nnetrier@innotis.org</a>&gt;</span>:<div>

<div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>Permit to build an image with initramfs=
.<br>
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
+<br>
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
<br>
</div></div></blockquote></div></div></div><span class=3D"HOEnZb"><font col=
or=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div><br>Regards,<br></div>S=E9bastien<br></div>
</font></span></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-align:ce=
nter"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;fo=
nt-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7b3435c05fe39504f1929855--
