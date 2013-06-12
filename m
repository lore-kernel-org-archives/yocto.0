Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC753E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 00:56:26 -0700 (PDT)
Received: by mail-lb0-f173.google.com with SMTP id v1so3477145lbd.4
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 00:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GxbE5uopkupoI9Cxkve/eKbVHRTkldaWPnHqeNAJQKY=;
	b=s5OgqFCJQWbw019mPE1AmusQ5GuR8LfbhoLbNx9PBf9tDJLMqj4R+z2QEEUE7q6rhQ
	UXJqUkNGr/kYdJ/ChLG2i7FgOZIVLPzm1JVF/laov0oqK/z+WsPG3Ce+ZA8c2OemUtDJ
	VhbodMKZ4q0B/1CHLE6KodLlmDSL5hWkXhAwIoH3SStKbayj9cHuyADaOjMR4a7sXNwp
	hrYkeFt1e1ZbtuQIQgJ1N2p5XBMVszDuyvbPLeYCOd3op/u2t9oa0HrTjZ+0pWzpL1No
	4glyr909NxOz3Nlk93rkFqBXSUgMBwAmie4UjOvjVzuSBeTjUBntxk6UWv+tUdW1W1tQ
	KcMQ==
MIME-Version: 1.0
X-Received: by 10.152.88.105 with SMTP id bf9mr7470652lab.38.1371023784770;
	Wed, 12 Jun 2013 00:56:24 -0700 (PDT)
Received: by 10.114.58.72 with HTTP; Wed, 12 Jun 2013 00:56:24 -0700 (PDT)
In-Reply-To: <089E25F3-1F2C-42B0-933D-833A2181CB72@spidercloud.com>
References: <0E1D49D2-4C56-45AC-AB70-2EA8261EE4D8@spidercloud.com>
	<CCC55643-4330-4AE6-B2D8-AD5E47E486DC@spidercloud.com>
	<CAE_REAuG+FZkFSMjjdPJ7SEGDVsdc1Snq0BEtWoVuh_SgDKjyQ@mail.gmail.com>
	<089E25F3-1F2C-42B0-933D-833A2181CB72@spidercloud.com>
Date: Wed, 12 Jun 2013 13:26:24 +0530
Message-ID: <CAE_REAt+H2qY_qU=j217DNR_Ps9dicjOauGjXtiS6As-iGAWGg@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Ben Warren <Ben.Warren@spidercloud.com>
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
X-List-Received-Date: Wed, 12 Jun 2013 07:56:28 -0000
Content-Type: multipart/alternative; boundary=001a11c36722ab823204def0597b

--001a11c36722ab823204def0597b
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Yes, as per e2fsprogs.bb file,

PACKAGES =3D+ "e2fsprogs-e2fsck e2fsprogs-mke2fs e2fsprogs-tune2fs
e2fsprogs-badblocks"
..
FILES_e2fsprogs-mke2fs =3D "${base_sbindir}/mke2fs
${base_sbindir}/mkfs.ext* ${sysconfdir}/mke2fs.conf"

But finally you got what you want :)

//Gaurang Shastri




On Wed, Jun 12, 2013 at 11:40 AM, Ben Warren <Ben.Warren@spidercloud.com>wr=
ote:

> Hi Gaurang,
>
> On Jun 11, 2013, at 10:47 PM, Gaurang Shastri <gmshastri@gmail.com> wrote=
:
>
> Can you try with IMAGE_INSTALL_append =3D " e2fsprogs" and run once again
> "bitbake core-image-minimal" or whatever you are referring for your final
> target
>
> The 'e2fsprogs' target adds libs, but not the executables.  I needed to
> add 'e2fsprogs-mke2fs' to get what I wanted.
>
> regards,
> Ben
>
> //Gaurang Shastri
>
>
> On Wed, Jun 12, 2013 at 1:06 AM, Ben Warren <Ben.Warren@spidercloud.com>w=
rote:
>
>> Sorry for the spam.  Still learning how this works=85
>>
>> Turns out I needed 'e2fsprogs-mke2fs'
>>
>> regards,
>> Ben
>>
>> On Jun 11, 2013, at 10:51 AM, Ben Warren <Ben.Warren@spidercloud.com>
>> wrote:
>>
>> > Hi,
>> >
>> > I'm trying to get the 'mkfs.ext4' binary from e2fsprogs into my image,
>> in particular the '.ext3' rootfs image, and am obviously missing somethi=
ng
>> fundamental.
>> > I'm using a custom image based on (copy/pasted from)
>> 'kvm_image_minimal', and have added 'e2fsprogs' to the IMAGE_INSTALL str=
ing
>> in the image descriptor file.
>> >
>> > I see that the library is compiling and the binary is in tmp/sysroots:
>> >
>> > ben@ubuntu-scw:/opt/scw-appscard-build$ ls
>> tmp/sysroots/x86_64-linux/sbin/mkfs.*
>> > tmp/sysroots/x86_64-linux/sbin/mkfs.ext2
>>  tmp/sysroots/x86_64-linux/sbin/mkfs.ext4
>> tmp/sysroots/x86_64-linux/sbin/mkfs.minix
>> > tmp/sysroots/x86_64-linux/sbin/mkfs.ext3
>>  tmp/sysroots/x86_64-linux/sbin/mkfs.ext4dev
>> >
>> > but it's not making it to the rootfs images.
>> >
>> > I've tried to read the documentation but still am not quite sure about
>> what defines the contents of the rootfs images.
>> >
>> > thanks,
>> > Ben
>> >
>> >
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>
>

