Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D27BE007F8
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 11:19:18 -0800 (PST)
Received: by mail-oa0-f46.google.com with SMTP id o6so104475oag.19
	for <yocto@yoctoproject.org>; Wed, 18 Dec 2013 11:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4TqUHcFHjj7/sEBHjPvYgiaNn+AN4ybME8iQWqGQ8OI=;
	b=myo32SOAJn8PkqqnNTHaGtl33B8m1UDAVi+BQd7B0/98cMgTLs8b59oXNGsUHNClt0
	nCfSU6Z+QbdUydo4z04O1ZP269U+H9RTU8hfMPOJAQtEpOxY0ibxeUdlXUQjzOin5iCo
	SF4MrrqSJG7/ET+54eFhRd7bpIBSB9VOS9rvSqLxSU3NecstmipkdY+ZtM229rWLThvE
	vZRc/AKykeWqaK/38B3xZLIBLvJwVJIABlZ6SbPh6uKc0Ltsg3s2ftPC+MzmJlk7CZkn
	A2g9cquVPDDwxkwDWMdc3IPBJJc7iu0ZhPXvZv5jza1c78YhXgV7AKsEVd5EcElwwhxj
	4t7w==
MIME-Version: 1.0
X-Received: by 10.182.84.132 with SMTP id z4mr22383896oby.49.1387394356852;
	Wed, 18 Dec 2013 11:19:16 -0800 (PST)
Received: by 10.76.100.173 with HTTP; Wed, 18 Dec 2013 11:19:16 -0800 (PST)
In-Reply-To: <CA+gsK-od0B330bQZB97t6jQkNC+T4_m_WT1shMcOvuVsOgMzGg@mail.gmail.com>
References: <CAE8H0+XZVS8sSV-RKDxOzcvm4CrzUS-BV2bBU7KLmdh9ri=PoQ@mail.gmail.com>
	<CA+gsK-od0B330bQZB97t6jQkNC+T4_m_WT1shMcOvuVsOgMzGg@mail.gmail.com>
Date: Wed, 18 Dec 2013 14:19:16 -0500
Message-ID: <CAE8H0+UnkK13fhg+SzLE-K3R2PLOk4VJMi3C47bHgAX+g24jOQ@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-tiny, boot and filesystems
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
X-List-Received-Date: Wed, 18 Dec 2013 19:19:23 -0000
Content-Type: multipart/alternative; boundary=089e0111c09acdbee904edd3eb79

--089e0111c09acdbee904edd3eb79
Content-Type: text/plain; charset=ISO-8859-1

Rudi,

From a first view, my problem is that my embedded Yocto-Linux device takes
too long from the application of power to the time that it is first able to
a) signal the user that the device is waking up and b) respond to events
from I/O (Ethernet and CAN).  (40+ seconds prior to shifting to poky-tiny,
not counting BIOS delays)

From another view, my problem is a lack of understanding about the
processes involved during that time, and how the poky-tiny distro is
intended to be applied to resolve the 'first view' problem.

Yes, poky-tiny produces an image that is both smaller and starts fewer
services.  It also uses tiny-init which I believe is neither SysV init nor
systemd.

Outside of the scope of poky-tiny, I need some way to boot my hardware, and
the poky-tiny guides seem to stop once they're able to boot qemu.  If I
simply create an ext2 boot partition on my sdcard and copy the
poky-tiny.ext2 image to it, nothing boots.  If I also install grub to that
partition and provide a grub.cfg, I can boot.  (The selection of grub as my
boot loader may be my first mistake ?)  In that grub.cfg are two critical
lines:
1) linux /boot/bzImage root=/dev/mmcblk0p1
and
2) initrd /boot/core-image-minimal-crownbay.cpio.gz

If I just do 1), I can boot quickly, but I can't do much else because the
file system is mounted read-only.  I _want_ most of the file system to be
read-only, but need to be able to start the network and do some other
'normal' tasks that require write access to some areas of the file system.
 Once my user space application is running, my app will use another (USB)
device for persistent data storage.

If I also do 2), more works and I can start the network, but of course the
system takes a bit longer while it's loading the ramdisk.  If this is the
expected and optimal mode of operation, then I'm done.  But am I wrong in
thinking that the contents of the .cpio.gz file replaces all of what is in
the .ext2 image once it is loaded?  I'm confused by the fact that files I
added to the tiny-init recipe end up in both the .ext2 file image (just
stage 1) and the resulting file system after both 1) & 2).  It's not that
the recipe doesn't work, or that the system is not functional in the end,
but a question of whether there's a duplication of effort involved or if
there's just a better way to do it for my specific requirements.

