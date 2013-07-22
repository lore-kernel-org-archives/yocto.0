Return-Path: <kumaramit124@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F707E01476
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2013 19:32:31 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id lx15so4733060lab.21
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2013 19:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:reply-to:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=N6vgtH7jJ1PO1vanm5ybPQ4274tszvWUdvj7AdrwDb4=;
	b=Yhzl3obvuVQvlnSDu7a/z+BnmgDXjmHTNW+1qrFt+fXzodcMyqrGfTA9bba8EUatz4
	WHYESJDyYPXo2qAzdIN9VBL0kDR9fBchV+wYedkW1pVG9vnb6aYvyaLc9tqMB1h2IAIU
	fiVg/aTt9wQ7Rarf5waLLAWidRKdsPwmG9Gnc/eRnm9k+1PP/POF75lOA+sLgLrVyRIG
	7ub8NPvAhl0hZPjgLMi9G4t5vE4GiskwsfpUqS3U4py1/OTr6AON5K0SvnwczSfswVlr
	3IhxlfjTRXpAWozI28i2ieH1x0wkja3Ud/frSY1rSLwNtI8bU61QPDKDEg5eMCSu4Ni6
	FV/Q==
MIME-Version: 1.0
X-Received: by 10.112.60.234 with SMTP id k10mr10937714lbr.30.1374460350286;
	Sun, 21 Jul 2013 19:32:30 -0700 (PDT)
Received: by 10.112.3.104 with HTTP; Sun, 21 Jul 2013 19:32:30 -0700 (PDT)
In-Reply-To: <ed77c118-436a-48ad-86d5-56e765188768@email.android.com>
References: <CAEO8TxDS2aCjH=AtiVcdPOWsdZ_4NMOd+cHhn-WWX=GYjB4fTA@mail.gmail.com>
	<ed77c118-436a-48ad-86d5-56e765188768@email.android.com>
Date: Mon, 22 Jul 2013 08:02:30 +0530
Message-ID: <CAEO8TxAwVC017oMSxy2y+SvbUQ5rk9D2dMXZkkvayfUir4LJZQ@mail.gmail.com>
From: amit kumar <kumaramit124@gmail.com>
To: Sudhangathan BS <sudhangathan@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Arago project image fail to run in QEMU
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: himself_amit@yahoo.co.in
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Jul 2013 02:32:35 -0000
Content-Type: multipart/alternative; boundary=e89a8f83a9f1efd3e804e2107c35

--e89a8f83a9f1efd3e804e2107c35
Content-Type: text/plain; charset=ISO-8859-1

Hi Sudhangathan
        Thanks for replay.
So i have to build a separate image to run under the QEMU, for that do i
need to build it with my yocto project build environment with adding the
layers.
Or do i need to use the same build environment and just change the
local.conf file?
Keystone-II is a arm processor.


Thanks & Regards
Amit K





On Sat, Jul 20, 2013 at 8:41 AM, Sudhangathan BS <sudhangathan@gmail.com>wrote:

