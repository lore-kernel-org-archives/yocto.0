Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CF49E00B39
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:32:09 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id la4so7702351vcb.17
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 11:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=v5kpUC26awWjKgaS+DjPc3eI+YrB+DN66rNLUnlieRE=;
	b=hTQARPDCDNZOtXI/mF7IXcczrZ9HC1soC/uWboGt3vf5wsJ1ZFL7z2dlJfbsTw5gQm
	t1VpPI2A6XnHFMAaITC2uGS8H+VqD18iSHUr4fZWwDgipo6680fchqxUX64h7dGqf9NE
	YYtjno3vZr23pjjBW/RUyZoj6yoIjSAX2HH9THc0NdyrlgRGcu+xcbNVNl3JMEw002/Y
	UhaVu4q6cTo5wkG+WlfPFpc90NpQg3WK+IkmwT4V/MJUGAzyFX40qST5bkaMZKmvJSPe
	fhuN7mWO6EqIuqsct+OpApqPWrGcUmiBGT7wHKkzzouFufQwYYvbYuU21594tGCi/5fd
	eZXw==
MIME-Version: 1.0
X-Received: by 10.58.248.163 with SMTP id yn3mr5686431vec.0.1395167529290;
	Tue, 18 Mar 2014 11:32:09 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 11:32:09 -0700 (PDT)
In-Reply-To: <532887BB.6080207@mlbassoc.com>
References: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>
	<532871AE.4070709@mlbassoc.com>
	<CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
	<53287AD3.5040505@mlbassoc.com>
	<CAA7h+Ep4-7XLFfpJurAikNMEDSesmTv=1Sc20QuLhALn4EATDg@mail.gmail.com>
	<53287E26.3060005@mlbassoc.com>
	<CAA7h+EoOgyx52B0tb+hgErJyE9AU-PsYhOMy6wuUX9k4NDfNVA@mail.gmail.com>
	<532887BB.6080207@mlbassoc.com>
Date: Tue, 18 Mar 2014 11:32:09 -0700
Message-ID: <CAA7h+EqEBjbT7Ew9b4cKQUcwkjRbPJE6_WUeSFXVAWaGfrC25A@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Mar 2014 18:32:12 -0000
Content-Type: multipart/alternative; boundary=047d7bf15fd4fc51fe04f4e5c068

--047d7bf15fd4fc51fe04f4e5c068
Content-Type: text/plain; charset=ISO-8859-1

If I run, "ifup eth0" it bring eth0 with dhcp, and I can the skip the
"udhcpc eth0".


On Tue, Mar 18, 2014 at 10:51 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 11:14, Rick Bianchi wrote:
> > 1. Yes, I do have init-ifupdown on the target.
> >
> > 2. No, I have not made any changes to the INITSCRIPT_PARAMS.
> >
>
> OK, you must be using an older release/branch as this was recently changed.
>
> You can try tracing the bootup to see if/when the networking is started:
> Make this change & reboot.
>   root@everest-p36:~# sed -i s/VERBOSE=no/VERBOSE=very/ /etc/default/rcS
> This will print a line indicating which init scripts are run, etc.
>
> Also, what happens if you try to bring up your network using 'ifup eth0'
> instead of 'ifconfig eth0 up;udhcpc eth0'?
>
> > On Tue, Mar 18, 2014 at 10:11 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-18 10:58, Rick Bianchi wrote:
> >     > ls -l /etc/rc*/S*networking  only gives me the following:
> >     >
> >     > lrwxrwxrwx 1 root root 20 Mar 14 2014 /etc/rcS.d/S40networking ->
> ../init.d/networking
> >
> >     Looks like something changed the init scripts settings.  These are
> in the file
> >       .../meta/recipes-core/init-ifupdown/init-ifupdown_1.0.bb <
> http://init-ifupdown_1.0.bb>:
> >         INITSCRIPT_NAME = "networking"
> >         INITSCRIPT_PARAMS = "start 01 2 3 4 5 . stop 80 0 6 1 ."
> >
> >     I presume that you have a init-ifupdown_1.0.bbappend file for your
> target?
> >     Are you changing the INITSCRIPT_PARAMS perhaps?
> >
> >     > On Tue, Mar 18, 2014 at 9:56 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
> wrote:
> >     >
> >     >     On 2014-03-18 10:42, Rick Bianchi wrote:
> >     >     > Sorry typing on the fly. Here is what is in interfaces:
> >     >     > auto eth0
> >     >     > iface eth0 inet dhcp
> >     >
> >     >     Are you using systemd or sysvinit?
> >     >
> >     >     I use sysvinit and have these init script settings that start
> the network:
> >     >     root@everest-p36:~# ls -l /etc/rc*/S*networking
> >     >     lrwxrwxrwx 1 root root 20 Mar 18 15:58
> /etc/rc2.d/S01networking -> ../init.d/networking
> >     >     lrwxrwxrwx 1 root root 20 Mar 18 15:58
> /etc/rc3.d/S01networking -> ../init.d/networking
> >     >     lrwxrwxrwx 1 root root 20 Mar 18 15:58
> /etc/rc4.d/S01networking -> ../init.d/networking
> >     >     lrwxrwxrwx 1 root root 20 Mar 18 15:58
> /etc/rc5.d/S01networking -> ../init.d/networking
> >     >
> >     >     >
> >     >     >
> >     >     > On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
> >     >     >
> >     >     >     On 2014-03-18 10:10, Rick Bianchi wrote:
> >     >     >     >
> >     >     >     > I losing Ethernet after every reboot. What is the
> process to have it come up manually?
> >     >     >     >
> >     >     >     > Image: Dylan gumstix-console
> >     >     >     >
> >     >     >     > I have already added eth0 auto to my
> /etc/network/interfaces.
> >     >     >
> >     >     >     Shouldn't this line read
> >     >     >       auto eth0
> >     >     >     not the other way around?
> >     >     >
> >     >     >     > At the moment I need to run the following after every
> reboot:
> >     >     >     >
> >     >     >     > ifconfig eth0 up
> >     >     >     > udhcpc eth0
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

