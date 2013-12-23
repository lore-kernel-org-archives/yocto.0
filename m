Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3BCFE006CA
	for <yocto@yoctoproject.org>; Sun, 22 Dec 2013 21:15:51 -0800 (PST)
Received: by mail-la0-f44.google.com with SMTP id ep20so2087183lab.3
	for <yocto@yoctoproject.org>; Sun, 22 Dec 2013 21:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=B6y5d5zYgQvY0UrC1xxG4RWUb2O12uvEtNEsVD/vtR4=;
	b=QV9G5U2bRh3mbnj6HA9hp3SV6DgDqqnLhfNtvtKIjEVEUz1MZtCRrocbOVj0m3LVjE
	JPfPo0SkPX/F/Msma/lJSEEBRTVnzhapg8Yo2y82YQnh8QZRwPAx6vHvdmc67GwFO+JT
	xLYU23dUsWiAVJrW89ZiLwYtd2qg+v5HYPi3Ja/OhJLQpues5lNtQuyAkCo11mxD3pBg
	an98tmdE8oIlvrdzqR3u9Io6s2oF8Z/zSP582/9OsvUji+gx14zcQVQig9VO/pD4mFLQ
	ZwG8g5w6iB5kObLdWNBYwpv9sUaGN2S4cdR/vYwaeTS5h4dY+v7elF6uE/JoTx8IvqCh
	yi9A==
MIME-Version: 1.0
X-Received: by 10.112.130.35 with SMTP id ob3mr9339712lbb.2.1387775749880;
	Sun, 22 Dec 2013 21:15:49 -0800 (PST)
Received: by 10.114.2.229 with HTTP; Sun, 22 Dec 2013 21:15:49 -0800 (PST)
In-Reply-To: <CANJvwR8ADbGvMcZUxOyWwUtqqa6tsCohE8cSqxVS6GDXiMGQ1Q@mail.gmail.com>
References: <1161C063FEBDA543A6BFB93ABED841421B4AF870C1@SGPMBX05.APAC.bosch.com>
	<CANJvwR8ADbGvMcZUxOyWwUtqqa6tsCohE8cSqxVS6GDXiMGQ1Q@mail.gmail.com>
Date: Mon, 23 Dec 2013 10:45:49 +0530
Message-ID: <CAE_REAu86u_sATDxVJK2KM=hPnRD5Yp7Ce2O1EWvZSFJjqjy=A@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Sathishkumar Duraisamy <sathishkumar.duraisamy@yahoo.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build fails for eglibc
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
X-List-Received-Date: Mon, 23 Dec 2013 05:15:56 -0000
Content-Type: multipart/alternative; boundary=047d7b3a8434997eb604ee2cb865

--047d7b3a8434997eb604ee2cb865
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

I would like you to refer:

http://lists.openembedded.org/pipermail/openembedded-core/2013-April/077748=
.html
 https://bugzilla.redhat.com/show_bug.cgi?id=3D304121

This seems to be rpath issue with trailing "/". FYI, I already tried
Poky-dora with "qemuarm" but didnt get this issue.

//Gaurang Shastri



On Sat, Dec 21, 2013 at 7:58 PM, Sathishkumar Duraisamy <
sathishkumar.duraisamy@yahoo.com> wrote:

