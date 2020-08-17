Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web11.38943.1597650526975790036
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 00:48:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZbGImQCo;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id b79so14177305qkg.9
        for <yocto@lists.yoctoproject.org>; Mon, 17 Aug 2020 00:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=N6WlaE+9pkewLf8oZ3f53BH9wdubOfM4xLk8HTKOcAg=;
        b=ZbGImQCo6Y8UGHjQHqb38cl5zLAsGCAL9hrgmbDcPuZKTnmWcupNLzJ6CeYC/jwigX
         Or3Llx1CC4/0FHkdmOX1a5n2nChi9yrWxXX24nkyVmv5hxI/zjcezLiKaSDYUZV3rIjT
         fXad8dl1VRARnnGovS+vTgOLGn59OJ3tk4Kq3gBgctCM8nKdO/zvVTjpmUoB1EyJ2jTb
         s1wZvUVD2rIfno9Wc5h9ZpLLR3X8JXO9gc34C48lFpEAF1Y4AvxTpdLnZnGF3isbc3V1
         iWK5R+H3KP0CfMpxbvwEWt9YPzQuoCSLInRwcz7gZp3XK3LOyOiQZAEZdOWpDJ2q0sOq
         SXcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=N6WlaE+9pkewLf8oZ3f53BH9wdubOfM4xLk8HTKOcAg=;
        b=d5+zYZ0FrtxAVVRIqmdWGT7C9xIHY4XcO7ym2vXVMrUKHJxXqsEnYppN6+NTrSPo8p
         0VzOswFlKgYjTiwlczU9jNHDI0g5k4Gjk1zrYTSn8cWPmX3Tm8YLwc4bHnjgpANMAkYm
         ikCMokKmOZHt9fH6V/MAYdxgMSz/Vgfvu6KuWqAyzDc035f+rsytX+R7cXZsr5uu/ivU
         zzohS9GPi+B0poX2ocqc3bdKrKgruXemTqqxnxWodyx5DOeyGxhnH+XccJUuNTBmG8ir
         aF5KjUgT/cSAY87nyy2NQml21gRs+goXdMmT0VAWBK3BGS6Fn2WMQq9t3EHiM5LQVI5w
         Bt5A==
X-Gm-Message-State: AOAM531tTyDl4HgUKViaudNyH5+Xa4FP215zCyp5YOjTl78ZslPItmEK
	Q6Jqg+KGpV03/rN8uF9Am/n+rbPlkZG7p6Y5xRw=
X-Google-Smtp-Source: ABdhPJxj7a0+BrVjsYNRgQZRQ5CYNGxwvRESkApdla8rM2DziyCMQKv+J5l+8MYBXmheI+IJaZif1mrQ68CtCopw4k8=
X-Received: by 2002:ae9:eb49:: with SMTP id b70mr11645569qkg.479.1597650525185;
 Mon, 17 Aug 2020 00:48:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200815050617.E1710247EA@centos7-ty-4.yocto.io> <BYAPR11MB3624C7C679599BA7EB0070A6E35F0@BYAPR11MB3624.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB3624C7C679599BA7EB0070A6E35F0@BYAPR11MB3624.namprd11.prod.outlook.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Aug 2020 09:48:33 +0200
Message-ID: <CAGAf8LzTzRfuSpJrBGJWdhLh8iihG=4vrnwd5vo4wgwgZ45HCw@mail.gmail.com>
Subject: Re: [yocto] QA notification for completed autobuilder build (yocto-3.0.4.rc1)
To: Sangeeta Jain <sangeeta.jain@intel.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, 
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>, "yi.zhao@windriver.com" <yi.zhao@windriver.com>, 
	"Sangal, Apoorv" <apoorv.sangal@intel.com>, "Yeoh, Ee Peng" <ee.peng.yeoh@intel.com>, 
	"Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, 
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"akuster808@gmail.com" <akuster808@gmail.com>, "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
Content-Type: multipart/alternative; boundary="00000000000007690905ad0e00be"

--00000000000007690905ad0e00be
Content-Type: text/plain; charset="UTF-8"

>* Intel* and WR YP QA is planning for QA execution for YP
> build yocto-3.0.3.rc2.

