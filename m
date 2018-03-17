Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4014EE00AE6; Sat, 17 Mar 2018 10:28:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E339E006E9
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 10:28:55 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id e98-v6so5658557itd.4
	for <yocto@yoctoproject.org>; Sat, 17 Mar 2018 10:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=kCrkXkHgucyxlaJQ0D+VNlfLt/H/O6e56c5iLmommDA=;
	b=CrVyLOBjOHLGj6Y7SnLspqh+YCn2VYOQXAsy5ELEP5FKzwj6KgjWokOOxjB1paGQdn
	mujY29ITAIoWJy+mnJI6ENsHUhUpZI4tx7cNPV6lLt6Gi/X9IbS8p+Uxfjr19yVrVTr2
	zVSJu2Ec8HD0dMEmstbjlSvfonK6bABj79Hb7c+xktamYGTUooGO6bqDzKvPg/qpSRzV
	V6YdXN5bPFAuEjuJBcrl1FgGXMgtQJNYC5zAf6SfBPjBWbs+v7JH1gm4xZE81vb0X3l2
	LBFavtgMjnROtm/kaJhJsnuewvaIikGACZvy7ule5N2kyD8KptPITU334krWMZDYFSvt
	gTXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=kCrkXkHgucyxlaJQ0D+VNlfLt/H/O6e56c5iLmommDA=;
	b=CC94kSp524ErYPVFu+2CbR/s7rH4wqdSpLeRygWII7W5wIfc/c7K+plTXqD3ujnJg+
	xBDwSXktSBEcLr3Px74vlrAKURzGDxURu4FDdZGGevZr2RJ6jzjeSllp2aAvlAtxZFGs
	rhiMoN2Zkm5c5VdkqmKLF8tPAdh0fxKc+YKn/bUzcIXZ1zyts4m/Xs681/+EuTovRLZd
	H0Fk+xkznc/UkcGkG7O/OQUj7tmF923+VlqTB7L9qF/fvduROqGKYxIexox+dVq/lgIO
	bmBHmKIDIJcm8PgLb4x3oBX5Bf0k8E04P4MfuW587oGnbMlP/GIyvgbCaXzGBCTKka6j
	4uxA==
X-Gm-Message-State: AElRT7FjZSPgMuoDxrUo82irjcxVWT+x2HQ19lrjJXSJ/l46H/uze83b
	nGu3RSUhWZcaB7HHgfYGgO4bBN1ZuFLMlS2SMYlvBg==
X-Google-Smtp-Source: AG47ELvKw9FpSD/9Gy8Po+6RrK0ocsHiBMAYKsFAY577HeYAzNSNJTCo7anQiYMiS4JefRm4QnU9kxwaxv8xHTVhlUI=
X-Received: by 2002:a24:4115:: with SMTP id
	x21-v6mr6477926ita.146.1521307735379; 
	Sat, 17 Mar 2018 10:28:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGnZq5Cr1wBLYr3ZxLp12vXUrqok4+pANJ56enWQxLvORg@mail.gmail.com>
In-Reply-To: <CAFzUWGnZq5Cr1wBLYr3ZxLp12vXUrqok4+pANJ56enWQxLvORg@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Sat, 17 Mar 2018 17:28:45 +0000
Message-ID: <CAFzUWG=KfjDM7dw_4Y9Pbc834smm92o3WsBJWOXcgfB1HvoYkQ@mail.gmail.com>
To: "N:" <yocto@yoctoproject.org>
Subject: Re: Could not invoke DNF with python package (Unable to find a match)
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
X-List-Received-Date: Sat, 17 Mar 2018 17:28:57 -0000
Content-Type: multipart/alternative; boundary="0000000000002952b105679f0fa0"

--0000000000002952b105679f0fa0
Content-Type: text/plain; charset="UTF-8"

Well,

This is a bit confusing -- but apparently my *.bb files needed an "inherit
setuptools" at the top to make this happen. I thought this was already
being done in the pypi.bbclass ... but apparently that's not done anymore.
Is this an expected change?

Giordon

On Sat, Mar 17, 2018 at 12:16 PM Giordon Stark <kratsg@gmail.com> wrote:

> Hi,
>
> I'm a bit confused by this error, since as far as I can tell, bitbake sees
> this particular recipe I wrote...
>
> inc file:
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman.inc
>
> specific version:
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman_0.2.13.bb
>
>
> ERROR: zynq-base-1.0-r0 do_rootfs: Could not invoke dnf. Command
> '/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -y -c
> /local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs/etc/dnf/dnf.conf
> --setopt=reposdir=/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs/etc/yum.repos.d
> --repofrompath=oe-repo,/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-rootfs-repo
> --installroot=/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/rootfs
> --setopt=logdir=/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp
> --nogpgcheck install locale-base-en-us locale-base-en-gb
> packagegroup-core-boot run-postinsts packagegroup-core-ssh-openssh devmem2
> init-clock python-ironman packagegroup-base-extended' returned 1:
> Added oe-repo repo from
> file:///local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-rootfs-repo
> Last metadata expiration check: 0:00:00 ago on Sat Mar 17 17:11:44 2018
> UTC.
> No package python-ironman available.
> Error: Unable to find a match
>
> ERROR: zynq-base-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp/log.do_rootfs.24270
> ERROR: Task (/local/d4/gstark/meta-l1calo/recipes-core/images/zynq-base.bb:do_rootfs)
> failed with exit code '1'
>
> so I double-checked that the recipe was discoverable:
>
> kratsg@dc:/local/d4/gstark/poky/build$ bitbake-layers show-recipes
> python-ironman
> === Matching recipes: ===
> python-ironman:
>   meta-l1calo          0.2.13
>
> Any ideas if I wrote this python recipe incorrectly? If I inherit from
> pypi, it should install this for me as an rpm that can be picked up by
> bitbake, right?
>
> Giordon
> --
> Giordon Stark
>
-- 
Giordon Stark

