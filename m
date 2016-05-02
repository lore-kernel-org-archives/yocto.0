Return-Path: <pknopf@medxchange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9BE7E00B98; Mon,  2 May 2016 10:24:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B3DE00B45
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 10:24:41 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id m188so3509234vka.1
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 10:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=medxchange-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=TcuH/zvqrsBcTGs8kdcYvZJTVAQf7xWCe6M1jHIdpjY=;
	b=KJXOI0tRJOJsAmd8/JbMjrBXYoCPgcrLMzylHQNyN1c1hyuRdCraSrm8d6ECDYYKg1
	zYxn6QSIcPgABaQTu9rYLJBZ8DTwW7TJjWMAoqBktGOAi0HreuDLR+LmSUdXr0DM5oJ3
	Amz45THrAg4AqXuP7jbjsBCdORb5LRydYvb9DpFbHNs/Mc0DQ/xLjkWq2/WdJztay/m5
	sj40KvM5LjPyaHogE6gqlIGzepmKiD2fbBK4B9l6RCXS0o1Sm1ofkb/vzfCQGF8XzAx0
	xLI9qeu7GxiVp0tP6K+Zn4swve5FTs0JPAaC4c3XSvCohtlWO/ZrxJM9UdSTLVXwjywV
	1WiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=TcuH/zvqrsBcTGs8kdcYvZJTVAQf7xWCe6M1jHIdpjY=;
	b=VtsAr7U3ojIn+m5tr7my7sSB81eGs1pqg+ZE7z6erRICKA5R3ZnfXhg88/+I2OKBtZ
	7Yy66eIrzNJneTmKVS2hfEjfxTI2ciBjxGrUzpo0zyb0w4SKTv2V/6KrjwkRgX4NVyxk
	fIosV3KvB3Vsq0XT2zENwZX1IyDBXzBfbvOQcPdyfYwNlpWxPvkDaaeiozWvWDLUXJ7a
	9g0KOk62yWodtdcU5i6ZcKRTfvxNsqv2pGavG1o/eajqXoME3lY22ZFPMLHVwzsCGoNl
	Coc8olkGUo3WqZpaz7u9rqGvcJxUWYVo7ZlVZYaxZc/6T44Bqt/JtgePBlzih1xw61Te
	O6/A==
X-Gm-Message-State: AOPr4FWoF1+QYGXjBhkA3B2HgrGPYRfObsC4gy9Q/3yrB112/ct2Cf4tu99xyvlhWQ5y8I1mu7uLNgfOwiHZFw==
X-Received: by 10.159.40.132 with SMTP id d4mr21697385uad.21.1462209880679;
	Mon, 02 May 2016 10:24:40 -0700 (PDT)
MIME-Version: 1.0
References: <CABfz71dUBbkQdidZkzLijTpesepXUJ0uUn4P5W3Nd6Cw2y27AQ@mail.gmail.com>
	<1462201963010.35715@comcast.com>
In-Reply-To: <1462201963010.35715@comcast.com>
From: Paul Knopf <pknopf@medxchange.com>
Date: Mon, 02 May 2016 17:24:31 +0000
Message-ID: <CABfz71dqwfKGf4dpt1qxvqyaCLdsnwDLM7JaO+PBnv3y8nmQfg@mail.gmail.com>
To: "Jeyachandran,
	Yukatharsani (Contractor)" <Yukatharsani_Jeyachandran@comcast.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Booting live images (core-image-minimal-initramfs) on ARM
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
X-List-Received-Date: Mon, 02 May 2016 17:24:51 -0000
Content-Type: multipart/alternative; boundary=94eb2c123e2886f38c0531df4492

--94eb2c123e2886f38c0531df4492
Content-Type: text/plain; charset=UTF-8

Great, I built my cpio.gz root fs. I made the following changes to
init-live.sh
<https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/initrdscripts/files/init-live.sh>
to support this file system.

@@ -158,7 +157,7 @@ mount_and_boot() {
     mkdir $ROOT_MOUNT
     mknod /dev/loop0 b 7 0 2>/dev/null

-    if ! mount -o rw,loop,noatime,nodiratime
/run/media/$ROOT_DISK/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
+    if ! mount *-t sysfs *-o rw,loop,noatime,nodiratime
/run/media/$ROOT_DISK/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then
        fatal "Could not mount rootfs image"
     fi

However, when I plug in a block device with a rootfs.img (my cpio.gz) at
the root, nothing happens. Do I need to pass any kernel parameters in? I
notice there is some parsing of the /proc/cmdline.

The only options I am passing to the kernel is this: console=ttymxc1,115200
video=mxcfb0:dev=hdmi,1920x1080M@60

Here is my entire dmesg. I booted without a USB present, and then plugged
one in.
https://gist.github.com/pauldotknopf/ce8f3d0dee0b53cef9a7dccebccc0c1c

What is the best way to debug debug this init-live.sh script?

I wish there was some documentation on this ;)

