Return-Path: <pcjegan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB759E00985; Wed,  4 Feb 2015 02:35:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pcjegan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10439E0097F
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 02:35:40 -0800 (PST)
Received: by mail-we0-f178.google.com with SMTP id k48so871012wev.9
	for <yocto@yoctoproject.org>; Wed, 04 Feb 2015 02:35:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=KrtsvQu4YKQwUdkotJ/9lrkAWryfP1GKoZiTHUHjlE8=;
	b=w533wH9GgD5Jb0nApPTlT+z6LT4OEGWEo+BSIBAmw5CMQrjwzNTIfkkOS4qVl2JyEJ
	Sh9Ofa+lgc+DjQoPPdwY27F+l0VWBo9xYHlG299FWAwZKQSiyVJ2UrlxzQSC2jyGATu9
	aETZJclnmJ+9cM13wrd4X7jKnruEFFz77yoeuIBhsfBc+/xjZfwABOdv5+DWniakrTV0
	xubcw6QfCUt9bD73FWp+7x7b2+bROFd9KAyG1FR0snzwHbJw/AJFQd/GuWoeRzI8ATih
	OWnoLgXiYsl1U41Q3rQ6t9UVxjm6TxdYAEE08HiH2qoWimusqOKAa3RnRn81G+W6ocs8
	Qh8w==
X-Received: by 10.194.2.240 with SMTP id 16mr66072503wjx.108.1423046138918;
	Wed, 04 Feb 2015 02:35:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.180.70.193 with HTTP; Wed, 4 Feb 2015 02:35:18 -0800 (PST)
In-Reply-To: <CAM8Mu=VKpfu9jHkgNn+5O7LntEhzKu+vKL6mB73VC92Aywo9mg@mail.gmail.com>
References: <CAM8Mu=VKpfu9jHkgNn+5O7LntEhzKu+vKL6mB73VC92Aywo9mg@mail.gmail.com>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Wed, 4 Feb 2015 16:05:18 +0530
Message-ID: <CAAA4K6LMn7wPCrzBvLwJHryh9wze6RD7EN6zZ0Wx7mCuZmDRnw@mail.gmail.com>
To: Pavan Kumar B <u2bpavankumar@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: patch_do_patch error for local kernel rep..,
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
X-List-Received-Date: Wed, 04 Feb 2015 10:35:47 -0000
Content-Type: multipart/alternative; boundary=047d7b343d849bfbdc050e40bfc3

--047d7b343d849bfbdc050e40bfc3
Content-Type: text/plain; charset=UTF-8

It just says the patch  drm-vivante-Add-00-sufix-in-returned-bus-Id.patch
is already applied in the source code.

On Wed, Feb 4, 2015 at 1:29 AM, Pavan Kumar B <u2bpavankumar@gmail.com>
wrote:

>
> Hi,
>
> I was trying to set the local repo for kernel and build the yocto image.
> For that
>
> I have set SRC_URI as below located at $
> /fsl-community-bsp/sources/meta-fsl-arm-extra/recipes-kernel/linux/linux-wandboard.inc
>
> SRC_URI = "git:///home/jos/test/temp/mykernel;protocol=file;bareclone=1"
>
> and it started recognizing the local repo..,
>
> Also I have modified the linux-imx file "S" parameter as below
>
> S = "/home/jos/test/temp/mykernel"
>
> But I ran into another error and log is mentioned below
>
> The kernel baseline in my local repo is 3.0.35-4.1.0 and the I am using
> dora yocto branch
>
> There are some set of patches I can see at linux-imx_3.0.35.bb as below
>
> # GPU support patches
> SRC_URI += "file://drm-vivante-Add-00-sufix-in-returned-bus-Id.patch \
>
> file://0001-ENGR00255688-4.6.9p11.1-gpu-GPU-Kernel-driver-integr.patch \
>
> file://0002-ENGR00265465-gpu-Add-global-value-for-minimum-3D-clo.patch \
>
> file://0003-ENGR00261814-4-gpu-use-new-PU-power-on-off-interface.patch \
>
> file://0004-ENGR00264288-1-GPU-Integrate-4.6.9p12-release-kernel.patch \
>
> file://0005-ENGR00264275-GPU-Correct-suspend-resume-calling-afte.patch \
>
> file://0006-ENGR00265130-gpu-Correct-section-mismatch-in-gpu-ker.patch"
>
>
> The patch function is failing here. But with the kernel that was
> downloaded from git previously for wandboard is compiling with same patches
> with out any problem. These patches don't work for 3.0.35-4.1.0?
>
> What should be done here to apply patch & compile the image.
>
> please do guide me over here
>
> Regards,
> Pavan
>
> PS: Attached is the error log file
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
JCP

--047d7b343d849bfbdc050e40bfc3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;tre=
buchet ms&#39;,sans-serif">It just says the patch=C2=A0=C2=A0drm-vivante-Ad=
d-00-sufix-in-returned-bus-Id.patch is already applied in the source code.=
=C2=A0</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Wed, Feb 4, 2015 at 1:29 AM, Pavan Kumar B <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:u2bpavankumar@gmail.com" target=3D"_blank">u2bpavankumar@gmail.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr=
"><div><table height=3D"21" width=3D"6"><tbody><tr>
          <td>
            <br></td></tr></tbody></table>Hi,<br><br>I was trying to set th=
e local repo for kernel and build the yocto image. For that<br><br>I have s=
et SRC_URI as below located at $ /fsl-community-bsp/sources/meta-fsl-arm-ex=
tra/recipes-kernel/linux/linux-wandboard.inc<br><br>SRC_URI =3D &quot;git:/=
//home/jos/test/temp/mykernel;protocol=3Dfile;bareclone=3D1&quot;<br><br>an=
d it started recognizing the local repo.., <br><br>Also I have modified the=
 linux-imx file &quot;S&quot; parameter as below<br><br>S =3D &quot;/home/j=
os/test/temp/mykernel&quot;<br><br>But I ran into another error and log is =
mentioned below<br><br>The kernel baseline in my local repo is 3.0.35-4.1.0=
 and the I am using dora yocto branch<br><br>There are some set of patches =
I can see at <a href=3D"http://linux-imx_3.0.35.bb" target=3D"_blank">linux=
-imx_3.0.35.bb</a> as below<br><br># GPU support patches<br>SRC_URI +=3D &q=
uot;file://drm-vivante-Add-00-sufix-in-returned-bus-Id.patch \<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0001-ENGR0=
0255688-4.6.9p11.1-gpu-GPU-Kernel-driver-integr.patch \<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0002-ENGR0026546=
5-gpu-Add-global-value-for-minimum-3D-clo.patch \<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0003-ENGR00261814-4-gp=
u-use-new-PU-power-on-off-interface.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0004-ENGR00264288-1-GPU-Inte=
grate-4.6.9p12-release-kernel.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0005-ENGR00264275-GPU-Correct-susp=
end-resume-calling-afte.patch \<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 file://0006-ENGR00265130-gpu-Correct-section-mi=
smatch-in-gpu-ker.patch&quot;<br><br><br>The patch function is failing here=
. But with the kernel that was downloaded from git previously for wandboard=
 is compiling with same patches with out any problem. These patches don&#39=
;t work for 3.0.35-4.1.0? <br><br>What should be done here to apply patch &=
amp; compile the image.<br><br>please do guide me over here<br><br>Regards,=
<br>Pavan<br><br></div>PS: Attached is the error log file<br></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature">JCP</div>
</div>

--047d7b343d849bfbdc050e40bfc3--
