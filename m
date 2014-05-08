Return-Path: <rob.woolleywr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B3E2E00B47; Thu,  8 May 2014 11:50:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rob.woolleywr[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1587 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 11:50:04 PDT
Received: from mail-qg0-f53.google.com (unknown [209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 976F4E00B3D
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 11:50:04 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id f51so3237034qge.40
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 11:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fxyVI4EchgXSBp9j0y79gYs0KwogVkpkMGZhI9VdtwQ=;
	b=mMvjxY96iQ/krr6ZqJIA+V34AFTqv65ZMnJ1WDH8y8r5SuCA45T2JNdEKfZ6Al7A2P
	RJODVMyBgkLp/BS8xWoZvS2GCKUCuVjEhE8i6EwfGta4olRN6lMdqUxmfYp/S84HT5wv
	X9NR735h3KLRG/Z5oSwN94A21Rk20V56BBUelPvC55BRauxf93qOHz/Ol+5DIO716Kz+
	Fp0ZahP/9YXyLSgFitc3ePTw4K2fScQ5xgERh7lHbuu+OtUs4eBp50TJVas2CW1rO4QE
	//3baLJeqxB35Ivo7FKmugHjfuw+y7gObrQua9vQt355kTpXhFVMAmZFEtD9TRIR0w/q
	TeNg==
MIME-Version: 1.0
X-Received: by 10.140.101.99 with SMTP id t90mr7141325qge.115.1399573416847;
	Thu, 08 May 2014 11:23:36 -0700 (PDT)
Received: by 10.96.32.163 with HTTP; Thu, 8 May 2014 11:23:36 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1405081346150.9802@localhost>
References: <alpine.LFD.2.11.1405080318520.27694@localhost>
	<CAMCfZKFHCLp2aJJQU4LEQ7nd4_NtNuOgy-ghYFaqAzO5-qtzkw@mail.gmail.com>
	<alpine.LFD.2.11.1405081346150.9802@localhost>
Date: Thu, 8 May 2014 14:23:36 -0400
Message-ID: <CAGAhMBxYGSKLeNvNqTH9g5-Fm+0hpOM3ysAx-AOXRZSAaabbww@mail.gmail.com>
From: Rob Woolley <rob.woolleywr@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple simple questions on building for intel galileo
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
X-List-Received-Date: Thu, 08 May 2014 18:50:08 -0000
Content-Type: multipart/alternative; boundary=001a11c167c8592d3a04f8e794d9

--001a11c167c8592d3a04f8e794d9
Content-Type: text/plain; charset=UTF-8

Hi Rob,

Have you seen the Quark BSP Build Guide?

https://communities.intel.com/servlet/JiveServlet/previewBody/21882-102-1-25153/Quark_BSPBuildGuide_329687_001.pdf

Regards,
Rob



On Thu, May 8, 2014 at 1:58 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Thu, 8 May 2014, Diego Sueiro wrote:
>
> > Robert,
> > Here is some instructions with some workarounds:
> >
> http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buildinglinuximage
> >
> > And I think that you already saw meta-intel-iot-devkit:
> > http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-devkit/
>
>   at the moment, i am at my wit's end trying to build a simple
> bootable SD card for the galileo, and since i need one of those to
> boot my eventual yocto build, i figure this is at least remotely on
> topic.
>
>   what is the proper and acceptable format for a bootable SD card for
> the galileo, and how does one boot from it? i have read *numerous*
> online recipes, all of which differ subtlely but maddeningly from one
> another. there is an alleged linux image file one can download:
>
>   LINUX_IMAGE_FOR_SD_Intel_Galileo_v0.7.5.7z
>
> which uncompresses and unloads into the following:
>
> ./core-image-minimal-initramfs-clanton.cpio.gz
> ./bzImage
> ./image-full-clanton.ext3
> ./boot
> ./boot/grub
> ./boot/grub/grub.conf
>
> but how one "installs" that on an SD card that is bootable by a
> galileo board is a mystery i have yet to fathom, and various recipes
> online differ in what they think is required:
>
> * some recipes insist the filesystem must be FAT or FAT16, while
> others claim FAT or FAT32
> * one recipe will claim that the partition must be bootable, another
> insists it works without that
> * some recipes explain that the SD card should contain one partition
> (as in, you know, /dev/sdc1), while another recipe *appears* to claim
> that you need to format the *raw* SD card as a FAT partition
>
>   i have tried various incantations of fdisk and mkfs and so on, to
> the point where i am quite prepared to toss this board out a second
> story window.
>
>   can anyone point me at a set of instructions that will give me a
> bootable SD card for this board?
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c167c8592d3a04f8e794d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rob,<div><br></div><div>Have you seen the Quark BS=
P Build Guide?</div><div><br></div><div><a href=3D"https://communities.inte=
l.com/servlet/JiveServlet/previewBody/21882-102-1-25153/Quark_BSPBuildGuide=
_329687_001.pdf">https://communities.intel.com/servlet/JiveServlet/previewB=
ody/21882-102-1-25153/Quark_BSPBuildGuide_329687_001.pdf</a></div>
<div><br></div><div>Regards,</div><div>Rob</div></div><div><br></div><div c=
lass=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, May 8, 2014=
 at 1:58 PM, Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjda=
y@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span> wr=
ote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"">On Thu, 8 May 2014, Diego Sueiro wrote:<br=
>
<br>
</div><div class=3D"">&gt; Robert,<br>
&gt; Here is some instructions with some workarounds:<br>
&gt; <a href=3D"http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buil=
dinglinuximage" target=3D"_blank">http://www.malinov.com/Home/sergey-s-blog=
/intelgalileo-buildinglinuximage</a><br>
&gt;<br>
&gt; And I think that you already saw meta-intel-iot-devkit:<br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-de=
vkit/" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/meta-int=
el-iot-devkit/</a><br>
<br>
</div>=C2=A0 at the moment, i am at my wit&#39;s end trying to build a simp=
le<br>
bootable SD card for the galileo, and since i need one of those to<br>
boot my eventual yocto build, i figure this is at least remotely on<br>
topic.<br>
<br>
=C2=A0 what is the proper and acceptable format for a bootable SD card for<=
br>
the galileo, and how does one boot from it? i have read *numerous*<br>
online recipes, all of which differ subtlely but maddeningly from one<br>
another. there is an alleged linux image file one can download:<br>
<br>
=C2=A0 LINUX_IMAGE_FOR_SD_Intel_Galileo_v0.7.5.7z<br>
<br>
which uncompresses and unloads into the following:<br>
<br>
./core-image-minimal-initramfs-clanton.cpio.gz<br>
./bzImage<br>
./image-full-clanton.ext3<br>
./boot<br>
./boot/grub<br>
./boot/grub/grub.conf<br>
<br>
but how one &quot;installs&quot; that on an SD card that is bootable by a<b=
r>
galileo board is a mystery i have yet to fathom, and various recipes<br>
online differ in what they think is required:<br>
<br>
* some recipes insist the filesystem must be FAT or FAT16, while<br>
others claim FAT or FAT32<br>
* one recipe will claim that the partition must be bootable, another<br>
insists it works without that<br>
* some recipes explain that the SD card should contain one partition<br>
(as in, you know, /dev/sdc1), while another recipe *appears* to claim<br>
that you need to format the *raw* SD card as a FAT partition<br>
<br>
=C2=A0 i have tried various incantations of fdisk and mkfs and so on, to<br=
>
the point where i am quite prepared to toss this board out a second<br>
story window.<br>
<br>
=C2=A0 can anyone point me at a set of instructions that will give me a<br>
bootable SD card for this board?<br>
<div class=3D""><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ottawa, Ontario, CA=
NADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" target=3D"_blank">http://crash=
course.ca</a><br>
<br>
Twitter: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=
=3D"http://twitter.com/rpjday" target=3D"_blank">http://twitter.com/rpjday<=
/a><br>
LinkedIn: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://ca.linkedin.com=
/in/rpjday" target=3D"_blank">http://ca.linkedin.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--001a11c167c8592d3a04f8e794d9--
