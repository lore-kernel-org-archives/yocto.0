Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 065A4E00E34; Wed, 13 Jul 2016 04:58:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA80E00DFA
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:57:50 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id f6so18271242ith.1
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pIsLhO+LxxLdBz27cSmXeSghzECFdJfoiLiot3pFpAQ=;
	b=d7wZVWf9afFjIwL/nvaWeSZV8PHP9KHWQEsNxWQ/arEncz8PNPy4L8aEXv6O0++ULU
	3HxYubzR2cmrNHflwrdHjvzuEGXb2l6b0iW8zAHgcXg50w+XkAHQCI79bIr5N9mxhs4V
	kLDUfH99DlwJxM/kqyoWu9Qbu8nmEr77F45QUw93KsfJiWFhBO0yQ3RKVhDDiff1vOnY
	h8AEA0/pFQw02kmKeeJT9Q0C82QGj8fCETmQ3nA8jCrW/XFvvo/tDdEMRLNRh5kEPb+j
	M5iHIibOvLlD84FelQSE1Odld07skgEHP6osC93Grm9Ic7XsS5axiGtxqEPutNdcxpqO
	dP0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pIsLhO+LxxLdBz27cSmXeSghzECFdJfoiLiot3pFpAQ=;
	b=XPznm4GWt0Lww2WE3/WPpSSttbNbjtdrrE/+LWF1+MZ4WZfOutlf+kmUwobIaYcb/6
	62oX4sBiNJLUrNvdU+2RAgz9w5JedRmdxJpePun3tfjevyP7Oi3c9GHSrNekLiVa5oX2
	PnRG017Y+9ejdZHhTdYDu79uCdFw7KJGU4tck/Xagn+tOS55W9srHn0h9cdpBRfN9xZ1
	cxy3qnRb2ISXzCZu7C9TyFv0phKZ1cH7Gk1P0dOsrp6Qejf3yW9gbpBMfFMER1MrOtrD
	r77Z88AfQJx+EEmHHyuPwFwa5d9+FWtdo/TygNn8qUac8Vo4HdebZs5lnBSEltVwzI+E
	rSMQ==
X-Gm-Message-State: ALyK8tLv1c+Qdi3TyUX6iCM/RzcT2UIZX++qqsxSa08r8jTufm2yEIl5Q5+igbFx+5VJ7EfgRb4rAOlo/aQXig==
X-Received: by 10.36.103.10 with SMTP id u10mr8813953itc.45.1468411069593;
	Wed, 13 Jul 2016 04:57:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Wed, 13 Jul 2016 04:57:28 -0700 (PDT)
In-Reply-To: <CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
References: <CAEfap_CAJpEnc6xWUbcYUkMx2CRa2HVT+FOBXy+rYb67jv16gw@mail.gmail.com>
	<CAMKF1soyZBMzFUo0FLgk3Hb69PfMGiyQ7TNqsDBdVdHz7UNX8w@mail.gmail.com>
	<CAEfap_BV6LRYUyG3u9oLDvXrpy9ztgVM-UaPNSHo9i1xbNj24w@mail.gmail.com>
	<CAMKF1sqGSWkd-aTcY3fNk=88iL8BW5ihGnvSy14bCiSfeVUvzw@mail.gmail.com>
	<CAEfap_BpFoi66j9PJO=PiZURULiivtR0Z6yCSedebLgTvzcY0g@mail.gmail.com>
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Wed, 13 Jul 2016 13:57:28 +0200
Message-ID: <CAEfap_DQrSiDkDrBH7T7Ecez5R2D-KM_V+Lnm2nombozFBKF4w@mail.gmail.com>
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
X-List-Received-Date: Wed, 13 Jul 2016 11:58:06 -0000
Content-Type: multipart/alternative; boundary=001a114a9d682fffec0537831818

--001a114a9d682fffec0537831818
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Raj,

So i tried to do manually, what init script does and udev definitely does
not recognize the SSD drive.
I ran
 /lib/udev/udevd --daemon --debug > udev.debug 2>&1 &
from the cli and there is no trace of recognizing the SSD. Only the
/dev/sda, which is the USB stick I am running the installation from.

I used 'meld' to compare the /initrd from current jethro image and previous
working fido image.
They are almost the same:
- in jethro /lib/modules... file structure is missing with:
modules.alias
modules.alias.bin
modules.builtin.bin
modules.dep
modules.dep.bin
modules.devname
modules.softdep
modules.symbols
modules.symbols.bin

