Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A29CAE00D35; Tue, 25 Jun 2019 03:08:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BB9E00D00
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 03:08:36 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id q26so12231019lfc.3
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 03:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=l9G78tLo8J4zDWbXmwFJK+7IPtm1nq514il/Z4W92C0=;
	b=lheQ33UEf2ahs3r9/2ih1W5uRES7QoSxdUF0XkkBB1mm/TqYGc+orEvH+rm6nEV2kN
	sUMfrjWzrBG0lHY+VTs+wgAL3KaQQYI0Rx9dVvLe/nLffatwbaNEJxNh5e/6btkInxVX
	1Bhj8jKndnNfyVEo+JelaxKGLqBPMRP7KeRjK/TKT2FM3F61nCx/iGbsbs5ugsNLvJuS
	ufC4W1IwH7QR1ZBN7oAT6tJxiQ3ktgpA02WIfTTns22hrV8iiZkqyJ7ca68Veut7Supx
	SsxS8+KqUHhV7mDPZpwp1N4tO77Jc+WnkiADKLYFtptCBcXVZ/X+ZT/SpF5HSPm5tn+C
	rzdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=l9G78tLo8J4zDWbXmwFJK+7IPtm1nq514il/Z4W92C0=;
	b=G5zS7vctvCqmmCWbA8BCvfo+XztkRQGiXCovEku1nrRV2J/dUUovUdXbctsjhkdfGz
	+Q+ImMB+dQH9lwFzpm1ZEqwgYw6HiwkigB7u5JGCaFkcPnA1A5xcZflCWbdzQHYKR+lu
	Y2lCSlXaUAl1LRPwf3gxn1/5cYRLGqxD2XU/EKdJGfBuaj2it8k+XQa5arjrp2ufuHrE
	MC+1VgvbQiod8zXUk3eY7KITS3znoyMZYfmbZNqsIGhfdnfGmGeWfG1ODMMBe6n97VoK
	LRmnGW3jenrAdRb10KGziKoHgovbXmnT35Rmj6pFxWLyNZO4afxrc3L+3GpQGyG3ew4h
	8FpA==
X-Gm-Message-State: APjAAAV68yGRgbNqHlfyP0cSTrAqzY8iFVGaUXpKIlrgXiXOBlcVi8aP
	z7Z0rKDS2z9Knxi+Ry7biZYlb/KCYUGNagQlEVhLfg==
X-Google-Smtp-Source: APXvYqxB7fNypjejrX8+dJfdyX9w97FW471s9pl+5EY+9iY7LZ48weDenpolWMy+r1yo6bV9zSTArefj1KjSIlv3rAg=
X-Received: by 2002:a19:9e4b:: with SMTP id h72mr53585565lfe.21.1561457315613; 
	Tue, 25 Jun 2019 03:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <6fefee9b-8521-b633-8ae4-00b09e6d3532@googlemail.com>
	<20190624070810.GD1584@archworkstation>
	<43163f9c-29e2-6069-bd13-ff65f82d55bd@googlemail.com>
In-Reply-To: <43163f9c-29e2-6069-bd13-ff65f82d55bd@googlemail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Tue, 25 Jun 2019 12:08:24 +0200
Message-ID: <CAAx3WaA+OemjNchvCFd_3m3K5LE4OedqFVtwdPAjYNwUSWv28Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: General Question: Device specific value store
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
X-List-Received-Date: Tue, 25 Jun 2019 10:08:37 -0000
Content-Type: multipart/alternative; boundary="000000000000a1115b058c231c7f"

--000000000000a1115b058c231c7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matthias,

an easier solution may be write those data during production. I don't think
that having a custom partition for each device is a good idea. You could
start the device in "production mode" and inject into the device specific
data through serial or USB. Obviously you must have some piece of software
running on the device that can read/write that partition.

In my opinion Yocto does not mention anything about this procedure probably
because this is not the standard way.

Gabriele

Il giorno mar 25 giu 2019 alle ore 10:53 Matthias Schoepfer <
matthias.schoepfer@googlemail.com> ha scritto:

> Hi Morn=C3=A9,
>
> thanks for you answer. Maybe, I will explain more: we have a Dragonboard
> 410c based hardware. We use a read-only rootfs in one partition
> (actually two with A/B approach) and we have a data partition for user
> data as well as device specific data. We can partition and flash the
> device through fastboot. So, if we can prepare ext4 filesystems (maybe
> through yocto instead of hand-crafted scripting) for each device,
> commissioning will be an easy task for the manufacturer.
>
> I guess, we are not the only ones that need to store device specific
> information besides the rootfs, and I do not find a whole lot about it
> in the yocto manuals. I wonder, if there are best practices, how to
> protect the data from getting corrupted (intentionally by an attacker or
> by accident through ... flash corruption or whatever).
>
> Regards,
>
>     Matthias
>
> On 6/24/19 9:08 AM, Morn=C3=A9 Lamprecht wrote:
> > On Mon, Jun 17, 2019 at 05:25:56PM +0200, Matthias Schoepfer wrote:
> >> Is there a smart, recommended way to deal with device specific data
> >> (i.e.  serial number, credentials for backend access, you name it),
> >> that is specific for *one* device, and hence does not belong into the
> >> rootfs. I know, that there are (safe) hardware stores for it, but
> >> what, if your device does not have one.
> >
> > Not sure if I'm misunderstanding your question, but this should be
> > part of your device commissioning process, i.e. like injecting
> > specific security keys etc...so basically this will part of your image
> > install / flash process, and not really part of the Yocto build
> > process. The specifics of such a process would depend on your specific
> > commissioning process.
> >
> >         - Morn=C3=A9
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000a1115b058c231c7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Matthias,</div><div><br></div><div>an easier solut=
ion may be write those data during production. I don&#39;t think that havin=
g a custom partition for each device is a good idea. You could start the de=
vice in &quot;production mode&quot; and inject into the device specific dat=
a through serial or USB. Obviously you must have some piece of software run=
ning on the device that can read/write that partition. <br></div><div><br><=
/div><div>In my opinion Yocto does not mention anything about this procedur=
e probably because this is not the standard way.<br></div><div><br></div><d=
iv>Gabriele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">Il giorno mar 25 giu 2019 alle ore 10:53 Matthias Scho=
epfer &lt;<a href=3D"mailto:matthias.schoepfer@googlemail.com">matthias.sch=
oepfer@googlemail.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">Hi Morn=C3=A9,<br>
<br>
thanks for you answer. Maybe, I will explain more: we have a Dragonboard <b=
r>
410c based hardware. We use a read-only rootfs in one partition <br>
(actually two with A/B approach) and we have a data partition for user <br>
data as well as device specific data. We can partition and flash the <br>
device through fastboot. So, if we can prepare ext4 filesystems (maybe <br>
through yocto instead of hand-crafted scripting) for each device, <br>
commissioning will be an easy task for the manufacturer.<br>
<br>
I guess, we are not the only ones that need to store device specific <br>
information besides the rootfs, and I do not find a whole lot about it <br>
in the yocto manuals. I wonder, if there are best practices, how to <br>
protect the data from getting corrupted (intentionally by an attacker or <b=
r>
by accident through ... flash corruption or whatever).<br>
<br>
Regards,<br>
<br>
=C2=A0=C2=A0=C2=A0 Matthias<br>
<br>
On 6/24/19 9:08 AM, Morn=C3=A9 Lamprecht wrote:<br>
&gt; On Mon, Jun 17, 2019 at 05:25:56PM +0200, Matthias Schoepfer wrote:<br=
>
&gt;&gt; Is there a smart, recommended way to deal with device specific dat=
a <br>
&gt;&gt; (i.e.=C2=A0 serial number, credentials for backend access, you nam=
e it), <br>
&gt;&gt; that is specific for *one* device, and hence does not belong into =
the <br>
&gt;&gt; rootfs. I know, that there are (safe) hardware stores for it, but =
<br>
&gt;&gt; what, if your device does not have one.<br>
&gt;<br>
&gt; Not sure if I&#39;m misunderstanding your question, but this should be=
 <br>
&gt; part of your device commissioning process, i.e. like injecting <br>
&gt; specific security keys etc...so basically this will part of your image=
 <br>
&gt; install / flash process, and not really part of the Yocto build <br>
&gt; process. The specifics of such a process would depend on your specific=
 <br>
&gt; commissioning process.<br>
&gt;<br>
&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 - Morn=C3=A9<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000a1115b058c231c7f--
