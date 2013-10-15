Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85EE6E01708
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:29:55 -0700 (PDT)
Received: by mail-ie0-f176.google.com with SMTP id u16so8876287iet.35
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2013 14:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=j+ubMPD6svQED9gDlipRi//tlw+Np7qP0kKQtIHDkns=;
	b=C3Kz58/cgZpM3Xe/ytXx6v61uzRHpWr2tn8qjOH4vYLXs2LOrx416zCA+IOyH/oioQ
	2ff2oFlZx3pYfiRpLi7IpC+BXeNYw/cczXXfnHrR4dfeghh4fMzrmxbvGR/PFQWRbMpc
	Wk5wx1UdDM5hJoq6kBPREV6OyfyzDWSP98Arwqq1TDbp07ldzfC2R1NSvMYThl85F6Su
	g3D4PwtXzTU638mxExD9uQfdL3bJXhkAjlKq6XCfxEYZ2e1ovM/cJ+R7qgzCc8zWjRvw
	OW0fKayvLDRi0mcGLWcaRv+g1Tgw9sfILpp6xOpgC8GkEVI/kppDCCG1JR0XDi2sUZFz
	C7/g==
MIME-Version: 1.0
X-Received: by 10.50.153.50 with SMTP id vd18mr18888594igb.6.1381872595207;
	Tue, 15 Oct 2013 14:29:55 -0700 (PDT)
Received: by 10.50.231.161 with HTTP; Tue, 15 Oct 2013 14:29:55 -0700 (PDT)
In-Reply-To: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
Date: Tue, 15 Oct 2013 22:29:55 +0100
Message-ID: <CAM1ZcoVTQ0O1go2bN8u20JZCbn8=Lp5rOjVmntmux5z+TYT7gg@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Tue, 15 Oct 2013 21:29:56 -0000
Content-Type: multipart/alternative; boundary=089e013a009e298daf04e8ce4998

--089e013a009e298daf04e8ce4998
Content-Type: text/plain; charset=ISO-8859-1

Hi Diego,

I may be wrong here, but I had a similar issue and I gave up. As I
understand from
https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf
if you are not using the linux-yocto kernel you need the whole defconfig.
Anyway, reading the kernel lab is probably a good idea.

good luck,
Katu


2013/10/15 Diego Sueiro <diego.sueiro@gmail.com>

> Folks,
>
> I created the following bbapend recipe for linux-mainline_3.8.bb (from
> meta-beagleboard on dylan branch) for beaglebone.
> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI += " file://0019-mine.patch \
>              file://defconfig \
>              "
>
> But the defconfig and .config files on ${S} and ${WORKDIR} used are from
> meta-beagleboad, not from my bbappend.
>
> I tried to follow the instructions to add config fragments on the page
> below but it did not worked too.
>
> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configuration
>
> The strange thing is: My patch is applied but my defconfig, or config
> fragment is not used.
> I just want to add CONFIG_WATCHDOG_NOWAYOUT=y.
>
> I already did a cleasstate but no success.
>
> Any hints?
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e013a009e298daf04e8ce4998
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Diego,<div><br></div><div>I may be wrong here, but I ha=
d a similar issue and I gave up. As I understand from</div><div><a href=3D"=
https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-la=
b.pdf">https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-ke=
rnel-lab.pdf</a><br>
</div><div>if you are not using the linux-yocto kernel you need the whole d=
efconfig. Anyway, reading the kernel lab is probably a good idea.</div><div=
><br></div><div>good luck,</div><div>Katu</div></div><div class=3D"gmail_ex=
tra">
<br><br><div class=3D"gmail_quote">2013/10/15 Diego Sueiro <span dir=3D"ltr=
">&lt;<a href=3D"mailto:diego.sueiro@gmail.com" target=3D"_blank">diego.sue=
iro@gmail.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div dir=3D"ltr">Folks,<div><br></div><div>I created the following bbapend =
recipe for <a href=3D"http://linux-mainline_3.8.bb" target=3D"_blank">linux=
-mainline_3.8.bb</a> (from meta-beagleboard on dylan branch) for beaglebone=
.</div>
<div>

meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:<br></div><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div>F=
ILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&quot;</div>

</div><div><div>SRC_URI +=3D &quot; file://0019-mine.patch \<br></div></div=
><div><div>=A0 =A0 =A0 =A0 =A0 =A0 =A0file://defconfig \</div></div><div><d=
iv>=A0 =A0 =A0 =A0 =A0 =A0 =A0&quot;</div></div></blockquote><div>

<div>But the defconfig and .config files on ${S} and ${WORKDIR} used are fr=
om meta-beagleboad, not from my bbappend.</div></div><div><br></div><div>I =
tried to follow the instructions to add config fragments on the page below =
but it did not worked too.</div>


<div><a href=3D"http://www.yoctoproject.org/docs/current/kernel-dev/kernel-=
dev.html#changing-the-configuration" target=3D"_blank">http://www.yoctoproj=
ect.org/docs/current/kernel-dev/kernel-dev.html#changing-the-configuration<=
/a></div>
<div><br>

</div><div>The strange thing is: My patch is applied but my defconfig, or c=
onfig fragment is not used.</div><div>I just want to add=A0CONFIG_WATCHDOG_=
NOWAYOUT=3Dy.</div><div><br></div><div>I already did a cleasstate but no=A0=
success.</div>


<div><br></div><div>Any hints?</div><div><br></div><div><br clear=3D"all"><=
div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego S=
ueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--089e013a009e298daf04e8ce4998--