--001a11c36722ab823204def0597b
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, as per <a href=3D"http://e2fsprogs.bb">e2fsprogs.bb</=
a> file,<br><br><pre><code>PACKAGES =3D+ &quot;e2fsprogs-e2fsck e2fsprogs-m=
ke2fs e2fsprogs-tune2fs e2fsprogs-badblocks&quot;<br>..<br></code><code>FIL=
ES_e2fsprogs-mke2fs =3D &quot;${base_sbindir}/mke2fs ${base_sbindir}/mkfs.e=
xt* ${sysconfdir}/mke2fs.conf&quot;</code><br>
<br></pre><pre>But finally you got what you want :)<br><br></pre><pre>//Gau=
rang Shastri<br></pre><br></div><div class=3D"gmail_extra"><br><br><div cla=
ss=3D"gmail_quote">On Wed, Jun 12, 2013 at 11:40 AM, Ben Warren <span dir=
=3D"ltr">&lt;<a href=3D"mailto:Ben.Warren@spidercloud.com" target=3D"_blank=
">Ben.Warren@spidercloud.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word">Hi Gaura=
ng,<div><br><div><div class=3D"im"><div>On Jun 11, 2013, at 10:47 PM, Gaura=
ng Shastri &lt;<a href=3D"mailto:gmshastri@gmail.com" target=3D"_blank">gms=
hastri@gmail.com</a>&gt; wrote:</div>
<br><blockquote type=3D"cite"><div dir=3D"ltr"><div>Can you try with IMAGE_=
INSTALL_append =3D &quot; e2fsprogs&quot; and run once again &quot;bitbake =
core-image-minimal&quot; or whatever you are referring for your final targe=
t<br>
<br></div></div></blockquote></div>The &#39;e2fsprogs&#39; target adds libs=
, but not the executables. =A0I needed to add &#39;e2fsprogs-mke2fs&#39; to=
 get what I wanted.</div><div><br></div><div>regards,</div><div>Ben</div>
<div><div class=3D"h5"><div><br><blockquote type=3D"cite"><div dir=3D"ltr">=
//Gaurang Shastri<br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jun 12, 2013 at 1:06 AM, Ben Warren <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:Ben.Warren@spidercloud.com" target=3D"_blank">Ben.Warren@spidercloud.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Sorry for the spam. =A0Still learning how th=
is works=85<br>
<br>
Turns out I needed &#39;e2fsprogs-mke2fs&#39;<br>
<br>
regards,<br>
Ben<br>
<br>
On Jun 11, 2013, at 10:51 AM, Ben Warren &lt;<a href=3D"mailto:Ben.Warren@s=
pidercloud.com" target=3D"_blank">Ben.Warren@spidercloud.com</a>&gt; wrote:=
<br>
<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m trying to get the &#39;mkfs.ext4&#39; binary from e2fsprogs in=
to my image, in particular the &#39;.ext3&#39; rootfs image, and am obvious=
ly missing something fundamental.<br>
&gt; I&#39;m using a custom image based on (copy/pasted from) &#39;kvm_imag=
e_minimal&#39;, and have added &#39;e2fsprogs&#39; to the IMAGE_INSTALL str=
ing in the image descriptor file.<br>
&gt;<br>
&gt; I see that the library is compiling and the binary is in tmp/sysroots:=
<br>
&gt;<br>
&gt; ben@ubuntu-scw:/opt/scw-appscard-build$ ls tmp/sysroots/x86_64-linux/s=
bin/mkfs.*<br>
&gt; tmp/sysroots/x86_64-linux/sbin/mkfs.ext2 =A0tmp/sysroots/x86_64-linux/=
sbin/mkfs.ext4 =A0 =A0 tmp/sysroots/x86_64-linux/sbin/mkfs.minix<br>
&gt; tmp/sysroots/x86_64-linux/sbin/mkfs.ext3 =A0tmp/sysroots/x86_64-linux/=
sbin/mkfs.ext4dev<br>
&gt;<br>
&gt; but it&#39;s not making it to the rootfs images.<br>
&gt;<br>
&gt; I&#39;ve tried to read the documentation but still am not quite sure a=
bout what defines the contents of the rootfs images.<br>
&gt;<br>
&gt; thanks,<br>
&gt; Ben<br>
&gt;<br>
&gt;<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>
</blockquote></div><br></div></div></div></div></blockquote></div><br></div=
>

--001a11c36722ab823204def0597b--
