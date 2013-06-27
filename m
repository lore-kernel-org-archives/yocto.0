Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f46.google.com (mail-la0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83260E014E2
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 23:38:17 -0700 (PDT)
Received: by mail-la0-f46.google.com with SMTP id eg20so372108lab.5
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 23:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=jkeOiHZSRZlGjpZp47HBmw+MJGlbViV4xHhM4p51mqs=;
	b=Iz5r36tu8YCuekpUarVZwrt/fXi0913Kc7gtFdHhSjIbZ/4b76hXXCc3SmAkGtmoMk
	KroD9AkcrGBK94FHRxoP4ww7DRemNPKNLxVYkvpaxm1r/U1tyVOhLQT2t9avNekEy01b
	Y1r3vYFxVOJuyKR6ZSOZesgQFeaJ3tOQ97mwqXN9vBzdSipRltRc9QTXzo82z3w7RAF1
	Z5FD1COUIW10KFyl7AuxoEcIqtA6Y0AP+4sCShozu3wsPvVmBACB1tDpFMD1iW4AHsF6
	3FHxl8ymM9T9P69/7UmfIz8kl4qseVG7nVBPHl/CGzf5oLWPqI5xVp6LKSGMt8I/QRtt
	Dqxw==
MIME-Version: 1.0
X-Received: by 10.112.133.137 with SMTP id pc9mr3355638lbb.27.1372315095683;
	Wed, 26 Jun 2013 23:38:15 -0700 (PDT)
Received: by 10.114.174.144 with HTTP; Wed, 26 Jun 2013 23:38:15 -0700 (PDT)
In-Reply-To: <51CB0AB3.2070107@r-finger.com>
References: <CAM1ZcoUioyojYfHot5ue+2qfpiYm884T7psN8aSg+XLdUjH+-Q@mail.gmail.com>
	<51CB0AB3.2070107@r-finger.com>
Date: Thu, 27 Jun 2013 12:08:15 +0530
Message-ID: <CAE_REAvJT8ViDcJuHTUUheE795xzMpfFWKB-fEHZn5tiZkHuGQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: run commands after installation
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
X-List-Received-Date: Thu, 27 Jun 2013 06:38:24 -0000
Content-Type: multipart/alternative; boundary=047d7b3439a4cc5b9204e01d0163

--047d7b3439a4cc5b9204e01d0163
Content-Type: text/plain; charset=ISO-8859-1

Hi,

You need to do something like below:

pkg_postinst() {
net-snmp-config --create-snmpv3-user -a "my_password" myuser
}

try with above and it should work :)

//Gaurang Shastri




On Wed, Jun 26, 2013 at 9:07 PM, Tomas Frydrych <tf+lists.yocto@r-finger.com
> wrote:

> On 26/06/13 15:32, Katu Txakur wrote:
> > I want to create a user after adding the snmp recipe. The command to do
> > that is:
> >
> > net-snmp-config --create-snmpv3-user -a "my_password" myuser
> >
> > What's the best way to do it? I have tried from do_install_append and
> > also from ROOTFS_POSTPROCESS_COMMAND but no luck so far.
>
> You need a postinst script for that sort of a thing.
>
> Tomas
>
> --
> http://sleepfive.com
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b3439a4cc5b9204e01d0163
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>You need to do something like b=
elow:<br><br></div>pkg_postinst() {<br><div>net-snmp-config --create-snmpv3=
-user -a &quot;my_password&quot; myuser<br>
</div><div>}<br><br></div><div>try with above and it should work :)<br><br>=
</div><div>//Gaurang Shastri<br></div><br><br></div><div class=3D"gmail_ext=
ra"><br><br><div class=3D"gmail_quote">On Wed, Jun 26, 2013 at 9:07 PM, Tom=
as Frydrych <span dir=3D"ltr">&lt;<a href=3D"mailto:tf+lists.yocto@r-finger=
.com" target=3D"_blank">tf+lists.yocto@r-finger.com</a>&gt;</span> wrote:<b=
r>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 2=
6/06/13 15:32, Katu Txakur wrote:<br>
&gt; I want to create a user after adding the snmp recipe. The command to d=
o<br>
&gt; that is:<br>
&gt;<br>
&gt; net-snmp-config --create-snmpv3-user -a &quot;my_password&quot; myuser=
<br>
&gt;<br>
&gt; What&#39;s the best way to do it? I have tried from do_install_append =
and<br>
&gt; also from ROOTFS_POSTPROCESS_COMMAND but no luck so far.<br>
<br>
</div></div>You need a postinst script for that sort of a thing.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Tomas<br>
<br>
--<br>
<a href=3D"http://sleepfive.com" target=3D"_blank">http://sleepfive.com</a>=
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7b3439a4cc5b9204e01d0163--
