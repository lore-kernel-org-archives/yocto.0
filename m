Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9BBFE0084F; Thu, 13 Nov 2014 23:33:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [64.18.3.86 listed in list.dnswl.org]
Received: from exprod8og103.obsmtp.com (exprod8og103.obsmtp.com [64.18.3.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 858B2E00831
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 23:33:26 -0800 (PST)
Received: from mail-la0-f44.google.com ([209.85.215.44]) (using TLSv1) by
	exprod8ob103.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVGWwRbmsM2D8darat523I0LiLAA19/gA@postini.com;
	Thu, 13 Nov 2014 23:33:31 PST
Received: by mail-la0-f44.google.com with SMTP id hz20so4494185lab.17
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 23:33:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=5ONxI5fF0NKrV18nAa1XheKYyXdVtw1EoMEv8x/EKvc=;
	b=dPB73jHthZTyCKXFLjQmI25CMUZQsJQhWvkbDPb4uOjR+lF6AQuyu4bQ60xDtxScOK
	uHRbLG1RncwIEVj+JOpNEFwmzU38Pd3AHEWS+qG1aqu76xdlx8IpwJWVwBLMxq6UDqVL
	zTzR5XEvcZwocLn8fOvt7gJVbWVVbD8FzitU46zDDfnx6BD5d5owh6Ldw745gxbLYoEy
	NbDODaP9mwRqW31UGT3Gkd13MSZW4rU7cjdc7fHL2PmtMM9ZX1g7Jnc5FwY8NyVUPyau
	n4+mjBhsRXObTqsL2XxK4vtB/jjM3odobXVoFd+ZLrBNj8YTJdi0VeEDEeUYfjAWrJrk
	dbGw==
X-Gm-Message-State: ALoCoQnc58u1O7hYTw0KOzqtkOCuiq26vYf1KornhnczlTElYbLV6V4OMKeoMhs9mssA9V13sQWWwW9r92GPkID5BinLLhtyeW5Zh6Ob4A+Jp1rDUeGx/Ig9u3uB0DjEvCSXrBr2wM0zsRXLcxgrLojKh+qz6JEKag==
X-Received: by 10.112.159.129 with SMTP id xc1mr6840970lbb.24.1415950404146;
	Thu, 13 Nov 2014 23:33:24 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.112.159.129 with SMTP id xc1mr6840944lbb.24.1415950403786;
	Thu, 13 Nov 2014 23:33:23 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Thu, 13 Nov 2014 23:33:23 -0800 (PST)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8521E20E474@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8521E20E32E@USSTLZ-PMSG012.emrsn.org>
	<CAPDOMVgwLM-PJVADkCL=iCoKkE1E9jLQTsF+DekQHk-kYNzo=A@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8521E20E474@USSTLZ-PMSG012.emrsn.org>
Date: Fri, 14 Nov 2014 15:33:23 +0800
Message-ID: <CAJrRHk4NgYkqwj8yROa2oASiKstCi8HAfV75_mtA9mUz-RBJ7Q@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Neil.Wu@emerson.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't find the header files after install adt_installer.tar.gz
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
X-List-Received-Date: Fri, 14 Nov 2014 07:33:35 -0000
Content-Type: multipart/alternative; boundary=001a11c313acd675c40507cca426

--001a11c313acd675c40507cca426
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Neil,

I believe you need to use $CC or $BUILD_CC in your makefile to be able to
have the correct $INCLUDE paths. The $INCLUDE paths will eventually point
to your ADT's target_sysroot /usr/include

- J

On Fri, Nov 14, 2014 at 1:05 PM, <Neil.Wu@emerson.com> wrote:

> Thank you for your reply.
> I just move the adt_installer.tar.gz to another pc which don't have yocto
> project. Install the adt_installer and execute the
> environment-setup-armv5te-poky-linux-gnueabi
>
> Then compile the hello.c
> arm-poky-linux-gnueabi-gcc hello.c -o hello
>
> I don't know whether need to do other thing?
> -----Original Message-----
> From: Nick Krause [mailto:xerofoify@gmail.com]
> Sent: Thursday, November 13, 2014 11:05 PM
> To: Wu, Neil [CLIMATE/RS/CN]
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Can't find the header files after install
> adt_installer.tar.gz
>
> Have you read the yocto docs on ADT for building correctly your
> development kit, seems to me rather trivial error in either your build or
> bitbake recipe for hello world.
> Cheers Nick
>
> On Thu, Nov 13, 2014 at 4:43 AM,  <Neil.Wu@emerson.com> wrote:
> > Hi all :
> >
> >            I have installed  the adt_installer .tar.gz like fllowing:
> >
> >               $ cd ~
> >
> >               $ tar -xjf adt_installer.tar.bz2
> >
> >               $ cd adt-installer
> >
> >               $ ./adt_installer
> >
> >
> >
> >         Because the
> > YOCTOADT_TARGET_SYSROOT_LOC_arm=3D"$HOME/test-yocto/$YOCTOADT_TARGET_MA=
C
> > HINE_arm
> > in adt_installer.conf file ,
> >
> >         then I extract the myself Root Filesystem:
> >
> >              $source /opt/poky/1.7/environment-setup-i586-poky-linux
> >
> >              $ runqemu-extract-sdk
> > ~/Downloads/core-image-arm-rootfs.tar.bz2           $HOME/ test-yocto/
> > qemuarm/
> >
> >
> >
> >        Try to compile  the  =E2=80=9CHelloworld=E2=80=9D, it apper this=
 error:
> >
> >           hello.c:1:19: fatal error: stdio.h: No such file or
> > directory
> >
> >
> >
> >     Do you know how to resolve the issue? Please help me !
> >
> >     Thank you very much!
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c313acd675c40507cca426
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Neil,<div><br></div><div>I believe you need to us=
e $CC or $BUILD_CC in your makefile to be able to have the correct $INCLUDE=
 paths. The $INCLUDE paths will eventually point to your ADT&#39;s target_s=
ysroot /usr/include</div><div><br></div><div>- J</div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Nov 14, 2014 at 1:05 PM,=
  <span dir=3D"ltr">&lt;<a href=3D"mailto:Neil.Wu@emerson.com" target=3D"_b=
lank">Neil.Wu@emerson.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">Thank you for your reply.<br>
I just move the adt_installer.tar.gz to another pc which don&#39;t have yoc=
to project. Install the adt_installer and execute the environment-setup-arm=
v5te-poky-linux-gnueabi<br>
<br>
Then compile the hello.c<br>
arm-poky-linux-gnueabi-gcc hello.c -o hello<br>
<br>
I don&#39;t know whether need to do other thing?<br>
<div class=3D"HOEnZb"><div class=3D"h5">-----Original Message-----<br>
From: Nick Krause [mailto:<a href=3D"mailto:xerofoify@gmail.com">xerofoify@=
gmail.com</a>]<br>
Sent: Thursday, November 13, 2014 11:05 PM<br>
To: Wu, Neil [CLIMATE/RS/CN]<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] Can&#39;t find the header files after install adt_inst=
aller.tar.gz<br>
<br>
Have you read the yocto docs on ADT for building correctly your development=
 kit, seems to me rather trivial error in either your build or bitbake reci=
pe for hello world.<br>
Cheers Nick<br>
<br>
On Thu, Nov 13, 2014 at 4:43 AM,=C2=A0 &lt;<a href=3D"mailto:Neil.Wu@emerso=
n.com">Neil.Wu@emerson.com</a>&gt; wrote:<br>
&gt; Hi all :<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 I have installed=C2=A0 the ad=
t_installer .tar.gz like fllowing:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ cd ~<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ tar -xjf adt_i=
nstaller.tar.bz2<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ cd adt-install=
er<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ ./adt_installe=
r<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Because the<br>
&gt; YOCTOADT_TARGET_SYSROOT_LOC_arm=3D&quot;$HOME/test-yocto/$YOCTOADT_TAR=
GET_MAC<br>
&gt; HINE_arm<br>
&gt; in adt_installer.conf file ,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0then I extract the myself Root Filesy=
stem:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $source /opt/poky/1.7/=
environment-setup-i586-poky-linux<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $ runqemu-extract-sdk<=
br>
&gt; ~/Downloads/core-image-arm-rootfs.tar.bz2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0$HOME/ test-yocto/<br>
&gt; qemuarm/<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 Try to compile=C2=A0 the=C2=A0 =E2=80=9CHel=
loworld=E2=80=9D, it apper this error:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0hello.c:1:19: fatal error: std=
io.h: No such file or<br>
&gt; directory<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Do you know how to resolve the issue? Please help m=
e !<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0Thank you very much!<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a11c313acd675c40507cca426--