> Hi Amit,
>
> You have to build separate images to be run on qemu.. You have to set it
> in your local.conf file.. i.e. u have to change your build-target..
>
> Images built to run on hardware cannot be run on qemu right now..
>
> Virtualization is only available upto processor level, and not the
> complete hardware...!
>
> Which processor is keystone-II using..?
>
> Best,
> Sudhangathan B S
>
>
> amit kumar <kumaramit124@gmail.com> wrote:
>>
>>
>> Hi,
>>
>> I have built the Arago project for keystone-II successfully. The images
>> are available under the deploy/Images dir.
>>
>> I have already added my module into the kernel and recompiled the kernel
>> image.
>>
>>
>>
>> Now my doubt is before putting the image on actual hardware I want to run
>> it on QEMU. Is it possible to run the built images on QEMU?
>>
>> I tried to run using the following command but getting an error-
>>
>>
>>  /**************************************************************/
>>
>> amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu
>> arago-tmp-external-linaro-toolchain/deploy/images/uImage-keystone-evm.bin
>> arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi
>> Error: unknown file arg
>> [arago-tmp-external-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]
>>
>> Usage: you can run this script with any valid combination
>> of the following options (in any order):
>>   QEMUARCH - the qemu machine architecture to use
>>   KERNEL - the kernel image file to use
>>   ROOTFS - the rootfs image file or nfsroot directory to use
>>   MACHINE - the machine name (optional, autodetected from KERNEL filename
>> if unspecified)
>>   RAMFS - boot a ramfs-based image
>>   Simplified QEMU command-line options can be passed with:
>>     nographic - disables video console
>>     serial - enables a serial console on /dev/ttyS0
>>     kvm - enables KVM when running qemux86/qemux86-64 (VT-capable CPU
>> required)
>>   qemuparams="xyz" - specify custom parameters to QEMU
>>   bootparams="xyz" - specify custom kernel parameters during boot
>>
>> Examples:
>>   runqemu qemuarm
>>   runqemu qemux86-64 core-image-sato ext3
>>   runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
>>   runqemu qemux86 ramfs
>>   runqemu qemux86 qemuparams="-m 256"
>>   runqemu qemux86 bootparams="psplash=false"
>> amit@amit-HP:~/OE/MCSDK/mcsdk/build$
>>
>> /**********************************************************/
>>
>> The build step I followed from the arago project build link-
>>
>> "http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment"
>>
>>
>> Please let me know if I have to do something else to run the image under
>> QEMU.
>>
>> --
>> Thanks & Regards
>> Amit Kumar
>>
>> ------------------------------
>>
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
> --
> Sent from Kaiten Mail. Please excuse my brevity.
>



-- 
Thanks & Regards
Amit Kumar

--e89a8f83a9f1efd3e804e2107c35
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hi Sudhangathan<br></div>=A0=
=A0=A0=A0=A0=A0=A0 Thanks for replay.<br></div>So i have to build a separat=
e image to run under the QEMU, for that do i need to build it with my yocto=
 project build environment with adding the layers.<br>
</div>Or do i need to use the same build environment and just change the lo=
cal.conf file?<br></div>Keystone-II is a arm processor.<br><br><br></div>Th=
anks &amp; Regards<br></div>Amit K <br><div><div><div><br><br><div><div>
<div><br></div></div></div></div></div></div></div><div class=3D"gmail_extr=
a"><br><br><div class=3D"gmail_quote">On Sat, Jul 20, 2013 at 8:41 AM, Sudh=
angathan BS <span dir=3D"ltr">&lt;<a href=3D"mailto:sudhangathan@gmail.com"=
 target=3D"_blank">sudhangathan@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><p dir=3D"ltr">Hi Amit,</p>
<p dir=3D"ltr">You have to build separate images to be run on qemu.. You ha=
ve to set it in your local.conf file.. i.e. u have to change your build-tar=
get.. </p>
<p dir=3D"ltr">Images built to run on hardware cannot be run on qemu right =
now.. </p>
<p dir=3D"ltr">Virtualization is only available upto processor level, and n=
ot the complete hardware...!</p>
<p dir=3D"ltr">Which processor is keystone-II using..?</p>
<p dir=3D"ltr">Best,<br>
Sudhangathan B S</p>
<br><br><div class=3D"gmail_quote">amit kumar &lt;<a href=3D"mailto:kumaram=
it124@gmail.com" target=3D"_blank">kumaramit124@gmail.com</a>&gt; wrote:<bl=
ockquote class=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
<div><div class=3D"h5">
<div dir=3D"ltr"><div><br clear=3D"all"></div>Hi,<br><br><p><span style=3D"=
font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;">I have built t=
he Arago project for keystone-II successfully. The images are available und=
er the deploy/Images dir.</span></p>


