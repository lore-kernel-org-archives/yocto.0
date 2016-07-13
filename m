Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BD91E00D15; Wed, 13 Jul 2016 00:04:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 253DEE00D02
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 00:04:06 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id q83so38463461iod.1
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 00:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RL5+n+poYS2bGyaEEM+L+F/KtxOgZgWlplBIQNFnfxI=;
	b=d1MfvYVKSmANMyO8fjShFADlThtETrxO6fmc4ALNXwDaIXCbEN+Rn8wobJBIcpKTFs
	lLjp34Tc4bFb+zlQLAbOZ6g2OO+blRP20/d9ykmoyls5DR+rL5Bin+YbLNYgaAiDBvCd
	Qm3mPl3gfDyxdrtvNrXgDNTGQDfTW5WGArbKDFbKEyu8RoyjYMUYF0t7mDQ0N44E/LNS
	NXHU7407v7a4NwIkEiYAYRxDwRa2C18wzxyLWWwIBjEmMqXl63gRG/EfsWcCscYnb3eG
	I0eeuow0NM2AggfDWLC79XmWARXbckuRaBIcgr9zAcrM/L14DWeKoUZ6Re0qqjbZaeGS
	tpiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RL5+n+poYS2bGyaEEM+L+F/KtxOgZgWlplBIQNFnfxI=;
	b=KD5uftON2Rf1BEfXzY5GkFJ0UdSIQzajf0HyiiJBrG/y3CxcI7wzAWueBDrjkwel7s
	EWUhduDi1uUfkqtWOLC/ER3KP9QEXKyMUsLSTljrLh6AOmLHn1xSSvqLdKejIFGQt5xi
	rbT/+bFy+Ix28WgV6xcm5sKjtAnSSYQBP10ofMMDHM8COQXEbGRiAutpI5snPNXwcYj2
	/M4iSmcFeOEC3AiKCRkWvF56lv9lFNZOHjss1yVe7w9gwZCXcDozR6NY1jQQ/TqJ/0bq
	WFsn86U7AHuW7zcsGPJqjacT5HrZrdRxnwv7kfVZDcdxAwYs+xwEQL2Y5JpXuDSSlhGP
	Vj9w==
X-Gm-Message-State: ALyK8tKXZweBTIrQ2XhvFGC+BOdfjDYJoYa7WNCaoowNOq9ir2NMvaLCWBSClqjrWG3zNJ/v8qPz5zYE1IlrMA==
X-Received: by 10.107.154.210 with SMTP id c201mr6884183ioe.99.1468393446347; 
	Wed, 13 Jul 2016 00:04:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Wed, 13 Jul 2016 00:03:47 -0700 (PDT)
In-Reply-To: <CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
	<CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 13 Jul 2016 09:03:47 +0200
Message-ID: <CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [genericx86-jethro] core-image-sato HDDIMG 'install' - no hard drive selected - /etc/fstab no such file or directory
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
X-List-Received-Date: Wed, 13 Jul 2016 07:04:11 -0000
Content-Type: multipart/alternative; boundary=001a1140fab6c2b28e05377efd5d

--001a1140fab6c2b28e05377efd5d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you,

I just guess, that it is the following function in init script to put the
echos to? Is it?

udev_daemon() {
    OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
/lib/systemd/systemd-udevd"

    for o in $OPTIONS; do
        if [ -x "$o" ]; then
            echo $o
            return 0
        fi
    done

    return 1
}


cheers
Simon:-)

Viele Gr=C3=BCsse
Simon Bolek :-)

mit freundlichem Gruss / kind regards / pozdrawiam
Simon P. Bolek
------------------------------------------------------
Dipl. Inf. Simon P. Bolek
SAP Integration Architect
Business Mobile and IVI Solutions
mailto: simon.bolek@arcom-ivi.de
http://www.arcom-ivi.de/
XING: https://www.xing.com/profile/SimonP_Bolek

