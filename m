Return-Path: <gmshastri@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E24AFE01439
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 01:10:06 -0700 (PDT)
Received: by mail-lb0-f174.google.com with SMTP id u10so346055lbi.33
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 01:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=tPVRLxJUDeoms2nbEGhD0dglih1jvOzm4Gm449fmgS4=;
	b=nCsRaSqSpOKbUXyQCPmaRk96fauBu7AraetL6XMH5g28Ue5Vq8zunJaAAmivKQSysJ
	CuVNXRUg1vwmBd+2HcIL4xhNgzcZ9qMXJAHgS9GHgpfsUW+rDjFPxbpAiztQ1z2uLEho
	G4MC4e34ZlL+GjjRg5MtclTjAfVD+Yy1QyFVJ5w+Kkyv5ra2GOiWmxtv7Z7ph3xkZO97
	KHsxAGxD6/r3mWavtMgLr0FUL6/dCwmgQLVOQzpSwb7RBNn568yG+byEuWNRk8qevfLN
	cGIo0x8xrKMzjyPAtgeYN2tHOAIOu5+miJvySHbnsAtm1QFfRJbAMYtAS/GrW8CD9zP1
	AE2Q==
MIME-Version: 1.0
X-Received: by 10.112.188.161 with SMTP id gb1mr12526838lbc.107.1370333405443; 
	Tue, 04 Jun 2013 01:10:05 -0700 (PDT)
Received: by 10.114.58.72 with HTTP; Tue, 4 Jun 2013 01:10:05 -0700 (PDT)
In-Reply-To: <CAD71xELiPm0A46qyJBkfx+r4nFBZsXUcFDz6XZLvpQVgoSc0+Q@mail.gmail.com>
References: <CAD71xELiPm0A46qyJBkfx+r4nFBZsXUcFDz6XZLvpQVgoSc0+Q@mail.gmail.com>
Date: Tue, 4 Jun 2013 13:40:05 +0530
Message-ID: <CAE_REAs7DPMq50_76OexropsFo7ztoSfvbXpj1mKxpg_ANkC=g@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Marcelo Valle <mvalleavila@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error including meta-oracle-java in custom image
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
X-List-Received-Date: Tue, 04 Jun 2013 08:10:07 -0000
Content-Type: multipart/alternative; boundary=001a11c36daedafb8f04de4f9b48

--001a11c36daedafb8f04de4f9b48
Content-Type: text/plain; charset=ISO-8859-1

Dear Marcelo Valle,

I hope you have visited this page before adding meta-oracle-java layer:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/tree/README

The above link provides help how to add this into final image. May above
will help you.

//Gaurang Shastri




On Tue, Jun 4, 2013 at 1:11 PM, Marcelo Valle <mvalleavila@gmail.com> wrote:

> Hello,
>
> Sorry for last message, i send it incomplete by mistake!
>
> I'm triying to include oracle java in my custom image and i'm having some
> troubles to accomplish it.
>
> After include oracle-jse-jre-x86-64_1.7.0.bb recipe in IMAGE_INSTALL var
> and build the image the following errors appears:
>
> 1.
> Fetcher failure for URL: '
> http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz'.
> Checksum mismatch!
>
> If this change is expected (e.g. you have upgraded to a new version
> without updating the checksums) then you can use these lines within the
> recipe:
> SRC_URI[md5sum] = "
> 81ee08846975d4b8d46acf3b6eddf103"
> SRC_URI[sha256sum] =
> "80212f7748c2671b89b6085000717c747851db004409dce3bb97f3a2aeb91cdd"
>
> To fix it i've update oracle-jse-jre-x86-64_1.7.0.bb with these checksum.
> I build the image again and new error appears
>
> --------------------------------------------
>
> 2.
> Function failed: Unpack failure for URL: '
> http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz
> '
>
> Unpacking
> /home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-linux-x64.tar.gz
> gzip: stdin: not in gzip format
>
> So i decide to download the file directly from oracle page and copy in
> build/downloads directory.
> After that i have new error:
>
> ---------------------------------------------
>
> 3.
> ERROR: objcopy failed with exit code 1 (cmd was
> 'x86_64-poky-linux-objcopy'
> --add-gnu-debuglink='/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/.debug/libjsig.so'
> '/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/libjsig.so')
> ERROR: Function failed: split_and_strip_files
>
> To fix it I include INHIBIT_PACKAGE_STRIP = "1"  in
> oracle-jse-jre-x86-64_1.7.0.bb file
>
> ----------------------------------------------
>
> After that the execution "bitbake oracle-jse-jre-x86-64" -> Compile
> without errors!
>
> -----------------------------------------------
> But if I try to build my custom image and the build fails with these error:
>
> Function failed: do_rootfs
>
> | Computing transaction...error: Can't install
> oracle-jse-jre-x86-64-1.7.0-r0@x86_64: no package provides
> libXi.so.6()(64bit)
>
>
> Am I doing the correct steps to fix the errors? Can you please give me
> some help to include jre in my custom image?
>
> Thanks a lot for your help!
> Marcelo.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11c36daedafb8f04de4f9b48
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Dear Marcelo Valle,<br><br>I hope you have visit=
ed this page before adding meta-oracle-java layer:<br><a href=3D"http://git=
.yoctoproject.org/cgit/cgit.cgi/meta-oracle-java/tree/README">http://git.yo=
ctoproject.org/cgit/cgit.cgi/meta-oracle-java/tree/README</a><br>
<br></div>The above link provides help how to add this into final image. Ma=
y above will help you.<br><br></div>//Gaurang Shastri<br><div><br><br></div=
></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue=
, Jun 4, 2013 at 1:11 PM, Marcelo Valle <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:mvalleavila@gmail.com" target=3D"_blank">mvalleavila@gmail.com</a>&gt;=
</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote">=
<div dir=3D"ltr"><div><div>Hello,<br><br></div><div>Sorry for last message,=
 i send it incomplete by mistake!<br>
