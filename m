Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AB81E00C0F; Tue, 22 Sep 2015 19:34:19 -0700 (PDT)
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
	*      [209.85.160.170 listed in list.dnswl.org]
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BAEAE00992
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 19:34:15 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so29117561ykd.1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 19:34:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=mo0PitJZ/uw/f5MM+u1Kmcws+6aDuEv2wUyRdnwGBYg=;
	b=AyoSI27ug2IV3G3sX9Q+IJZAl/JIk1z6rNbOURkPGSHw3DS9ETFYaLCL1B/MftLW9W
	HG/SWPjCBi0KXlvqLE5lJx0ZQkl6qYEQaRmSQwk0j/oRQpWeGNgDTLg1TzIcuz7i1jmX
	P7kx7uA8wfJps4X5D3pmMWWG3pZPdYksx8nctLxKfc6tbN8r7u4AY8mofhl8//nj6uyS
	Mm/oSTHoQ5miODM3UbnuyjTTD8nBzy3BnY8Vsbj9tw399lTUvQrd+5MtpYtrgYj7h27j
	M9GdTJ2Kj8h3rwve9wvGPjF6kEfzZpPxu5o4JI2P0CM9a+1Bs824/enmtoGrzkD2DIOF
	ElHA==
MIME-Version: 1.0
X-Received: by 10.129.29.11 with SMTP id d11mr20461715ywd.58.1442975655107;
	Tue, 22 Sep 2015 19:34:15 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Tue, 22 Sep 2015 19:34:15 -0700 (PDT)
In-Reply-To: <07E7C33EDCA14076B4233C9DE71E4451@PAULD>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com>
	<23E6267BFA52430DA768DDA7DC46AC9C@PAULD>
	<1442965676104.72571@seescan.com>
	<CAF3SDA57zC-__WTA0+S5jRWtyeKavsee8i47PBn9j+GgSknnxQ@mail.gmail.com>
	<07E7C33EDCA14076B4233C9DE71E4451@PAULD>
Date: Tue, 22 Sep 2015 23:34:15 -0300
Message-ID: <CAF3SDA56NqjMVkefxoJ8jVh8Fv2i0S4OHxh6=VSSJmi4UCf6KA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
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
X-List-Received-Date: Wed, 23 Sep 2015 02:34:19 -0000
Content-Type: multipart/alternative; boundary=001a11429b8257a829052060f315

--001a11429b8257a829052060f315
Content-Type: text/plain; charset=UTF-8

Okay, first of all have sure that there is no bash sitting ou your mount
point. Check if the file /etc/udev/rules.d/automount.rules is present. Then
try "udevadm monitor", plug and displug the device and see if you got the
"add" em "remove" events, this is what sould invoke mount.sh. Also check
/etc/udev/mount.blacklist, have sure that your device is not present in
this file.

Next, try to add this "exec > /home/root/mount.sh.log 2>&1" to beginning of
/etc/udev/scripts/mount.sh and try unplug/plug again. This will redirect
all output and errors to /home/root/mount.sh.log file. Check its contents,
there should be an error message or something alike.

I've alredy had problems with FAT filesystems being mounted as ready-only
after some time. This could be circumvented by adding "errors=continue" to
mount options but keep in mind that this is not safe. I would suggest you
to use a native filesystem, like ext4 which is more realible. You can
access it from windows (if this is the reason why you use FAT) with any
sftp client as long as you have openssh in your image features.

Regards,
- dhs

2015-09-22 22:20 GMT-03:00 Paul D. DeRocco <pderocco@ix.netcom.com>:

