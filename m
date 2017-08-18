Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 782BFE00D50; Fri, 18 Aug 2017 04:56:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D3A2E00A39
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 04:56:48 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id f11so94018917oic.0
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 04:56:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Nu+KmiX6miS3mgWa9AL0YwZvhiCh00SlYj26Llyu1Sw=;
	b=FXm16pSIHD4Cma235uOo6HSaTag7pupqGle7iqvO3EDtEvpP22ggKbYX2MAcyozrSX
	hzDHLXeFns0p1xRv2TuwOHH16xG0hlMXxYjPF4qKIWROVgQnFQqL9U/PiiKnjYmcxGIX
	dD2Ld7MsJS+4pY8W8tsPqR+iJWDr/Ne4GJoGrGk3lsRW3dXk72a52zhk4CTqCceOY3dH
	eaAc65XEKobHzk/E55+bbeo3RZrJmo1n5e0NCVT3GeY8hHFxmbPkgQPwVnT1+m1gqekJ
	taBaq46/3ugDC0Re/5XBaAOpCsm136YHBHyrb/V3QWCSdX41lhnlTPwAtiVGgJxHJQNH
	R5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Nu+KmiX6miS3mgWa9AL0YwZvhiCh00SlYj26Llyu1Sw=;
	b=L6ENfDXYw8MfAoUuIzuk5nEOIFOkkjRb5ece42aMBESmzV86cBMlv4cfLQog7iZhys
	wlaMbJG7uaTtRkm+tbeIC8s0zexAyctTrEwGqww87bVvWUnnZrDb3RzGWZ5oOnopQTUf
	VaRLsWHnJ/+98A8Es7ur9+8TpgSSqiA/SfpS3j7bgHrP1aZIs0O8QWe9ZoXQWa34skcr
	ove2G25VXVHqetleGIGQTP0KYhmldLp3vOSFlq4IndIVSzr5lp92ELotJEFRA08+UK2Q
	YnpD3FBVB6WTqL1IsK57xt2Ccvqrd/Iqifh9CUJzKaArH8HDt1d6FnCitylrGHE12qTJ
	Wsyg==
X-Gm-Message-State: AHYfb5gPPvVK1ni54ci/c6VJ9nw6U2Odj0cCoogSUuL/I6bGq/5KWV3w
	fLc/ADae1Oz78zq9iD1BI9KHavHuUg==
X-Received: by 10.202.94.70 with SMTP id s67mr10908552oib.191.1503057407429;
	Fri, 18 Aug 2017 04:56:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.44.5 with HTTP; Fri, 18 Aug 2017 04:56:46 -0700 (PDT)
Received: by 10.74.44.5 with HTTP; Fri, 18 Aug 2017 04:56:46 -0700 (PDT)
In-Reply-To: <20170818085833.GA6976@linux.intel.com>
References: <CAByQQ_q9bBxrK6gzn2nAj2QK9PEiOfyt_09Le27DvXpU4_54hg@mail.gmail.com>
	<1502979391.28682.1.camel@linux.intel.com>
	<3e39f3ca-9228-769f-0b39-126fb124d280@gmail.com>
	<20170818085833.GA6976@linux.intel.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Fri, 18 Aug 2017 19:56:46 +0800
Message-ID: <CAByQQ_rjDQCs13=ofnrOiqEhRDsCUMMyUrT2oPfkaFA4g8J=2w@mail.gmail.com>
To: ed.bartosh@linux.intel.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dd to nand flash chip?
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
X-List-Received-Date: Fri, 18 Aug 2017 11:56:49 -0000
Content-Type: multipart/alternative; boundary="001a113d5d38d8d541055705d2cf"

--001a113d5d38d8d541055705d2cf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm confused, what is wks ?  what layers do you want to know?
I was bitbaking core image minimal xfce.
How can I see my bootloader config?
Thanks and regards,
Riko
On Aug 18, 2017 5:22 PM, "Ed Bartosh" <ed.bartosh@linux.intel.com> wrote:

> On Fri, Aug 18, 2017 at 11:40:58AM +0800, Riko wrote:
> > Here's the boot messages :
> >
> > =3D=3D=3D
> >
> > VFS: PARTUUID=3D is invalid.
> > Expected PARTUUID=3D<valid-uuid-id>[/PARTNROFF=3D%d]
> > Disabling rootwait; root=3D is invalid.
> > VFS: Cannot open root device "PARTUUID=3D" or unknown-block(0,0): error=
 -6
