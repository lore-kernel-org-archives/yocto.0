Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA958E00FBE; Tue, 22 Sep 2015 12:55:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	MISSING_HEADERS,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.170 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-yk0-f170.google.com (mail-yk0-f170.google.com
	[209.85.160.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43253E00FA1
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 12:55:56 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so20898123ykd.2
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 12:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=4XTwmLFcR1H803CpeeZxA4PQ+d2+Oui7oGc5IoHSYvQ=;
	b=TKGBzx/Xed0OTuELkIh2nDlTGEAjUXkPAzunDJfn9iIP5cgSDDKeFlo8lkSKnGJAFy
	IPFOvLGJekXUccgcBCOl6A8IWR/XOj+wb6S9AO+FfrF2Okyb7WUHVZ+DLK0x/u+I7Pci
	qodaCNcYZAT/VH1B3RJFPqetLk/SKP7RwhazvM2ODbdRo6+NlwdYEmIfvyHTtAHbjRfS
	5xN3UNPtS/Q+oJogqNbSjMnriHDRkLYlSJ+4iSHcMA+VQ1MBS7LRa3xV+v9s69PiyjVb
	ZdppSHAn08sQ8WX5TyMkIeTe14QXWxKJlFGzjzLKbe5tN6Eny3N9lGa187AwyrO3w1Mp
	UsAA==
MIME-Version: 1.0
X-Received: by 10.13.204.81 with SMTP id o78mr23107225ywd.108.1442951755640;
	Tue, 22 Sep 2015 12:55:55 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Tue, 22 Sep 2015 12:55:55 -0700 (PDT)
In-Reply-To: <1442946736651.15866@seescan.com>
References: <F9B37C5086864E2EA06AC70C09CF7C25@PAULD>
	<CAFKnvs6eVMrfcH3AOS28vAG237UUbYdLKR=FGB9PBipOQZbqYg@mail.gmail.com>
	<3DB96F2F9D444EFE931CA8443BAFBACE@PAULD>
	<CAPWNY8XTWDDS83JwizV8jH=xkxs9hdRgBLB5CsacTYQsqCwG=Q@mail.gmail.com>
	<DEEBEF6233F54A17BB00A9E93D0A54EC@PAULD>
	<1442946736651.15866@seescan.com>
Date: Tue, 22 Sep 2015 16:55:55 -0300
Message-ID: <CAF3SDA66jPNUZNFMnihLMYFkAULDiNv50r+sZySRjANPaT9q4Q@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 22 Sep 2015 19:55:59 -0000
Content-Type: multipart/alternative; boundary=001a114820c4d2bad605205b6207

--001a114820c4d2bad605205b6207
Content-Type: text/plain; charset=UTF-8

I thought that /etc/udev/scripts/mount.sh was tied to sysvinit

2015-09-22 15:33 GMT-03:00 Fred Ollinger <Fred.Ollinger@seescan.com>:

> This is in the package: udev-extraconf
>
> On your system look here:
>
> /etc/udev/rules.d/automount.rules
>
> In this file, you'll find the following rules.
>
> The second one auto unmounts.
>
> SUBSYSTEM=="block", ACTION=="add"    RUN+="/etc/udev/scripts/mount.sh"
>
> SUBSYSTEM=="block", ACTION=="remove" RUN+="/etc/udev/scripts/mount.sh"
>
> SUBSYSTEM=="block", ACTION=="change",
> ENV{DISK_MEDIA_CHANGE}=="1" RUN+="/etc/udev/scripts/mount.sh"
>
> ________________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on
> behalf of Paul D. DeRocco <pderocco@ix.netcom.com>
> Sent: Tuesday, September 22, 2015 10:45 AM
> To: 'Mantas Mikulenas'; yocto@yoctoproject.org
> Subject: Re: [yocto] [systemd-devel] How to automount
>
> > From: Mantas Mikulenas [mailto:grawity@gmail.com]
> >
> > > I don't think there's any way to have something auto-unmount
> >
> > There certainly is - udev has been unmounting unplugged
> > drives for many years. It's done by default.
>
> If creating a udev mount rule automatically does the unmount, then the
> simplest thing for me would probably be to do that, and have my
> application do a sync after each user-initiated operation. That way, the
> drive would remain mounted after the operation, so I could still poke
> around on it while debugging, yet there would be no corruption when it's
> removed. Thanks for the tip.
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
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114820c4d2bad605205b6207
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I thought that /etc/udev/scripts/mount.sh was tied to sysv=
init<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">201=
5-09-22 15:33 GMT-03:00 Fred Ollinger <span dir=3D"ltr">&lt;<a href=3D"mail=
to:Fred.Ollinger@seescan.com" target=3D"_blank">Fred.Ollinger@seescan.com</=
a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex">This is in the package: ud=
ev-extraconf<br>
<br>
On your system look here:<br>
<br>
/etc/udev/rules.d/automount.rules<br>
<br>
In this file, you&#39;ll find the following rules.<br>
<br>
The second one auto unmounts.<br>
<br>
SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=3D&quot;add&quot;=C2=A0 =C2=A0 =
RUN+=3D&quot;/etc/udev/scripts/mount.sh&quot;<br>
<br>
SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=3D&quot;remove&quot; RUN+=3D&qu=
ot;/etc/udev/scripts/mount.sh&quot;<br>
<br>
SUBSYSTEM=3D=3D&quot;block&quot;, ACTION=3D=3D&quot;change&quot;,<br>
ENV{DISK_MEDIA_CHANGE}=3D=3D&quot;1&quot; RUN+=3D&quot;/etc/udev/scripts/mo=
unt.sh&quot;<br>
<br>
________________________________________<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto=
-bounces@yoctoproject.org</a>&gt; on behalf of Paul D. DeRocco &lt;<a href=
=3D"mailto:pderocco@ix.netcom.com">pderocco@ix.netcom.com</a>&gt;<br>
Sent: Tuesday, September 22, 2015 10:45 AM<br>
To: &#39;Mantas Mikulenas&#39;; <a href=3D"mailto:yocto@yoctoproject.org">y=
octo@yoctoproject.org</a><br>
Subject: Re: [yocto] [systemd-devel] How to automount<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; From: Mantas Mikulenas [mailto:<a href=3D"mailto:grawity@gmail.com">gr=
awity@gmail.com</a>]<br>
&gt;<br>
&gt; &gt; I don&#39;t think there&#39;s any way to have something auto-unmo=
unt<br>
&gt;<br>
&gt; There certainly is - udev has been unmounting unplugged<br>
&gt; drives for many years. It&#39;s done by default.<br>
<br>
If creating a udev mount rule automatically does the unmount, then the<br>
simplest thing for me would probably be to do that, and have my<br>
application do a sync after each user-initiated operation. That way, the<br=
>
drive would remain mounted after the operation, so I could still poke<br>
around on it while debugging, yet there would be no corruption when it&#39;=
s<br>
removed. Thanks for the tip.<br>
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
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not.=
 There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></=
div></div>
</div>

--001a114820c4d2bad605205b6207--