> > From: Daniel. [mailto:danielhilst@gmail.com]
> >
> > If there is any process using the mount point the umount may
> > fail. If you have a bash running in a folder from the mounted
> > filesystem is the sufficient to umount fail.
> >
> > You can use the fuser -m MOUTPOINT to check this. Adding -k
> > would kill all process using that mount point.
>
> Now I'm totally confused. Renaming /bin/umount to something else, and then
> plugging in the drive, is no longer leaving the successful mount intact. I
> saw it do this twice, but it's not doing it any more. I even tried
> replacing /bin/umount with a script that ran fuser with the results going
> to a file, and it's never being invoked. But the missing /bin/umount does
> indeed screw things up, giving me a slew of FAT-fs read errors. It also
> leaves /run/media/sdb1 as an empty directory that can't be deleted
> ("Device or resource busy") even though fuser doesn't show any processes
> using it.
>
> This makes no sense. How can this auto-mounting not work? Is it known to
> be brittle, or is it believed to be reliable? All I did was include
> udev-extraconf in my build.
>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11429b8257a829052060f315
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Okay, first of all have sure that there is no ba=
sh sitting ou your mount point. Check if the file /etc/udev/rules.d/automou=
nt.rules is present. Then try &quot;udevadm monitor&quot;, plug and displug=
 the device and see if you got the &quot;add&quot; em &quot;remove&quot; ev=
ents, this is what sould invoke mount.sh. Also check /etc/udev/mount.blackl=
ist, have sure that your device is not present in this file.<br><br></div>N=
ext, try to add this &quot;exec &gt; /home/root/mount.sh.log 2&gt;&amp;1&qu=
ot; to beginning of /etc/udev/scripts/mount.sh and try unplug/plug again. T=
his will redirect all output and errors to /home/root/mount.sh.log file. Ch=
eck its contents, there should be an error message or something alike.<br><=
br></div><div>I&#39;ve alredy had problems with FAT filesystems being mount=
ed as ready-only after some time. This could be circumvented by adding &quo=
t;errors=3Dcontinue&quot; to mount options but keep in mind that this is no=
t safe. I would suggest you to use a native filesystem, like ext4 which is =
more realible. You can access it from windows (if this is the reason why yo=
u use FAT) with any sftp client as long as you have openssh in your image f=
eatures.<br></div><div><br></div><div>Regards,<br></div><div>- dhs<br></div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-09-22=
 22:20 GMT-03:00 Paul D. DeRocco <span dir=3D"ltr">&lt;<a href=3D"mailto:pd=
erocco@ix.netcom.com" target=3D"_blank">pderocco@ix.netcom.com</a>&gt;</spa=
n>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">&gt; From: Daniel. [mailto:<a href=3D=
"mailto:danielhilst@gmail.com">danielhilst@gmail.com</a>]<br>
<span class=3D"">&gt;<br>
&gt; If there is any process using the mount point the umount may<br>
&gt; fail. If you have a bash running in a folder from the mounted<br>
&gt; filesystem is the sufficient to umount fail.<br>
&gt;<br>
&gt; You can use the fuser -m MOUTPOINT to check this. Adding -k<br>
&gt; would kill all process using that mount point.<br>
<br>
</span>Now I&#39;m totally confused. Renaming /bin/umount to something else=
, and then<br>
plugging in the drive, is no longer leaving the successful mount intact. I<=
br>
saw it do this twice, but it&#39;s not doing it any more. I even tried<br>
replacing /bin/umount with a script that ran fuser with the results going<b=
r>
to a file, and it&#39;s never being invoked. But the missing /bin/umount do=
es<br>
indeed screw things up, giving me a slew of FAT-fs read errors. It also<br>
leaves /run/media/sdb1 as an empty directory that can&#39;t be deleted<br>
(&quot;Device or resource busy&quot;) even though fuser doesn&#39;t show an=
y processes<br>
using it.<br>
<br>
This makes no sense. How can this auto-mounting not work? Is it known to<br=
>
be brittle, or is it believed to be reliable? All I did was include<br>
udev-extraconf in my build.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
<br>
Ciao,=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Paul D. DeRocco=
<br>
Paul=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mailto:<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a><br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not.=
 There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></=
div></div>
</div>

--001a11429b8257a829052060f315--