</div><div><br></div>I&#39;m triying to include oracle java in my custom im=
age and i&#39;m having some troubles to accomplish it.<br>
<br></div><div>After include <a href=3D"http://oracle-jse-jre-x86-64_1.7.0.=
bb" target=3D"_blank">oracle-jse-jre-x86-64_1.7.0.bb</a> recipe in IMAGE_IN=
STALL var and build the image the following errors appears:<br>
<br>1.<br></div>Fetcher failure for URL: &#39;<a href=3D"http://download.or=
acle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz" target=3D"_blan=
k">http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.ta=
r.gz</a>&#39;. Checksum mismatch!<br>



<br>If this change is expected (e.g. you have upgraded to a new version=20
without updating the checksums) then you can use these lines within the=20
recipe:<br>SRC_URI[md5sum] =3D &quot;<div dir=3D"ltr">81ee08846975d4b8d46ac=
f3b6eddf103&quot;<br>
SRC_URI[sha256sum] =3D &quot;80212f7748c2671b89b6085000717c747851db004409dc=
e3bb97f3a2aeb91cdd&quot;<br><br></div><div>To fix it i&#39;ve update <a hre=
f=3D"http://oracle-jse-jre-x86-64_1.7.0.bb" target=3D"_blank">oracle-jse-jr=
e-x86-64_1.7.0.bb</a> with these checksum.<br>

</div><div>I build the image again and new error appears<br></div><div dir=
=3D"ltr"><br>--------------------------------------------<br><br>2. <br>Fun=
ction failed: Unpack failure for URL: &#39;<a href=3D"http://download.oracl=
e.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz" target=3D"_blank">=
http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.g=
z</a>&#39;<br>



<br>Unpacking /home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-=
linux-x64.tar.gz<br>gzip: stdin: not in gzip format<br><br></div><div>So i =
decide to download the file directly from oracle page and copy in build/dow=
nloads directory.<br>

</div><div>After that i have new error:<br></div><div dir=3D"ltr"><br>-----=
----------------------------------------<br><br>3.<br>ERROR: objcopy failed=
 with exit code 1 (cmd was &#39;x86_64-poky-linux-objcopy&#39; --add-gnu-de=
buglink=3D&#39;/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/work/x86_64-p=
oky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_02/lib/amd64/=
.debug/libjsig.so&#39; &#39;/home/mvalle/Yocto2/poky-dylan-9.0.0/build/tmp/=
work/x86_64-poky-linux/oracle-jse-jre-x86-64/1.7.0-r0/package/usr/jre1.7.0_=
02/lib/amd64/libjsig.so&#39;)<br>



ERROR: Function failed: split_and_strip_files<br><br>To fix it I include IN=
HIBIT_PACKAGE_STRIP =3D &quot;1&quot;=A0 in <a href=3D"http://oracle-jse-jr=
e-x86-64_1.7.0.bb" target=3D"_blank">oracle-jse-jre-x86-64_1.7.0.bb</a> fil=
e<br>
<br>----------------------------------------------<br>
<br>After that the execution &quot;bitbake oracle-jse-jre-x86-64&quot; -&gt=
; Compile without errors!<br><br>------------------------------------------=
-----<br>

</div><div>But if I try to build my custom image and the build fails with t=
hese error:<br></div><div dir=3D"ltr"><br>Function failed: do_rootfs<br><br=
>| Computing transaction...error: Can&#39;t install oracle-jse-jre-x86-64-1=
.7.0-r0@x86_64: no package provides libXi.so.6()(64bit)<br>

<br><br></div><div>Am I doing the correct steps to fix the errors? Can you =
please give me some help to include jre in my custom image?<br><br></div><d=
iv>Thanks a lot for your help!<span class=3D"HOEnZb"><font color=3D"#888888=
"><br>
</font></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div>Mar=
celo.<br></div><br><br>
</font></span></div>
</div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11c36daedafb8f04de4f9b48--
