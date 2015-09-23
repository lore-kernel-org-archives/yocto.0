Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30BFCE01064; Tue, 22 Sep 2015 17:30:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E97C0E00A81
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 17:30:37 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so27070851ykd.1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 17:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GQ49GWvqJnmtVoIkeWbaLoDJazrO+PV1zHnmuVMiPCY=;
	b=J89rkAHByDcJclyTaAglVLVWzZWorKaxNmHo2sVXeDImBSGIV4tD5Fo8AZfRMvy5/a
	9WTf4WXU8DlPilSiMtDRuTw/LooPdGkNUgZRLGZKErcPSL56XC6gcT3bp1J65sgUIRDz
	A9uCC0B1dbEN6nXbDPAO7z4E3xHyMPAYikHCB99rTBZ2BOW03DlklLpseTLYojZfLHJh
	ekO6W6b+enzKU3AaTBtIar/MtYRvk7R5hs5h1IiXt839O51upMKRgYer6DW47G0eZPIm
	vEyXWw/Zt+HFQITav5reiHd9dPe5NpVvBKt1XBDaGaYtLW7g7dN16EFLT0HHVic/KLUm
	FCgA==
MIME-Version: 1.0
X-Received: by 10.170.216.87 with SMTP id i84mr23576590ykf.91.1442968237001;
	Tue, 22 Sep 2015 17:30:37 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Tue, 22 Sep 2015 17:30:36 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Tue, 22 Sep 2015 17:30:36 -0700 (PDT)
In-Reply-To: <1442965676104.72571@seescan.com>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com>
	<23E6267BFA52430DA768DDA7DC46AC9C@PAULD>
	<1442965676104.72571@seescan.com>
Date: Tue, 22 Sep 2015 21:30:36 -0300
Message-ID: <CAF3SDA57zC-__WTA0+S5jRWtyeKavsee8i47PBn9j+GgSknnxQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Mantas Mikulenas <grawity@gmail.com>
Subject: Re: [systemd-devel] How to automount
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
X-List-Received-Date: Wed, 23 Sep 2015 00:30:42 -0000
Content-Type: multipart/alternative; boundary=001a1139e99c30502b05205f3930

--001a1139e99c30502b05205f3930
Content-Type: text/plain; charset=UTF-8

If there is any process using the mount point the umount may fail. If you
have a bash running in a folder from the mounted filesystem is the
sufficient to umount fail.

You can use the fuser -m MOUTPOINT to check this. Adding -k would kill all
process using that mount point.

"udevadm monitor" should show you udev events interactive.

Cheers,
-dhs
Em 22/09/2015 20:49, "Fred Ollinger" <Fred.Ollinger@seescan.com> escreveu:

> You can see what udev thinks it will do for a given drive by using:
>
>  $ udevadm test /sys/block/sdb1
>
> Given that your drive is in /sys/block/sdb1 (could be sda1, etc).
>
> As for the dirty bit, we had to clear it ourselves.
>
> Frederick
>
> ________________________________________
> From: Paul D. DeRocco <pderocco@ix.netcom.com>
> Sent: Tuesday, September 22, 2015 4:42 PM
> To: Fred Ollinger; 'Mantas Mikulenas'; yocto@yoctoproject.org
> Subject: RE: [yocto] [systemd-devel] How to automount
>
> > From: Fred Ollinger [mailto:Fred.Ollinger@seescan.com]
> >
> > This is in the package: udev-extraconf
> >
> > On your system look here:
> >
> > /etc/udev/rules.d/automount.rules
> >
> > In this file, you'll find the following rules.
> >
> > The second one auto unmounts.
> >
> > SUBSYSTEM=="block", ACTION=="add"    RUN+="/etc/udev/scripts/mount.sh"
> >
> > SUBSYSTEM=="block", ACTION=="remove" RUN+="/etc/udev/scripts/mount.sh"
> >
> > SUBSYSTEM=="block", ACTION=="change",
> > ENV{DISK_MEDIA_CHANGE}=="1" RUN+="/etc/udev/scripts/mount.sh"
>
> Well, that started me down a long path. First of all, none of these things
> existed because my Yocto build didn't include udev-extraconf. The version
> I did two years ago did (although I didn't see it mentioned in my own
> metadata), which is why it worked. So I added it back, rebuilt it, and
> then tried plugging in a USB flash drive.
>
> The drive appeared as /dev/sdb and /dev/sdb1 (it has a partition table),
> The syslog showed the mount.sh script message "Auto-mount of
> [/run/media/sdb1] successful", /run/media/sdb1 exists as a directory, but
> nothing is mounted there. The next syslog message from FAT-fs said "Volume
> was not properly unmounted. Some data may be corrupt. Please run fsck."
> When I did that, all I found was that the dirty bit was set, so I
> speculated that that caused the mount to somehow be undone.
>
> So I cleaned the dirty bit, synced the file system, unplugged the drive
> and plugged it in again. This time the syslog showed the successful mount
> message, but no complaint about the drive. Yet it still wasn't mounted.
>
> I can manually mount it, and see its contents. If I then yank the drive,
> the mount.sh script doesn't unmount it. I even tweaked the script to log
> any attempt to unmount, and it didn't even try.
>
> Whenever I fix the dirty bit, disconnecting and reconnecting logs the
> successful mount message, doesn't complain about the dirty bit, but
> doesn't mount. Disconnecting again gives me a FAT-fs error "unable to read
> boot sector to mark fs as dirty". Connecting again gives me the successful
> mount message, and complains about the dirty bit.
>
> Something must be missing here.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1139e99c30502b05205f3930
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">If there is any process using the mount point the umount may=
 fail. If you have a bash running in a folder from the mounted filesystem i=