I understand that these questions stray well beyond the scope of this
mailing list, but at the same time, any references to the poky-tiny distro
probably won't be understood outside it.

Thanks,

John


On Wed, Dec 18, 2013 at 12:18 PM, Rudolf Streif <rstreif@linuxfoundation.org
> wrote:

> John,
>
> What is your actual problem? You appended the tiny-init recipe and your
> changes do or do not get put into the rootfs? If you could post your recipe
> then folks can look at it.
>
> As far as boot time is concerned, you need to distinguish boot loader and
> kernel boot from user space. It looks as if you are trying to optimize your
> user space boot time by using an image that starts less services. What
> services you need of course depends on your application. To optimize user
> space boot process you may also want to investigate systemd instead of SysV
> init.
>
> Rudi
>
>
> On Wed, Dec 18, 2013 at 8:26 AM, r10kindsofpeople <
> r10kindsofpeople@gmail.com> wrote:
>
>> I've been beating my head for a few days now, and would love a little
>> guidance.  Acknowledging that there are multiple ways to skin the cat, my
>> immediate goal is to reduce the boot time, presumably using poky-tiny.
>>
>> I have poky-tiny building for my hardware under dora.
>> I have it booting on crownbay hardware by copying the .ext2 image onto
>> the sdcard, installing grub, copying the .cpio.gz file on to the card, and
>> using grub to load the kernel image and initrd the filesystem.
>>
>> I'm wondering if that last bit about initrd is the 'best' option, or if I
>> should be overlaying a write-able filesystem on top of the original .ext2
>> file system?  How?
>>
>> And I'm pretty sure I've not got something right...I figured out how to
>> .bbappend the tiny-init recipe and get my own edits into 'init' and
>> 'rc.local', but it appears those files and changes made it into both the
>> ext2 file system and the .cpio.gz initrd file system.  On one hand, I'm
>> grateful since it works, but 'both' seems to point at me getting something
>> wrong.
>>
>> Any links to clear tutorials would be greatly appreciated.  There's a
>> wealth of information available on this topic, but none that seems
>> comprehensive (that I've found), and as I've said, each seems to take a
>> different approach, leaving out a step or two along the way.
>>
>> John
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>

--089e0111c09acdbee904edd3eb79
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Rudi,</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">From a first view, my problem i=
s that my embedded Yocto-Linux device takes too long from the application o=
f power to the time that it is first able to a) signal the user that the de=
vice is waking up and b) respond to events from I/O (Ethernet and CAN). =A0=
(40+ seconds prior to shifting to poky-tiny, not counting BIOS delays)</div=
>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">From anothe=
r view, my problem is a lack of understanding about the processes involved =
during that time, and how the poky-tiny distro is intended to be applied to=
 resolve the &#39;first view&#39; problem. =A0</div>
<div class=3D"gmail_extra"><br></div><div style=3D"font-family:arial,sans-s=
erif;font-size:13px"><span style=3D"font-family:arial;font-size:small">Yes,=
 poky-tiny produces an image that is both smaller and starts fewer services=
. =A0It also uses tiny-init which I believe is neither SysV init nor system=
d. =A0</span></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><span style=3D"f=
ont-family:arial;font-size:small"><br></span></div><div style=3D"font-famil=
y:arial,sans-serif;font-size:13px"><span style=3D"font-family:arial;font-si=
ze:small">Outside of the scope of poky-tiny, I need some way to boot my har=
dware, and the poky-tiny guides seem to stop once they&#39;re able to boot =
qemu. =A0If I simply create an ext2 boot partition on my sdcard and copy th=
e poky-tiny.ext2 image to it, nothing boots. =A0If I also install grub to t=
hat partition and provide a grub.cfg, I can boot. =A0(The selection of grub=
 as my boot loader may be my first mistake ?) =A0In that grub.cfg are two c=