- there are slight differences between
/etc/init.d/udev
/etc/udev/scripts/mount.sh
, but I cannot tell, if this is the reason.

Unfortunately I did not dig inside binary /lib/udev/udevd.

So do you have any other ideas, what might be the reason for not
recognizing the SSD? Maybe there are some additional recipes needed from
jethro on?


thanks & kind regards
Simon :-)

mit freundlichem Gruss / kind regards / pozdrawiam
Simon P. Bolek
------------------------------------------------------
Dipl. Inf. Simon P. Bolek
SAP Integration Architect
Business Mobile and IVI Solutions
mailto: simon.bolek@arcom-ivi.de
http://www.arcom-ivi.de/
XING: https://www.xing.com/profile/SimonP_Bolek

On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek <simon.bolek@googlemail.com>
wrote:

> Thank you,
>
> I just guess, that it is the following function in init script to put the
> echos to? Is it?
>
> udev_daemon() {
>     OPTIONS=3D"/sbin/udev/udevd /sbin/udevd /lib/udev/udevd
> /lib/systemd/systemd-udevd"
>
>     for o in $OPTIONS; do
>         if [ -x "$o" ]; then
>             echo $o
>             return 0
>         fi
>     done
>
>     return 1
> }
>
>
> cheers
> Simon:-)
>
> Viele Gr=C3=BCsse
> Simon Bolek :-)
>
> mit freundlichem Gruss / kind regards / pozdrawiam
> Simon P. Bolek
> ------------------------------------------------------
> Dipl. Inf. Simon P. Bolek
> SAP Integration Architect
> Business Mobile and IVI Solutions
> mailto: simon.bolek@arcom-ivi.de
> http://www.arcom-ivi.de/
> XING: https://www.xing.com/profile/SimonP_Bolek
>
> On Wed, Jul 13, 2016 at 8:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Tue, Jul 12, 2016 at 11:28 PM, Simon Bolek
>> <simon.bolek@googlemail.com> wrote:
>> > Thank you Raj,
>> >
>> > Is there a standard way to activate these initramfs logs, or do I have
>> to
>> > implement it myself somewhere?
>>
>> you have to add printf etc. yourself into the init script in initramfs
>> image
>>
>> >
>> > thank you and kind regards
>> > Simon :-)
>> >
>> > Viele Gr=C3=BCsse
>> > Simon Bolek :-)
>> >
>> > mit freundlichem Gruss / kind regards / pozdrawiam
>> > Simon P. Bolek
>> > ------------------------------------------------------
>> > Dipl. Inf. Simon P. Bolek
>> > SAP Integration Architect
>> > Business Mobile and IVI Solutions
>> > mailto: simon.bolek@arcom-ivi.de
>> > http://www.arcom-ivi.de/
>> > XING: https://www.xing.com/profile/SimonP_Bolek
>> >
>> > On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> >>
>> >> On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek <
>> simon.bolek@googlemail.com>
>> >> wrote:
>> >> > Hello everyone!
>> >> >
>> >> > I am trying to install genericx86 core-image-sato (jethro) HDDIMG t=
o
>> an
>> >> > atom-pc.
>> >> > For this 2GB USB stick is used.
>> >> > When choosing 'install' option from boot menu I get the message:
>> >> >
>> >> > "Searching for hard drives...
>> >> > No hard drive selected. Installation aborted."
>> >> >
>> >> > Installatiion stops and i get the console.
>> >> > When I try to run fsck, it says: can't read '/etc/fstab': No such
>> file
>> >> > or
>> >> > directory
>> >> >
>> >> > fdisk -l  shows only the partitions of USB stick.
>> >> >
>> >> > After I choose 'boot' option to boot into live image, SDD drive is
>> under
>> >> > /dev/sdb and USB installation stick under /dev/sda,
>> >> >
>> >> > What recipe/package is my installation missing? The SSD hard drive =
is
>> >> > not
>> >> > recognized for some reason. With previous yocto releases this packa=
ge
>> >> > list
>> >> > DID work fine.
>> >> > So there is something missing in the background.
>> >> > Do you have any idea what this might be?
>> >>
>> >> udev should have run and found your hdd. So it seems its not finding
>> >> it when running from initramfs. Can you try to add logs to initramfs
>> >> and see what udev is doing ?
>> >>
>> >> >
>> >> > Below is my package list from local.conf.
>> >> >
>> >> > thank you and kind regards
>> >> > Simon :-)
>> >> >
>> >> > EXTRA_IMAGE_FEATURES =3D "debug-tweaks ssh-server-openssh"
>> >> > IMAGE_INSTALL_append =3D " make \
>> >> >      initscripts \
>> >> >      grub \
>> >> >      initramfs-boot \
>> >> >      syslinux \
>> >> >      initramfs-live-install \
>> >> >      initramfs-live-install-efi \
>> >> >      initramfs-live-boot \
>> >> >      xinit \
>> >> >      xwininfo \
>> >> >      openssh-sftp \
>> >> >      openssh-sftp-server \
>> >> >      qtbase-plugins \
>> >> >      qtconnectivity \
>> >> >      qtdeclarative \
>> >> >      qtdeclarative-plugins \
>> >> >      qtdeclarative-tools \
>> >> >      qtdeclarative-qmlplugins \
>> >> >      qtenginio \
>> >> >      qtlocation \
>> >> >      qtmultimedia \
>> >> >      qtmultimedia-plugins \
>> >> >      qtmultimedia-qmlplugins \
>> >> >      qtsystems \
>> >> > "
>> >> >
>> >> > Viele Gr=C3=BCsse
>> >> > Simon Bolek :-)
>> >> >
>> >> > mit freundlichem Gruss / kind regards / pozdrawiam
>> >> > Simon P. Bolek
>> >> > ------------------------------------------------------
>> >> > Dipl. Inf. Simon P. Bolek
>> >> > SAP Integration Architect
>> >> > Business Mobile and IVI Solutions
>> >> > mailto: simon.bolek@arcom-ivi.de
>> >> > http://www.arcom-ivi.de/
>> >> > XING: https://www.xing.com/profile/SimonP_Bolek
>> >> >
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto
>> >> >
>> >
>> >
>>
>
>

