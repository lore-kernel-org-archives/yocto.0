Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5955.1580196522911642873
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2020 23:28:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WQG4+9mf;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: gabbla.malist@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A6CE014B5; Mon, 27 Jan 2020 23:28:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DDF9E00CA2
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 23:28:39 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id q8so13568486ljj.11
        for <yocto@yoctoproject.org>; Mon, 27 Jan 2020 23:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wgqTdkA0vTnuAzaiUXK9I9x4dXEcusWsnAWKB4ks858=;
        b=WQG4+9mfRQnpzoC3rw7JXcpB5vu90l9Is3HQKW6UtWA3vEn8m+jLvy0NBdpo9i2jQJ
         jMk4osARvzS3mq+s927CbM7UukYrHTPcq3gtO4bpd/dKeARuAFfuh28KHvYsLuwae3qA
         ylsoqB55mZ7TBb5n8XXqgBSlwbrI4e6nAjb3GI1dwF2VF+OJgPoqW2Yeq8D4TgATQ3It
         wvzI2Txom/J7cKUqM1NNO21t3lKt7EpF0bDSZPGCo38BkivMxPkbVRcbcKchH9GaWzGL
         0sutGtC0ByL7rUFtoftiaE2lIBTBHMWpyL+IpP0dB0sBw9kmWRSYbD5Vrk43cNkwUBxN
         2jcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wgqTdkA0vTnuAzaiUXK9I9x4dXEcusWsnAWKB4ks858=;
        b=hRzWWktABEXNJqmgQl2V6RlBTe/yEhYp7vM5vHkEee2yhUV+5w6Hi8ULtPJtFQuyk6
         Yo+xPP5N98nGDz5rbVL27epjInr4oFcMogx27RZuHScyjQta93Po34Kb7y5oS03CEssB
         4e5C1XnRGWWZ9/8xk5ZrpW1IWD6IAgd0XTj16R0bgt2pYF1peOB9h1mItDQMQPL+6px8
         IcfPPN9FDW9q7Xbq/j7eIn1CyzQx2PSaflajYrEFtIW2YzzzqGIlFPHnKQpzN0CchEuM
         vFofYUC4Va0Q8lXTN8KF+YUw+6B7gpKtIPsJjntdEDxbiXG/RMgRVYoBMvzvv0/D/eIq
         Ny/w==
X-Gm-Message-State: APjAAAW58kMcmVlq86ocYmlC2MKN+ghZq8sRGF+9i7HigpN0WBxGhc69
	zBVSZeFysw1TIJM9eVbHGK8xWtsKmU6EBYQngmQ=
X-Google-Smtp-Source: APXvYqwUL+0U327UkxIVelIUfsg0GHa/ZRxBemGLJz3wj40YlgcW/dHlsamjQNPei8bA+x2EhH663ZPICPxly2kMXBU=
X-Received: by 2002:a2e:80d9:: with SMTP id r25mr13285156ljg.8.1580196518369;
 Mon, 27 Jan 2020 23:28:38 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
 <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
 <emb3e01e23-7511-48c8-9229-85a767ab359c@andys-imac.leeshillfarm.local>
 <CAA=hcWS2ncU4+RkeLydXOnGvswshK-0iDV3cRTdFgoQ4+Oe57w@mail.gmail.com>
 <20200127120638.2jpgvedxecwgwz6u@qschulz> <CAA=hcWSXrBKX=EbF5KHkWxmWQ+6Tcqvv4exxbWUOniDR6EDiRQ@mail.gmail.com>
In-Reply-To: <CAA=hcWSXrBKX=EbF5KHkWxmWQ+6Tcqvv4exxbWUOniDR6EDiRQ@mail.gmail.com>
From: "Gabriele" <gabbla.malist@gmail.com>
Date: Tue, 28 Jan 2020 08:28:27 +0100
Message-ID: <CAAx3WaA2uoCki+1AV9QFZybbszfS5wecWKf1PfDvgV5u9EVL=g@mail.gmail.com>
Subject: Re: [yocto] lost busybox mysteriously
To: JH <jupiter.hce@gmail.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, 
	Andy Pont <andy.pont@sdcsystems.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>, connman <connman@lists.01.org>
Content-Type: multipart/alternative; boundary="000000000000271df1059d2e2c62"

--000000000000271df1059d2e2c62
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI JH,

- Can you stop on uboot and try "nand bad"? This will list the bad blocks
on your device.
- How do you flash your ubi partition(s)?
- During boot, does ubifs layer complain about the partition is it trying
to mount? It will in case of corrupted metadata and may result in a read
only mount.
- It's pretty weird that busybox has gone and the partition is intact.
Didn't you messed with any script? Can you replicate on another board?

