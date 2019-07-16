Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C0BEE00D59; Mon, 15 Jul 2019 23:55:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08146E00D4A
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 23:55:45 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id d24so18785077ljg.8
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 23:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kesELylx+2/fKY52TatGHMpwDEvw4qWyAahhsb6Er+s=;
	b=dxWJNPe9gVam8fxS8qTFvS48I9l/adu3/BIoeX1Bm/exkpexXJSILJu+ihY6yIi+En
	0L4pV2t0S0XvlYq3Hdwf00iYfkkTdVBLUqjMNQPy6OdiNQcyNhiJ2IKHwjIkkKoyOz7A
	K+U9pG6dUubPSBPRmmAveHy05yCmFTPlgSMKcMLxEwlnNHbDjz7wkgD2o9Tr4ex9fwPq
	xLgqF6vJXhaO7qX7vbqzqWG9ChD8QZi0Jj0vJ+GJtQ/pKKJ3+Rvvz/NWgPdfgrHYT9JW
	7OuNjhWeaN+uObotc4FG/EeBQsWZKwqi4mlCBphqrb14cxN3Km5wBDLk2hu7GlYuWfYU
	VkDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kesELylx+2/fKY52TatGHMpwDEvw4qWyAahhsb6Er+s=;
	b=i/TJwtkTzS30FGouaMD+sLVFRbE7u/Hd1Vtoen3f9s6ugilZAr5EoFSIUQIM9GwhK/
	EuyRH5QXiVdvRX6v9wJ0dWQ6TW6ClqjPSls+KSY9l2Agbvao1txhZQYn2SVK8H93Tf+f
	L7UUnPo2gNnRMAnxwWNIFp8J7tmZxAEJGpmqyAC7EmWG0XNExQl4c/tIEswJIdH8i/bo
	vnC/rxGD1q1qot3qcZDXYPUY2suvTC/B8FOgqbk7Xd7/VNlddpOCC8NOjSYxZBn5Bo4G
	wdsatKjAOmsTi7/q6ppYIfzlkJmyA+aOqsAZm0UaeM6QBt2iD2KO8ShFFm+Tr595PyjG
	w/tw==
X-Gm-Message-State: APjAAAVeribOyMT4hHVdsGOzH18lxfvWBGEmebujNJBRvzYqYClvSaMG
	filoPKHX8wnY8Z3vcIF90nr/aZOW7kZutG5yMvUUaFes
X-Google-Smtp-Source: APXvYqzxwdNwtjAMyydXCyrT79MpCRjy7lRfwZ/xlFJuRRjKtcbc5mU+wLEvcyTyFoeguRBiP9nNYwZORQ8HMAFJR5c=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr16175341ljk.93.1563260144961; 
	Mon, 15 Jul 2019 23:55:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
	<CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
	<0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
	<CAAx3WaAY2REFJpV3ibOwMmmTHjZbiNsOXVX_eCkFVA5WgO_YzA@mail.gmail.com>
	<CAA=hcWQqBrzU=SYRDLELG=vu_0=82CNLwz6u3F6=kXhRoUmhqw@mail.gmail.com>
In-Reply-To: <CAA=hcWQqBrzU=SYRDLELG=vu_0=82CNLwz6u3F6=kXhRoUmhqw@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 16 Jul 2019 08:55:33 +0200
Message-ID: <CAAx3WaCVDv6Sj8RPxPqb4PiFhe7WvJibk21LkezsjT6-ngimvg@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Where to add U-Boot argements bootargs and bootcmd?
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
X-List-Received-Date: Tue, 16 Jul 2019 06:55:47 -0000
Content-Type: multipart/alternative; boundary="000000000000a1cbc9058dc6dd63"

--000000000000a1cbc9058dc6dd63
Content-Type: text/plain; charset="UTF-8"

Hi JH,

wks is the extension used by wic to generate different kind of flashable
(partitioned) images. I never used it, but looking around (
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#command-bootloader
) I see two relevant arguments:

   - *--append *
   - *--configfile*

