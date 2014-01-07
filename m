Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f49.google.com (mail-oa0-f49.google.com
	[209.85.219.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B20AE0084B
	for <yocto@yoctoproject.org>; Tue,  7 Jan 2014 05:24:49 -0800 (PST)
Received: by mail-oa0-f49.google.com with SMTP id n16so107207oag.36
	for <yocto@yoctoproject.org>; Tue, 07 Jan 2014 05:24:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8ZY+YHvTTgLPI7kpO5kwsiJgUmm7qRHI6uwpJdedGkI=;
	b=nCx+b9fRkIqZM2pgtody3khXmpSbZFJrafQN4aS0Ko7YLQyVRA3ZDPyBpldlcqhE8L
	kA4tMt5OJ2ZwEU2sL/HgKwg6ZjLi/3/HBfQn4L3gcwMpc0ZMM84uDhZX5nf/NiRWSZec
	Amk35reGcFAYCUQ3zjDA75+l+B8pa7vPdG9UysuwtDQyDX5tAnnpoMU/F4ibWXb0zEV/
	Y7y1mP+q1s5OABnTj3eyAW51wIN9syF0iwKiI6xKaUU6Xf9N26Y5XoFMeBXy7Cts/ovb
	FqcKrjVdxQ9qWGBEVPSOqyttXwOpquQQ4OCF5xmQTJtayEdnjbs0zM2EgRKV5biOBdYj
	7bnQ==
X-Gm-Message-State: ALoCoQnl4RRYRY2LpF9favaWYII9sJnOXgbsY5ziFPN6mYS319OpSoS90AStAcV0D+BUTXdHHbBw
X-Received: by 10.182.166.40 with SMTP id zd8mr75492996obb.25.1389101088670;
	Tue, 07 Jan 2014 05:24:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.89.143 with HTTP; Tue, 7 Jan 2014 05:24:28 -0800 (PST)
In-Reply-To: <CANR6C56AqYgV-Fq1e14E0O-OjjUkkY9jcvgEuABocAYMzm338A@mail.gmail.com>
References: <CANR6C56AqYgV-Fq1e14E0O-OjjUkkY9jcvgEuABocAYMzm338A@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 7 Jan 2014 14:24:28 +0100
Message-ID: <CAP71WjwpyEtN_2t30jx2vCwe+VTwRSpLFfd9FJqhpVn12dqNKw@mail.gmail.com>
To: "Nick D'Ademo" <nickdademo@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Creating a EXT4 rootfs instead of EXT3: How?
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
X-List-Received-Date: Tue, 07 Jan 2014 13:24:50 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1ce02f29c0704ef614c4f

--e89a8ff1ce02f29c0704ef614c4f
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 7, 2014 at 2:19 PM, Nick D'Ademo <nickdademo@gmail.com> wrote:

> Can't seem to get the build process to create a EXT4 filesystem - I've
> tried the following:
>

in general, more details about the actual error you get would be more
helpful.


>
> 1. Tried adding ROOTFSTYPE ?= "*ext4*" to the machine .conf file
>

the variable name is IMAGE_FSTYPES, not ROOTFSTYPES.


> 2. Ensured EXT4 is enabled in the Linux kernel (using menuconfig)
>

this would not impact the image generation, only at runtime when mounting
the rootfs


>
> This is a build for the Intel NUC hardware.
>
> Anyone have any ideas on how to do this?
>
>

--e89a8ff1ce02f29c0704ef614c4f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 7, 2014 at 2:19 PM, Nick D&#39;Ademo <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:nickdademo@gmail.com" target=3D"_blank">nickdademo@gmail.com<=
/a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div><div><div>Can&#39;t seem to get the build process to =
create a EXT4 filesystem - I&#39;ve tried the following:<br>

</div></div></div></blockquote><div><br></div><div>in general, more details=
 about the actual error you get would be more helpful. =A0</div><div>=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:soli=
d;padding-left:1ex">

<div><div><div></div><div><br></div>1. Tried adding <span>ROOTFSTYPE ?=3D &=
quot;<em>ext4</em>&quot; to the machine .conf file<br></span></div></div></=
blockquote><div><br></div><div>the variable name is IMAGE_FSTYPES, not ROOT=
FSTYPES.</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div><div><span>

</span></div><span>2. Ensured EXT4 is enabled in the Linux kernel (using me=
nuconfig)<br></span></div></blockquote><div><br></div><div>this would not i=
mpact the image generation, only at runtime when mounting the rootfs</div>

<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div><span><br></span></div><div><span>This =
is a build for the Intel NUC hardware.<br>

</span></div><div><span><br></span></div>

<span>Anyone have any ideas on how to do this?<br><br></span></blockquote><=
div><br></div></div></div></div>

--e89a8ff1ce02f29c0704ef614c4f--