>
> Looks like you have empty PARTUUID in the kernel command line. Which wks
> file do you use for this image? Which layers? Can you show your
> bootloader config?
>
> > Please append a correct "root=3D" boot option; here are the available
> > partitions:
> > 0100            4096 ram0 (driver?)
> > 0101            4096 ram1 (driver?)
> > 0102            4096 ram2 (driver?)
> > 0103            4096 ram3 (driver?)
> > 0104            4096 ram4 (driver?)
> > 0105            4096 ram5 (driver?)
> > 0106            4096 ram6 (driver?)
> > 0107            4096 ram7 (driver?)
> > 0108            4096 ram8 (driver?)
> > 0109            4096 ram9 (driver?)
> > 010a            4096 ram10 (driver?)
> > 010b            4096 ram11 (driver?)
> > 010c            4096 ram12 (driver?)
> > 010d            4096 ram13 (driver?)
> > 010e            4096 ram14 (driver?)
> > 010f            4096 ram15 (driver?)
> > b300         3735552 mmcblk1  driver: mmcblk
> >   b301           16384 mmcblk1p1 2848be0f-01
> >   b302          756704 mmcblk1p2 2848be0f-02
> > b310            4096 mmcblk1boot1 (driver?)
> > b308            4096 mmcblk1boot0 (driver?)
> > VFS: Unable to mount root fs on unknown-block(0,0)
> > User configuration error - no valid root filesystem found
> > Kernel panic - not syncing: Invalid configuration from end user
> > prevents conting
> > CPU: 0 PID: 1 Comm: swapper Not tainted 4.8.12-yocto-standard #3
> > Hardware name: Generic AM33XX (Flattened Device Tree)
> > [<c010f260>] (unwind_backtrace) from [<c010c11c>] (show_stack+0x20/0x24=
)
> > [<c010c11c>] (show_stack) from [<c0493068>] (dump_stack+0x20/0x28)
> > [<c0493068>] (dump_stack) from [<c01f20f4>] (panic+0xc0/0x22c)
> > [<c01f20f4>] (panic) from [<c0f013ac>] (mount_block_root+0x19c/0x274)
> > [<c0f013ac>] (mount_block_root) from [<c0f0163c>] (mount_root+0xd0/0x12=
4)
> > [<c0f0163c>] (mount_root) from [<c0f01810>] (prepare_namespace+0x180/
> 0x1c0)
> > [<c0f01810>] (prepare_namespace) from [<c0f00f3c>]
> > (kernel_init_freeable+0x220/)
> > [<c0f00f3c>] (kernel_init_freeable) from [<c0964fb8>]
> > (kernel_init+0x18/0x11c)
> > [<c0964fb8>] (kernel_init) from [<c01078b8>] (ret_from_fork+0x14/0x3c)
> > ---[ end Kernel panic - not syncing: Invalid configuration from end
> > user preveng
> >
> > =3D=3D=3D=3D=3D
> >
> > How to fix it ? thanks
> >
> >
> > On 17/08/17 22:16, Leonardo Sandoval wrote:
> > >On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:
> > >>Dear Yocto Team Members=EF=BC=8C
> > >>
> > >>I tried to dd *.wic to nand flash but always got kernel panic, it can
> > >>not find rootfs
> > >>when I dd the same file to sd card, it worked.
> > >>
> > >from the bootloader command prompt, you may need to change the root
> > >kernel parameter and point to the device where the filesystem resides.
> > >
> > >
> > >>I copy only *.wic file to usb drive n dd it.
> > >>Do I need the whole directory of images for dd? or I need hddimg?
> > >>
> > >>Regards,
> > >>Riko
> > >>
> > >
> >
> > --
> > /*****
> > Sent By
> > Ubuntu 16.04 LTS
> > Kernel 4.4.0-92-generic
> > Regards,
> > Riko H
> > *****/
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> --
> Regards,
> Ed
>

--001a113d5d38d8d541055705d2cf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p>I&#39;m confused, what is wks ?=C2=A0 what layers do you want to know? <=
br>
I was bitbaking core image minimal xfce.<br>
How can I see my bootloader config?<br>
Thanks and regards,<br>
Riko</p>
<div class=3D"gmail_quote">On Aug 18, 2017 5:22 PM, &quot;Ed Bartosh&quot; =
&lt;<a href=3D"mailto:ed.bartosh@linux.intel.com">ed.bartosh@linux.intel.co=
m</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On =
Fri, Aug 18, 2017 at 11:40:58AM +0800, Riko wrote:<br>
&gt; Here&#39;s the boot messages :<br>
&gt;<br>
&gt; =3D=3D=3D<br>
&gt;<br>
&gt; VFS: PARTUUID=3D is invalid.<br>
&gt; Expected PARTUUID=3D&lt;valid-uuid-id&gt;[/<wbr>PARTNROFF=3D%d]<br>
&gt; Disabling rootwait; root=3D is invalid.<br>
&gt; VFS: Cannot open root device &quot;PARTUUID=3D&quot; or unknown-block(=
0,0): error -6<br>
<br>
Looks like you have empty PARTUUID in the kernel command line. Which wks<br=
>
file do you use for this image? Which layers? Can you show your<br>
bootloader config?<br>
<br>
&gt; Please append a correct &quot;root=3D&quot; boot option; here are the =
available<br>
&gt; partitions:<br>
&gt; 0100=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram0 (driver?)<br>
&gt; 0101=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram1 (driver?)<br>
&gt; 0102=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram2 (driver?)<br>
&gt; 0103=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram3 (driver?)<br>
&gt; 0104=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram4 (driver?)<br>
&gt; 0105=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram5 (driver?)<br>
&gt; 0106=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram6 (driver?)<br>
&gt; 0107=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram7 (driver?)<br>
&gt; 0108=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram8 (driver?)<br>
&gt; 0109=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram9 (driver?)<br>
&gt; 010a=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram10 (driver?)<br>
&gt; 010b=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram11 (driver?)<br>
&gt; 010c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram12 (driver?)<br>
&gt; 010d=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram13 (driver?)<br>
&gt; 010e=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram14 (driver?)<br>
&gt; 010f=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 ram15 (driver?)<br>
&gt; b300=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03735552 mmcblk1=C2=A0 driver: mm=
cblk<br>
&gt;=C2=A0 =C2=A0b301=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A016384 mmcblk1=
p1 2848be0f-01<br>
&gt;=C2=A0 =C2=A0b302=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 756704 mmcblk1p2 28=
48be0f-02<br>
&gt; b310=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 mmcblk1boot1 (drive=
r?)<br>
&gt; b308=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 4096 mmcblk1boot0 (drive=
r?)<br>
&gt; VFS: Unable to mount root fs on unknown-block(0,0)<br>
&gt; User configuration error - no valid root filesystem found<br>
&gt; Kernel panic - not syncing: Invalid configuration from end user<br>
&gt; prevents conting<br>
&gt; CPU: 0 PID: 1 Comm: swapper Not tainted 4.8.12-yocto-standard #3<br>
&gt; Hardware name: Generic AM33XX (Flattened Device Tree)<br>
&gt; [&lt;c010f260&gt;] (unwind_backtrace) from [&lt;c010c11c&gt;] (show_st=
ack+0x20/0x24)<br>
&gt; [&lt;c010c11c&gt;] (show_stack) from [&lt;c0493068&gt;] (dump_stack+0x=
20/0x28)<br>
&gt; [&lt;c0493068&gt;] (dump_stack) from [&lt;c01f20f4&gt;] (panic+0xc0/0x=
22c)<br>
&gt; [&lt;c01f20f4&gt;] (panic) from [&lt;c0f013ac&gt;] (mount_block_root+0=
x19c/0x274)<br>
&gt; [&lt;c0f013ac&gt;] (mount_block_root) from [&lt;c0f0163c&gt;] (mount_r=
oot+0xd0/0x124)<br>
&gt; [&lt;c0f0163c&gt;] (mount_root) from [&lt;c0f01810&gt;] (prepare_names=
pace+0x180/<wbr>0x1c0)<br>
&gt; [&lt;c0f01810&gt;] (prepare_namespace) from [&lt;c0f00f3c&gt;]<br>
&gt; (kernel_init_freeable+0x220/)<br>
&gt; [&lt;c0f00f3c&gt;] (kernel_init_freeable) from [&lt;c0964fb8&gt;]<br>
&gt; (kernel_init+0x18/0x11c)<br>
&gt; [&lt;c0964fb8&gt;] (kernel_init) from [&lt;c01078b8&gt;] (ret_from_for=
k+0x14/0x3c)<br>
&gt; ---[ end Kernel panic - not syncing: Invalid configuration from end<br=
>
&gt; user preveng<br>
&gt;<br>
&gt; =3D=3D=3D=3D=3D<br>
&gt;<br>
&gt; How to fix it ? thanks<br>
&gt;<br>
&gt;<br>
&gt; On 17/08/17 22:16, Leonardo Sandoval wrote:<br>
&gt; &gt;On Thu, 2017-08-17 at 18:37 +0800, Riko Ho wrote:<br>
&gt; &gt;&gt;Dear Yocto Team Members=EF=BC=8C<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;I tried to dd *.wic to nand flash but always got kernel panic,=
 it can<br>
&gt; &gt;&gt;not find rootfs<br>
&gt; &gt;&gt;when I dd the same file to sd card, it worked.<br>
&gt; &gt;&gt;<br>
&gt; &gt;from the bootloader command prompt, you may need to change the roo=
t<br>
&gt; &gt;kernel parameter and point to the device where the filesystem resi=
des.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;&gt;I copy only *.wic file to usb drive n dd it.<br>
&gt; &gt;&gt;Do I need the whole directory of images for dd? or I need hddi=
mg?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;Regards,<br>
&gt; &gt;&gt;Riko<br>
&gt; &gt;&gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt; --<br>
&gt; /*****<br>
&gt; Sent By<br>
&gt; Ubuntu 16.04 LTS<br>
&gt; Kernel 4.4.0-92-generic<br>
&gt; Regards,<br>
&gt; Riko H<br>
&gt; *****/<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
--<br>
--<br>
Regards,<br>
Ed<br>
</blockquote></div>

--001a113d5d38d8d541055705d2cf--
