Return-Path: <eddie.cai.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87CD6E00546; Mon, 27 Feb 2017 20:42:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddie.cai.linux[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3546AE00519
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 20:42:01 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id u188so1754923qkc.2
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 20:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=t66VSPAxdQcGZWxDM+8Fp/T2Xva0RMUn9WFedgEy3R8=;
	b=rihyDl4IjhGU8D+t9kiwqDnNuvuXLlVxJtxCDrl3I1lbFNmFaRro3xuvLNXXalffl7
	MPwxg34VRS2RhvW+ARGByIZCUwH6AY0HfWbpiSsSRTNaSH3/qNijOaf1kj5b8IJvLmyr
	JYBW5zvqf/ODQDhMIDahjHcwc4ET0pKqJiYONv3O+KoOBhL+8tGtM6Mpw20mmrA0XetQ
	p8EbKW/6/FlxcucfxKQqkS2Qe31ez9rLNzKeG92+4XSwBKj6J7Sr4wBgewXXOncMNAWe
	838ZjimBGm9mgblpOVyS6mgBiw5gO9P5bK9hxyHSl49LvQ+4UX+IXUoL0+LSDoqZ/bpB
	ptAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=t66VSPAxdQcGZWxDM+8Fp/T2Xva0RMUn9WFedgEy3R8=;
	b=ITWC6zSfOaWXeedu/dl9XChRgJF5S7J5TXCVqezl4o3sQvOb/55UeBHOhgrairZ3jz
	Lcbl1o0B8dOq1JkUdNf9NeNxBK/gcNFnx4xLOMCgDZ6ZX6db3Ot6OdI28VZ2u/HI3W04
	JlICM0sfVMz0xOTYeog6+PEn8Xe8z3ei47B5mdw1PbMhiNyRG64+CBm9tbvWYMrzvJMa
	4GIQlGenz5hfbnQ/e+qFTIf0zeSv9KMZNHf6FN8EWLJmaAyg55+Sk8zK3SwAjn2IFIGD
	pT2d+dwjN5YN71sJAvgNUmSkdQNEKujmGBzE5H012V6EgYP2PhFSa0HbbQKaZ6lgyfd4
	lMng==
X-Gm-Message-State: AMke39mQzMPpyShqxyqagnd6ZJXPA5bOTcjXUHRIp0+G3U1jdRBLonWLEj+XhgMNkffQbxGYdAux/S8baMu7sg==
X-Received: by 10.55.89.70 with SMTP id n67mr416699qkb.292.1488256921470; Mon,
	27 Feb 2017 20:42:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.47.68 with HTTP; Mon, 27 Feb 2017 20:42:00 -0800 (PST)
In-Reply-To: <20170228030814.GA8559@linux-uys3>
References: <20170227192056.10830-1-twoerner@gmail.com>
	<20170227192056.10830-2-twoerner@gmail.com>
	<CAJrj+DPQFRDxsF=2=T6sfdfhiHvHD6n0KbH6jS0nJfLjA2NxPA@mail.gmail.com>
	<20170228030814.GA8559@linux-uys3>
From: Eddie Cai <eddie.cai.linux@gmail.com>
Date: Tue, 28 Feb 2017 12:42:00 +0800
Message-ID: <CAJrj+DPvWwj2yO=Ot0581Lt1Y7ztb+BxmbAJCZhwjz5XfgHP9w@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org, Jacob Chen <jacob-chen@iotwrt.com>
Subject: Re: [meta-rockchip][PATCH v4] classes: rockchip-gpt-img: add
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
X-List-Received-Date: Tue, 28 Feb 2017 04:42:05 -0000
Content-Type: multipart/alternative; boundary=001a114e6312238c8b05498fd13d

--001a114e6312238c8b05498fd13d
Content-Type: text/plain; charset=UTF-8

Hi Trevor

2017-02-28 11:08 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:

> Hi Eddie,
>
> On Tue 2017-02-28 @ 08:48:16 AM, Eddie Cai wrote:
> > Could you also copy ${BOOT_IMG} to ${DEPLOY_DIR_IMAGE} . That is much
> > earier for people find boot image. In case they want to flash boot
> > partition alone.
>
> All of this work is always done in DEPLOY_DIR_IMAGE.
>
>         $ bitbake core-image-minimal -e | grep "^DEPLOY_DIR_IMAGE="
>         DEPLOY_DIR_IMAGE="/z/rockchip/master/build/tmp-glibc/deploy/
> images/firefly-rk3288"
>
>         $ bitbake core-image-minimal -e | grep "^BOOT_IMG="
>         BOOT_IMG="boot.img"
>
> With this class file as submitted in v4, if I build my first image I get:
>         $ ls -lh tmp-glibc/deploy/images/firefly-rk3288/
>         -rw-r--r-- 1 trevor users 137M Feb 27 14:05
> core-image-minimal-firefly-rk3288-20170227190504.gpt-img
>         lrwxrwxrwx 1 trevor users   56 Feb 27 14:06
> core-image-minimal-firefly-rk3288.gpt-img -> core-image-minimal-firefly-
> rk3288-20170227190504.gpt-img
>
> If I adjust the image then build it again I get:
>         $ ls -lh tmp-glibc/deploy/images/firefly-rk3288/
>         -rw-r--r-- 1 trevor users 137M Feb 27 14:05
> core-image-minimal-firefly-rk3288-20170227190504.gpt-img
>         -rw-r--r-- 1 trevor users 137M Feb 27 14:06
> core-image-minimal-firefly-rk3288-20170227190628.gpt-img
>         lrwxrwxrwx 1 trevor users   56 Feb 27 14:06
> core-image-minimal-firefly-rk3288.gpt-img -> core-image-minimal-firefly-
> rk3288-20170227190628.gpt-img
>
> As you can see:
> - the images appear in DEPLOY_DIR_IMAGE
> - the first gpt-img is still there
> - after each build the "core-image-minimal-firefly-rk3288.gpt-img" symlink
>   always points to the latest gpt-img file
>
> Is this what you were hoping for?
>
I am not saying gpt image. What i mean is the single boot.img which contain
kernel zimage, device tree and extlinux file. with this file, i can use
below command update kernel and device tree. There are many people prefer
this way.
upgrade_tool db RK3288UbootLoader_V2.30.06.bin
upgrade_tool wl 32768 deploy/images/firefly-rk3288/boot.img

--001a114e6312238c8b05498fd13d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Trevor<div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">2017-02-28 11:08 GMT+08:00 Trevor Woerner <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:twoerner@gmail.com" target=3D"_blank">twoerner@gmail.com</a=
>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Eddie=
,<br>
<span class=3D"gmail-"><br>
On Tue 2017-02-28 @ 08:48:16 AM, Eddie Cai wrote:<br>
&gt; Could you also copy ${BOOT_IMG} to ${DEPLOY_DIR_IMAGE} . That is much<=
br>
&gt; earier for people find boot image. In case they want to flash boot<br>
&gt; partition alone.<br>
<br>
</span>All of this work is always done in DEPLOY_DIR_IMAGE.<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ bitbake core-image-minimal -e | grep &quot;^D=
EPLOY_DIR_IMAGE=3D&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 DEPLOY_DIR_IMAGE=3D&quot;/z/rockchip/<wbr>maste=
r/build/tmp-glibc/deploy/<wbr>images/firefly-rk3288&quot;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ bitbake core-image-minimal -e | grep &quot;^B=
OOT_IMG=3D&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 BOOT_IMG=3D&quot;boot.img&quot;<br>
<br>
With this class file as submitted in v4, if I build my first image I get:<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ ls -lh tmp-glibc/deploy/images/<wbr>firefly-r=
k3288/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -rw-r--r-- 1 trevor users 137M Feb 27 14:05 cor=
e-image-minimal-firefly-<wbr>rk3288-20170227190504.gpt-img<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lrwxrwxrwx 1 trevor users=C2=A0 =C2=A056 Feb 27=
 14:06 core-image-minimal-firefly-<wbr>rk3288.gpt-img -&gt; core-image-mini=
mal-firefly-<wbr>rk3288-20170227190504.gpt-img<br>
<br>
If I adjust the image then build it again I get:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ ls -lh tmp-glibc/deploy/images/<wbr>firefly-r=
k3288/<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -rw-r--r-- 1 trevor users 137M Feb 27 14:05 cor=
e-image-minimal-firefly-<wbr>rk3288-20170227190504.gpt-img<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 -rw-r--r-- 1 trevor users 137M Feb 27 14:06 cor=
e-image-minimal-firefly-<wbr>rk3288-20170227190628.gpt-img<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lrwxrwxrwx 1 trevor users=C2=A0 =C2=A056 Feb 27=
 14:06 core-image-minimal-firefly-<wbr>rk3288.gpt-img -&gt; core-image-mini=
mal-firefly-<wbr>rk3288-20170227190628.gpt-img<br>
<br>
As you can see:<br>
- the images appear in DEPLOY_DIR_IMAGE<br>
- the first gpt-img is still there<br>
- after each build the &quot;core-image-minimal-firefly-<wbr>rk3288.gpt-img=
&quot; symlink<br>
=C2=A0 always points to the latest gpt-img file<br>
<br>
Is this what you were hoping for?<br></blockquote><div>I am not saying gpt =
image. What i mean is the single boot.img which contain kernel zimage, devi=
ce tree and extlinux file. with this file, i can use below command update k=
ernel and device tree. There are many people prefer this way.=C2=A0</div><d=
iv>upgrade_tool db=C2=A0<span style=3D"background-color:transparent;color:i=
nherit;font-family:menlo,monaco,consolas,&quot;courier new&quot;,monospace;=
font-size:inherit;white-space:pre-wrap">RK3288UbootLoader_V2.30.06.bin</spa=
n></div><div>upgrade_tool wl=C2=A0<span style=3D"color:rgb(51,51,51);font-f=
amily:&quot;helvetica neue&quot;,helvetica,arial,sans-serif;font-size:14px"=
>32768=C2=A0</span>deploy/images/<wbr>firefly-rk3288/<span style=3D"color:r=
gb(51,51,51);font-family:&quot;helvetica neue&quot;,helvetica,arial,sans-se=
rif;font-size:14px">boot.img</span></div><div><br></div></div><br></div></d=
iv>

--001a114e6312238c8b05498fd13d--