<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">I have already added my module into the kernel and recompiled the kerne=
l image.</span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">=A0</span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">Now
 my doubt is before putting the image on actual hardware I want to run=20
it on QEMU. Is it possible to run the built images on QEMU?</span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">I tried to run using the following command but getting an error-</span>=
</p><p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif=
&quot;"><br>

</span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">/**************************************************************/ <br></=
span></p><p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-=
serif&quot;">amit@amit-HP:~/OE/MCSDK/mcsdk/build$ runqemu arago-tmp-externa=
l-linaro-toolchain/deploy/images/uImage-keystone-evm.bin arago-tmp-external=
-linaro-toolchain/deploy/images/core-image-minimal-keystone-evm-20130718181=
345.rootfs.ubi<br>

Error: unknown file arg [arago-tmp-external-linaro-toolchain/deploy/images/=
core-image-minimal-keystone-evm-20130718181345.rootfs.ubi]<br><br>Usage: yo=
u can run this script with any valid combination<br>of the following option=
s (in any order):<br>

=A0 QEMUARCH - the qemu machine architecture to use<br>=A0 KERNEL - the ker=
nel image file to use<br>=A0 ROOTFS - the rootfs image file or nfsroot dire=
ctory to use<br>=A0 MACHINE - the machine name (optional, autodetected from=
 KERNEL filename if unspecified)<br>

=A0 RAMFS - boot a ramfs-based image<br>=A0 Simplified QEMU command-line op=
tions can be passed with:<br>=A0=A0=A0 nographic - disables video console<b=
r>=A0=A0=A0 serial - enables a serial console on /dev/ttyS0<br>=A0=A0=A0 kv=
m - enables KVM when running qemux86/qemux86-64 (VT-capable CPU required)<b=
r>

=A0 qemuparams=3D&quot;xyz&quot; - specify custom parameters to QEMU<br>=A0=
 bootparams=3D&quot;xyz&quot; - specify custom kernel parameters during boo=
t<br><br>Examples:<br>=A0 runqemu qemuarm<br>=A0 runqemu qemux86-64 core-im=
age-sato ext3<br>

=A0 runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial<br>=A0 r=
unqemu qemux86 ramfs<br>=A0 runqemu qemux86 qemuparams=3D&quot;-m 256&quot;=
<br>=A0 runqemu qemux86 bootparams=3D&quot;psplash=3Dfalse&quot;<br>amit@am=
it-HP:~/OE/MCSDK/mcsdk/build$ <br>


</span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">/**********************************************************/</span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">The build step I followed from the arago project build link- <br></span=
></p><p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-seri=
f&quot;">&quot;<a href=3D"http://arago-project.org/wiki/index.php/Setting_U=
p_Build_Environment" target=3D"_blank">http://arago-project.org/wiki/index.=
php/Setting_Up_Build_Environment</a>&quot;</span></p>

<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;"></span></p>
<p><span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quo=
t;">=A0</span></p>
<span style=3D"font-family:&quot;Trebuchet MS&quot;,&quot;sans-serif&quot;"=
>Please let me know if I have to do something else to run the image under Q=
EMU.</span><br><br><div>-- <br>Thanks &amp; Regards<br>Amit Kumar=20
</div></div>
<p style=3D"margin-top:2.5em;margin-bottom:1em;border-bottom:1px solid #000=
"></p></div></div><pre><hr><br>yocto mailing list<br><a href=3D"mailto:yoct=
o@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">https:=
//lists.yoctoproject.org/listinfo/yocto</a><span class=3D"HOEnZb"><font col=
or=3D"#888888"><br>
</font></span></pre></blockquote></div><span class=3D"HOEnZb"><font color=
=3D"#888888"><br>
-- <br>
Sent from Kaiten Mail. Please excuse my brevity.</font></span></div></block=
quote></div><br><br clear=3D"all"><br>-- <br>Thanks &amp; Regards<br>Amit K=
umar=20
</div>

--e89a8f83a9f1efd3e804e2107c35--