--001a114a9d682fffec0537831818
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi Raj, <br><br></=
div>So i tried to do manually, what init script does and udev definitely do=
es not recognize the SSD drive. <br></div>I ran<br>=C2=A0/lib/udev/udevd --=
daemon --debug &gt; udev.debug 2&gt;&amp;1 &amp;<br></div>from the cli and =
there is no trace of recognizing the SSD. Only the /dev/sda, which is the U=
SB stick I am running the installation from.<br><br></div>I used &#39;meld&=
#39; to compare the /initrd from current jethro image and previous working =
fido image. <br></div>They are almost the same:<br></div>- in jethro /lib/m=
odules... file structure is missing with: <br>modules.alias<br>modules.alia=
s.bin<br>modules.builtin.bin<br>modules.dep<br>modules.dep.bin<br>modules.d=
evname<br>modules.softdep<br>modules.symbols<br>modules.symbols.bin<br><br>=
</div>- there are slight differences between <br>/etc/init.d/udev <br></div=
><div>/etc/udev/scripts/mount.sh<br></div><div>, but I cannot tell, if this=
 is the reason.<br><br></div><div>Unfortunately I did not dig inside binary=
 /lib/udev/udevd.<br><br></div><div>So do you have any other ideas, what mi=
ght be the reason for not recognizing the SSD? Maybe there are some additio=
nal recipes needed from jethro on?<br></div><div><br></div><div><div><div><=
div><div><div><div><div><div><div><div><div class=3D"gmail_extra"><br clear=
=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_signat=
ure"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>thanks &amp; kind regards<=
br>Simon :-)<br><br>mit freundlichem Gruss / kind regards / pozdrawiam<br>S=
imon P. Bolek<br>------------------------------------------------------<br>=
Dipl. Inf. Simon P. Bolek<br>SAP Integration Architect<br><div>Business=C2=
=A0<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collap=
se:collapse">Mobile and IVI Solutions</span><div>mailto: <a href=3D"mailto:=
simon.bolek@arcom-ivi.de" target=3D"_blank">simon.bolek@arcom-ivi.de</a><di=
v><a href=3D"http://www.arcom-ivi.de/" target=3D"_blank">http://www.arcom-i=
vi.de/</a><br>XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" t=
arget=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br></div></d=
iv></div></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jul 13, 2016 at 9:03 AM, Simon Bolek=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:simon.bolek@googlemail.com" target=
=3D"_blank">simon.bolek@googlemail.com</a>&gt;</span> wrote:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Thank you, <br=
><br></div><div>I just guess, that it is the following function in init scr=
ipt to put the echos to? Is it?<br><br>udev_daemon() {<br>=C2=A0=C2=A0=C2=
=A0 OPTIONS=3D&quot;/sbin/udev/udevd /sbin/udevd /lib/udev/udevd /lib/syste=
md/systemd-udevd&quot;<br><br>=C2=A0=C2=A0=C2=A0 for o in $OPTIONS; do<br>=
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if [ -x &quot;$o&quot; ]; then<br>=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 echo $o<br>=C2=A0=C2=
=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0<br>=C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 fi<br>=C2=A0=C2=A0=C2=A0 done<br><br>=C2=A0=C2=A0=C2=
=A0 return 1<br>}<br><br></div><div><div><div class=3D"gmail_extra"><br></d=
iv><div class=3D"gmail_extra">cheers<span class=3D""><font color=3D"#888888=
"><br></font></span></div><span class=3D""><font color=3D"#888888"><div cla=
ss=3D"gmail_extra">Simon:-)<br></div></font></span><div class=3D"gmail_extr=
a"><span class=3D""><br clear=3D"all"><div><div data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>Viele Gr=C3=BCsse<br>Si=
mon Bolek :-)<br><br>mit freundlichem Gruss / kind regards / pozdrawiam<br>=
Simon P. Bolek<br>------------------------------------------------------<br=
>Dipl. Inf. Simon P. Bolek<br>SAP Integration Architect<br><div>Business=C2=
=A0<span style=3D"font-family:arial,sans-serif;font-size:13px;border-collap=
se:collapse">Mobile and IVI Solutions</span><div>mailto: <a href=3D"mailto:=
simon.bolek@arcom-ivi.de" target=3D"_blank">simon.bolek@arcom-ivi.de</a><di=
v><a href=3D"http://www.arcom-ivi.de/" target=3D"_blank">http://www.arcom-i=
vi.de/</a><br>XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" t=
arget=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br></div></d=
iv></div></div></div></div></div></div></div>
<br></span><div><div class=3D"h5"><div class=3D"gmail_quote">On Wed, Jul 13=
, 2016 at 8:36 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khe=
m@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><span>On Tue, Jul 12, 201=
6 at 11:28 PM, Simon Bolek<br>
&lt;<a href=3D"mailto:simon.bolek@googlemail.com" target=3D"_blank">simon.b=
olek@googlemail.com</a>&gt; wrote:<br>
&gt; Thank you Raj,<br>
&gt;<br>
&gt; Is there a standard way to activate these initramfs logs, or do I have=
 to<br>
