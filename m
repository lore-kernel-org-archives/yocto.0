Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F9CE008D6
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 00:37:05 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id to1so8438332ieb.34
	for <yocto@yoctoproject.org>; Tue, 11 Mar 2014 00:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=EHYGvFJKYDHzvvZQN4USHDfI4OUYTYa2tRLr6oe+87I=;
	b=WjciROJAz+m7+nfaTbToozCgL7Gvf4lpo5LEqLclic59cANhhLtiHgb9eAGDXVa1nO
	UpAmIwDWcG2cA40Xb6zQu0xJg69Nhr1QlZkhdDdTV9cFNhQfgGFMThb1j2dtOfL/DFSw
	wmx+r5Fhi0SDYSYZrRG7jGrc3+ED8omKdoAMKVy92tdvxZq+PbBTN4veN+s7LIfj1x2X
	0lqbpQGxwjIdCf5ZGhGg0u8eoJej2uMjyNwFiSsDEIlwN9A59L9VPu59zH+gUGOmABme
	7FDHJ0k4WA6YdawWJWz71cnghm3s7ZDfIZo+dn9wAqPcC/Rjix+jjV5dxoi57R5agwxM
	woQQ==
MIME-Version: 1.0
X-Received: by 10.42.228.65 with SMTP id jd1mr99128icb.62.1394523424591; Tue,
	11 Mar 2014 00:37:04 -0700 (PDT)
Received: by 10.50.230.46 with HTTP; Tue, 11 Mar 2014 00:37:04 -0700 (PDT)
In-Reply-To: <CAM1ZcoUCJcyEcNhukSkTf6NiDzdVSFwhPvD_3BD5Ozw4SRg-bw@mail.gmail.com>
References: <CAM1ZcoVHPgerCQnFsP5EpAu=71s-WMHYfrwM3Q5eBFngKPq8XA@mail.gmail.com>
	<CAM1ZcoX8R7CLcrLzXA2B9LqYLkHGPCtqSpsapcBP39-DWKc6tA@mail.gmail.com>
	<CAMKF1spktCyfdaT+i=eGVZFywMRPRXCmNP0u=DAwzRZCgz1eZw@mail.gmail.com>
	<CAM1ZcoUCJcyEcNhukSkTf6NiDzdVSFwhPvD_3BD5Ozw4SRg-bw@mail.gmail.com>
Date: Tue, 11 Mar 2014 07:37:04 +0000
Message-ID: <CAM1ZcoVFaFVsjBLY6V1_4+P9dAFZYUxNjKPraTZTUDrq03CU9g@mail.gmail.com>
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
X-List-Received-Date: Tue, 11 Mar 2014 07:37:07 -0000
Content-Type: multipart/alternative; boundary=001a1132e4cc5a966304f44fc937

--001a1132e4cc5a966304f44fc937
Content-Type: text/plain; charset=ISO-8859-1

Sorry, I meant

ROOTFS_POSTPROCESS_COMMAND =+ "\
    rm -rf ${IMAGE_ROOTFS}/etc/systemd/
system/multi-user.target.wants/recipeA.service; \
    ln -sf ${IMAGE_ROOTFS}/lib/systemd/system/recipeB.service' '
${IMAGE_ROOTFS}/etc/systemd/system/multi-user.target.wants/recipeB.service;
\
 "



2014-03-10 11:55 GMT+00:00 Katu Txakur <katutxakurra@gmail.com>:

