Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B0CFE016C4
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:16:06 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id aq17so3888204iec.34
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wEfnaYPVPTjb1dJY+70Acbi6KlrE6k88Ewd/Z2e7fdU=;
	b=rnQLd6TEe6apUVhWFd/q5A4xIo821hrUG44rZBIs9JPVt+R6Lo+VFHo1ZT7+mGS0oF
	UW1k1OShHDOi2TLe3aHA+R7XQjVrqAyklwl/hYuWwvFQaL0MHmOsVWidMMXqWd7MAa/H
	HtkUHyW0jnaddcLgfYXxkU1mmAB0pmBzPCn2k40nYY5nE0JP1sFQGnZPfDWkvkLxj5+z
	ue1qKhdzPznkmNsYVzSy204Ttg+TvCWvAEAeHaNfv1bGk+gM+aJdjeBDVrwPb0z2pw6G
	dMVLum1eKHMOXVElSNKzyUlzmyNRYZcfyu0izH+lfkAmpzZAYYp5YwCdD1d5LagdSqAH
	9YLA==
X-Received: by 10.42.18.136 with SMTP id x8mr5345448ica.11.1382015765149; Thu,
	17 Oct 2013 06:16:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Thu, 17 Oct 2013 06:15:45 -0700 (PDT)
In-Reply-To: <525FDD08.90400@windriver.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 17 Oct 2013 10:15:45 -0300
Message-ID: <CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
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
X-List-Received-Date: Thu, 17 Oct 2013 13:16:07 -0000
Content-Type: multipart/alternative; boundary=20cf303f6910c1c58d04e8ef9e67

--20cf303f6910c1c58d04e8ef9e67
Content-Type: text/plain; charset=ISO-8859-1

2013/10/17 Bruce Ashfield <bruce.ashfield@windriver.com>

>
>
>  I expected to get this working "out-of-box".
>>
>
> Did you do a  "bitbake -e <your kernel recipe>" ? and then look at
> the SRC_URI ? That will tell us if for some reason the beagle layer's
> defconfig is on there twice.


I'll do it after my current build gets finished.


>
>
>  Why config fragments did not worked too?
>>
>
> recipes must inherit linux-yocto to get that support, since it is
> optional and not something we force on all kernel recipes. So if you
> want fragment support, creating your own kernel recipe, based on the
> one in the layers you are using, which inherits linux-yocto is one
> route to take.

Can I do it on bbappend, or do I need to copy the entirely
linux-mainline_3.8.bb from meta-bleagleboard to my layer and add "inherit
linux-yocto"?
Do I need to "inherit linux-yocto", "require
recipes-kernel/linux/linux-yocto.inc" or "inherit kernel-yocto"?
My concern is: if doing this to just have the config fragment feature, I'll
possibly mess up the kernel build.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--20cf303f6910c1c58d04e8ef9e67
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/10/17 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ash=
field@windriver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;=
</span><br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
I expected to get this working &quot;out-of-box&quot;.<br>
</blockquote>
<br></div>
Did you do a =A0&quot;bitbake -e &lt;your kernel recipe&gt;&quot; ? and the=
n look at<br>
the SRC_URI ? That will tell us if for some reason the beagle layer&#39;s<b=
r>
defconfig is on there twice.</blockquote><div>=A0</div><div>I&#39;ll do it =
after my current build gets finished.</div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">


<div><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Why config fragments did not worked too?<br>
</blockquote>
<br></div>
recipes must inherit linux-yocto to get that support, since it is<br>
optional and not something we force on all kernel recipes. So if you<br>
want fragment support, creating your own kernel recipe, based on the<br>
one in the layers you are using, which inherits linux-yocto is one<br>
route to take.</blockquote></div>Can I do it on bbappend, or do I need to c=
opy the entirely <a href=3D"http://linux-mainline_3.8.bb">linux-mainline_3.=
8.bb</a> from meta-bleagleboard to my layer and add &quot;inherit linux-yoc=
to&quot;?<br>


Do I need to &quot;inherit linux-yocto&quot;, &quot;require recipes-kernel/=
linux/linux-yocto.inc&quot; or &quot;inherit kernel-yocto&quot;?</div><div =
class=3D"gmail_extra">My concern is: if doing this to just have the config =
fragment feature, I&#39;ll possibly mess up the kernel build.</div>


<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<=
br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/</div></div>
</div></div>

--20cf303f6910c1c58d04e8ef9e67--