With all due respect... INTEL part I'll drop out. ;-)

Better to keep YOCTO as an Open Source project without
mentioning ECO systems financing it... Correct?!

YOCTO is an (Force Major context) Open Source project... Isn't it?!

Thank you,
Zoran Stojsavljevic
_______




On Mon, Aug 17, 2020 at 9:09 AM Sangeeta Jain <sangeeta.jain@intel.com>
wrote:

> Hello All,
>
> Intel and WR YP QA is planning for QA execution for YP build
> yocto-3.0.3.rc2. We are planning to execute following tests for this cycle:
>
> OEQA-manual tests for following module:
> 1. OE-Core
> 2. BSP-hw
>
> Runtime auto test for following platforms:
> 1. MinnowTurbot 32-bit
> 2. Coffee Lake
> 3. NUC 7
> 4. NUC 6
> 5. Edgerouter
> 6. MPC8315e-rdb
> 7. Beaglebone
>
> ETA for completion is next Wednesday, Aug 19.
>
> Thanks,
> Sangeeta
>
> > -----Original Message-----
> > From: Poky Build User <pokybuild@centos7-ty-4.yocto.io>
> > Sent: Saturday, 15 August, 2020 1:06 PM
> > To: yocto@lists.yoctoproject.org
> > Cc: otavio@ossystems.com.br; yi.zhao@windriver.com; Sangal, Apoorv
> > <apoorv.sangal@intel.com>; Yeoh, Ee Peng <ee.peng.yeoh@intel.com>; Chan,
> > Aaron Chun Yew <aaron.chun.yew.chan@intel.com>;
> > richard.purdie@linuxfoundation.org; akuster808@gmail.com;
> > sjolley.yp.pm@gmail.com; Jain, Sangeeta <sangeeta.jain@intel.com>
> > Subject: QA notification for completed autobuilder build
> (yocto-3.0.4.rc1)
> >
> >
> > A build flagged for QA (yocto-3.0.4.rc1) was completed on the
> autobuilder and is
> > available at:
> >
> >
> >     https://autobuilder.yocto.io/pub/releases/yocto-3.0.4.rc1
> >
> >
> > Build hash information:
> >
> > bitbake: fd279f857c98d492f43cc62d9ebae18ce6412b6e
> > meta-arm: 38de27d05f104f989adfed5c5363464dd600b316
> > meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166
> > meta-intel: ce6f8ddd2d7f42a9fe530d30332b0d9695e4904b
> > meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4
> > meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260
> > oecore: 9cad716656b427e625a470a820b8b29b1ec9f976
> > poky: f2eb22a8783f1eecf99bd4042695bab920eed00e
> >
> >
> >
> > This is an automated message from the Yocto Project Autobuilder
> > Git: git://git.yoctoproject.org/yocto-autobuilder2
> > Email: richard.purdie@linuxfoundation.org
> >
> >
> >
> 
>

