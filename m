Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7C41E00B3A
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 10:14:32 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so7504893veb.11
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 10:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=LJZ3MSi6Z5vLGC/48ICzxIwStEUCLyP8ABRCnUDBnu0=;
	b=VXZfRh515nOcxlqPFndcK3ZNhIH+pF3nubqBN/E1717oeWOaQ3mjGtCakXPh2TmIWM
	t49EKJTEqc1RVOfWeOPUXPkt7Fkb6dyPJtaBrYZ3I+zAnbjmdJrqJSkTnR6leVA3v5At
	rX32e4botW/QSoCZrlWBlL09WCkbq1QFoowevW4eTu9M8gM2qX3W5CnWJydO/h4J5ycz
	0vedYhHClfPvMCEnh1OGcmhkg+nPqd+7XQV37bJbKU75u668tFa8I4cx+TjGm45W7sf3
	XmM1xDchixZKJMTV8E6DBu1D3+BnhVRziP/obWZmW3vKzsJ0VCWU10K2jYWEVLC4P1Jy
	8aig==
MIME-Version: 1.0
X-Received: by 10.221.39.138 with SMTP id tm10mr25954354vcb.7.1395162871540;
	Tue, 18 Mar 2014 10:14:31 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 10:14:31 -0700 (PDT)
In-Reply-To: <53287E26.3060005@mlbassoc.com>
References: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>
	<532871AE.4070709@mlbassoc.com>
	<CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
	<53287AD3.5040505@mlbassoc.com>
	<CAA7h+Ep4-7XLFfpJurAikNMEDSesmTv=1Sc20QuLhALn4EATDg@mail.gmail.com>
	<53287E26.3060005@mlbassoc.com>
Date: Tue, 18 Mar 2014 10:14:31 -0700
Message-ID: <CAA7h+EoOgyx52B0tb+hgErJyE9AU-PsYhOMy6wuUX9k4NDfNVA@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Mar 2014 17:14:33 -0000
Content-Type: multipart/alternative; boundary=001a1133953a5cafac04f4e4aba3

--001a1133953a5cafac04f4e4aba3
Content-Type: text/plain; charset=ISO-8859-1

1. Yes, I do have init-ifupdown on the target.

2. No, I have not made any changes to the INITSCRIPT_PARAMS.


On Tue, Mar 18, 2014 at 10:11 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 10:58, Rick Bianchi wrote:
> > ls -l /etc/rc*/S*networking  only gives me the following:
> >
> > lrwxrwxrwx 1 root root 20 Mar 14 2014 /etc/rcS.d/S40networking ->
> ../init.d/networking
>
> Looks like something changed the init scripts settings.  These are in the
> file
>   .../meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb:
>     INITSCRIPT_NAME = "networking"
>     INITSCRIPT_PARAMS = "start 01 2 3 4 5 . stop 80 0 6 1 ."
>
> I presume that you have a init-ifupdown_1.0.bbappend file for your target?
> Are you changing the INITSCRIPT_PARAMS perhaps?
>
> > On Tue, Mar 18, 2014 at 9:56 AM, Gary Thomas <gary@mlbassoc.com <mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-18 10:42, Rick Bianchi wrote:
> >     > Sorry typing on the fly. Here is what is in interfaces:
> >     > auto eth0
> >     > iface eth0 inet dhcp
> >
> >     Are you using systemd or sysvinit?
> >
> >     I use sysvinit and have these init script settings that start the
> network:
> >     root@everest-p36:~# ls -l /etc/rc*/S*networking
> >     lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc2.d/S01networking ->
> ../init.d/networking
> >     lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc3.d/S01networking ->
> ../init.d/networking
> >     lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc4.d/S01networking ->
> ../init.d/networking
> >     lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc5.d/S01networking ->
> ../init.d/networking
> >
> >     >
> >     >
> >     > On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
> wrote:
> >     >
> >     >     On 2014-03-18 10:10, Rick Bianchi wrote:
> >     >     >
> >     >     > I losing Ethernet after every reboot. What is the process to
> have it come up manually?
> >     >     >
> >     >     > Image: Dylan gumstix-console
> >     >     >
> >     >     > I have already added eth0 auto to my /etc/network/interfaces.
> >     >
> >     >     Shouldn't this line read
> >     >       auto eth0
> >     >     not the other way around?
> >     >
> >     >     > At the moment I need to run the following after every reboot:
> >     >     >
> >     >     > ifconfig eth0 up
> >     >     > udhcpc eth0
> >
> >
> >     --
> >     ------------------------------------------------------------
> >     Gary Thomas                 |  Consulting for the
> >     MLB Associates              |    Embedded world
> >     ------------------------------------------------------------
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >
> >
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>