>
>
>  Hi,
>
> I using Poky-dora-10.0.0. configured for qemuarm. I am getting failed for
> eglibc with following errors. Any idea to fix this?
>
> ERROR: debugedit failed with exit code 256 (cmd was
> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//sysroot=
s/i686-linux/usr/lib/rpm/bin/debugedit'
> -b
> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/ar=
mv5te-poky-linux-gnueabi'
> -d '/usr/src/debug' -i -l
> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/ar=
mv5te-poky-linux-gnueabi/eglibc/2.18-r0/debugsources.list'
> '/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/ar=
mv5te-poky-linux-gnueabi/eglibc/2.18-r0/package/lib/
> libm-2.18.so'):
> /home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp/sysroots/=
i686-linux/usr/lib/rpm/bin/debugedit:
> canonicalization unexpectedly shrank by one character
> ERROR: Function failed: split_and_strip_files
> ERROR: Logfile of failure stored in:
> /home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//work/arm=
v5te-poky-linux-gnueabi/eglibc/2.18-r0/temp/log.do_package.516
> ERROR: Task 12
> (/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/meta/recipes-core/=
eglibc/
> eglibc_2.18.bb, do_package) failed with exit code '1'
>
>
> Mit freundlichen Gr=FC=DFen / Regards
> Sathishkumar D
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b3a8434997eb604ee2cb865
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I would like you to refer:=
<br>=A0<a href=3D"http://lists.openembedded.org/pipermail/openembedded-core=
/2013-April/077748.html">http://lists.openembedded.org/pipermail/openembedd=
ed-core/2013-April/077748.html</a><br>
=A0<a href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D304121">https:/=
/bugzilla.redhat.com/show_bug.cgi?id=3D304121</a><br><br></div>This seems t=
o be rpath issue with trailing &quot;/&quot;. FYI, I already tried Poky-dor=
a with &quot;qemuarm&quot; but didnt get this issue.<br>
<br></div>//Gaurang Shastri<br><div><div><br></div></div></div><div class=
=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Sat, Dec 21, 2013 at=
 7:58 PM, Sathishkumar Duraisamy <span dir=3D"ltr">&lt;<a href=3D"mailto:sa=
thishkumar.duraisamy@yahoo.com" target=3D"_blank">sathishkumar.duraisamy@ya=
hoo.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div class=3D"gmail_quo=
te"><br>






<div>
<font face=3D"Arial, sans-serif">
<div>Hi,</div>
<div>=A0</div>
<div>I using Poky-dora-10.0.0. configured for qemuarm. I am getting failed =
for eglibc with following errors. Any idea to fix this?</div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div>ERROR: debugedit failed with exit code 256 (cmd was &#39;/home/sdu2cob=
/workspace/YoctoProject/poky-dora-10.0.0/build/tmp//sysroots/i686-linux/usr=
/lib/rpm/bin/debugedit&#39; -b &#39;/home/sdu2cob/workspace/YoctoProject/po=
ky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi&#39;
-d &#39;/usr/src/debug&#39; -i -l &#39;/home/sdu2cob/workspace/YoctoProject=
/poky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18-r0=
/debugsources.list&#39; &#39;/home/sdu2cob/workspace/YoctoProject/poky-dora=
-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18-r0/package/l=
ib/<a href=3D"http://libm-2.18.so" target=3D"_blank">libm-2.18.so</a>&#39;)=
:</div>



<div>/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/build/tmp/sysroo=
ts/i686-linux/usr/lib/rpm/bin/debugedit: canonicalization unexpectedly shra=
nk by one character</div>
<div>ERROR: Function failed: split_and_strip_files</div>
<div>ERROR: Logfile of failure stored in: /home/sdu2cob/workspace/YoctoProj=
ect/poky-dora-10.0.0/build/tmp//work/armv5te-poky-linux-gnueabi/eglibc/2.18=
-r0/temp/log.do_package.516</div>
<div>ERROR: Task 12 (/home/sdu2cob/workspace/YoctoProject/poky-dora-10.0.0/=
meta/recipes-core/eglibc/<a href=3D"http://eglibc_2.18.bb" target=3D"_blank=
">eglibc_2.18.bb</a>, do_package) failed with exit code &#39;1&#39;</div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Bosch Office Sans, sans-serif">Mit freundlichen Gr=FC=DF=
en / Regards</font></div>
<div><font face=3D"Bosch Office Sans, sans-serif">Sathishkumar D</font></di=
v>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
<div><font face=3D"Calibri, sans-serif">=A0</font></div>
</font>
</div>

</div><br></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b3a8434997eb604ee2cb865--
