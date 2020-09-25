Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
 by mx.groups.io with SMTP id smtpd.web10.5016.1601030808041275453
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 03:46:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=efgingnd;
 spf=pass (domain: gmail.com, ip: 209.85.166.181, mailfrom: thisisaash9698@gmail.com)
Received: by mail-il1-f181.google.com with SMTP id q4so1900129ils.4
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 03:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vzgSijk6fBARpFaMpe8POHfpRszdl8Lk8B+RfR7ex0o=;
        b=efgingndJD/YUGBb6hSHWkc+hF1cO8RXkLC0t7BHRvdB1wApXCfkjtROn+maaxDRq+
         QXjbE7KIpIoY9TFBbdcXaIMbMlvBUndsTElbFGRMlToXje+B4s3lexORRxQ0q4QIatdk
         gWAzflgTrYb9GC2nWo7H6HXAxtsZ/OAbuiJIRvjuLz2LN6iBONjOD8jnXtNXjC57Vg2a
         +vfoeYw13cLr0JYcpXd/VXg+WRZdEadIR/2OdpNuHvF66KKEADzfMt5BNvO1x3WRhWq4
         BVM+0LkiRM5Wu6LHwGXzfKArj8FTjSr8kMe9uYwTNUKISCNpTQTAmNFBJeUR1v9cHPdt
         3dow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vzgSijk6fBARpFaMpe8POHfpRszdl8Lk8B+RfR7ex0o=;
        b=Gy6UxweoYqGbFJGJrSKTfxbUSlwIgVEgxXyjSFUi9LN2pfMcmXXljQCgAfJWQkNHnU
         q+Oh8ohWy++qFshaoIfbaNaefjebs+SkLLf4k5fULKEfymVDijRKVlkpN2GwS0PtYYDv
         DaYDa4ED6Sv+zjmQL5YW7o/1Y47pTpKeTlj/Yx6SyBSL2t//f+lZ4+Q2eYM6q11yuvKK
         GNBSmQQ94d06T1DKfaASnzhBJhwlmta0ES+VfE1xADAGZnCYLyEwZDxPK9jGFYAX0ySJ
         81i47r7UxqGCNSscbt7p3S0R8YmXyoYYkONbonp2fXv5r+YopvWGFwjWshOme0cAkxt1
         NADw==
X-Gm-Message-State: AOAM530mxfhLXhnaBeYaiUOYe4wDsqb/3s49Ckiwzu0WjDsVBH5Fi2ee
	tKgQVQQr2MQLSeYrkYXKXjeEI1zFVR7lWwhMpG8=
X-Google-Smtp-Source: ABdhPJylWRWeByVJKuGbxvMPiPRseQBbzX5pAVpJG5MsnksSBP8hmajpakF48Ivpj4277svhMUBMXhmSGDg4jrDtyyA=
X-Received: by 2002:a05:6e02:eb0:: with SMTP id u16mr2603588ilj.291.1601030807211;
 Fri, 25 Sep 2020 03:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
 <CAGAf8LzKyimthOQXbm6ryP6+tBMMc0abYe9z_a-9m3CzRSn62Q@mail.gmail.com>
 <CAMjhiJhg2XYo+XG8WrnzehcGyUR_X=+OTVeoiwpPWeiABFXt8Q@mail.gmail.com> <CAGAf8LwmqDatvGwCfsTOBWE0eajOAKaNUVqc+-_psV6S5EETuw@mail.gmail.com>
In-Reply-To: <CAGAf8LwmqDatvGwCfsTOBWE0eajOAKaNUVqc+-_psV6S5EETuw@mail.gmail.com>
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Fri, 25 Sep 2020 16:16:35 +0530
Message-ID: <CANVQz1ZPyMbTcdnMBm8NkdpQbg-Q3ig=dhSvkH5Do+XbZrqKrQ@mail.gmail.com>
Subject: Re: [yocto] SIGINT Issues with Zeus Migration
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Leon Woestenberg <leon@sidebranch.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000089d3e705b0210859"

--00000000000089d3e705b0210859
Content-Type: text/plain; charset="UTF-8"

Hi Leon, Zoran

I am using Ctrl+C to kill the Ping command.


Thanks.

