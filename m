Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76CC2E01620
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2013 22:14:03 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id ep20so6525803lab.30
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2013 22:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=D4EcMxdggZ7scIPfUA46+VVJY1D6oaqc7NExueN6uVo=;
	b=V/mKntU9Kigj/eLx/KJ0RgicuSTabtAm8KDKfd0mWwqZR2igOFGPH/cU2kKsfMbmCi
	AigbvF/ch80RjalV8H0fe3MS1aoEE08xjC5R6uaWrSApYxH/flD3715Jc4z5nHfk7uAf
	o18+V+KbcFW0mI6tgdpT4LHfJqcz92Vlu1WQK6WSpzwwK3nobM/dAlyaiP0JV8ui/DPP
	6mHmeZNDArsXjIfSr23YQJCGkBuHtgSF7mXN3ZvWHdH1MLRzc2f2CyHblYGhAbrNMMjP
	y9RUvD/hVuSGe53v/h37EP4T331hvvLml2xbX+4EJfxXNksv1rD6vyFMGHhdJsXzz0gS
	VW/A==
MIME-Version: 1.0
X-Received: by 10.112.40.110 with SMTP id w14mr10477lbk.42.1381209242229; Mon,
	07 Oct 2013 22:14:02 -0700 (PDT)
Received: by 10.114.62.115 with HTTP; Mon, 7 Oct 2013 22:14:02 -0700 (PDT)
In-Reply-To: <CABhkJRf2=Cw4Cs40+uOpLa1dXsjAxrJC=M47DOCDamegiSa6pQ@mail.gmail.com>
References: <CABhkJRf2=Cw4Cs40+uOpLa1dXsjAxrJC=M47DOCDamegiSa6pQ@mail.gmail.com>
Date: Tue, 8 Oct 2013 10:44:02 +0530
Message-ID: <CAE_REAufvZsxy0_qPaaq6FUP1spT75izUvxBAAOOwyi7bhU_1A@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to patch sysroots file?
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
X-List-Received-Date: Tue, 08 Oct 2013 05:14:04 -0000
Content-Type: multipart/alternative; boundary=001a11336bba3e616804e833d642

--001a11336bba3e616804e833d642
Content-Type: text/plain; charset=ISO-8859-1

>>So my question is: from where is the sysroots file coming? How should I
generate the patch file for the sysroots

Will, there is task called do_populate_systroot which will generate
sysroots files/headers.

If you want to generate the patch, you don't require to generate "sysroot
patch" but you need to know from which package the sysroot files are
generated. And in your case it might be "libc-headers" so you need to
create patch for "libc-headers" recipe. So at the end, it will
automatically reflect in the sysroot path.

//Gaurang Shastri


On Mon, Oct 7, 2013 at 7:23 PM, Ashish Dalela <ashish.dalela@gmail.com>wrote:

>
> I am trying to build bridge-utils. During compilation, I get the error:
>
> /scratch/adalela/yocto/build/tmp/sysroots/qemux86/usr/include/linux/if_bridge.h:172:20:
> error: field 'ip6' has incomplete typeIn file included from
> ../libbridge/libbridge.h:24:0
>
> But, I don't see matching file paths in git path and sysroots locations.
>
> In sysroots path:
> .../build/tmp/sysroots/qemux86
> $ find . -name if_bridge.h
> ./usr/include/linux/if_bridge.h
>
> In GIT path:
> .../build/tmp/work/qemux86-poky-linux/linux-yocto/3.8.11+git*/linux
> $ find . -name if_bridge.h
> ./include/uapi/linux/if_bridge.h
> ./include/linux/if_bridge.h
>
> ./usr/include/linux/if_bridge.h and ./include/uapi/linux/if_bridge.h are
> almost identical, except of #ifdef.
>
> I can manually patch the files and the compilation is successful. But I
> don't know how to create the patch file for the sysroots file, because the
> GIT path does not have the same file.
>
> So my question is: from where is the sysroots file coming? How should I
> generate the patch file for the sysroots ./usr/include/linux/if_bridge.h?
>
> Thanks
> -Ashish
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a11336bba3e616804e833d642
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>&gt;&gt;<font face=3D"courier new, monospac=
e">So my question is: from where is the sysroots file coming? How should I =
generate the patch file for the sysroots<br><br></font></div><font face=3D"=
courier new, monospace">Will, there is task called do_populate_systroot whi=
ch will generate sysroots files/headers. <br>
<br></font></div><font face=3D"courier new, monospace">If you want to gener=
ate the patch, you don&#39;t require to generate &quot;sysroot patch&quot; =
but you need to know from which package the sysroot files are generated. An=
d in your case it might be &quot;libc-headers&quot; so you need to create p=
atch for &quot;libc-headers&quot; recipe. So at the end, it will automatica=
lly reflect in the sysroot path.<br>
<br></font></div><font face=3D"courier new, monospace">//Gaurang Shastri<br=
></font></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote"=
>On Mon, Oct 7, 2013 at 7:23 PM, Ashish Dalela <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:ashish.dalela@gmail.com" target=3D"_blank">ashish.dalela@gmail.=
com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><br><div><font face=3D"cour=
ier new, monospace">I am trying to build bridge-utils. During compilation, =
I get the error:</font></div>
<div><br></div><div><font face=3D"courier new, monospace">/scratch/adalela/=
yocto/build/tmp/sysroots/qemux86/usr/include/linux/if_bridge.h:172:20: erro=
r: field &#39;ip6&#39; has incomplete typeIn file included from ../libbridg=
e/libbridge.h:24:0</font></div>

<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace">But, I don&#39;t see matching file paths in git=
 path and sysroots locations.</font></div><div><font face=3D"courier new, m=
onospace"><br>

</font></div><div><font face=3D"courier new, monospace">In sysroots path:</=
font></div><div><font face=3D"courier new, monospace">.../build/tmp/sysroot=
s/qemux86<br></font></div><div><font face=3D"courier new, monospace"><div>$=
 find . -name if_bridge.h</div>

<div>./usr/include/linux/if_bridge.h</div><div><br></div><div>In GIT path:<=
/div><div><div>.../build/tmp/work/qemux86-poky-linux/linux-yocto/3.8.11+git=
*/linux</div><div>$ find . -name if_bridge.h</div><div>./include/uapi/linux=
/if_bridge.h</div>

<div>./include/linux/if_bridge.h</div></div><div><br></div><div>./usr/inclu=
de/linux/if_bridge.h and ./include/uapi/linux/if_bridge.h are almost identi=
cal, except of #ifdef.</div><div><br></div><div>I can manually patch the fi=
les and the compilation is successful. But I don&#39;t know how to create t=
he patch file for the sysroots file, because the GIT path does not have the=
 same file.=A0</div>

<div><br></div><div>So my question is: from where is the sysroots file comi=
ng? How should I generate the patch file for the sysroots ./usr/include/lin=
ux/if_bridge.h?</div><div><br></div></font><font face=3D"courier new, monos=
pace"><div>

Thanks</div><span class=3D"HOEnZb"><font color=3D"#888888"><div>-Ashish</di=
v></font></span></font></div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--001a11336bba3e616804e833d642--
