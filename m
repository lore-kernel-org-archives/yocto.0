Return-Path: <katutxakurra@gmail.com>
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81DEDE00AA3
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:55:32 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id uq10so8016881igb.5
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 04:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=kVk/hUEkwuBI0eChgX6ddMZNLTjMisRr3qDLpB2u4e4=;
	b=dINDHPbaAkn9yYCtMsHUptzIzNDf0J3QGRzvTPKfHNnsRBH/MDnmxgKTNr4m/39auX
	ZVt7aXQ8La5DD5ZIUwcVpMa1h1SpsF+oEYZEM/DEmOFHFOzLEe1BEL1Tj9ouzjEPFJBn
	pBBSNPO9EDKxIjv4t8TM+00Pq465XJg231qSE8+oTX8bCPBuKgDOpselO2NAlT29gWHB
	/FlU9oE6cfg+xvj1FfCPwnZQcarwwQjX/aK5BZK6f9NkwpVE9BzglutWcN5VZeRlaaIR
	VHaKZmckGLcAhG6/tOa+1uox2LCvOZ9Th+2RjS4G999gRIDQNuA8c62lAc0hnslKjTiR
	V5fQ==
MIME-Version: 1.0
X-Received: by 10.42.4.201 with SMTP id 9mr1277845ict.57.1394452532084; Mon,
	10 Mar 2014 04:55:32 -0700 (PDT)
Received: by 10.50.230.46 with HTTP; Mon, 10 Mar 2014 04:55:32 -0700 (PDT)
In-Reply-To: <CAMKF1spktCyfdaT+i=eGVZFywMRPRXCmNP0u=DAwzRZCgz1eZw@mail.gmail.com>
References: <CAM1ZcoVHPgerCQnFsP5EpAu=71s-WMHYfrwM3Q5eBFngKPq8XA@mail.gmail.com>
	<CAM1ZcoX8R7CLcrLzXA2B9LqYLkHGPCtqSpsapcBP39-DWKc6tA@mail.gmail.com>
	<CAMKF1spktCyfdaT+i=eGVZFywMRPRXCmNP0u=DAwzRZCgz1eZw@mail.gmail.com>
Date: Mon, 10 Mar 2014 11:55:32 +0000
Message-ID: <CAM1ZcoUCJcyEcNhukSkTf6NiDzdVSFwhPvD_3BD5Ozw4SRg-bw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable/disable systemd from image.bb
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
X-List-Received-Date: Mon, 10 Mar 2014 11:55:35 -0000
Content-Type: multipart/alternative; boundary=001a11346bd2d4c5e304f43f4749

--001a11346bd2d4c5e304f43f4749
Content-Type: text/plain; charset=ISO-8859-1

Thanks Khem,

I found my mistake. I forgot adding ${IMAGE_ROOTFS} and I was trying to run
the commands in my host. This works.

ROOTFS_POSTPROCESS_COMMAND =+ "\
    rm -rf
${IMAGE_ROOTFS}/etc/systemd/system/multi-user.target.wants/recipeA.service;
\
    ln -sf ${IMAGE_ROOTFS}/lib/systemd/system/recipeB.service'
'/etc/systemd/system/multi-user.target.wants/recipeB.service; \
"

regards,
Katu


2014-03-04 22:45 GMT+00:00 Khem Raj <raj.khem@gmail.com>:

