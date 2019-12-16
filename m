Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6358.1576503059247351569
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 05:30:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IDdPhBuu;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: aj.ci.01.239@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C75DDE010D8; Mon, 16 Dec 2019 05:30:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (aj.ci.01.239[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CBFEE00E3C
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 05:30:57 -0800 (PST)
Received: by mail-lj1-f172.google.com with SMTP id c19so6782497lji.11
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 05:30:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i5g6XnIctNiC0fpbQ4Imno2hlNf8GT1zlVmLU15kWhs=;
        b=IDdPhBuuQbaGH5a78r3vvHYSNRdICf+ZgjvubiRz17oFR6o3J4/9TA1j/B1iazMpxY
         SgEzLxvT5eH6filxMMy2TItCPOJcEA975/6I2NG5yg2mzsQw9Uk9FC3obM3rGN5b20a1
         BpJW40MNVYpfGx+RWrO+rBhr5MNPjf0wNRmGIPzkXBCpxe5EHG/m7RYGVgtX9uZoN4vs
         l3FQMNaSWvVDW+LFY3AGBCxXb7/s2Cu7V8f62yK2XklVL3eir7gJotz7Hv0yb/PdrZJy
         V28UbEkkdZl7R0NVwpDypZjPQrI9NvOX6U5yUdFqtCPZu3Mvf+xMaqxsLQ0RY6gZH7ou
         J+0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i5g6XnIctNiC0fpbQ4Imno2hlNf8GT1zlVmLU15kWhs=;
        b=UwBGKQOYiehsZImcTWQaJkKAINQg8XqcdjYA+mu2WWPeRBh0D/xC9T0oS19ZVgnhtN
         PFzhl8XBm3bAcvdly/T2rEt++zDEcqNhxtoi+IIwRN4O9RuZIafDkFY6sOrithDBpYVX
         hFdsDMRDLkPeUjzPNo/fzgQTbGDfbJqui+ws3h6LDRaYH8oTivHSBv8pyvV6TJo1Uh/Q
         7+ztqSxrss43J7JfdxBZ8TPB8xCak7xkfI7OPdcEFYSNQzFDYvZPDr/nHzW9gTLjJERS
         WnXomwJXvduG+8C6AWeFLaZYmjpO1x25D3okqUqQ16X5T578F1rxt+W1DatpbeMolU9R
         9i3w==
X-Gm-Message-State: APjAAAVgSeVUwoFivXM9s0HjIoP6mc1Hv8IRxWhR08ZaKd1/Pt1wm9ip
	wF8dujCSEvjdkFVzh7jQs+jsKuBQNwo22K5KyA==
X-Google-Smtp-Source: APXvYqzbzMw/5tLIZ8uZfOVQfFRCyViYBKnJgdFh0zSMrIyy/h+ZcznYZokUtZIOU97CilUT+QBfgtXAccYZckwvY3g=
X-Received: by 2002:a2e:556:: with SMTP id 83mr20000289ljf.127.1576503056398;
 Mon, 16 Dec 2019 05:30:56 -0800 (PST)
MIME-Version: 1.0
References: <CALSaBR-MfrzMpF53_-JM0pnJ5ZBAnVj22UqK8Kzsqnc3sYY9FA@mail.gmail.com>
 <CADkTA4OcNcXqdhwTxBkW2y0gPyGvs52y0XO8Hg0eXV9cbEKYHA@mail.gmail.com>
In-Reply-To: <CADkTA4OcNcXqdhwTxBkW2y0gPyGvs52y0XO8Hg0eXV9cbEKYHA@mail.gmail.com>
From: "Aj Cit" <aj.ci.01.239@gmail.com>
Date: Mon, 16 Dec 2019 19:00:44 +0530
Message-ID: <CALSaBR_09k9C_e=EpJzMo30N8Q9PJbfUxHV1Wf9AS04YMFJEJg@mail.gmail.com>
Subject: Re: [yocto] Docker Error on Yocto Build on ARM
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>, kurup.avinash@gmail.com
Content-Type: multipart/alternative; boundary="000000000000aa2b1f0599d238a3"

--000000000000aa2b1f0599d238a3
Content-Type: text/plain; charset="UTF-8"

Hi Bruce,

Thank you for the clarification. Shall work in the direction cited.

We will get back to you if we face any more issues as and when we proceed.

Best,
Aj

On Mon, Dec 16, 2019 at 6:41 PM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Mon, Dec 16, 2019 at 7:23 AM Aj Cit <aj.ci.01.239@gmail.com> wrote:
> >
> > Hi,
> >
> > We are getting the following error while building yocto -warrior
> QEMUarm64; however we are getting the following error while running the
> docker service.:
> >
>
> The meta-virtualization list is the right place to ask questions about
> docker.
>
> > systemctl status docker, returned error.
> > Dec 16 09:00:19 qemuarm64 dockerd[340]: Error starting daemon: Error
> initializing network controller: Error creating default "bridge" network:
> Failed to program NAT chain: Failed to inject DOCKER in PRERO
> > UTING chain: iptables failed: iptables --wait -t nat -A PREROUTING -m
> addrtype --dst-type LOCAL -j DOCKER: iptables: No chain/target/match by
> that name.
> >
>
> This is almost always a side effect the kernel not being configured
> correctly, and even more often, the kernel modules are not installed
> in your image.
>
> If you are using linux-yocto, and you have virtualization in your
> DISTRO_FEATURES, the kernel config is taken care of. But you do need
> to have "kernel-modules" in your image install variables to get the
> right modules onto the target.
>
> Bruce
>
> >
> > also. Dec 16 05:58:53 qemuarm64 dockerd[628]:
> time="2019-12-16T05:58:53.499510946Z" level=warning msg="Running modprobe
> bridge br_netfilter failed with message: modprobe: WARNING: Module
> br_netfilter not found
> > in directory /lib/modules/5.0.19-yocto-standard\n, error: exit status 1"
> >
> > Any help will be much appreciated.
> >
> > Thanks
> > Aj
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> >
> > View/Reply Online (#47693):
> https://lists.yoctoproject.org/g/yocto/message/47693
> > Mute This Topic: https://lists.yoctoproject.org/mt/68726097/1050810
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> bruce.ashfield@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

--000000000000aa2b1f0599d238a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Bruce,<div><br></div><div>Thank you for the clarificati=
on. Shall work in the direction cited.<div><br></div><div>We will get back =
to you if we face any more issues as and when we proceed.=C2=A0<br></div></=
div><div><br></div><div>Best,</div><div>Aj</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 16, 2019 at 6:4=
1 PM Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.a=
shfield@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">On Mon, Dec 16, 2019 at 7:23 AM Aj Cit &lt;<a href=3D"mail=
to:aj.ci.01.239@gmail.com" target=3D"_blank">aj.ci.01.239@gmail.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; We are getting the following error while building yocto -warrior QEMUa=
rm64; however we are getting the following error while running the docker s=
ervice.:<br>
&gt;<br>
<br>
The meta-virtualization list is the right place to ask questions about dock=
er.<br>
<br>
&gt; systemctl status docker, returned error.<br>
&gt; Dec 16 09:00:19 qemuarm64 dockerd[340]: Error starting daemon: Error i=
nitializing network controller: Error creating default &quot;bridge&quot; n=
etwork: Failed to program NAT chain: Failed to inject DOCKER in PRERO<br>
&gt; UTING chain: iptables failed: iptables --wait -t nat -A PREROUTING -m =
addrtype --dst-type LOCAL -j DOCKER: iptables: No chain/target/match by tha=
t name.<br>
&gt;<br>
<br>
This is almost always a side effect the kernel not being configured<br>
correctly, and even more often, the kernel modules are not installed<br>
in your image.<br>
<br>
If you are using linux-yocto, and you have virtualization in your<br>
DISTRO_FEATURES, the kernel config is taken care of. But you do need<br>
to have &quot;kernel-modules&quot; in your image install variables to get t=
he<br>
right modules onto the target.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; also. Dec 16 05:58:53 qemuarm64 dockerd[628]: time=3D&quot;2019-12-16T=
05:58:53.499510946Z&quot; level=3Dwarning msg=3D&quot;Running modprobe brid=
ge br_netfilter failed with message: modprobe: WARNING: Module br_netfilter=
 not found<br>
&gt; in directory /lib/modules/5.0.19-yocto-standard\n, error: exit status =
1&quot;<br>
&gt;<br>
&gt; Any help will be much appreciated.<br>
&gt;<br>
&gt; Thanks<br>
&gt; Aj<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt;<br>
&gt; View/Reply Online (#47693): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/47693" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/47693</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/68726097=
/1050810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/68726097/1050810</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a>=C2=A0 [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_bl=
ank">bruce.ashfield@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div>

--000000000000aa2b1f0599d238a3--
