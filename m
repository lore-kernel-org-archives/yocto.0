Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7929AE014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 02:37:54 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id a13so1096290iee.34
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 02:37:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cssWXfyAVIXgTRN+qOnpmPxUkXMgeo6iYLU5tM7zG9M=;
	b=KJlbbfphrqr6JQWA0HJ//cvY4jHi7Wl/Se9op6BpoR/dRSQ2nBQNghhDQHFuvkczD7
	H8PsytOPM/tSpUhGtHcVnmclsrUEJvfCLiq5Z4MlUlI3Aeby+RtoRVdDIIEDYlshR8+F
	P3RBxn66yzKHb2qMj/OxwXAX+FNkOn4+u/v2VFPn+NQztrmOwFveyFbIO1XMRmiK1fdY
	c6G2zdY3BA+p3Xq3GQwdbJT0H3xQK2GO6AY7BVwDCknXmB1HHUEW/pg5fBj3ugKc6DiQ
	iMTb2WGSv8jfieVytivukexh6i8St7uRzirT7bZLCMaqLEsr8Oq6nJXK8K3DPRJBmAT3
	j2ig==
MIME-Version: 1.0
X-Received: by 10.50.1.20 with SMTP id 20mr1718599igi.56.1372325873708; Thu,
	27 Jun 2013 02:37:53 -0700 (PDT)
Received: by 10.50.43.167 with HTTP; Thu, 27 Jun 2013 02:37:53 -0700 (PDT)
In-Reply-To: <51CB0AB3.2070107@r-finger.com>
References: <CAM1ZcoUioyojYfHot5ue+2qfpiYm884T7psN8aSg+XLdUjH+-Q@mail.gmail.com>
	<51CB0AB3.2070107@r-finger.com>
Date: Thu, 27 Jun 2013 10:37:53 +0100
Message-ID: <CAM1ZcoVs-utQDKn8wkup_xOK77Kk=ko3=KuRxuisMP4Uw6Nk2Q@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
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
X-List-Received-Date: Thu, 27 Jun 2013 09:37:55 -0000
Content-Type: multipart/alternative; boundary=e89a8f64303437f55e04e01f840a

--e89a8f64303437f55e04e01f840a
Content-Type: text/plain; charset=ISO-8859-1

Thanks Tomas, it was as easy as

pkg_postinst_${PN} () {
     #!/bin/sh -e
     net-snmp-config --create-snmpv3-user -a "my_password" myuser
}



2013/6/26 Tomas Frydrych <tf+lists.yocto@r-finger.com>

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

--e89a8f64303437f55e04e01f840a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Tomas, it was as easy as<div><br></div><div><div>pk=
g_postinst_${PN} () {</div><div>=A0 =A0 =A0#!/bin/sh -e</div><div>=A0 =A0 =
=A0net-snmp-config --create-snmpv3-user -a &quot;my_password&quot; myuser</=
div><div>}<br>
</div><div><br></div></div></div><div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote">2013/6/26 Tomas Frydrych <span dir=3D"ltr">&lt;<a href=
=3D"mailto:tf+lists.yocto@r-finger.com" target=3D"_blank">tf+lists.yocto@r-=
finger.com</a>&gt;</span><br>
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

--e89a8f64303437f55e04e01f840a--