--047d7bf15fd4fc51fe04f4e5c068
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br>If I run, &quot;ifup eth0&quot; it bring eth0 with dhc=
p, and I can the skip the &quot;udhcpc eth0&quot;.</div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">On Tue, Mar 18, 2014 at 10:51 AM=
, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" ta=
rget=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-18 11:14, Rick Bi=
anchi wrote:<br>
&gt; 1. Yes, I do have init-ifupdown on the target.<br>
&gt;<br>
&gt; 2. No, I have not made any changes to the INITSCRIPT_PARAMS.<br>
&gt;<br>
<br>
</div>OK, you must be using an older release/branch as this was recently ch=
anged.<br>
<br>
You can try tracing the bootup to see if/when the networking is started:<br=
>
Make this change &amp; reboot.<br>
=A0 root@everest-p36:~# sed -i s/VERBOSE=3Dno/VERBOSE=3Dvery/ /etc/default/=
rcS<br>
This will print a line indicating which init scripts are run, etc.<br>
<br>
Also, what happens if you try to bring up your network using &#39;ifup eth0=
&#39;<br>
instead of &#39;ifconfig eth0 up;udhcpc eth0&#39;?<br>
<div class=3D""><br>
&gt; On Tue, Mar 18, 2014 at 10:11 AM, Gary Thomas &lt;<a href=3D"mailto:ga=
ry@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@ml=
bassoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 On 2014-03-18 10:58, Rick Bianchi wrote:<br>
&gt; =A0 =A0 &gt; ls -l /etc/rc*/S*networking =A0only gives me the followin=
g:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; lrwxrwxrwx 1 root root 20 Mar 14 2014 /etc/rcS.d/S40netwo=
rking -&gt; ../init.d/networking<br>
&gt;<br>
&gt; =A0 =A0 Looks like something changed the init scripts settings. =A0The=
se are in the file<br>
</div>&gt; =A0 =A0 =A0 .../meta/recipes-core/init-ifupdown/<a href=3D"http:=
//init-ifupdown_1.0.bb" target=3D"_blank">init-ifupdown_1.0.bb</a> &lt;<a h=
ref=3D"http://init-ifupdown_1.0.bb" target=3D"_blank">http://init-ifupdown_=
1.0.bb</a>&gt;:<br>

<div class=3D"">&gt; =A0 =A0 =A0 =A0 INITSCRIPT_NAME =3D &quot;networking&q=
uot;<br>
&gt; =A0 =A0 =A0 =A0 INITSCRIPT_PARAMS =3D &quot;start 01 2 3 4 5 . stop 80=
 0 6 1 .&quot;<br>
&gt;<br>
&gt; =A0 =A0 I presume that you have a init-ifupdown_1.0.bbappend file for =
your target?<br>
&gt; =A0 =A0 Are you changing the INITSCRIPT_PARAMS perhaps?<br>
&gt;<br>
</div><div class=3D"">&gt; =A0 =A0 &gt; On Tue, Mar 18, 2014 at 9:56 AM, Ga=
ry Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &l=
t;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt=
;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt; w=
rote:<br>

&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 On 2014-03-18 10:42, Rick Bianchi wrote:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; Sorry typing on the fly. Here is what is in =
interfaces:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; auto eth0<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; iface eth0 inet dhcp<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 Are you using systemd or sysvinit?<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 I use sysvinit and have these init script setting=
s that start the network:<br>
&gt; =A0 =A0 &gt; =A0 =A0 root@everest-p36:~# ls -l /etc/rc*/S*networking<b=
r>
&gt; =A0 =A0 &gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc2.d=
/S01networking -&gt; ../init.d/networking<br>
&gt; =A0 =A0 &gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc3.d=
/S01networking -&gt; ../init.d/networking<br>
&gt; =A0 =A0 &gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc4.d=
/S01networking -&gt; ../init.d/networking<br>
&gt; =A0 =A0 &gt; =A0 =A0 lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc5.d=
/S01networking -&gt; ../init.d/networking<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
</div>&gt; =A0 =A0 &gt; =A0 =A0 &gt; On Tue, Mar 18, 2014 at 9:17 AM, Gary =
Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;m=
ailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;ma=
ilto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:=
<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mail=
to:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a=
 href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

<div class=3D"">&gt; =A0 =A0 &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gar=
y@mlbassoc.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 On 2014-03-18 10:10, Rick Bianchi wr=
ote:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt; I losing Ethernet after every r=
eboot. What is the process to have it come up manually?<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt; Image: Dylan gumstix-console<br=
>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt; I have already added eth0 auto =
to my /etc/network/interfaces.<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 Shouldn&#39;t this line read<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 =A0 auto eth0<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 not the other way around?<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt; At the moment I need to run the=
 following after every reboot:<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt; ifconfig eth0 up<br>
&gt; =A0 =A0 &gt; =A0 =A0 &gt; =A0 =A0 &gt; udhcpc eth0<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
</div><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_=
blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--047d7bf15fd4fc51fe04f4e5c068--
