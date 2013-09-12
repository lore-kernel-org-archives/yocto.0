Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B08A5E0122C
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:13:18 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id m15so179364wgh.9
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:13:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SDXudkGVyJmFQc2Yb7/1a8Us+NnZw7hNvaaY+sxeoI4=;
	b=i3yDquGkmtZgUZ1YWwOZ1Hn7P9nlBgAZpIQUP1WI2TpqB+7pwbWROKxgd1mPOkL2mW
	4nv8TVgAKVq99rOTKF29CdaPnG9aA0ZdTB+gnnOv1ylyJ1FPGNQDiCIvxtETxO00N61U
	8V585VFlvg7opwO9vkqPINMKu/mqmHptWTUjQP0ygMyhUnRBnNhO17T1s39Ymu72Dvj0
	5B+2jtdsY70k/RBpvyhmscp5cUN6eQ49vKmzYAKY0RZ7ngMlTRC1V4qDAWMzTvSYxg3x
	GjNkDs2Td+0BF55fjqzq4ivsSYc5m0waYR7DRt2e5sZAeN/W/xjFEo9fYVGhkNba6bkU
	uM5Q==
X-Gm-Message-State: ALoCoQmnKfDswGjmklWYLaKMGvs1icMizEKLnD14+z8Pq2vpwLLFlprNSfGhYmOwcQHmo/J+jv7q
X-Received: by 10.180.126.3 with SMTP id mu3mr18413227wib.27.1378969997290;
	Thu, 12 Sep 2013 00:13:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.91.132 with HTTP; Thu, 12 Sep 2013 00:12:57 -0700 (PDT)
In-Reply-To: <523161DD.5080600@einfochips.com>
References: <523161DD.5080600@einfochips.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 12 Sep 2013 09:12:57 +0200
Message-ID: <CAP71Wjwf+67vmCZ7gfO8xLGbzCX-v+t9TfEzA-1idQnscb+ODg@mail.gmail.com>
To: Rohit Borse <rohit.borse@einfochips.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Support for monit utility
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
X-List-Received-Date: Thu, 12 Sep 2013 07:13:22 -0000
Content-Type: multipart/alternative; boundary=e89a8f839d41d8451304e62a7874

--e89a8f839d41d8451304e62a7874
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 12, 2013 at 8:40 AM, Rohit Borse <rohit.borse@einfochips.com>wrote:

> Hi,
>      I am trying to find *monit* utility in Yocto BSP. I tried with *bitbake
> monit *command but it failed.
> Does yocto supports *monit* or similar utility to monitor threads and
> processes on system?
>

you can check the online layer index repositories for all available recipes:

http://layers.openembedded.org/

--e89a8f839d41d8451304e62a7874
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 12, 2013 at 8:40 AM, Rohit Borse <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rohit.borse@einfochips.com" target=3D"_blank">rohit.borse@einfoc=
hips.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">Hi,<br>
    =A0=A0=A0=A0 I am trying to find <i>monit</i> utility in Yocto BSP. I t=
ried
    with <i>bitbake monit </i>command but it failed.<br>
    Does yocto supports <i>monit</i> or similar utility to monitor
    threads and processes on system?<br></div></blockquote></div><br>you ca=
n check the online layer index repositories for all available recipes:</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D=
"http://layers.openembedded.org/">http://layers.openembedded.org/</a><br>

</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br><=
/div></div>

--e89a8f839d41d8451304e62a7874--
