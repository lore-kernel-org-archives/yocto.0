Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98353E00B3A
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:58:38 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id la4so7545847vcb.17
	for <yocto@yoctoproject.org>; Tue, 18 Mar 2014 09:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=42uo78mfpLYPGpen3mTfmwWzMlgLiVtzBBoiy7Wgcac=;
	b=FSztWQZvfqYIUqOWdYo6WgAoctjIOubyszk4xFsEcIx9zFtuRtgOJI545smqNNRdoH
	FQmBo5REeCotDba3lv0yo29VtezYsfdo12tCvsSUNK790fnWZqlMs6Wy5BlY8FwRjzqQ
	qw4PydE9Lh7086smN+VOwcdaHS09+huuTwTMio6uVas4SQAPy/AH5od7FGCfrJgylGLG
	O7uTkU97rdL+/MMOKOBlOpU4T9SyYfBdfWf1cu+MPzS59mRPmU0/0J2J5MqIdomuMdcs
	2P7GHBudbrjuxNoXOfcIrQYRDLBh1WHsX+OF3H6qm1tX4hzHVJJlpa5CX+BpuyrGY4b8
	aJbw==
MIME-Version: 1.0
X-Received: by 10.52.18.70 with SMTP id u6mr22014579vdd.11.1395161918379; Tue,
	18 Mar 2014 09:58:38 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Tue, 18 Mar 2014 09:58:38 -0700 (PDT)
In-Reply-To: <53287AD3.5040505@mlbassoc.com>
References: <CAA7h+EoDLUqhc1LsciVo55QxLNX0ZQvLg9AKCffpKCctX4AMxQ@mail.gmail.com>
	<532871AE.4070709@mlbassoc.com>
	<CAA7h+Ep60qgSkAmJei+vOdmZ2r5b5bj4uyn0o7zRXK0XG3Lj=w@mail.gmail.com>
	<53287AD3.5040505@mlbassoc.com>
Date: Tue, 18 Mar 2014 09:58:38 -0700
Message-ID: <CAA7h+Ep4-7XLFfpJurAikNMEDSesmTv=1Sc20QuLhALn4EATDg@mail.gmail.com>
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
X-List-Received-Date: Tue, 18 Mar 2014 16:58:39 -0000
Content-Type: multipart/alternative; boundary=001a1136b6668c9c0a04f4e472d2

--001a1136b6668c9c0a04f4e472d2
Content-Type: text/plain; charset=ISO-8859-1

ls -l /etc/rc*/S*networking  only gives me the following:

lrwxrwxrwx 1 root root 20 Mar 14 2014 /etc/rcS.d/S40networking ->
../init.d/networking




On Tue, Mar 18, 2014 at 9:56 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 10:42, Rick Bianchi wrote:
> > Sorry typing on the fly. Here is what is in interfaces:
> > auto eth0
> > iface eth0 inet dhcp
>
> Are you using systemd or sysvinit?
>
> I use sysvinit and have these init script settings that start the network:
> root@everest-p36:~# ls -l /etc/rc*/S*networking
> lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc2.d/S01networking ->
> ../init.d/networking
> lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc3.d/S01networking ->
> ../init.d/networking
> lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc4.d/S01networking ->
> ../init.d/networking
> lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc5.d/S01networking ->
> ../init.d/networking
>
> >
> >
> > On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas <gary@mlbassoc.com <mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-18 10:10, Rick Bianchi wrote:
> >     >
> >     > I losing Ethernet after every reboot. What is the process to have
> it come up manually?
> >     >
> >     > Image: Dylan gumstix-console
> >     >
> >     > I have already added eth0 auto to my /etc/network/interfaces.
> >
> >     Shouldn't this line read
> >       auto eth0
> >     not the other way around?
> >
> >     > At the moment I need to run the following after every reboot:
> >     >
> >     > ifconfig eth0 up
> >     > udhcpc eth0
>
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

--001a1136b6668c9c0a04f4e472d2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>ls -l /etc/rc*/S*networking =A0only gives me the foll=
owing:<br></div><div><br></div><div>lrwxrwxrwx 1 root root 20 Mar 14  2014 =
/etc/rcS.d/S40networking -&gt; ../init.d/networking<br></div><div><br></div=
>
<div><br></div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Mar 18, 2014 at 9:56 AM, Gary Thomas <span dir=3D"ltr">&lt;=
<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"">On 2014-03-18 10:42, Rick Bi=
anchi wrote:<br>
&gt; Sorry typing on the fly. Here is what is in interfaces:<br>
&gt; auto eth0<br>
&gt; iface eth0 inet dhcp<br>
<br>
</div>Are you using systemd or sysvinit?<br>
<br>
I use sysvinit and have these init script settings that start the network:<=
br>
root@everest-p36:~# ls -l /etc/rc*/S*networking<br>
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc2.d/S01networking -&gt; ../in=
it.d/networking<br>
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc3.d/S01networking -&gt; ../in=
it.d/networking<br>
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc4.d/S01networking -&gt; ../in=
it.d/networking<br>
lrwxrwxrwx 1 root root 20 Mar 18 15:58 /etc/rc5.d/S01networking -&gt; ../in=
it.d/networking<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt;<br>
&gt; On Tue, Mar 18, 2014 at 9:17 AM, Gary Thomas &lt;<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlb=
assoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; =A0 =A0 On 2014-03-18 10:10, Rick Bianchi wrote:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I losing Ethernet after every reboot. What is the process=
 to have it come up manually?<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; Image: Dylan gumstix-console<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; I have already added eth0 auto to my /etc/network/interfa=
ces.<br>
&gt;<br>
&gt; =A0 =A0 Shouldn&#39;t this line read<br>
&gt; =A0 =A0 =A0 auto eth0<br>
&gt; =A0 =A0 not the other way around?<br>
&gt;<br>
&gt; =A0 =A0 &gt; At the moment I need to run the following after every reb=
oot:<br>
&gt; =A0 =A0 &gt;<br>
&gt; =A0 =A0 &gt; ifconfig eth0 up<br>
&gt; =A0 =A0 &gt; udhcpc eth0<br>
<br>
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
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a1136b6668c9c0a04f4e472d2--