On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
> <simon.bolek@googlemail.com> wrote:
> > Thank you Raj,
> >
> > Is there a standard way to activate these initramfs logs, or do I have =
to
> > implement it myself somewhere?
>
> you have to add printf etc. yourself into the init script in initramfs
> image
>
> >
> > thank you and kind regards
> > Simon :-)
> >
> > Viele Gr=C3=BCsse
> > Simon Bolek :-)
> >
> > mit freundlichem Gruss / kind regards / pozdrawiam
> > Simon P. Bolek
> > ------------------------------------------------------
> > Dipl. Inf. Simon P. Bolek
> > SAP Integration Architect
> > Business Mobile and IVI Solutions
> > mailto: simon.bolek@arcom-ivi.de
> > http://www.arcom-ivi.de/
> > XING: https://www.xing.com/profile/SimonP_Bolek
> >
> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >>
> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek <
> simon.bolek@googlemail.com>
> >> wrote:
> >> > Hello everyone!
> >> >
> >> > I am trying to install genericx86 core-image-sato (jethro) HDDIMG to
> an
> >> > atom-pc.
> >> > For this 2GB USB stick is used.
> >> > When choosing 'install' option from boot menu I get the message:
> >> >
> >> > "Searching for hard drives...
> >> > No hard drive selected. Installation aborted."
> >> >
> >> > Installatiion stops and i get the console.
> >> > When I try to run fsck, it says: can't read '/etc/fstab': No such fi=
le
> >> > or
> >> > directory
> >> >
> >> > fdisk -l  shows only the partitions of USB stick.
> >> >
> >> > After I choose 'boot' option to boot into live image, SDD drive is
> under
> >> > /dev/sdb and USB installation stick under /dev/sda,
> >> >
> >> > What recipe/package is my installation missing? The SSD hard drive i=
s
> >> > not
> >> > recognized for some reason. With previous yocto releases this packag=
e
> >> > list
> >> > DID work fine.
> >> > So there is something missing in the background.
> >> > Do you have any idea what this might be?
> >>
> >> udev should have run and found your hdd. So it seems its not finding
> >> it when running from initramfs. Can you try to add logs to initramfs
> >> and see what udev is doing ?
> >>
> >> >
> >> > Below is my package list from local.conf.
> >> >
> >> > thank you and kind regards
> >> > Simon :-)
> >> >
> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
> >> > IMAGE_INSTALL_append =3D " make \
> >> >      initscripts \
> >> >      grub \
> >> >      initramfs-boot \
> >> >      syslinux \
> >> >      initramfs-live-install \
> >> >      initramfs-live-install-efi \
> >> >      initramfs-live-boot \
> >> >      xinit \
> >> >      xwininfo \
> >> >      openssh-sftp \
> >> >      openssh-sftp-server \
> >> >      qtbase-plugins \
> >> >      qtconnectivity \
> >> >      qtdeclarative \
> >> >      qtdeclarative-plugins \
> >> >      qtdeclarative-tools \
> >> >      qtdeclarative-qmlplugins \
> >> >      qtenginio \
> >> >      qtlocation \
> >> >      qtmultimedia \
> >> >      qtmultimedia-plugins \
> >> >      qtmultimedia-qmlplugins \
> >> >      qtsystems \
> >> > "
> >> >
> >> > Viele Gr=C3=BCsse
> >> > Simon Bolek :-)
> >> >
> >> > mit freundlichem Gruss / kind regards / pozdrawiam
> >> > Simon P. Bolek
> >> > ------------------------------------------------------
> >> > Dipl. Inf. Simon P. Bolek
> >> > SAP Integration Architect
> >> > Business Mobile and IVI Solutions
> >> > mailto: simon.bolek@arcom-ivi.de
> >> > http://www.arcom-ivi.de/
> >> > XING: https://www.xing.com/profile/SimonP_Bolek
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
>

--001a1140fab6c2b28e05377efd5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you, <br><br></div><div>I just guess, that it i=
s the following function in init script to put the echos to? Is it?<br><br>=
udev_daemon() {<br>=C2=A0=C2=A0=C2=A0 OPTIONS=3D&quot;/sbin/udev/udevd /sbi=
n/udevd /lib/udev/udevd /lib/systemd/systemd-udevd&quot;<br><br>=C2=A0=C2=
=A0=C2=A0 for o in $OPTIONS; do<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if=
 [ -x &quot;$o&quot; ]; then<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=
=A0=C2=A0=C2=A0 echo $o<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=
=A0=C2=A0 return 0<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 fi<br>=C2=A0=C2=
=A0=C2=A0 done<br><br>=C2=A0=C2=A0=C2=A0 return 1<br>}<br><br></div><div><d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">cheers<b=
r></div><div class=3D"gmail_extra">Simon:-)<br></div><div class=3D"gmail_ex=
tra"><br clear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Viele Gr=
=C3=BCsse<br>Simon Bolek :-)<br><br>mit freundlichem Gruss / kind regards /=
 pozdrawiam<br>Simon P. Bolek<br>------------------------------------------=
------------<br>Dipl. Inf. Simon P. Bolek<br>SAP Integration Architect<br><=
div>Business=C2=A0<span style=3D"font-family:arial,sans-serif;font-size:13p=
x;border-collapse:collapse">Mobile and IVI Solutions</span><div>mailto: <a =
href=3D"mailto:simon.bolek@arcom-ivi.de" target=3D"_blank">simon.bolek@arco=
m-ivi.de</a><div><a href=3D"http://www.arcom-ivi.de/" target=3D"_blank">htt=
p://www.arcom-ivi.de/</a><br>XING: <a href=3D"https://www.xing.com/profile/=
SimonP_Bolek" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</=
a><br></div></div></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><span class=3D"">On Tue, Jul 12, 2016 at 11:28 PM, Simo=
n Bolek<br>
&lt;<a href=3D"mailto:simon.bolek@googlemail.com">simon.bolek@googlemail.co=
m</a>&gt; wrote:<br>
&gt; Thank you Raj,<br>
&gt;<br>
&gt; Is there a standard way to activate these initramfs logs, or do I have=
 to<br>