BR
Gabriele

On Tue, Jan 28, 2020 at 7:25 AM JH <jupiter.hce@gmail.com> wrote:

> On 1/27/20, Quentin Schulz <quentin.schulz@streamunlimited.com> wrote:
> > Hi JH,
> >
> > On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:
> >> Hi Andy,
> >>
> >> Thanks for the response.
> >>
> >> On 1/27/20, Andy Pont <andy.pont@sdcsystems.com> wrote:
> >> > JH wrote...
> >> >
> >> >>That the same problem of missing busybox was not just occurred duri=
ng
> >> >>the device running in the middle of operation, it was also occurred
> >> >>during booting image from NAND, I saw several times that the first =
and
> >> >>second cycles of booting image from NAND were working well, then so=
me
> >> >>following booting process would be crashed by missing busybox, then
> >> >>could not run whole shell commands. I have been pondering if it cou=
ld
> >> >>be caused by NAND issue or network virus / fishy? Appreciate any
> >> >>clues.
> >> > The first step is for us to understand what =E2=80=9Cmissing=E2=80=
=9D means?  Have you
> >> > got any mechanism (U-Boot, SD card boot, etc.) that will allow you =
to
> >> > mount and look at the contents of the NAND file system?
> >>
> >> Means that busybox was not there anymore, it mysteriously lost, all
> >> shell commands would no longer available. It cannot to run mount or
> >> any shell commands. There was two scenarios when that happened:
> >>
> >> - In the middle of running, the device all of certain could not run
> >> shell commands and failed mysteriously
> >>
> >> - During the u-boot booting kernel process, there were full errors of
> >> failing shell commands. Let me make it clear,  that booting error did
> >> not occur in the first or second kernel booting after the new image
> >> installation, it happened in the following kernel booting, but there
> >> was nothing to delete busybox accidentally, busybox was just
> >> mysteriously disappeared. Because I could not run ls, I did not know
> >> if there are other things missing. If you ask how I could know the
> >> busybox was missing, I ran the zImage-initramfs to boot the linux in
> >> RAM, then mount the ubi0 to find  out busybox was gone.
> >>
> >>
> >> > If you look at the /bin directory (ls -la /bin/busy*) what do you s=
ee?
> >> > Have the files been deleted? Truncated? Zero length?
> >>
> >> Could not run ls or any shell commands when the busybox was missing.
> >>
> >
> > /bin/ls -la /bin/busy* ?
> >
> > Maybe something is messing with the PATH environment variable. Or
> > something is removing the symlinks from some binaries to busybox.
>
> No, could not run /bin/ls as it was  linked to  /bin/busybox.nosuid,
> the /bin/busybox.nosuid was damaged for some reason.
>
> >> > What file system are you using on the NAND flash?  How are the devi=
ces
> >> > being reset during the various boot cycles?  If it is a hardware re=
set
> >> > then some file systems are less resilient to it than others but I
> would
> >> > expect in that case more fundamental boot issues.
> >>
> >> UBIFS, most device reset or boot cycles were calling halt or reboot,
> >> but it sometime it could just use power cycle.
> >>
> >
> > IIRC, UBIFS is safe from power cycles.
>
> Good to know. Thank you.
>
> > Quentin
> >
>=20
>

--000000000000271df1059d2e2c62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>HI JH,</div><div><br></div><div>- Ca=
n you stop on uboot and try &quot;nand bad&quot;? This will list the bad bl=
ocks on your device.<br></div></div><div>- How do you flash your ubi partit=
ion(s)?</div><div>- During boot, does ubifs layer complain about the partit=
ion is it trying to mount? It will in case of corrupted metadata and may re=
sult in a read only mount. <br></div><div>- It&#39;s pretty weird that busy=
box has gone and the partition is intact. Didn&#39;t you messed with any sc=
ript? Can you replicate on another board?<br></div><div><br></div><div>BR<b=
r></div><div>Gabriele<br></div><div><br></div><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 28, 2020 at 7:25 AM JH &lt;=
<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 1/27/20, Q=
uentin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com" tar=
get=3D"_blank">quentin.schulz@streamunlimited.com</a>&gt; wrote:<br>
&gt; Hi JH,<br>
&gt;<br>
&gt; On Mon, Jan 27, 2020 at 10:13:37PM +1100, JH wrote:<br>
&gt;&gt; Hi Andy,<br>
&gt;&gt;<br>
&gt;&gt; Thanks for the response.<br>
&gt;&gt;<br>
&gt;&gt; On 1/27/20, Andy Pont &lt;<a href=3D"mailto:andy.pont@sdcsystems.=
com" target=3D"_blank">andy.pont@sdcsystems.com</a>&gt; wrote:<br>
&gt;&gt; &gt; JH wrote...<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;That the same problem of missing busybox was not just occ=
urred during<br>
&gt;&gt; &gt;&gt;the device running in the middle of operation, it was als=
o occurred<br>
&gt;&gt; &gt;&gt;during booting image from NAND, I saw several times that =
the first and<br>
&gt;&gt; &gt;&gt;second cycles of booting image from NAND were working wel=
l, then some<br>
&gt;&gt; &gt;&gt;following booting process would be crashed by missing bus=
ybox, then<br>
&gt;&gt; &gt;&gt;could not run whole shell commands. I have been pondering=
 if it could<br>