ritical lines:</span><br>
</div><div class=3D"gmail_extra">1) linux /boot/bzImage root=3D/dev/mmcblk0=
p1 =A0</div><div class=3D"gmail_extra">and=A0</div><div class=3D"gmail_extr=
a">2) initrd /boot/core-image-minimal-crownbay.cpio.gz=A0</div><div class=
=3D"gmail_extra">
<br></div><div class=3D"gmail_extra">If I just do 1), I can boot quickly, b=
ut I can&#39;t do much else because the file system is mounted read-only. =
=A0I _want_ most of the file system to be read-only, but need to be able to=
 start the network and do some other &#39;normal&#39; tasks that require wr=
ite access to some areas of the file system. =A0Once my user space applicat=
ion is running, my app will use another (USB) device for persistent data st=
orage.</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If I also d=
o 2), more works and I can start the network, but of course the system take=
s a bit longer while it&#39;s loading the ramdisk. =A0If this is the expect=
ed and optimal mode of operation, then I&#39;m done. =A0But am I wrong in t=
hinking that the contents of the .cpio.gz file replaces all of what is in t=
he .ext2 image once it is loaded? =A0I&#39;m confused by the fact that file=
s I added to the tiny-init recipe end up in both the .ext2 file image (just=
 stage 1) and the resulting file system after both 1) &amp; 2). =A0It&#39;s=
 not that the recipe doesn&#39;t work, or that the system is not functional=
 in the end, but a question of whether there&#39;s a duplication of effort =
involved or if there&#39;s just a better way to do it for my specific requi=
rements.</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I understan=
d that these questions stray well beyond the scope of this mailing list, bu=
t at the same time, any references to the poky-tiny distro probably won&#39=
;t be understood outside it. =A0</div>
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Thanks,</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">John</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">
On Wed, Dec 18, 2013 at 12:18 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:rstreif@linuxfoundation.org" target=3D"_blank">rstreif@linuxfo=
undation.org</a>&gt;</span> wrote:<br></div><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">John,<div><br></div><div>What is your act=
ual problem? You appended the tiny-init recipe and your changes do or do no=
t get put into the rootfs? If you could post your recipe then folks can loo=
k at it.</div>
<div>
<br></div><div>As far as boot time is concerned, you need to distinguish bo=
ot loader and kernel boot from user space. It looks as if you are trying to=
 optimize your user space boot time by using an image that starts less serv=
ices. What services you need of course depends on your application. To opti=
mize user space boot process you may also want to investigate systemd inste=
ad of SysV init.</div>

<div><br></div><div>Rudi</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Wed, Dec 18, 2013 at 8:26 AM, r10kindsofpeople <span di=
r=3D"ltr">&lt;<a href=3D"mailto:r10kindsofpeople@gmail.com" target=3D"_blan=
k">r10kindsofpeople@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr">I&#39;ve been beating my head for a few d=
ays now, and would love a little guidance. =A0Acknowledging that there are =
multiple ways to skin the cat, my immediate goal is to reduce the boot time=
, presumably using poky-tiny. =A0<div>



<br></div><div>I have poky-tiny building for my hardware under dora.</div><=
div>I have it booting on crownbay hardware by copying the .ext2 image onto =
the sdcard, installing grub, copying the .cpio.gz file on to the card, and =
using grub to load the kernel image and initrd the filesystem.=A0</div>



<div><br></div><div>I&#39;m wondering if that last bit about initrd is the =
&#39;best&#39; option, or if I should be overlaying a write-able filesystem=
 on top of the original .ext2 file system? =A0How?</div><div><br></div><div=
>


And I&#39;m pretty sure I&#39;ve not got something right...I figured out ho=
w to .bbappend the tiny-init recipe and get my own edits into &#39;init&#39=
; and &#39;rc.local&#39;, but it appears those files and changes made it in=
to both the ext2 file system and the .cpio.gz initrd file system. =A0On one=
 hand, I&#39;m grateful since it works, but &#39;both&#39; seems to point a=
t me getting something wrong. =A0</div>


<div><br></div><div>Any links to clear tutorials would be greatly appreciat=
ed. =A0There&#39;s a wealth of information available on this topic, but non=
e that seems comprehensive (that I&#39;ve found), and as I&#39;ve said, eac=
h seems to take a different approach, leaving out a step or two along the w=
ay. =A0</div>


<div><br></div><div>John</div><div><br></div><div><br></div>
</div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><div><br></div>
</div></div>
</blockquote></div><br></div></div>

--089e0111c09acdbee904edd3eb79--
