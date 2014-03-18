Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C60BEE00B37
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:42:13 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id oz11so7179048veb.5
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3txVvHuy/ogS8btDUW4vtNRFD2FOYU1rzeArNg7Mlqw=;
	b=RYraVV6ZialK2mBliBaOgpsLQgZu19beypJlsbB3GTg8XKSfCKarVsLHG0+tp71ZZb
	mU+pvczdGTMvjqH2SvFHnP7WxIYtEJjExya89p8GnXCcnk8QTZc1P+luVfRevuh8GvuM
	8BSHIre7RYzZNEHcfGRIEZfTWJn1ly/kuSppjTPrPWDGCvJMykqTCwgD/cSO3p0pPUly
	ENuzkmJMSr5Jm+x852+IUFiNDjMHZLIdPED0LOIMD+SxFqPLbenVU5+BMtjgBTHmNhp9
	w07u1GtipF2I0ybLvIs7wibZ4dTry3hBPGZl1c8OmiCzjSpgJcvqKX9WfeTf/C/SqiY2
	cN0A==
MIME-Version: 1.0
X-Received: by 10.58.221.102 with SMTP id qd6mr985679vec.47.1395160932402;
	Tue, 18 Mar 2014 09:42:12 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 09:42:12 -0700 (PDT)
In-Reply-To: <532871AE.4070709@mlbassoc.com>
References: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>
	<532871AE.4070709@mlbassoc.com>
Date: Tue, 18 Mar 2014 09:42:12 -0700
Message-ID: <CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Losing Ethernet after reboot
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
X-List-Received-Date: Tue, 18 Mar 2014 16:42:14 -0000
Content-Type: multipart/alternative; boundary=047d7bf0e4ccc7ce4204f4e43723

--047d7bf0e4ccc7ce4204f4e43723
Content-Type: text/plain; charset=ISO-8859-1

Sorry typing on the fly. Here is what is in interfaces:
auto eth0
iface eth0 inet dhcp


On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 10:10, Rick Bianchi wrote:
> >
> > I losing Ethernet after every reboot. What is the process to have it
> come up manually?
> >
> > Image: Dylan gumstix-console
> >
> > I have already added eth0 auto to my /etc/network/interfaces.
>
> Shouldn't this line read
>   auto eth0
> not the other way around?
>
> > At the moment I need to run the following after every reboot:
> >
> > ifconfig eth0 up
> > udhcpc eth0
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bf0e4ccc7ce4204f4e43723
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Sorry typing on the fly. Here is what is in interface=
s:<br></div><div>auto eth0<br>iface eth0 inet dhcp <br></div></div><div cla=
ss=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Mar 18, 2014 =
at 9:17 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbass=
oc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-18 10:10, Rick Bi=
anchi wrote:<br>
&gt;<br>
&gt; I losing Ethernet after every reboot. What is the process to have it c=
ome up manually?<br>
&gt;<br>
&gt; Image: Dylan gumstix-console<br>
&gt;<br>
&gt; I have already added eth0 auto to my /etc/network/interfaces.<br>
<br>
</div>Shouldn&#39;t this line read<br>
=A0 auto eth0<br>
not the other way around?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; At the moment I need to run the following after every reboot:<br>
&gt;<br>
&gt; ifconfig eth0 up<br>
&gt; udhcpc eth0<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7bf0e4ccc7ce4204f4e43723--
