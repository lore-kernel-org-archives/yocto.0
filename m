Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mailgate1.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16571E01560
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 23:10:20 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r5C6AI2D021599;
	Tue, 11 Jun 2013 23:10:18 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Tue, 11 Jun 2013 23:10:17 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: Gaurang Shastri <gmshastri@gmail.com>
Date: Tue, 11 Jun 2013 23:10:17 -0700
Thread-Topic: [yocto] SOLVED: How to get mkfs.ext4 in rootfs package
Thread-Index: Ac5nM4IvxGbsGVEBRnypPFQAjtSAdA==
Message-ID: <089E25F3-1F2C-42B0-933D-833A2181CB72@spidercloud.com>
References: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
	<CCC55643-4330-4AE6-B2D8-AD5E47E486DC@spidercloud.com>
	<CAE_REAuG+FZkFSMjjdPJ7SEGDVsdc1Snq0BEtWoVuh_SgDKjyQ@mail.gmail.com>
In-Reply-To: <CAE_REAuG+FZkFSMjjdPJ7SEGDVsdc1Snq0BEtWoVuh_SgDKjyQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SOLVED: How to get mkfs.ext4 in rootfs package
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
X-List-Received-Date: Wed, 12 Jun 2013 06:10:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_089E25F31F2C42B0933D833A2181CB72spidercloudcom_"

--_000_089E25F31F2C42B0933D833A2181CB72spidercloudcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Gaurang,

On Jun 11, 2013, at 10:47 PM, Gaurang Shastri <gmshastri@gmail.com<mailto:g=
mshastri@gmail.com>> wrote:

Can you try with IMAGE_INSTALL_append =3D " e2fsprogs" and run once again "=
bitbake core-image-minimal" or whatever you are referring for your final ta=
rget

The 'e2fsprogs' target adds libs, but not the executables.  I needed to add=
 'e2fsprogs-mke2fs' to get what I wanted.

regards,
Ben

//Gaurang Shastri


On Wed, Jun 12, 2013 at 1:06 AM, Ben Warren <Ben.Warren@spidercloud.com<mai=
lto:Ben.Warren@spidercloud.com>> wrote:
Sorry for the spam.  Still learning how this works=85

Turns out I needed 'e2fsprogs-mke2fs'

regards,
Ben

On Jun 11, 2013, at 10:51 AM, Ben Warren <Ben.Warren@spidercloud.com<mailto=
:Ben.Warren@spidercloud.com>> wrote:

> Hi,
>
> I'm trying to get the 'mkfs.ext4' binary from e2fsprogs into my image, in=
 particular the '.ext3' rootfs image, and am obviously missing something fu=
ndamental.
> I'm using a custom image based on (copy/pasted from) 'kvm_image_minimal',=
 and have added 'e2fsprogs' to the IMAGE_INSTALL string in the image descri=
ptor file.
>
> I see that the library is compiling and the binary is in tmp/sysroots:
>
> ben@ubuntu-scw:/opt/scw-appscard-build$ ls tmp/sysroots/x86_64-linux/sbin=
/mkfs.*
> tmp/sysroots/x86_64-linux/sbin/mkfs.ext2  tmp/sysroots/x86_64-linux/sbin/=
mkfs.ext4     tmp/sysroots/x86_64-linux/sbin/mkfs.minix
> tmp/sysroots/x86_64-linux/sbin/mkfs.ext3  tmp/sysroots/x86_64-linux/sbin/=
mkfs.ext4dev
>
> but it's not making it to the rootfs images.
>
> I've tried to read the documentation but still am not quite sure about wh=
at defines the contents of the rootfs images.
>
> thanks,
> Ben
>
>

_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--_000_089E25F31F2C42B0933D833A2181CB72spidercloudcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-=
mode: space; -webkit-line-break: after-white-space; ">Hi Gaurang,<div><br><=
div><div>On Jun 11, 2013, at 10:47 PM, Gaurang Shastri &lt;<a href=3D"mailt=
o:gmshastri@gmail.com">gmshastri@gmail.com</a>&gt; wrote:</div><br class=3D=
"Apple-interchange-newline"><blockquote type=3D"cite"><div dir=3D"ltr"><div=
>Can you try with IMAGE_INSTALL_append =3D " e2fsprogs" and run once again =
"bitbake core-image-minimal" or whatever you are referring for your final t=
arget<br><br></div></div></blockquote>The 'e2fsprogs' target adds libs, but=
 not the executables. &nbsp;I needed to add 'e2fsprogs-mke2fs' to get what =
I wanted.</div><div><br></div><div>regards,</div><div>Ben</div><div><br><bl=
ockquote type=3D"cite"><div dir=3D"ltr">//Gaurang Shastri<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jun 12, 2013 at 1:06 AM, Ben Warren <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:Ben.Warren@spidercloud.com" target=3D"_blank">Ben.Warren@spidercloud.com<=
/a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Sorry for the spam. &nbsp;Still learning how=
 this works=85<br>
<br>
Turns out I needed 'e2fsprogs-mke2fs'<br>
<br>
regards,<br>
Ben<br>
<br>
On Jun 11, 2013, at 10:51 AM, Ben Warren &lt;<a href=3D"mailto:Ben.Warren@s=
pidercloud.com">Ben.Warren@spidercloud.com</a>&gt; wrote:<br>
<br>
&gt; Hi,<br>
&gt;<br>
&gt; I'm trying to get the 'mkfs.ext4' binary from e2fsprogs into my image,=
 in particular the '.ext3' rootfs image, and am obviously missing something=
 fundamental.<br>
&gt; I'm using a custom image based on (copy/pasted from) 'kvm_image_minima=
l', and have added 'e2fsprogs' to the IMAGE_INSTALL string in the image des=
criptor file.<br>
&gt;<br>
&gt; I see that the library is compiling and the binary is in tmp/sysroots:=
<br>
&gt;<br>
&gt; ben@ubuntu-scw:/opt/scw-appscard-build$ ls tmp/sysroots/x86_64-linux/s=
bin/mkfs.*<br>
&gt; tmp/sysroots/x86_64-linux/sbin/mkfs.ext2 &nbsp;tmp/sysroots/x86_64-lin=
ux/sbin/mkfs.ext4 &nbsp; &nbsp; tmp/sysroots/x86_64-linux/sbin/mkfs.minix<b=
r>
&gt; tmp/sysroots/x86_64-linux/sbin/mkfs.ext3 &nbsp;tmp/sysroots/x86_64-lin=
ux/sbin/mkfs.ext4dev<br>
&gt;<br>
&gt; but it's not making it to the rootfs images.<br>
&gt;<br>
&gt; I've tried to read the documentation but still am not quite sure about=
 what defines the contents of the rootfs images.<br>
&gt;<br>
&gt; thanks,<br>
&gt; Ben<br>
&gt;<br>
&gt;<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>
</blockquote></div><br></div></body></html>=

--_000_089E25F31F2C42B0933D833A2181CB72spidercloudcom_--