> On Tue, Mar 4, 2014 at 6:38 AM, Katu Txakur <katutxakurra@gmail.com>
> wrote:
> > Sorry, I sent it uncompleted by mistake.
> >
> > I've also tried
> >
> > ROOTFS_POSTPROCESS_COMMAND =+ "\
> >     rm -rf /etc/systemd/system/multi-user.target.wants/recipeA.service; \
> > "
> >
> > but it didn't work either. Anyone knows how to do this?
> >
>
> you can mask the service via a postprocess command something like
> systemctl --root=${D} mask <yourservice>.service
>
>
> > Thanks,
> > Katu
> >
> >
> > 2014-03-04 14:37 GMT+00:00 Katu Txakur <katutxakurra@gmail.com>:
> >
> >> Hi,
> >>
> >> I'm using Yocto 1.3 and I've created some recipes. All of them have
> >> systemd services. Some of them start at boot time and others don't.
> Let's
> >> say for example:
> >> recipeA_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "enable"
> >> recipeB_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "disable"
> >>
> >> I want to create two image.bb files. One of them will start A and the
> >> other one will start B. I've tried adding
> >>
> >> imageB.bb
> >> .....
> >> SYSTEMD_AUTO_ENABLE_recipeA-systemd = "disable"
> >> SYSTEMD_AUTO_ENABLE_recipeB-systemd = "enable"
> >> .....
> >>
> >> I've also tried
> >>
> >>
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11346bd2d4c5e304f43f4749
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks Khem,<br><br></div>I found my mistak=
e. I forgot adding ${IMAGE_ROOTFS} and I was trying to run the commands in =
my host. This works.<br><br>ROOTFS_POSTPROCESS_COMMAND =3D+ &quot;\<br>
=A0 =A0 rm -rf ${IMAGE_ROOTFS}/etc/systemd/system/multi-user.target.wants/r=
ecipeA.service; \<br>=A0=A0=A0 ln -sf ${IMAGE_ROOTFS}/lib/systemd/system/re=
cipeB.service&#39; &#39;/etc/systemd/system/multi-user.target.wants/recipeB=
.service; \<br>
<div class=3D"im">
&quot;</div><br></div>regards,<br></div>Katu<br></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">2014-03-04 22:45 GMT+00:00 Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On Tue, Mar 4, 2014 at 6:38 =
AM, Katu Txakur &lt;<a href=3D"mailto:katutxakurra@gmail.com">katutxakurra@=
gmail.com</a>&gt; wrote:<br>

&gt; Sorry, I sent it uncompleted by mistake.<br>
&gt;<br>
&gt; I&#39;ve also tried<br>
&gt;<br>
&gt; ROOTFS_POSTPROCESS_COMMAND =3D+ &quot;\<br>
&gt; =A0 =A0 rm -rf /etc/systemd/system/multi-user.target.wants/recipeA.ser=
vice; \<br>
&gt; &quot;<br>
&gt;<br>
&gt; but it didn&#39;t work either. Anyone knows how to do this?<br>
&gt;<br>
<br>
</div>you can mask the service via a postprocess command something like<br>
systemctl --root=3D${D} mask &lt;yourservice&gt;.service<br>
<div class=3D""><br>
<br>
&gt; Thanks,<br>
&gt; Katu<br>
&gt;<br>
&gt;<br>
&gt; 2014-03-04 14:37 GMT+00:00 Katu Txakur &lt;<a href=3D"mailto:katutxaku=
rra@gmail.com">katutxakurra@gmail.com</a>&gt;:<br>
&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m using Yocto 1.3 and I&#39;ve created some recipes. All of =
them have<br>
&gt;&gt; systemd services. Some of them start at boot time and others don&#=
39;t. Let&#39;s<br>
&gt;&gt; say for example:<br>
&gt;&gt; <a href=3D"http://recipeA_1.0.bb" target=3D"_blank">recipeA_1.0.bb=
</a> &gt; SYSTEMD_AUTO_ENABLE_${PN}-systemd =3D &quot;enable&quot;<br>
&gt;&gt; <a href=3D"http://recipeB_1.0.bb" target=3D"_blank">recipeB_1.0.bb=
</a> &gt; SYSTEMD_AUTO_ENABLE_${PN}-systemd =3D &quot;disable&quot;<br>
&gt;&gt;<br>
&gt;&gt; I want to create two <a href=3D"http://image.bb" target=3D"_blank"=
>image.bb</a> files. One of them will start A and the<br>
&gt;&gt; other one will start B. I&#39;ve tried adding<br>
&gt;&gt;<br>
&gt;&gt; imageB.bb<br>
&gt;&gt; .....<br>
&gt;&gt; SYSTEMD_AUTO_ENABLE_recipeA-systemd =3D &quot;disable&quot;<br>
&gt;&gt; SYSTEMD_AUTO_ENABLE_recipeB-systemd =3D &quot;enable&quot;<br>
&gt;&gt; .....<br>
&gt;&gt;<br>
&gt;&gt; I&#39;ve also tried<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
</div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--001a11346bd2d4c5e304f43f4749--