On Mon, May 2, 2016 at 11:12 AM Jeyachandran, Yukatharsani (Contractor) <
Yukatharsani_Jeyachandran@comcast.com> wrote:

>
> Hi,
>
> Edit IMAGE_FSTYPES variable:-
>
> Add this line IMAGE_FSTYPES = "${INITRAMFS_FSTYPES}" in machine configuration file or conf/local.conf file.
>
> By default, INITRAMFS_FSTYPES set to "cpio-gz" in meta/conf/bitbake.conf file.
>
>
> Thanks and Regards,
> Yukatharsani J.
>
>
>
> ------------------------------
> *From:* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> on behalf of Paul Knopf <pknopf@medxchange.com>
> *Sent:* Monday, May 2, 2016 10:43 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Booting live images (core-image-minimal-initramfs) on
> ARM
>
> I have created kernel with an initramfs bundled that uses
> "initramfs-live-boot" to search for a "root.img" file on any mounted media
> devices (/media/*/root.img). I have added some rules to udev to automount a
> block device correctly.
>
> However, when I attempt to create the live image, it depends on syslinux,
> which isn't available for ARM.
>
> ERROR: Nothing PROVIDES 'syslinux'
> ERROR: syslinux was skipped: incompatible with host arm-poky-linux-gnueabi
> (not in COMPATIBLE_HOST)
>
> I have the following in my image.
>
> IMAGE_FSTYPES = "live"
>
> Why do we need the syslinux dependency? I have already booted my kernel
> via u-boot, so it seems unnecessary. Is there another IMAGE_FSTYPE that is
> compatible with the "initramfs-live-boot" package? cramfs? If so, do I need
> to change the "init-live.sh" script in "initramfs-live-boot" to support
> this new file type?
>
> Thanks,
> Paul Knopf
> Software Engineer
> Med X Change, Inc
> pknopf@medxchange.com
>
-- 

Thanks,
Paul Knopf
Software Engineer
Med X Change, Inc
pknopf@medxchange.com

--94eb2c123e2886f38c0531df4492
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Great, I built my cpio.gz root fs. I made the following ch=
anges to <a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/me=
ta/recipes-core/initrdscripts/files/init-live.sh">init-live.sh</a> to suppo=
rt this file system.<div><br></div><div><div>@@ -158,7 +157,7 @@ mount_and_=
boot() {</div><div>=C2=A0 =C2=A0 =C2=A0mkdir $ROOT_MOUNT</div><div>=C2=A0 =
=C2=A0 =C2=A0mknod /dev/loop0 b 7 0 2&gt;/dev/null</div><div>=C2=A0</div><d=
iv>- =C2=A0 =C2=A0if ! mount -o rw,loop,noatime,nodiratime /run/media/$ROOT=
_DISK/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then</div><div>+ =C2=A0 =C2=A0if =
! mount <b>-t sysfs </b>-o rw,loop,noatime,nodiratime /run/media/$ROOT_DISK=
/$ISOLINUX/$ROOT_IMAGE $ROOT_MOUNT ; then</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 fatal &quot;Could not mount rootfs image&quot;</div><div>=C2=A0 =C2=
=A0 =C2=A0fi</div><div>=C2=A0</div></div><div>However, when I plug in a blo=
ck device with a rootfs.img (my cpio.gz) at the root, nothing happens. Do I=
 need to pass any kernel parameters in? I notice there is some parsing of t=
he /proc/cmdline.</div><div><br></div><div>The only options I am passing to=
 the kernel is this: console=3Dttymxc1,115200 video=3Dmxcfb0:dev=3Dhdmi,192=
0x1080M@60</div><div><br></div><div>Here is my entire dmesg. I booted witho=
ut a USB present, and then plugged one in.</div><div><a href=3D"https://gis=
t.github.com/pauldotknopf/ce8f3d0dee0b53cef9a7dccebccc0c1c">https://gist.gi=
thub.com/pauldotknopf/ce8f3d0dee0b53cef9a7dccebccc0c1c</a><br></div><div><b=
r></div><div>What is the best way to debug debug this init-live.sh script?<=
/div><div><br></div><div>I wish there was some documentation on this ;)</di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, May 2, 2016=
 at 11:12 AM Jeyachandran, Yukatharsani (Contractor) &lt;<a href=3D"mailto:=
Yukatharsani_Jeyachandran@comcast.com">Yukatharsani_Jeyachandran@comcast.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#ff=
ffff;font-family:Calibri,Arial,Helvetica,sans-serif">
<p><br>
</p>
<pre>Hi,<br><br>Edit IMAGE_FSTYPES variable:-<br><br><pre><span>Add this li=
ne IMAGE_FSTYPES =3D &quot;${INITRAMFS_FSTYPES}&quot; in machine configurat=
ion file or conf/local.conf file.<br><br>By default, </span><span>INITRAMFS=
_FSTYPES</span><span> set to &quot;cpio-gz&quot; in meta/conf/bitbake.conf =
file.<br><br><br>Thanks and Regards,<br>Yukatharsani J.<br></span></pre><em=
><br></em><em></em></pre>
<p><br>
</p>
<div style=3D"color:rgb(33,33,33)">
<hr style=3D"display:inline-block;width:98%">
<div dir=3D"ltr"><font style=3D"font-size:11pt" color=3D"#000000" face=3D"C=
alibri, sans-serif"><b>From:</b> <a href=3D"mailto:yocto-bounces@yoctoproje=
ct.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> &lt;<a href=3D=
"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoc=
toproject.org</a>&gt; on behalf of Paul Knopf &lt;<a href=3D"mailto:pknopf@=
medxchange.com" target=3D"_blank">pknopf@medxchange.com</a>&gt;<br>
<b>Sent:</b> Monday, May 2, 2016 10:43 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Booting live images (core-image-minimal-initramfs) =
on ARM</font>
<div>=C2=A0</div>
</div></div></div><div dir=3D"ltr" style=3D"font-size:12pt;color:#000000;ba=
ckground-color:#ffffff;font-family:Calibri,Arial,Helvetica,sans-serif"><div=
 style=3D"color:rgb(33,33,33)">
<div>
<div dir=3D"ltr">
<div>I have created kernel with an initramfs bundled that uses &quot;initra=
mfs-live-boot&quot; to search for a &quot;root.img&quot; file on any mounte=
d media devices (/media/*/root.img). I have added some rules to udev to aut=
omount a block device correctly.</div>
<div><br>
</div>
<div>However, when I attempt to create the live image, it depends on syslin=
ux, which isn&#39;t available for ARM.</div>
<div><br>
</div>
<div>
<div>ERROR: Nothing PROVIDES &#39;syslinux&#39;</div>
<div>ERROR: syslinux was skipped: incompatible with host arm-poky-linux-gnu=
eabi (not in COMPATIBLE_HOST)</div>
</div>
<div><br>
</div>
<div>I have the following in my image.</div>
<div><br>
</div>
<div>
<div>IMAGE_FSTYPES =3D &quot;live&quot;</div>
</div>
<div><br>
</div>
<div>Why do we need the syslinux dependency? I have already booted my kerne=
l via u-boot, so it seems unnecessary. Is there another IMAGE_FSTYPE that i=
s compatible with the &quot;initramfs-live-boot&quot; package? cramfs? If s=
o, do I need to change the &quot;init-live.sh&quot;
 script in &quot;initramfs-live-boot&quot; to support this new file type?</=
div>
<br clear=3D"all">
<div>
<div>
<div dir=3D"ltr">
<div>Thanks,</div>
<div>Paul Knopf</div>
<div>Software Engineer</div>
<div>Med X Change, Inc</div>
<div><a href=3D"mailto:pknopf@medxchange.com" target=3D"_blank">pknopf@medx=
change.com</a></div>
</div>
</div>
</div>
</div>
</div>
</div></div></blockquote></div><div dir=3D"ltr">-- <br></div><div dir=3D"lt=
r"><p dir=3D"ltr">Thanks,<br>
Paul Knopf<br>
Software Engineer<br>
Med X Change, Inc<br>
<a href=3D"mailto:pknopf@medxchange.com">pknopf@medxchange.com</a></p>
</div>

--94eb2c123e2886f38c0531df4492--
