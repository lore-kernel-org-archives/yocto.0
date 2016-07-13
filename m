Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EED15E00D05; Tue, 12 Jul 2016 23:28:24 -0700 (PDT)
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
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E5DEE00CFF
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 23:28:23 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id u186so13045772ita.0
	for <yocto@yoctoproject.org>; Tue, 12 Jul 2016 23:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jTF/TSfqevO6RG7lUk8+xGWl9yxLPkEr4ZedPKeqKRo=;
	b=eKYkVDRoOm/UqdBtwara5WPyW+iqVAA3U4IGAW//Fh20H9NTIMbS+hzzNpZpCjuFl7
	wmxJ5G2n2Cjl+1peVUDKTDrhRDCcKtvlTnDpkRxXjJo7O1Ver5HHKGAW7EyqtgvFlfAa
	57J4UjJK1dEf2Xmrh1g4sXjKRAlYuJ5pbULaETSj5NxoWhujW54S01UW6NN/6grAO7hg
	+gOzcdDWXZJPNOnOUx0vzFqF51sYd2WrOfCToo0+L9oP0alHpwJCtYgPZtSSrPncLsXh
	gEF/PiNltb42WbcwuXDi/gFXWxoZaBz+Q+7Z/c7cHORlx7AJTv2App8dgwY0KbDW0qkb
	hRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jTF/TSfqevO6RG7lUk8+xGWl9yxLPkEr4ZedPKeqKRo=;
	b=Z3vi1cW8rMLxXB1dO1S9H9LKZu9JffglnrTrprcX/3hIgD38y8m7gN0+V1hxzMhScy
	lfM2V2jY69PP3X+EhrLdeT7hji6yKQUvkqhLHdwS4sW9h5FitpHnB8KWullSDsAMkerB
	YZ/HlLlss/sEX13NIGNSmVgn714QVGz5Xd3ijPAcEMNtQX/i4YArR/ypAa3nh9NxLUlR
	BMMweJhht9O1pJs0SryveewYAZuKnykAxX+2dkLfR0tlw5UHItCmDxmI9XFAnZUi5spd
	TBsG+hd2y3RU7RLCEkbjlLKeMur/EtqNC+1bAQj5fBronyrj2Inwii/S/AfrpLWbHKGb
	QU9w==
X-Gm-Message-State: ALyK8tIzQBmDblqdTnnS8FQXFdCUfbs6ae2jYeLdm7b5UVDHbyP0u6P7N6ZUCflh8IIzu3VLCwvMTsi5Uev9jw==
X-Received: by 10.36.94.16 with SMTP id h16mr15442940itb.45.1468391303106;
	Tue, 12 Jul 2016 23:28:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Tue, 12 Jul 2016 23:28:03 -0700 (PDT)
In-Reply-To: <CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 13 Jul 2016 08:28:03 +0200
Message-ID: <CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Jul 2016 06:28:25 -0000
Content-Type: multipart/alternative; boundary=001a11424ada03593605377e7e3e

--001a11424ada03593605377e7e3e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you Raj,

Is there a standard way to activate these initramfs logs, or do I have to
implement it myself somewhere?

thank you and kind regards
Simon :-)

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

