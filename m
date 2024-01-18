Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB0C47422
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 21:34:42 +0000 (UTC)
Subject: Re: [yocto] etherlab
To: Marek Belisko <marek.belisko@gmail.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: IT (31.26.241.23)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 18 Jan 2024 13:34:39 -0800
References: <CAAfyv36_k6eEvWoJB4_kD4gKKmQ3ia3XWTVtYRf5hgyi5ctDzQ@mail.gmail.com>
In-Reply-To: <CAAfyv36_k6eEvWoJB4_kD4gKKmQ3ia3XWTVtYRf5hgyi5ctDzQ@mail.gmail.com>
Message-ID: <24610.1705613679102985792@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="srl0q4o865BpOQmmscRt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 21:34:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62189

--srl0q4o865BpOQmmscRt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek, and thank you for your reply.

Adding line "inherit autotools" (not "autoconf") in my recipe solved that p=
roblem.
(I also had to put the sources of etherlab as a tgz and not as a plain dire=
ctory)

I am now facing a different problem: the configure command complains

error: kernel 6.5 not available for 8139too driver!

As I don't need 8139too, I changed the configure arguments to

sh configure --sysconfdir=3D/etc --enable-igb --disable-8139too

This works if I build etherlab out of poky, but has no effect inside do_com=
pile: I still get the same "not available" error.

My impression is that my do_compile isn't executed at all, and somehow "con=
figure" is executed without my parameters. Is this possible?

Best regards,

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--srl0q4o865BpOQmmscRt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Marek, and thank you for your reply.<br /><br />Adding line "inherit aut=
otools" (not "autoconf") in my recipe solved that problem.<br />(I also had=
 to put the sources of etherlab as a tgz and not as a plain directory)<br /=
><br />I am now facing a different problem: the configure command complains=
<br /><br /><span style=3D"color: #ff0000;">error: kernel 6.5 not available=
 for 8139too driver!</span><br /><br />As I don't need 8139too, I changed t=
he configure arguments to<br /><br /><span style=3D"color: #0000ff;">&nbsp;=
sh configure --sysconfdir=3D/etc --enable-igb --disable-8139too</span><br /=
><br />This works if I build etherlab out of poky, but has no effect inside=
 do_compile: I still get the same "not available" error.<br /><br />My impr=
ession is that my do_compile isn't executed at all, and somehow "configure"=
 is executed without my parameters. Is this possible?<br /><br />Best regar=
ds,<br /><br />-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--srl0q4o865BpOQmmscRt--