&gt; implement it myself somewhere?<br>
<br>
</span>you have to add printf etc. yourself into the init script in initram=
fs image<br>
<div><div><br>
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
&gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" target=3D"_blank">=
simon.bolek@arcom-ivi.de</a><br>
&gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" target=3D"_bla=
nk">http://www.arcom-ivi.de/</a><br>
&gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" rel=3D"nor=
eferrer" target=3D"_blank">https://www.xing.com/profile/SimonP_Bolek</a><br=
>
&gt;<br>
&gt; On Wed, Jul 13, 2016 at 1:36 AM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jul 12, 2016 at 3:45 AM, Simon Bolek &lt;<a href=3D"mailto=
:simon.bolek@googlemail.com" target=3D"_blank">simon.bolek@googlemail.com</=
a>&gt;<br>
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
&gt;&gt; &gt; mailto: <a href=3D"mailto:simon.bolek@arcom-ivi.de" target=3D=
"_blank">simon.bolek@arcom-ivi.de</a><br>
&gt;&gt; &gt; <a href=3D"http://www.arcom-ivi.de/" rel=3D"noreferrer" targe=
t=3D"_blank">http://www.arcom-ivi.de/</a><br>
&gt;&gt; &gt; XING: <a href=3D"https://www.xing.com/profile/SimonP_Bolek" r=
el=3D"noreferrer" target=3D"_blank">https://www.xing.com/profile/SimonP_Bol=
ek</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">y=
octo@yoctoproject.org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div></div></div></div>
</blockquote></div><br></div></div></div></div></div></div></div></div></di=
v></div></div></div></div>

--001a114a9d682fffec0537831818--