--00000000000007690905ad0e00be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt;<span style=3D"color:rgb(255,0,0)"><i><b> Intel</=
b></i></span> and WR YP QA is planning for QA execution for YP</div><div>&g=
t; build yocto-3.0.3.rc2.</div><div><br></div><div>With all due respect... =
INTEL part I&#39;ll drop out. ;-)</div><div><br></div><div>Better to keep Y=
OCTO as an Open Source project without</div><div>mentioning ECO systems fin=
ancing it... Correct?!<br></div><div><br></div><div>YOCTO is an (Force Majo=
r context) Open Source project... Isn&#39;t it?!</div><div><br></div><div>T=
hank you,</div><div>Zoran Stojsavljevic</div><div>_______<br></div><div><br=
></div><div><br></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Mon, Aug 17, 2020 at 9:09 AM Sangeeta Jain &lt=
;<a href=3D"mailto:sangeeta.jain@intel.com">sangeeta.jain@intel.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello Al=
l,<br>
<br>
Intel and WR YP QA is planning for QA execution for YP build yocto-3.0.3.r=
c2. We are planning to execute following tests for this cycle:<br>
<br>
OEQA-manual tests for following module:<br>
1. OE-Core<br>
2. BSP-hw<br>
<br>
Runtime auto test for following platforms:<br>
1. MinnowTurbot 32-bit<br>
2. Coffee Lake<br>
3. NUC 7<br>
4. NUC 6<br>
5. Edgerouter<br>
6. MPC8315e-rdb<br>
7. Beaglebone<br>
<br>
ETA for completion is next Wednesday, Aug 19.<br>
<br>
Thanks,<br>
Sangeeta<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Poky Build User &lt;<a href=3D"mailto:pokybuild@centos7-ty-4.yo=
cto.io" target=3D"_blank">pokybuild@centos7-ty-4.yocto.io</a>&gt;<br>
&gt; Sent: Saturday, 15 August, 2020 1:06 PM<br>
&gt; To: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank"=
>yocto@lists.yoctoproject.org</a><br>
&gt; Cc: <a href=3D"mailto:otavio@ossystems.com.br" target=3D"_blank">otav=
io@ossystems.com.br</a>; <a href=3D"mailto:yi.zhao@windriver.com" target=3D=
"_blank">yi.zhao@windriver.com</a>; Sangal, Apoorv<br>
&gt; &lt;<a href=3D"mailto:apoorv.sangal@intel.com" target=3D"_blank">apoo=
rv.sangal@intel.com</a>&gt;; Yeoh, Ee Peng &lt;<a href=3D"mailto:ee.peng.ye=
oh@intel.com" target=3D"_blank">ee.peng.yeoh@intel.com</a>&gt;; Chan,<br>
&gt; Aaron Chun Yew &lt;<a href=3D"mailto:aaron.chun.yew.chan@intel.com" t=
arget=3D"_blank">aaron.chun.yew.chan@intel.com</a>&gt;;<br>
&gt; <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blan=
k">richard.purdie@linuxfoundation.org</a>; <a href=3D"mailto:akuster808@gma=
il.com" target=3D"_blank">akuster808@gmail.com</a>;<br>
&gt; <a href=3D"mailto:sjolley.yp.pm@gmail.com" target=3D"_blank">sjolley.=
yp.pm@gmail.com</a>; Jain, Sangeeta &lt;<a href=3D"mailto:sangeeta.jain@int=
el.com" target=3D"_blank">sangeeta.jain@intel.com</a>&gt;<br>
&gt; Subject: QA notification for completed autobuilder build (yocto-3.0.4=
.rc1)<br>
&gt; <br>
&gt; <br>
&gt; A build flagged for QA (yocto-3.0.4.rc1) was completed on the autobui=
lder and is<br>
&gt; available at:<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://autobuilder.yocto.io/pub/releas=
es/yocto-3.0.4.rc1" rel=3D"noreferrer" target=3D"_blank">https://autobuilde=
r.yocto.io/pub/releases/yocto-3.0.4.rc1</a><br>
&gt; <br>
&gt; <br>
&gt; Build hash information:<br>
&gt; <br>
&gt; bitbake: fd279f857c98d492f43cc62d9ebae18ce6412b6e<br>
&gt; meta-arm: 38de27d05f104f989adfed5c5363464dd600b316<br>
&gt; meta-gplv2: 0f4eecc000f66d114ad258fa31aed66afa292166<br>
&gt; meta-intel: ce6f8ddd2d7f42a9fe530d30332b0d9695e4904b<br>
&gt; meta-kernel: cb7f0dc5bb1ea0998c8d4fcb486148d4cab575f4<br>
&gt; meta-mingw: 756963cc28ebc163df7d7f4b4ee004c18d3d3260<br>
&gt; oecore: 9cad716656b427e625a470a820b8b29b1ec9f976<br>
&gt; poky: f2eb22a8783f1eecf99bd4042695bab920eed00e<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; This is an automated message from the Yocto Project Autobuilder<br>
&gt; Git: git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder2"=
 rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/yocto-autobuilde=
r2</a><br>
&gt; Email: <a href=3D"mailto:richard.purdie@linuxfoundation.org" target=
=3D"_blank">richard.purdie@linuxfoundation.org</a><br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
</blockquote></div>

--00000000000007690905ad0e00be--