--0000000000002952b105679f0fa0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Well,<div><br></div><div>This is a bit confusing -- but ap=
parently my *.bb files needed an &quot;inherit setuptools&quot; at the top =
to make this happen. I thought this was already being done in the pypi.bbcl=
ass ... but apparently that&#39;s not done anymore. Is this an expected cha=
nge?</div><div><br></div><div>Giordon</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr">On Sat, Mar 17, 2018 at 12:16 PM Giordon Stark &lt;<a=
 href=3D"mailto:kratsg@gmail.com">kratsg@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I&#3=
9;m a bit confused by this error, since as far as I can tell, bitbake sees =
this particular recipe I wrote...</div><div><br></div><div>inc file:=C2=A0<=
a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipes-python/=
python-ironman.inc" target=3D"_blank">https://github.com/kratsg/meta-l1calo=
/blob/master/recipes-python/python-ironman.inc</a>=C2=A0</div><div>specific=
 version:=C2=A0<a href=3D"https://github.com/kratsg/meta-l1calo/blob/master=
/recipes-python/python-ironman_0.2.13.bb" target=3D"_blank">https://github.=
com/kratsg/meta-l1calo/blob/master/recipes-python/python-ironman_0.2.13.bb<=
/a>=C2=A0</div><div><br></div><div><div><font face=3D"monospace">ERROR: zyn=
q-base-1.0-r0 do_rootfs: Could not invoke dnf. Command &#39;/local/d4/gstar=
k/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/recipe-s=
ysroot-native/usr/bin/dnf -y -c /local/d4/gstark/poky/build/tmp/work/gfex_p=
rototype3a-poky-linux/zynq-base/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dr=
eposdir=3D/local/d4/gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/=
zynq-base/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-repo,/local/d4/=
gstark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-=
rootfs-repo --installroot=3D/local/d4/gstark/poky/build/tmp/work/gfex_proto=
type3a-poky-linux/zynq-base/1.0-r0/rootfs --setopt=3Dlogdir=3D/local/d4/gst=
ark/poky/build/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp -=
-nogpgcheck install locale-base-en-us locale-base-en-gb packagegroup-core-b=
oot run-postinsts packagegroup-core-ssh-openssh devmem2 init-clock python-i=
ronman packagegroup-base-extended&#39; returned 1:</font></div><div><font f=
ace=3D"monospace">Added oe-repo repo from file:///local/d4/gstark/poky/buil=
d/tmp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/oe-rootfs-repo</fon=
t></div><div><font face=3D"monospace">Last metadata expiration check: 0:00:=
00 ago on Sat Mar 17 17:11:44 2018 UTC.</font></div><div><font face=3D"mono=
space">No package python-ironman available.</font></div><div><font face=3D"=
monospace">Error: Unable to find a match</font></div><div><font face=3D"mon=
ospace"><br></font></div><div><font face=3D"monospace">ERROR: zynq-base-1.0=
-r0 do_rootfs: Function failed: do_rootfs</font></div><div><font face=3D"mo=
nospace">ERROR: Logfile of failure stored in: /local/d4/gstark/poky/build/t=
mp/work/gfex_prototype3a-poky-linux/zynq-base/1.0-r0/temp/log.do_rootfs.242=
70</font></div><div><font face=3D"monospace">ERROR: Task (/local/d4/gstark/=
meta-l1calo/recipes-core/images/zynq-base.bb:do_rootfs) failed with exit co=
de &#39;1&#39;</font></div></div><div><br></div><div>so I double-checked th=
at the recipe was discoverable:</div><div><br></div><div><div><font face=3D=
"monospace">kratsg@dc:/local/d4/gstark/poky/build$ bitbake-layers show-reci=
pes python-ironman</font></div><div><font face=3D"monospace">=3D=3D=3D Matc=
hing recipes: =3D=3D=3D</font></div><div><font face=3D"monospace">python-ir=
onman:</font></div><div><font face=3D"monospace">=C2=A0 meta-l1calo=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 0.2.13</font></div></div><div><br></div><div>An=
y ideas if I wrote this python recipe incorrectly? If I inherit from pypi, =
it should install this for me as an rpm that can be picked up by bitbake, r=
ight?</div><div><br></div><div>Giordon</div></div>-- <br><div dir=3D"ltr" c=
lass=3D"m_724580485959254977gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr">Giordon Stark</div></div></blockquote></div>-- <br><d=
iv dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"=
><div dir=3D"ltr">Giordon Stark</div></div>

--0000000000002952b105679f0fa0--
