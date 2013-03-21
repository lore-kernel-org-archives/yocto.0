Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D430FE01472
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:10:04 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id hn17so464233wib.0
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 07:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=YbSCebphWWJ94oi0mzkFlQRQr/KaPLt4ulIdOSArJQE=;
	b=cJn34m3PmbzhErYlIMomPmRAx+KIlVEZsSXi082gc+GnVmolzAdiHS1YAQ7hzAt6cK
	uCLz1+mT7e5EMXIKCAdYh9XfMAiUuvYIYQVKc2R+0KwT9c5hExndNs+HG4t8rmfXiDHB
	GdINQoqpPAy0Gt5qVGIw1wOTi8eCoUr4tPqHYZFTxWjqTm0TNR/TzTmqQa7aJXL6hWpU
	0JTRoVELX8yZ/PioXia/KsRwSSoVpDeG2NJCCyjypx0vzkJqpz9Q3j/nbiJucPhFjTnr
	3y2JMad7IzVhKD1DVehDhA2dxhRN56SnukEwXCxv0nJMlV3562rfB/wx4ECVK4Vmw6GA
	Rwrw==
MIME-Version: 1.0
X-Received: by 10.180.103.40 with SMTP id ft8mr5183963wib.28.1363875004046;
	Thu, 21 Mar 2013 07:10:04 -0700 (PDT)
Received: by 10.194.89.106 with HTTP; Thu, 21 Mar 2013 07:10:03 -0700 (PDT)
In-Reply-To: <CAJTo0LYAdjQd3QA+d8SXo=Phrr5fDwejaGxQXGsSEHNbx4uiYA@mail.gmail.com>
References: <513F03EC.4020909@linux.intel.com>
	<514972E1.3010802@linux.intel.com>
	<CAJTo0LYAdjQd3QA+d8SXo=Phrr5fDwejaGxQXGsSEHNbx4uiYA@mail.gmail.com>
Date: Thu, 21 Mar 2013 15:10:03 +0100
Message-ID: <CA+chaQcK5mDao81MAMnrM+FmOTnH8FAKmZ2KyX95FTruuTNS-A@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: systemd timeouts started daemons
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
X-List-Received-Date: Thu, 21 Mar 2013 14:10:05 -0000
Content-Type: multipart/alternative; boundary=f46d044282ac22665c04d86fe5dc

--f46d044282ac22665c04d86fe5dc
Content-Type: text/plain; charset=UTF-8

Does this resolve also update-rc.d postinst trying to start /etc/init.d/dbus-1
and failing to find it?


On Thu, Mar 21, 2013 at 1:36 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 20 March 2013 08:27, Jukka Rissanen <jukka.rissanen@linux.intel.com>
> wrote:
> > The reason for this was that systemd did not receive NameOwnerChanged
> dbus
> > signal telling that the daemon managed to register its name to the system
> > bus.
> >
> > I checked with dbus-monitor that these NameOwnerChanged signals are
> indeed
> > sent by dbus-daemon but they are not seen in debug prints from systemd.
>
> Andreas sent a patch earlier that masks the dbus init script, because
> the names don't match so you'll end up with two system buses
> attempting to run.  I'm not sure how this will fail, but it could mean
> that systemd isn't listening to the bus that connman is starting on,
> or something.
>
> The easy hack to test this is to delete /etc/init.d/dbus-1 and the
> symlinks to it in /etc/rc*.
>
> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f46d044282ac22665c04d86fe5dc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does this resolve also update-rc.d postinst trying to star=
t=C2=A0<span style=3D"font-family:arial,sans-serif;font-size:12.80000019073=
4863px">/etc/init.d/dbus-1 and failing to find it?</span></div><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Thu, Mar 21, 2013 at 1:36 PM, Burton,=
 Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex">
<div class=3D"im">On 20 March 2013 08:27, Jukka Rissanen &lt;<a href=3D"mai=
lto:jukka.rissanen@linux.intel.com">jukka.rissanen@linux.intel.com</a>&gt; =
wrote:<br>
&gt; The reason for this was that systemd did not receive NameOwnerChanged =
dbus<br>
&gt; signal telling that the daemon managed to register its name to the sys=
tem<br>
&gt; bus.<br>
&gt;<br>
&gt; I checked with dbus-monitor that these NameOwnerChanged signals are in=
deed<br>
&gt; sent by dbus-daemon but they are not seen in debug prints from systemd=
.<br>
<br>
</div>Andreas sent a patch earlier that masks the dbus init script, because=
<br>
the names don&#39;t match so you&#39;ll end up with two system buses<br>
attempting to run. =C2=A0I&#39;m not sure how this will fail, but it could =
mean<br>
that systemd isn&#39;t listening to the bus that connman is starting on,<br=
>
or something.<br>
<br>
The easy hack to test this is to delete /etc/init.d/dbus-1 and the<br>
symlinks to it in /etc/rc*.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5">_____________________=
__________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--f46d044282ac22665c04d86fe5dc--