&gt; implement it myself somewhere?<br>
<br>
</span>you have to add printf etc. yourself into the init script in initram=
fs image<br>
<div class=3D""><div class=3D"h5"><br>
&gt;<br>
&gt; thank you and kind regards<br>
&gt; Simon :-)<br>
&gt;<br>
&gt; Viele Gr=C3=BCsse<br>
&gt; Simon Bolek :-)<br>
&gt;<br>
&gt; mit freundlichem Gruss / kind regards / pozdrawiam<br>
&gt; Simon P. Bolek<br>
&gt; ------------------------------------------------------<br>
&gt; Dipl. Inf. Simon P. Bolek<br>
&gt; SAP Integration Architect<br>
&gt; Business Mobile and IVI Solutions<br>
&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">simon.bolek@arcom-=
ivi.de</a><br>
&gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" target=3D"_bla=
nk">http://www.arcom-ivi.de/</a><br>
&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" rel=3D"nor=
eferrer" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br=
>
&gt;<br>
&gt; On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek &lt;<a href=3D"mailto=
:simon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Hello everyone!<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I am trying to install genericx86 core-image-sato (jethro) HD=
DIMG to an<br>
&gt;&gt; &gt; atom-pc.<br>
&gt;&gt; &gt; For this 2GB USB stick is used.<br>
&gt;&gt; &gt; When choosing &#39;install&#39; option from boot menu I get t=
he message:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &quot;Searching for hard drives...<br>
&gt;&gt; &gt; No hard drive selected. Installation aborted.&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Installatiion stops and i get the console.<br>
&gt;&gt; &gt; When I try to run fsck, it says: can&#39;t read &#39;/etc/fst=
ab&#39;: No such file<br>
&gt;&gt; &gt; or<br>
&gt;&gt; &gt; directory<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; fdisk -l=C2=A0 shows only the partitions of USB stick.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; After I choose &#39;boot&#39; option to boot into live image,=
 SDD drive is under<br>
&gt;&gt; &gt; /dev/sdb and USB installation stick under /dev/sda,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; What recipe/package is my installation missing? The SSD hard =
drive is<br>
&gt;&gt; &gt; not<br>
&gt;&gt; &gt; recognized for some reason. With previous yocto releases this=
 package<br>
&gt;&gt; &gt; list<br>
&gt;&gt; &gt; DID work fine.<br>
&gt;&gt; &gt; So there is something missing in the background.<br>
&gt;&gt; &gt; Do you have any idea what this might be?<br>
&gt;&gt;<br>
&gt;&gt; udev should have run and found your hdd. So it seems its not findi=
ng<br>
&gt;&gt; it when running from initramfs. Can you try to add logs to initram=
fs<br>
&gt;&gt; and see what udev is doing ?<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Below is my package list from local.conf.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; thank you and kind regards<br>
&gt;&gt; &gt; Simon :-)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks ssh-server-openss=
h&quot;<br>
&gt;&gt; &gt; IMAGE_INSTALL_append =3D &quot; make \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initscripts \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 grub \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-boot \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 syslinux \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-install \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-install-efi \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-boot \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xinit \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 xwininfo \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp-server \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtbase-plugins \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtconnectivity \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-plugins \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-tools \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-qmlplugins \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtenginio \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtlocation \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-plugins \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-qmlplugins \<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 qtsystems \<br>
&gt;&gt; &gt; &quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Viele Gr=C3=BCsse<br>
&gt;&gt; &gt; Simon Bolek :-)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; mit freundlichem Gruss / kind regards / pozdrawiam<br>
&gt;&gt; &gt; Simon P. Bolek<br>
&gt;&gt; &gt; ------------------------------------------------------<br>
&gt;&gt; &gt; Dipl. Inf. Simon P. Bolek<br>
&gt;&gt; &gt; SAP Integration Architect<br>
&gt;&gt; &gt; Business Mobile and IVI Solutions<br>
&gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de">simon.bol=
ek@arcom-ivi.de</a><br>
&gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" targe=
t=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt; &gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" r=
el=3D"noreferrer" target=3D"_blank">https://www.xing.com/profile/SimonP_Bol=
ek</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div></div>

--001a1140fab6c2b28e05377efd5d--