On Fri, Sep 25, 2020 at 3:56 PM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Leon,
>
> > Aashik, how are you sending the signal? Using CTRL-C or
> > using the "kill" command?
>
> This is a good suggestion for the test. To open another terminal and
> issue: kill -SIGINT <ping PID>.
>
> I should add that this MUST work: kill -SIGKILL <ping PID>, since
> SIGKILL handler is un-preemptable.
>
> If it does not, something is very wrong... I suggest, Aashik, you
> write YOCTO bugzilla for Zeus.
>
> > Zoran, are you suggesting that the program will change the signal
> > handler to default even after it has exited, and for the subsequent
> > ping command?
>
> Yes, I do. Then, the ping command should be issued again, and my best
> guess is, it should terminate the ping process.
>
> Leon, you should try to write another C f-n and to install other
> SIGINT handler (replacing SIG_DFL), then test it with my original C:
>
> void  myhandler(int signum) {
>         if (SIGINT == signum)
>                 printf("\nHey, I got SIGINT: %d\n\n",signum);
> }
>
> Zoran
> _______
>
> On Fri, Sep 25, 2020 at 10:54 AM Leon Woestenberg <leon@sidebranch.com>
> wrote:
> >
> > Hi Aashik, Zoran,
> >
> >
> > On Fri, Sep 25, 2020 at 10:02 AM Zoran <zoran.stojsavljevic@gmail.com>
> wrote:
> > >
> > > > ...that I am not able to send SIGINT to commands such as Ping, tail
> etc.\
> >
> > Aashik, how are you sending the signal? Using CTRL-C or using the
> > "kill" command?
> >
> > >
> > > Please, do the following: issue in zeus xterm the command: man signal
> > > and read it.
> > >
> > That reads to use sigaction() instead of signal() I would assume.
> >
> > > Then execute the following code (ad-hoc from the top of my head):
> > > <...>
> > > This program serves the double purpose:
> > > [1] Gives you the address of the old SIGINT handler which was executed
> > > prior execution of this code;
> > > [2] After execution, repeat the routine (ping) and see if <ctrl c>
> > > terminates the ping process.
> > >
> >
> > Zoran, are you suggesting that program will change the signal handler
> > to default even after it has exited, and for the subsequent ping
> > command?
> >
> > Regards,
> >
> > Leon.
>

--00000000000089d3e705b0210859
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Leon, Zoran<div><br></div><div>I am using Ctrl+C to kil=
l the Ping command.</div><div><br></div><div><br></div><div>Thanks.</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri, Sep 25, 2020 at 3:56 PM Zoran Stojsavljevic &lt;<a href=3D"mailto:zor=
an.stojsavljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hello Leon,<br>
<br>
&gt; Aashik, how are you sending the signal? Using CTRL-C or<br>
&gt; using the &quot;kill&quot; command?<br>
<br>
This is a good suggestion for the test. To open another terminal and<br>
issue: kill -SIGINT &lt;ping PID&gt;.<br>
<br>
I should add that this MUST work: kill -SIGKILL &lt;ping PID&gt;, since<br>
SIGKILL handler is un-preemptable.<br>
<br>
If it does not, something is very wrong... I suggest, Aashik, you<br>
write YOCTO bugzilla for Zeus.<br>
<br>
&gt; Zoran, are you suggesting that the program will change the signal<br>
&gt; handler to default even after it has exited, and for the subsequent<br=
>
&gt; ping command?<br>
<br>
Yes, I do. Then, the ping command should be issued again, and my best<br>
guess is, it should terminate the ping process.<br>
<br>
Leon, you should try to write another C f-n and to install other<br>
SIGINT handler (replacing SIG_DFL), then test it with my original C:<br>
<br>
void=C2=A0 myhandler(int signum) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (SIGINT =3D=3D signum)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 printf(&quot;\nHey,=
 I got SIGINT: %d\n\n&quot;,signum);<br>
}<br>
<br>
Zoran<br>
_______<br>
<br>
On Fri, Sep 25, 2020 at 10:54 AM Leon Woestenberg &lt;<a href=3D"mailto:leo=
n@sidebranch.com" target=3D"_blank">leon@sidebranch.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Aashik, Zoran,<br>
&gt;<br>
&gt;<br>
&gt; On Fri, Sep 25, 2020 at 10:02 AM Zoran &lt;<a href=3D"mailto:zoran.sto=
jsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&g=
t; wrote:<br>
&gt; &gt;<br>
&gt; &gt; &gt; ...that I am not able to send SIGINT to commands such as Pin=
g, tail etc.\<br>
&gt;<br>
&gt; Aashik, how are you sending the signal? Using CTRL-C or using the<br>
&gt; &quot;kill&quot; command?<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; Please, do the following: issue in zeus xterm the command: man si=
gnal<br>
&gt; &gt; and read it.<br>
&gt; &gt;<br>
&gt; That reads to use sigaction() instead of signal() I would assume.<br>
&gt;<br>
&gt; &gt; Then execute the following code (ad-hoc from the top of my head):=
<br>
&gt; &gt; &lt;...&gt;<br>
&gt; &gt; This program serves the double purpose:<br>
&gt; &gt; [1] Gives you the address of the old SIGINT handler which was exe=
cuted<br>
&gt; &gt; prior execution of this code;<br>
&gt; &gt; [2] After execution, repeat the routine (ping) and see if &lt;ctr=
l c&gt;<br>
&gt; &gt; terminates the ping process.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Zoran, are you suggesting that program will change the signal handler<=
br>
&gt; to default even after it has exited, and for the subsequent ping<br>
&gt; command?<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Leon.<br>
</blockquote></div>

--00000000000089d3e705b0210859--
