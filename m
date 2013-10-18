Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02198E0162F
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 07:53:53 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id ld10so1968593pab.38
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 07:53:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=bTUmnJJkEoVBzkBZgDVFAV3u/2AeGaUMyZqAY8OUwoM=;
	b=H9n8djXwGel2jKUNjLomWwMjDWUUs35C6LY25obdrUP9YUVJ8AIpAVqQtTyxEyvSUt
	YnGkJ2/caR+EUnLtffxgzhs5P3ZvMyVy55jvEut+XoAErahMWuwpqhkKogBIQePsfUam
	YcUV1DxW3gP2oYvnb36NNpCpBfzFjujmIXeViAOY9/Na0tmLWw4cJabKftegacMI2iIQ
	BrtRbx3DIWqdtPnT6cjKfGzuBF7m5ImqRfFHh67M8ytGW81UWDuWI65CKp9p/2ugcAHk
	VuCaX0rpuGrPRn6OZJcSKpKyHmh7QuUotsh/r5IfCFPEVr1Zxayc2TU2lMEavUz/VGmJ
	0vKQ==
MIME-Version: 1.0
X-Received: by 10.66.218.198 with SMTP id pi6mr3895601pac.107.1382108032817;
	Fri, 18 Oct 2013 07:53:52 -0700 (PDT)
Received: by 10.68.72.2 with HTTP; Fri, 18 Oct 2013 07:53:52 -0700 (PDT)
In-Reply-To: <3555616.QMPuVAba6x@helios>
References: <CABwVrCoYn7Yju7Mw4NHYzEkJQaBS5_p0ENeV4adMBpmoUA+C5Q@mail.gmail.com>
	<3555616.QMPuVAba6x@helios>
Date: Fri, 18 Oct 2013 17:53:52 +0300
Message-ID: <CABwVrCoap+piFRHq8-kcc6GDA6ts_+8oPC7Ct=2gLYLQ9k+Yhw@mail.gmail.com>
From: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: external variable
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
X-List-Received-Date: Fri, 18 Oct 2013 14:53:57 -0000
Content-Type: multipart/alternative; boundary=047d7b5d3ebe56609504e9051ac9

--047d7b5d3ebe56609504e9051ac9
Content-Type: text/plain; charset=ISO-8859-1

I am currently trying  to copy using sed the variable into local.conf.
But: grep -q "^AAA=" ${BUILDDIR}/conf/local.conf && \
        sed "s/^AAA=.*/AAA="${D}"/" -i ${BUILDDIR}/conf/local.conf || \
        sed "$ a\AAA="${D}"" -i ${BUILDDIR}/conf/local.conf
Is giving me some errors, like:
ParseError: ParseError at
/media/sdc1/fb/alvd/test/buildToolchain/conf/local.conf:258: unparsed line:
'AAA=/media/sdc1/fb/alvd/test/buildToolchain/tmp/work/xxx-poky-linux/base-files/3.0.14-r73/image'

I`ll try resolving this error and remain with this solution because I can`t
seem to find a better one. For any ideas, here is my scenario:
My final scope is to copy from a kernel initramfs template some information
into rootfs.
I observed that base-files is creating the rootfs structure and I wanted to
copy the files in the <base-files_location>/image location. to be available
into the final rootfs archive.


Alex
.


On Fri, Oct 18, 2013 at 4:41 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Alex,
>
> On Friday 18 October 2013 15:19:57 jan alexandru vaduva wrote:
> > Is there any way of defining a variable into a recipe and use it in
> another.
> > I tried: export VAR="value" but when I tested it`s existence in devshell
> it
> > did not exist(echo $VAR).
>
> No, this is not possible. The only way you can share data between recipes
> like
> this is to write it into a file within the sysroot, or rely on it being
> specified for both recipes at the configuration level (although you've
> suggested
> the latter won't work for your situation).
>
> Can you elaborate on what exactly you're trying to achieve?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--047d7b5d3ebe56609504e9051ac9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I am currently trying=A0 to copy using sed =
the variable into local.conf.<br></div><div>But: grep -q &quot;^AAA=3D&quot=
; ${BUILDDIR}/conf/local.conf &amp;&amp; \<br>=A0=A0=A0=A0=A0=A0=A0 sed &qu=
ot;s/^AAA=3D.*/AAA=3D&quot;${D}&quot;/&quot; -i ${BUILDDIR}/conf/local.conf=
 || \<br>
=A0=A0=A0=A0=A0=A0=A0 sed &quot;$ a\AAA=3D&quot;${D}&quot;&quot; -i ${BUILD=
DIR}/conf/local.conf<br></div><div>Is giving me some errors, like:<br>Parse=
Error: ParseError at /media/sdc1/fb/alvd/test/buildToolchain/conf/local.con=
f:258: unparsed line: &#39;AAA=3D/media/sdc1/fb/alvd/test/buildToolchain/tm=
p/work/xxx-poky-linux/base-files/3.0.14-r73/image&#39;<br>
<br></div><div>I`ll try resolving this error and remain with this solution =
because I can`t seem to find a better one. For any ideas, here is my scenar=
io:<br></div>My final scope is to copy from a kernel initramfs template som=
e information into rootfs.<br>
</div>I observed that base-files is creating the rootfs structure and I wan=
ted to copy the files in the &lt;base-files_location&gt;/image location. to=
 be available into the final rootfs archive.<br><br><br></div>Alex<br><div>
.</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">=
On Fri, Oct 18, 2013 at 4:41 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@=
linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Alex,<br>
<div class=3D"im"><br>
On Friday 18 October 2013 15:19:57 jan alexandru vaduva wrote:<br>
&gt; Is there any way of defining a variable into a recipe and use it in an=
other.<br>
&gt; I tried: export VAR=3D&quot;value&quot; but when I tested it`s existen=
ce in devshell it<br>
&gt; did not exist(echo $VAR).<br>
<br>
</div>No, this is not possible. The only way you can share data between rec=
ipes like<br>
this is to write it into a file within the sysroot, or rely on it being<br>
specified for both recipes at the configuration level (although you&#39;ve =
suggested<br>
the latter won&#39;t work for your situation).<br>
<br>
Can you elaborate on what exactly you&#39;re trying to achieve?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--047d7b5d3ebe56609504e9051ac9--