--001a1133953a5cafac04f4e4aba3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>1. Yes, I do have init-ifupdown on the target.<br></d=
iv><div><br></div><div>2. No, I have not made any changes to the INITSCRIPT=
_PARAMS.</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_=
quote">
On Tue, Mar 18, 2014 at 10:11 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"">On 2014-03-18 10:58, Rick Bianchi wrote:<br>
&gt; ls -l /etc/rc*/S*networking =A0only gives me the following:<br>
&gt;<br>
&gt; lrwxrwxrwx 1 root root 20 Mar 14 2014 /etc/rcS.d/S40networking -&gt; .=
./init.d/networking<br>
<br>
</div>Looks like something changed the init scripts settings. =A0These are =
in the file<br>
=A0 .../meta/recipes-core/init-ifupdown/<a href=3D"http://init-ifupdown_1.0=
.bb" target=3D"_blank">init-ifupdown_1.0.bb</a>:<br>
=A0 =A0 INITSCRIPT_NAME =3D &quot;networking&quot;<br>
=A0 =A0 INITSCRIPT_PARAMS =3D &quot;start 01 2 3 4 5 . stop 80 0 6 1 .&quot=
;<br>
<br>
I presume that you have a init-ifupdown_1.0.bbappend file for your target?<=
br>
Are you changing the INITSCRIPT_PARAMS perhaps?<br>
<div class=3D""><br>
&gt; On Tue, Mar 18, 2014 at 9:56 AM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlb=
assoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 On 2014-03-18 10:42, Rick Bianchi wrote:<br>
&gt; =A0 =A0 &gt; Sorry typing on the fly. Here is what is in interfaces:<b=
r>
&gt; =A0 =A0 &gt; auto eth0<br>
&gt; =A0 =A0 &gt; iface eth0 inet dhcp<br>
&gt;<br>
&gt; =A0 =A0 Are you using systemd or sysvinit?<br>
&gt;<br>
&gt; =A0 =A0 I use sysvinit and have these init script settings that start =
the network:<br>
&gt; =A0 =A0 root@everest-p36:~# ls -l /etc/rc*/S*networking<br>
&gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc2.d/S01networkin=
g -&gt; ../init.d/networking<br>
&gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc3.d/S01networkin=
g -&gt; ../init.d/networking<br>
&gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc4.d/S01networkin=
g -&gt; ../init.d/networking<br>
&gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc5.d/S01networkin=
g -&gt; ../init.d/networking<br>
&gt;<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt;<br>
</div><div class=3D"">&gt; =A0 =A0 &gt; On Tue, Mar 18, 2014 at 9:17 AM, Ga=
ry Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &l=
t;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt=
;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt; w=
rote:<br>

&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 On 2014-03-18 10:10, Rick Bianchi wrote:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; I losing Ethernet after every reboot. What i=
s the process to have it come up manually?<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; Image: Dylan gumstix-console<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; I have already added eth0 auto to my /etc/ne=
twork/interfaces.<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 Shouldn&#39;t this line read<br>
&gt; =A0 =A0 &gt; =A0 =A0 =A0 auto eth0<br>
&gt; =A0 =A0 &gt; =A0 =A0 not the other way around?<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; At the moment I need to run the following af=
ter every reboot:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; ifconfig eth0 up<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; udhcpc eth0<br>
&gt;<br>
&gt;<br>
&gt; =A0 =A0 --<br>
&gt; =A0 =A0 ------------------------------------------------------------<b=
r>
&gt; =A0 =A0 Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting fo=
r the<br>
&gt; =A0 =A0 MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded wo=
rld<br>
&gt; =A0 =A0 ------------------------------------------------------------<b=
r>
&gt; =A0 =A0 --<br>
&gt; =A0 =A0 _______________________________________________<br>
&gt; =A0 =A0 yocto mailing list<br>
</div>&gt; =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopro=
ject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoc=
toproject.org</a>&gt;<br>
&gt; =A0 =A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt;<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
</div></div></blockquote></div><br></div>

--001a1133953a5cafac04f4e4aba3--
