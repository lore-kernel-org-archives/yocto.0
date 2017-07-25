Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9055E00B6F; Tue, 25 Jul 2017 15:30:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E1FCE00B43
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 15:30:57 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id c184so63671808wmd.0
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 15:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rXiodPIDPUxPppZTL0U48ysipx36Y6tQpFTw/aNrDo4=;
	b=DVkiqXV552ioluU3nGojnPZC9AJNhz/fNMpukIVJ9h0FtXEq+GQUqhyzLHE1P9ELdX
	dt18kKuKOAhDW+amOKZQXGC194TLfBT1tn3X8D42eB9Pxzrw/V0u9V5nBKR7n7vrgd1I
	jbbBFlJWy+HyBCiPfRrxx2B2yMLuxPKVA0XkG0y+w/BS2lqwRbdNLzMhYLd7tH/ZGuxi
	CzBFsiVdKMqamtVS/gKeVc8+RxCUoT4zmLdA78lTOa9TfrTg/wOUMKmXLbSBVVpPdaY0
	pUDt632AbWTpDqequbwSWWY2BvRZwWuLlpW1xzip0kvJMYhtWtS3SCzMYhrA91RbpUiX
	UAig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rXiodPIDPUxPppZTL0U48ysipx36Y6tQpFTw/aNrDo4=;
	b=In85VrzZUnnha7ZtJO3HZTBGWS8cZw+6rqXqmzPBJr9sbzBM5XAsaBY1p91K+C1zKm
	uwU+1Af3vWWVmIV7QRST36mg7tgn0MlZmchoHcWZ9qQJgv5slcYsTZ0f+clg6+e0qGEp
	6WItlQpo+KaprUjzjog2yhW0SOPWVXIAxEMgxk+FdW07JdaSXE5WN1AFjV9Ud7h7SO9j
	POVbS2WdRL7p8uVS02W+EekkfueDZZG51I2tJX2BV3Db+dR8yInw7YvTcX4+OJJXkXI7
	LZfvgao+4BUWKcjLrtyGCrQ0ha+gdF2TjGLj4H5/LN1W0mD0xGu2X7AcBtNGnSlTc7CT
	Ku7w==
X-Gm-Message-State: AIVw112P8/Pe/Gl9SK1OVW1acDkwri7ufOpA/xpZxpW/DFLepvTVan5T
	oGq5UQCe6kPeoHMQk3HlzkXcxDksaGj7
X-Received: by 10.28.142.203 with SMTP id q194mr7530663wmd.174.1501021856841; 
	Tue, 25 Jul 2017 15:30:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.153.69 with HTTP; Tue, 25 Jul 2017 15:30:56 -0700 (PDT)
In-Reply-To: <CABatt_wTBZYa2DNgB3_PqYay_SFUpcr=Hghg4=xyvpfbJeGt8Q@mail.gmail.com>
References: <CABatt_xOTsWEgJDaYepdFpF6_2Pk8UcCiXQBZddGV34MZPB2Yg@mail.gmail.com>
	<CABatt_wTBZYa2DNgB3_PqYay_SFUpcr=Hghg4=xyvpfbJeGt8Q@mail.gmail.com>
From: Rick Altherr <raltherr@google.com>
Date: Tue, 25 Jul 2017 15:30:56 -0700
Message-ID: <CAPLgG==LjxR0Lz20piro5e8ZM4gC_z5ZSjYDgoENMFEfg6i1zw@mail.gmail.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Problem building kernel FIT image with initramfs
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
X-List-Received-Date: Tue, 25 Jul 2017 22:30:59 -0000
Content-Type: multipart/alternative; boundary="001a1143bf26943f8e05552be27b"

--001a1143bf26943f8e05552be27b
Content-Type: text/plain; charset="UTF-8"

AFAIK, FIT w/ initramfs works with linux-yocto.  I suspect this is a bug in
the freescale kernel recipe.

On Tue, Jul 18, 2017 at 6:01 AM, Martin Townsend <mtownsend1973@gmail.com>
wrote:

> Sorry hit send before finishing email.
>
> So it looks like do_install and do_deploy are expecting
> fitImage-${INITRAMFS_IMAGE} so is this renaming required anymore? and
> if so is this a problem with the freescale kernel?
>
> Many Thanks,
> Martin.
>
> On Tue, Jul 18, 2017 at 1:58 PM, Martin Townsend
> <mtownsend1973@gmail.com> wrote:
> > Hi,
> >
> > Using Yocto 2.3 (pyro) I was trying to create a FIT image with the 4.9
> > linux-fslc kernel and an initramfs image.  following the instructions
> > it failed during do_bundle_initramfs.  After debugging I found that it
> > moves the fitImage file to fitImage.bak and then runs a second pass
> > and renames the new fitImage to fitImage.initramfs but fitImage is
> > never created on this second pass but  fitImage-${INITRAMFS_IMAGE} is
> > created.
> >
> > If I comment out the line that does this rename every builds fine
> >
> > echo "Resoring Kernel Image"
> > for tp in $tmp_path ; do
> >   type=`echo $tp|cut -d "#" -f 1`
> >   linkpath=`echo $tp|cut -d "#" -f 2`
> >   realpath=`echo $tp|cut -d "#" -f 3`
> >   if [ -n "$realpath" ]; then
> >     mv -f $realpath $realpath.initramfs
> >     mv -f $realpath.bak $realpath
> >     ln -sf $linkpath.initramfs ${B}/${KERNEL_OUTPUT_DIR}/$type.initramfs
> >   else
> >
> >     #mv -f ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_DIR}/$type.
> initramfs
> >     mv -f ${KERNEL_OUTPUT_DIR}/$type.bak ${KERNEL_OUTPUT_DIR}/$type
> >   fi
> > done
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143bf26943f8e05552be27b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">AFAIK, FIT w/ initramfs works with linux-yocto.=C2=A0 I su=
spect this is a bug in the freescale kernel recipe.</div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Tue, Jul 18, 2017 at 6:01 AM, Ma=
rtin Townsend <span dir=3D"ltr">&lt;<a href=3D"mailto:mtownsend1973@gmail.c=
om" target=3D"_blank">mtownsend1973@gmail.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">Sorry hit send before finishing email.<br>
<br>
So it looks like do_install and do_deploy are expecting<br>
fitImage-${INITRAMFS_IMAGE} so is this renaming required anymore? and<br>
if so is this a problem with the freescale kernel?<br>
<br>
Many Thanks,<br>
Martin.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tue, Jul 18, 2017 at 1:58 PM, Martin Townsend<br>
&lt;<a href=3D"mailto:mtownsend1973@gmail.com">mtownsend1973@gmail.com</a>&=
gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; Using Yocto 2.3 (pyro) I was trying to create a FIT image with the 4.9=
<br>
&gt; linux-fslc kernel and an initramfs image.=C2=A0 following the instruct=
ions<br>
&gt; it failed during do_bundle_initramfs.=C2=A0 After debugging I found th=
at it<br>
&gt; moves the fitImage file to fitImage.bak and then runs a second pass<br=
>
&gt; and renames the new fitImage to fitImage.initramfs but fitImage is<br>
&gt; never created on this second pass but=C2=A0 fitImage-${INITRAMFS_IMAGE=
} is<br>
&gt; created.<br>
&gt;<br>
&gt; If I comment out the line that does this rename every builds fine<br>
&gt;<br>
&gt; echo &quot;Resoring Kernel Image&quot;<br>
&gt; for tp in $tmp_path ; do<br>
&gt;=C2=A0 =C2=A0type=3D`echo $tp|cut -d &quot;#&quot; -f 1`<br>
&gt;=C2=A0 =C2=A0linkpath=3D`echo $tp|cut -d &quot;#&quot; -f 2`<br>
&gt;=C2=A0 =C2=A0realpath=3D`echo $tp|cut -d &quot;#&quot; -f 3`<br>
&gt;=C2=A0 =C2=A0if [ -n &quot;$realpath&quot; ]; then<br>
&gt;=C2=A0 =C2=A0 =C2=A0mv -f $realpath $realpath.initramfs<br>
&gt;=C2=A0 =C2=A0 =C2=A0mv -f $realpath.bak $realpath<br>
&gt;=C2=A0 =C2=A0 =C2=A0ln -sf $linkpath.initramfs ${B}/${KERNEL_OUTPUT_DIR=
}/$<wbr>type.initramfs<br>
&gt;=C2=A0 =C2=A0else<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0#mv -f ${KERNEL_OUTPUT_DIR}/$type ${KERNEL_OUTPUT_D=
IR}/$type.<wbr>initramfs<br>
&gt;=C2=A0 =C2=A0 =C2=A0mv -f ${KERNEL_OUTPUT_DIR}/$type.bak ${KERNEL_OUTPU=
T_DIR}/$type<br>
&gt;=C2=A0 =C2=A0fi<br>
&gt; done<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a1143bf26943f8e05552be27b--