Check them in the link above.

Here is an example for --append:
https://github.com/openembedded/openembedded-core/blob/master/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks#L22

Digging a bit deeper it seems that you cannot feed a custom config to uboot
via wic (and again, correct me if I'm wrong), but only for extlinux (see:
https://github.com/openembedded/openembedded-core/blob/master/scripts/lib/wic/plugins/source/bootimg-partition.py#L110
)

I do not have time to replicate your environment, so I'm just giving you
suggestions.

Best regards,
Gabriele

Il giorno lun 15 lug 2019 alle ore 14:45 JH <jupiter.hce@gmail.com> ha
scritto:

> Thanks Gabriele and Maciej, I use meta-freescale for imx6. The u-boot
> argements seem defined in wks files such as imx-uboot-mxs.wks,
> imx-uboot-bootpart.wks, not quite sure how to extend or overwrite it.
> Sorry still learning the Yocto.
>
> Thank you.
>
> Kind regards,
>
> - jh
>
> On 7/15/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> > Yes, thanks Maciej for pointing that out! It may be a good starting point
> > for JH.
> >
> > Gabriele
> >
> > Il giorno lun 15 lug 2019 alle ore 10:29 Maciej Pijanowski <
> > maciej.pijanowski@3mdeb.com> ha scritto:
> >
> >>
> >> On 15.07.2019 08:45, Gabriele Zampieri wrote:
> >>
> >> Hi,
> >>
> >> as far as I know, there is no mechanism to add custom bootargs and/or
> >> bootcmd to uboot via Yocto (correct me if I'm wrong). I usually patch
> the
> >> upstream uboot to achieve this task.
> >>
> >> I also haven't heard of any standardized way. It may depend on the
> target
> >> hardware
> >> and the BSP layer you are using. Apart from patching the U-Boot, there
> >> also might
> >> be boot.cmd script to modify or the config.txt in case of the RPI, for
> >> example.
> >>
> >>
> >> Best regards,
> >> Gabriele
> >>
> >> Il giorno lun 8 lug 2019 alle ore 22:43 JH <jupiter.hce@gmail.com> ha
> >> scritto:
> >>
> >>> Hi,
> >>>
> >>> Which Yocto files and which statement can I add my own U-Boot bootargs
> >>> and bootcmd?
> >>>
> >>> Thank you.
> >>>
> >>> - jupiter
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>>
> >>
> >> --
> >> Maciej Pijanowski
> >> Embedded Systems Engineerhttps://3mdeb.com | @3mdeb_com
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
>

--000000000000a1cbc9058dc6dd63
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi JH, <br></div><div><br></div><div>wks is the exten=
sion used by wic to generate different kind of flashable (partitioned) imag=
es. I never used it, but looking around ( <a href=3D"https://www.yoctoproje=
ct.org/docs/latest/ref-manual/ref-manual.html#command-bootloader">https://w=
ww.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#command-bootload=
er</a> ) I see two relevant arguments:</div><div><ul><li><span class=3D"emp=
hasis"><em><code class=3D"gmail-filename">--append=C2=A0</code></em><code c=
lass=3D"gmail-filename"></code></span></li><li><span class=3D"emphasis"><sp=
an class=3D"emphasis"><em><code class=3D"gmail-filename">--configfile</code=
></em></span></span></li></ul><div><code><font face=3D"arial,sans-serif">Ch=
eck them in the link above. <br></font></code></div><div><code><font face=
=3D"arial,sans-serif"><br></font></code></div><div><code><font face=3D"aria=
l,sans-serif">Here is an example for --append: <a href=3D"https://github.co=
m/openembedded/openembedded-core/blob/master/scripts/lib/wic/canned-wks/dir=
ectdisk-multi-rootfs.wks#L22">https://github.com/openembedded/openembedded-=
core/blob/master/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks#L22=
</a></font></code></div><div><code><font face=3D"arial,sans-serif"><br></fo=
nt></code></div><div><code><font face=3D"arial,sans-serif">Digging a bit de=
eper it seems that you cannot feed a custom config to uboot via wic (and ag=
ain, correct me if I&#39;m wrong), but only for extlinux (see: <a href=3D"h=
ttps://github.com/openembedded/openembedded-core/blob/master/scripts/lib/wi=
c/plugins/source/bootimg-partition.py#L110">https://github.com/openembedded=
/openembedded-core/blob/master/scripts/lib/wic/plugins/source/bootimg-parti=
tion.py#L110</a>)</font></code></div><div><code><font face=3D"arial,sans-se=
rif"><br></font></code></div><div><code><font face=3D"arial,sans-serif">I d=
o not have time to replicate your environment, so I&#39;m just giving you s=
uggestions.</font></code></div><div><code><font face=3D"arial,sans-serif"><=
br></font></code></div><div><code><font face=3D"arial,sans-serif">Best rega=
rds,</font></code></div><div><code><font face=3D"arial,sans-serif">Gabriele=
<br></font></code></div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il giorno lun 15 lug 2019 alle ore 14:45 JH &=
lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; h=
a scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thank=
s Gabriele and Maciej, I use meta-freescale for imx6. The u-boot<br>
argements seem defined in wks files such as imx-uboot-mxs.wks,<br>
imx-uboot-bootpart.wks, not quite sure how to extend or overwrite it.<br>
Sorry still learning the Yocto.<br>
<br>
Thank you.<br>
<br>
Kind regards,<br>
<br>
- jh<br>
<br>
On 7/15/19, Gabriele Zampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com=
" target=3D"_blank">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt; Yes, thanks Maciej for pointing that out! It may be a good starting po=
int<br>
&gt; for JH.<br>
&gt;<br>
&gt; Gabriele<br>
&gt;<br>
&gt; Il giorno lun 15 lug 2019 alle ore 10:29 Maciej Pijanowski &lt;<br>
&gt; <a href=3D"mailto:maciej.pijanowski@3mdeb.com" target=3D"_blank">macie=
j.pijanowski@3mdeb.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 15.07.2019 08:45, Gabriele Zampieri wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; as far as I know, there is no mechanism to add custom bootargs and=
/or<br>
&gt;&gt; bootcmd to uboot via Yocto (correct me if I&#39;m wrong). I usuall=
y patch the<br>
&gt;&gt; upstream uboot to achieve this task.<br>
&gt;&gt;<br>
&gt;&gt; I also haven&#39;t heard of any standardized way. It may depend on=
 the target<br>
&gt;&gt; hardware<br>
&gt;&gt; and the BSP layer you are using. Apart from patching the U-Boot, t=
here<br>
&gt;&gt; also might<br>
&gt;&gt; be boot.cmd script to modify or the config.txt in case of the RPI,=
 for<br>
&gt;&gt; example.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Best regards,<br>
&gt;&gt; Gabriele<br>
&gt;&gt;<br>
&gt;&gt; Il giorno lun 8 lug 2019 alle ore 22:43 JH &lt;<a href=3D"mailto:j=
upiter.hce@gmail.com" target=3D"_blank">jupiter.hce@gmail.com</a>&gt; ha<br=
>
&gt;&gt; scritto:<br>
&gt;&gt;<br>
&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Which Yocto files and which statement can I add my own U-Boot =
bootargs<br>
&gt;&gt;&gt; and bootcmd?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thank you.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; - jupiter<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Maciej Pijanowski<br>
&gt;&gt; Embedded Systems Engineerhttps://<a href=3D"http://3mdeb.com" rel=
=3D"noreferrer" target=3D"_blank">3mdeb.com</a> | @3mdeb_com<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;&gt;<br>
&gt;<br>
</blockquote></div>

--000000000000a1cbc9058dc6dd63--
