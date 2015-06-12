Return-Path: <saiprasad.b@pathpartnertech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7675BE009EB; Thu, 11 Jun 2015 22:45:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3126BE009D2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 22:45:02 -0700 (PDT)
Received: by ykfw62 with SMTP id w62so5518535ykf.2
	for <yocto@yoctoproject.org>; Thu, 11 Jun 2015 22:45:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=yBA8+NjbUzexV9ed5CbYfmF9YE829r6qa+ZEjLURpsc=;
	b=iRRGzjUhakd5N76Ko0xHm/lkuSMn8HNNGP16PwVCgDNNpGWiPdaDVIo02Q+IVFe5Ga
	Y3fMe3p9zZ7Yin12XSTVUkxBbBbdX30PscpCdSlcGufbJX07tWwhP32FEQye/fVi9XAl
	naGkn33/4EMij6Hwc0d8zxY+6EGYAAv8UcJLwKamG0ES4JBVbOLyaeEVRoTrCuhK6g3N
	o8jjI8RrsEk6EWOBDSTF39KCOAEFDmaKussk9zZtACLxE5OA2mf7/z12nukzFUI3z+TZ
	pc4r3HciPHXiqIgDyvGCW1ERXRN6s+PBtyfQ5wpEe8OSCc0PGDwYBD2RyXpuuxHv4Om4
	fVPQ==
X-Gm-Message-State: ALoCoQkEQNpRALKIt7SJkmda5ZPvwId9DdNAoefaPF1qOe0gFrGQRFpNoQEfB7uUEAc++13YokOh
MIME-Version: 1.0
X-Received: by 10.170.51.209 with SMTP id 200mr16874763ykt.77.1434087901745;
	Thu, 11 Jun 2015 22:45:01 -0700 (PDT)
Received: by 10.37.117.69 with HTTP; Thu, 11 Jun 2015 22:45:01 -0700 (PDT)
In-Reply-To: <CAMKF1spdx4-=YRoQ9QHYeatJ6He-NtNTyaCJmOvEvDiKrcrm8g@mail.gmail.com>
References: <CAJuK9Ta-4bgWo9R0W=6p3z3SHfBiYgzH3Fm8i=VtXeZCTW1_Hw@mail.gmail.com>
	<CAMKF1spdx4-=YRoQ9QHYeatJ6He-NtNTyaCJmOvEvDiKrcrm8g@mail.gmail.com>
Date: Fri, 12 Jun 2015 11:15:01 +0530
Message-ID: <CAJuK9TZ9TnqgY9kpR5oQTGAJbHJpAyjmQ03hgZ-9xxRTNdg23g@mail.gmail.com>
From: Sai Prasad B <saiprasad.b@pathpartnertech.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Node.js dependency issues
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
X-List-Received-Date: Fri, 12 Jun 2015 05:45:07 -0000
Content-Type: multipart/alternative; boundary=001a1137d56cf5eba505184b9bae

--001a1137d56cf5eba505184b9bae
Content-Type: text/plain; charset=UTF-8

Hi Khem,

   Thankyou for your quick response. I will try installing the package to
image itself and let you know.

Regards,
Sai

On Wed, Jun 10, 2015 at 9:16 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Jun 10, 2015 at 1:01 AM, Sai Prasad B
> <saiprasad.b@pathpartnertech.com> wrote:
> > Hi ,
> >
> >    I hope this is correct place for my doubts on yocto. If not please
> ignore
> > this mail.
> >
> >    I am trying to install node.js on yocto. I added the nodejs recipe and
> > when i do bitbake an rpm package is generated, but when i try to install
> it
> > i see that there are lot of dependency issues and hence the installation
> is
> > failed. Please find the error logs as below.
> >
> >    error: Failed dependencies:
> >         libgcc1 >= 4.7.2 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libssl1.0.0 >= 1.0.1e is needed by
> nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libdl.so.2(GLIBC_2.4) is needed by
> nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libm.so.6(GLIBC_2.4) is needed by
> nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libgcc_s.so.1 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libpthread.so.0(GLIBC_2.4) is needed by
> > nodejs-0.10.25-r7.armv7a_vfp_neon
> >         curl is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libstdc++.so.6 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libcrypto.so.1.0.0 is needed by nodejs-0.10.25-r7.armv7a_vfp_neon
> >         libgcc_s.so.1(GCC_3.5) is needed by
> nodejs-0.10.25-r7.armv7a_vfp_neo
> >
> >
> > Any help would be really grateful.
>
> if you want to install the dependencies automatically then you have two
> options
>
> 1. Add the package to your image itself ?
> 2. Create and enable online feeds and enable it in your device too
> then opkg install nodejs would be what you need
>
> >
> > Thanks and Regards,
> > Sai
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a1137d56cf5eba505184b9bae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Khem,<br><br></div>=C2=A0=C2=A0 Thankyou=
 for your quick response. I will try installing the package to image itself=
 and let you know.<br><br></div>Regards,<br></div>Sai<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Jun 10, 2015 at 9:1=
6 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" =
target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On Wed, Jun 10, 2=
015 at 1:01 AM, Sai Prasad B<br>
&lt;<a href=3D"mailto:saiprasad.b@pathpartnertech.com">saiprasad.b@pathpart=
nertech.com</a>&gt; wrote:<br>
&gt; Hi ,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 I hope this is correct place for my doubts on yocto. If n=
ot please ignore<br>
&gt; this mail.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 I am trying to install node.js on yocto. I added the node=
js recipe and<br>
&gt; when i do bitbake an rpm package is generated, but when i try to insta=
ll it<br>
&gt; i see that there are lot of dependency issues and hence the installati=
on is<br>
&gt; failed. Please find the error logs as below.<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 error: Failed dependencies:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libgcc1 &gt;=3D 4.7.2 is needed by no=
dejs-0.10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libssl1.0.0 &gt;=3D 1.0.1e is needed =
by nodejs-0.10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libdl.so.2(GLIBC_2.4) is needed by no=
dejs-0.10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libm.so.6(GLIBC_2.4) is needed by nod=
ejs-0.10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libgcc_s.so.1 is needed by nodejs-0.1=
0.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libpthread.so.0(GLIBC_2.4) is needed =
by<br>
&gt; nodejs-0.10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0curl is needed by nodejs-0.10.25-r7.a=
rmv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libstdc++.so.6 is needed by nodejs-0.=
10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libcrypto.so.1.0.0 is needed by nodej=
s-0.10.25-r7.armv7a_vfp_neon<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libgcc_s.so.1(GCC_3.5) is needed by n=
odejs-0.10.25-r7.armv7a_vfp_neo<br>
&gt;<br>
&gt;<br>
&gt; Any help would be really grateful.<br>
<br>
</div></div>if you want to install the dependencies automatically then you =
have two options<br>
<br>
1. Add the package to your image itself ?<br>
2. Create and enable online feeds and enable it in your device too<br>
then opkg install nodejs would be what you need<br>
<br>
&gt;<br>
&gt; Thanks and Regards,<br>
&gt; Sai<br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1137d56cf5eba505184b9bae--