s the sufficient to umount fail.</p>
<p dir=3D"ltr">You can use the fuser -m MOUTPOINT to check this. Adding -k =
would kill all process using that mount point.</p>
<p dir=3D"ltr">&quot;udevadm monitor&quot; should show you udev events inte=
ractive.</p>
<p dir=3D"ltr">Cheers,<br>
-dhs</p>
<div class=3D"gmail_quote">Em 22/09/2015 20:49, &quot;Fred Ollinger&quot; &=
lt;<a href=3D"mailto:Fred.Ollinger@seescan.com">Fred.Ollinger@seescan.com</=
a>&gt; escreveu:<br type=3D"attribution"><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">You=
 can see what udev thinks it will do for a given drive by using:<br>
<br>
=C2=A0$ udevadm test /sys/block/sdb1<br>
<br>
Given that your drive is in /sys/block/sdb1 (could be sda1, etc).<br>
<br>
As for the dirty bit, we had to clear it ourselves.<br>
<br>
Frederick<br>
<br>
________________________________________<br>
From: Paul D. DeRocco &lt;<a href=3D"mailto:pderocco@ix.netcom.com">pderocc=
o@ix.netcom.com</a>&gt;<br>
Sent: Tuesday, September 22, 2015 4:42 PM<br>
To: Fred Ollinger; &#39;Mantas Mikulenas&#39;; <a href=3D"mailto:yocto@yoct=
oproject.org">yocto@yoctoproject.org</a><br>
Subject: RE: [yocto] [systemd-devel] How to automount<br>
<br>
&gt; From: Fred Ollinger [mailto:<a href=3D"mailto:Fred.Ollinger@seescan.co=
m">Fred.Ollinger@seescan.com</a>]<br>
&gt;<br>
&gt; This is in the package: udev-extraconf<br>
&gt;<br>
&gt; On your system look here:<br>
&gt;<br>
&gt; /etc/udev/rules.d/automount.rules<br>
&gt;<br>
&gt; In this file, you&#39;ll find the following rules.<br>
&gt;<br>
&gt; The second one auto unmounts.<br>
&gt;<br>
&gt; SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=3D&quot;add&quot;=C2=A0 =
=C2=A0 RUN+=3D&quot;/etc/udev/scripts/mount.sh&quot;<br>
&gt;<br>
&gt; SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=3D&quot;remove&quot; RUN+=
=3D&quot;/etc/udev/scripts/mount.sh&quot;<br>
&gt;<br>
&gt; SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=3D&quot;change&quot;,<br>
&gt; ENV{DISK_MEDIA_CHANGE}=3D=3D&quot;1&quot; RUN+=3D&quot;/etc/udev/scrip=
ts/mount.sh&quot;<br>
<br>
Well, that started me down a long path. First of all, none of these things<=
br>
existed because my Yocto build didn&#39;t include udev-extraconf. The versi=
on<br>
I did two years ago did (although I didn&#39;t see it mentioned in my own<b=
r>
metadata), which is why it worked. So I added it back, rebuilt it, and<br>
then tried plugging in a USB flash drive.<br>
<br>
The drive appeared as /dev/sdb and /dev/sdb1 (it has a partition table),<br=
>
The syslog showed the mount.sh script message &quot;Auto-mount of<br>
[/run/media/sdb1] successful&quot;, /run/media/sdb1 exists as a directory, =
but<br>
nothing is mounted there. The next syslog message from FAT-fs said &quot;Vo=
lume<br>
was not properly unmounted. Some data may be corrupt. Please run fsck.&quot=
;<br>
When I did that, all I found was that the dirty bit was set, so I<br>
speculated that that caused the mount to somehow be undone.<br>
<br>
So I cleaned the dirty bit, synced the file system, unplugged the drive<br>
and plugged it in again. This time the syslog showed the successful mount<b=
r>
message, but no complaint about the drive. Yet it still wasn&#39;t mounted.=
<br>
<br>
I can manually mount it, and see its contents. If I then yank the drive,<br=
>
the mount.sh script doesn&#39;t unmount it. I even tweaked the script to lo=
g<br>
any attempt to unmount, and it didn&#39;t even try.<br>
<br>
Whenever I fix the dirty bit, disconnecting and reconnecting logs the<br>
successful mount message, doesn&#39;t complain about the dirty bit, but<br>
doesn&#39;t mount. Disconnecting again gives me a FAT-fs error &quot;unable=
 to read<br>
boot sector to mark fs as dirty&quot;. Connecting again gives me the succes=
sful<br>
mount message, and complains about the dirty bit.<br>
<br>
Something must be missing here.<br>
<br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a1139e99c30502b05205f3930--