&gt;&gt; &gt;&gt;be caused by NAND issue or network virus / fishy? Appreci=
ate any<br>
&gt;&gt; &gt;&gt;clues.<br>
&gt;&gt; &gt; The first step is for us to understand what =E2=80=9Cmissing=
=
=E2=80=9D means?=C2=A0 Have you<br>
&gt;&gt; &gt; got any mechanism (U-Boot, SD card boot, etc.) that will all=
ow you to<br>
&gt;&gt; &gt; mount and look at the contents of the NAND file system?<br>
&gt;&gt;<br>
&gt;&gt; Means that busybox was not there anymore, it mysteriously lost, a=
ll<br>
&gt;&gt; shell commands would no longer available. It cannot to run mount =
or<br>
&gt;&gt; any shell commands. There was two scenarios when that happened:<b=
r>
&gt;&gt;<br>
&gt;&gt; - In the middle of running, the device all of certain could not r=
un<br>
&gt;&gt; shell commands and failed mysteriously<br>
&gt;&gt;<br>
&gt;&gt; - During the u-boot booting kernel process, there were full error=
s of<br>
&gt;&gt; failing shell commands. Let me make it clear,=C2=A0 that booting =
error did<br>
&gt;&gt; not occur in the first or second kernel booting after the new ima=
ge<br>
&gt;&gt; installation, it happened in the following kernel booting, but th=
ere<br>
&gt;&gt; was nothing to delete busybox accidentally, busybox was just<br>
&gt;&gt; mysteriously disappeared. Because I could not run ls, I did not k=
now<br>
&gt;&gt; if there are other things missing. If you ask how I could know th=
e<br>
&gt;&gt; busybox was missing, I ran the zImage-initramfs to boot the linux=
 in<br>
&gt;&gt; RAM, then mount the ubi0 to find=C2=A0 out busybox was gone.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; If you look at the /bin directory (ls -la /bin/busy*) what d=
o you see?<br>
&gt;&gt; &gt; Have the files been deleted? Truncated? Zero length?<br>
&gt;&gt;<br>
&gt;&gt; Could not run ls or any shell commands when the busybox was missi=
ng.<br>
&gt;&gt;<br>
&gt;<br>
&gt; /bin/ls -la /bin/busy* ?<br>
&gt;<br>
&gt; Maybe something is messing with the PATH environment variable. Or<br>
&gt; something is removing the symlinks from some binaries to busybox.<br>
<br>
No, could not run /bin/ls as it was=C2=A0 linked to=C2=A0 /bin/busybox.nos=
uid,<br>
the /bin/busybox.nosuid was damaged for some reason.<br>
<br>
&gt;&gt; &gt; What file system are you using on the NAND flash?=C2=A0 How =
are the devices<br>
&gt;&gt; &gt; being reset during the various boot cycles?=C2=A0 If it is a=
 hardware reset<br>
&gt;&gt; &gt; then some file systems are less resilient to it than others =
but I would<br>
&gt;&gt; &gt; expect in that case more fundamental boot issues.<br>
&gt;&gt;<br>
&gt;&gt; UBIFS, most device reset or boot cycles were calling halt or rebo=
ot,<br>
&gt;&gt; but it sometime it could just use power cycle.<br>
&gt;&gt;<br>
&gt;<br>
&gt; IIRC, UBIFS is safe from power cycles.<br>
<br>
Good to know. Thank you.<br>
<br>
&gt; Quentin<br>
&gt;<br>
<br>
</blockquote></div></div>

--000000000000271df1059d2e2c62--