On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek <simon.bolek@googlemail.com>
> wrote:
> > Hello everyone!
> >
> > I am trying to install genericx86 core-image-sato (jethro) HDDIMG to an
> > atom-pc.
> > For this 2GB USB stick is used.
> > When choosing 'install' option from boot menu I get the message:
> >
> > "Searching for hard drives...
> > No hard drive selected. Installation aborted."
> >
> > Installatiion stops and i get the console.
> > When I try to run fsck, it says: can't read '/etc/fstab': No such file =
or
> > directory
> >
> > fdisk -l  shows only the partitions of USB stick.
> >
> > After I choose 'boot' option to boot into live image, SDD drive is unde=
r
> > /dev/sdb and USB installation stick under /dev/sda,
> >
> > What recipe/package is my installation missing? The SSD hard drive is n=
ot
> > recognized for some reason. With previous yocto releases this package
> list
> > DID work fine.
> > So there is something missing in the background.
> > Do you have any idea what this might be?
>
> udev should have run and found your hdd. So it seems its not finding
> it when running from initramfs. Can you try to add logs to initramfs
> and see what udev is doing ?
>
> >
> > Below is my package list from local.conf.
> >
> > thank you and kind regards
> > Simon :-)
> >
> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
> > IMAGE_INSTALL_append =3D " make \
> >      initscripts \
> >      grub \
> >      initramfs-boot \
> >      syslinux \
> >      initramfs-live-install \
> >      initramfs-live-install-efi \
> >      initramfs-live-boot \
> >      xinit \
> >      xwininfo \
> >      openssh-sftp \
> >      openssh-sftp-server \
> >      qtbase-plugins \
> >      qtconnectivity \
> >      qtdeclarative \
> >      qtdeclarative-plugins \
> >      qtdeclarative-tools \
> >      qtdeclarative-qmlplugins \
> >      qtenginio \
> >      qtlocation \
> >      qtmultimedia \
> >      qtmultimedia-plugins \
> >      qtmultimedia-qmlplugins \
> >      qtsystems \
> > "
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
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11424ada03593605377e7e3e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you Raj, <br><br></div><div>Is there a sta=
ndard way to activate these initramfs logs, or do I have to implement it my=
self somewhere?<br></div><div><br></div>thank you and kind regards<br></div=
>Simon :-)<br><div><div><div><div class=3D"gmail_extra"><br clear=3D"all"><=
div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div>Viele Gr=C3=BCsse<br>Simon Bolek :-)=
<br><br>mit freundlichem Gruss / kind regards / pozdrawiam<br>Simon P. Bole=
k<br>------------------------------------------------------<br>Dipl. Inf. S=
imon P. Bolek<br>SAP Integration Architect<br><div>Business=C2=A0<span styl=
e=3D"font-family:arial,sans-serif;font-size:13px;border-collapse:collapse">=
Mobile and IVI Solutions</span><div>mailto: <a href=3D"mailto:simon.bolek@a=
rcom-ivi.de" target=3D"_blank">simon.bolek@arcom-ivi.de</a><div><a href=3D"=
http://www.arcom-ivi.de/" target=3D"_blank">http://www.arcom-ivi.de/</a><br=
>XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" target=3D"_bla=
nk">https://www.xing.com/profile/SimonP_Bolek</a><br></div></div></div></di=
v></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"=
><span class=3D"">On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek &lt;<a href=
=3D"mailto:simon.bolek@googlemail.com">simon.bolek@googlemail.com</a>&gt; w=
rote:<br>
&gt; Hello everyone!<br>
&gt;<br>
&gt; I am trying to install genericx86 core-image-sato (jethro) HDDIMG to a=
n<br>
&gt; atom-pc.<br>
&gt; For this 2GB USB stick is used.<br>
&gt; When choosing &#39;install&#39; option from boot menu I get the messag=
e:<br>
&gt;<br>
&gt; &quot;Searching for hard drives...<br>
&gt; No hard drive selected. Installation aborted.&quot;<br>
&gt;<br>
&gt; Installatiion stops and i get the console.<br>
&gt; When I try to run fsck, it says: can&#39;t read &#39;/etc/fstab&#39;: =
No such file or<br>
&gt; directory<br>
&gt;<br>
&gt; fdisk -l=C2=A0 shows only the partitions of USB stick.<br>
&gt;<br>
&gt; After I choose &#39;boot&#39; option to boot into live image, SDD driv=
e is under<br>
&gt; /dev/sdb and USB installation stick under /dev/sda,<br>
&gt;<br>
&gt; What recipe/package is my installation missing? The SSD hard drive is =
not<br>
&gt; recognized for some reason. With previous yocto releases this package =
list<br>
&gt; DID work fine.<br>
&gt; So there is something missing in the background.<br>
&gt; Do you have any idea what this might be?<br>
<br>
</span>udev should have run and found your hdd. So it seems its not finding=
<br>
it when running from initramfs. Can you try to add logs to initramfs<br>
and see what udev is doing ?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Below is my package list from local.conf.<br>
&gt;<br>
&gt; thank you and kind regards<br>
&gt; Simon :-)<br>
&gt;<br>
&gt; EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks ssh-server-openssh&quot;<b=
r>
&gt; IMAGE_INSTALL_append =3D &quot; make \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 initscripts \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 grub \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 initramfs-boot \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 syslinux \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-install \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-install-efi \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 initramfs-live-boot \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 xinit \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 xwininfo \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 openssh-sftp-server \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtbase-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtconnectivity \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-tools \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtdeclarative-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtenginio \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtlocation \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-plugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtmultimedia-qmlplugins \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 qtsystems \<br>
&gt; &quot;<br>
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
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div></div></div></div></div>

--001a11424ada03593605377e7e3e--