> Thanks Khem,
>
> I found my mistake. I forgot adding ${IMAGE_ROOTFS} and I was trying to
> run the commands in my host. This works.
>
> ROOTFS_POSTPROCESS_COMMAND =+ "\
>     rm -rf
> ${IMAGE_ROOTFS}/etc/systemd/system/multi-user.target.wants/recipeA.service;
> \
>     ln -sf ${IMAGE_ROOTFS}/lib/systemd/system/recipeB.service'
> '/etc/systemd/system/multi-user.target.wants/recipeB.service; \
>  "
>
> regards,
> Katu
>
>
> 2014-03-04 22:45 GMT+00:00 Khem Raj <raj.khem@gmail.com>:
>
> On Tue, Mar 4, 2014 at 6:38 AM, Katu Txakur <katutxakurra@gmail.com>
>> wrote:
>> > Sorry, I sent it uncompleted by mistake.
>> >
>> > I've also tried
>> >
>> > ROOTFS_POSTPROCESS_COMMAND =+ "\
>> >     rm -rf /etc/systemd/system/multi-user.target.wants/recipeA.service;
>> \
>> > "
>> >
>> > but it didn't work either. Anyone knows how to do this?
>> >
>>
>> you can mask the service via a postprocess command something like
>> systemctl --root=${D} mask <yourservice>.service
>>
>>
>> > Thanks,
>> > Katu
>> >
>> >
>> > 2014-03-04 14:37 GMT+00:00 Katu Txakur <katutxakurra@gmail.com>:
>> >
>> >> Hi,
>> >>
>> >> I'm using Yocto 1.3 and I've created some recipes. All of them have
>> >> systemd services. Some of them start at boot time and others don't.
>> Let's
>> >> say for example:
>> >> recipeA_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "enable"
>> >> recipeB_1.0.bb > SYSTEMD_AUTO_ENABLE_${PN}-systemd = "disable"
>> >>
>> >> I want to create two image.bb files. One of them will start A and the
>> >> other one will start B. I've tried adding
>> >>
>> >> imageB.bb
>> >> .....
>> >> SYSTEMD_AUTO_ENABLE_recipeA-systemd = "disable"
>> >> SYSTEMD_AUTO_ENABLE_recipeB-systemd = "enable"
>> >> .....
>> >>
>> >> I've also tried
>> >>
>> >>
>> >
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>>
>
>

--001a1132e4cc5a966304f44fc937
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry, I meant<br><br>ROOTFS_POSTPROCESS_COMMAND =3D+ &quo=
t;\<br>
=A0 =A0 rm -rf ${IMAGE_ROOTFS}/etc/systemd/<div>system/multi-user.target.wa=
nts/recipeA.service; \<br>=A0=A0=A0 ln -sf ${IMAGE_ROOTFS}/lib/systemd/syst=
em/recipeB.service&#39; &#39; ${IMAGE_ROOTFS}/etc/systemd/system/multi-user=
.target.wants/recipeB.service; \<br>

<div>
&quot;</div></div><br></div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">2014-03-10 11:55 GMT+00:00 Katu Txakur <span dir=3D"ltr">&=
lt;<a href=3D"mailto:katutxakurra@gmail.com" target=3D"_blank">katutxakurra=
@gmail.com</a>&gt;</span>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Thanks Khem,=
<br><br></div>I found my mistake. I forgot adding ${IMAGE_ROOTFS} and I was=
 trying to run the commands in my host. This works.<br>
<br>ROOTFS_POSTPROCESS_COMMAND =3D+ &quot;\<br>
=A0 =A0 rm -rf ${IMAGE_ROOTFS}/etc/systemd/system/multi-user.target.wants/r=
ecipeA.service; \<br>=A0=A0=A0 ln -sf ${IMAGE_ROOTFS}/lib/systemd/system/re=
cipeB.service&#39; &#39;/etc/systemd/system/multi-user.target.wants/recipeB=
.service; \<br>

<div>
&quot;</div><br></div>regards,<br></div>Katu<br></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">2014-03-04 22:45 GMT+00:00 Khem Ra=
j <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_bl=
ank">raj.khem@gmail.com</a>&gt;</span>:<div>
<div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On Tue, Mar 4, 2014 at 6:38 AM, Katu Tx=
akur &lt;<a href=3D"mailto:katutxakurra@gmail.com" target=3D"_blank">katutx=
akurra@gmail.com</a>&gt; wrote:<br>


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
<div><br>
<br>
&gt; Thanks,<br>
&gt; Katu<br>
&gt;<br>
&gt;<br>
&gt; 2014-03-04 14:37 GMT+00:00 Katu Txakur &lt;<a href=3D"mailto:katutxaku=
rra@gmail.com" target=3D"_blank">katutxakurra@gmail.com</a>&gt;:<br>
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
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div></div></div><br></div>
</blockquote></div><br></div>

--001a1132e4cc5a966304f44fc937--
