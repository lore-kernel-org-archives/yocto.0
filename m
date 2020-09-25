Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web12.10485.1601047112954145582
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Sep 2020 08:18:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=h16badlX;
 spf=softfail (domain: sidebranch.com, ip: 209.85.219.47, mailfrom: leon@sidebranch.com)
Received: by mail-qv1-f47.google.com with SMTP id b13so1550230qvl.2
        for <yocto@lists.yoctoproject.org>; Fri, 25 Sep 2020 08:18:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GrvR/GYpsI60Vczizb4rZHR2BsxuJAqE3iRObIgtNcE=;
        b=h16badlXtLXkJMg2UsnKEHnZ8A2U39ucHpwMjal04EHmDRPyRz3oYkjX2FJVDZki1u
         zZ1mzqvqIKtWliO4QgSBiX6AXhmPCmh2WW7iJnNyhFMgP5o4NGuvj328sozc8vRHxgHu
         bgd8XrK9tqSSWHmbt3Pu6iAA3c32BBygsKZpLJNA9wLS7vTYghmzOZQCo+rpstQt3JDT
         1I3bTQUTm1tFyxXjH+RS/bIF54eszdHi+BQphtJQLOuXnDhumiapeeo7RuzX5tLtulFG
         TijPXytbDlNH+IJ6ghubeeZ1BdvDEUhbiKrVOk+KwoKNhVrqZMEd4d64wii9XFtqozHK
         gV2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GrvR/GYpsI60Vczizb4rZHR2BsxuJAqE3iRObIgtNcE=;
        b=L8jS5Ak+xDiuYlv8vNOot68jL2Jq7dMT9KwFfxmsRrXgEbeBFzePGcLCgbQ5KNxqyG
         hexALVBlOXeG3IMQNyRJcRBeEZJtFA0glnCgZzUyV2LDVD9vtVyW+WbNqtDM/loJ4a/2
         k6r80QW/NLfNMwb0lMMZENk0n1vJ/TlEc65VYga/6Gs/3pjIzOhwC7EayrVZ/sI5SYdy
         sUuwj9hC/GNgE7vWPwH7Vc9B/vPxyjk6svaHgNsJa0l1WVzZJbWJGpRNqAx50d6g+eOn
         aRD4n/Cgs1r7Dw8aFy2cXNKx6ZF5XEM4EultvFfy7kaQSTmFlssCDThebMcbioB7JMwS
         GbMw==
X-Gm-Message-State: AOAM531gR0/+TV5ebJ7DwSqZovnP62HliQ4isPlsZ5OGqi9mRLdUQWcT
	NAjzG5YIgPrPB8tsakqUf14d5TY98Jbs8ZTz2z5A4A==
X-Google-Smtp-Source: ABdhPJzAK33vgkAS7YcBdT8orrw6Ao5YdZBDpJGxuOkmUldKJbU7/dZEWO//fQMEmtjmkTBvb+b4mh1YQHwnSzjcWaY=
X-Received: by 2002:a0c:f6c4:: with SMTP id d4mr4950556qvo.41.1601047111862;
 Fri, 25 Sep 2020 08:18:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1YKCHHsGGhq=7+y2fZ25G2KU+KKOha9pc+0=3Ucg=C0zQ@mail.gmail.com>
 <CAGAf8LzKyimthOQXbm6ryP6+tBMMc0abYe9z_a-9m3CzRSn62Q@mail.gmail.com>
 <CAMjhiJhg2XYo+XG8WrnzehcGyUR_X=+OTVeoiwpPWeiABFXt8Q@mail.gmail.com>
 <CAGAf8LwmqDatvGwCfsTOBWE0eajOAKaNUVqc+-_psV6S5EETuw@mail.gmail.com> <CANVQz1ZPyMbTcdnMBm8NkdpQbg-Q3ig=dhSvkH5Do+XbZrqKrQ@mail.gmail.com>
In-Reply-To: <CANVQz1ZPyMbTcdnMBm8NkdpQbg-Q3ig=dhSvkH5Do+XbZrqKrQ@mail.gmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Fri, 25 Sep 2020 17:18:20 +0200
Message-ID: <CAMjhiJiSwkYnUNkJE+VBeLYhXN=b2Wo4AY06gK6jcNnkJXyDPQ@mail.gmail.com>
Subject: Re: [yocto] SIGINT Issues with Zeus Migration
To: Aashik Aswin <thisisaash9698@gmail.com>
Cc: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005f2c8f05b024d4b7"

--0000000000005f2c8f05b024d4b7
Content-Type: text/plain; charset="UTF-8"

Hello Aashik,

I recognize the issue that CTRL-C does not pass from the console, but only
with *very* minimal configurations.

How does your local.conf look like, or better yet how can we reproduce your
case?

Regards, Leon

On Fri, 25 Sep 2020 at 12:46, Aashik Aswin <thisisaash9698@gmail.com> wrote:

> Hi Leon, Zoran
>
> I am using Ctrl+C to kill the Ping command.
>
>
> Thanks.
>
> On Fri, Sep 25, 2020 at 3:56 PM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> Hello Leon,
>>
>>
>>
>>
>>
>> > Aashik, how are you sending the signal? Using CTRL-C or
>>
>>
>> > using the "kill" command?
>>
>>
>>
>>
>>
>> This is a good suggestion for the test. To open another terminal and
>>
>>
>> issue: kill -SIGINT <ping PID>.
>>
>>
>>
>>
>>
>> I should add that this MUST work: kill -SIGKILL <ping PID>, since
>>
>>
>> SIGKILL handler is un-preemptable.
>>
>>
>>
>>
>>
>> If it does not, something is very wrong... I suggest, Aashik, you
>>
>>
>> write YOCTO bugzilla for Zeus.
>>
>>
>>
>>
>>
>> > Zoran, are you suggesting that the program will change the signal
>>
>>
>> > handler to default even after it has exited, and for the subsequent
>>
>>
>> > ping command?
>>
>>
>>
>>
>>
>> Yes, I do. Then, the ping command should be issued again, and my best
>>
>>
>> guess is, it should terminate the ping process.
>>
>>
>>
>>
>>
>> Leon, you should try to write another C f-n and to install other
>>
>>
>> SIGINT handler (replacing SIG_DFL), then test it with my original C:
>>
>>
>>
>>
>>
>> void  myhandler(int signum) {
>>
>>
>>         if (SIGINT == signum)
>>
>>
>>                 printf("\nHey, I got SIGINT: %d\n\n",signum);
>>
>>
>> }
>>
>>
>>
>>
>>
>> Zoran
>>
>>
>> _______
>>
>>
>>
>>
>>
>> On Fri, Sep 25, 2020 at 10:54 AM Leon Woestenberg <leon@sidebranch.com>
>> wrote:
>>
>>
>> >
>>
>>
>> > Hi Aashik, Zoran,
>>
>>
>> >
>>
>>
>> >
>>
>>
>> > On Fri, Sep 25, 2020 at 10:02 AM Zoran <zoran.stojsavljevic@gmail.com>
>> wrote:
>>
>>
>> > >
>>
>>
>> > > > ...that I am not able to send SIGINT to commands such as Ping, tail
>> etc.\
>>
>>
>> >
>>
>>
>> > Aashik, how are you sending the signal? Using CTRL-C or using the
>>
>>
>> > "kill" command?
>>
>>
>> >
>>
>>
>> > >
>>
>>
>> > > Please, do the following: issue in zeus xterm the command: man signal
>>
>>
>> > > and read it.
>>
>>
>> > >
>>
>>
>> > That reads to use sigaction() instead of signal() I would assume.
>>
>>
>> >
>>
>>
>> > > Then execute the following code (ad-hoc from the top of my head):
>>
>>
>> > > <...>
>>
>>
>> > > This program serves the double purpose:
>>
>>
>> > > [1] Gives you the address of the old SIGINT handler which was executed
>>
>>
>> > > prior execution of this code;
>>
>>
>> > > [2] After execution, repeat the routine (ping) and see if <ctrl c>
>>
>>
>> > > terminates the ping process.
>>
>>
>> > >
>>
>>
>> >
>>
>>
>> > Zoran, are you suggesting that program will change the signal handler
>>
>>
>> > to default even after it has exited, and for the subsequent ping
>>
>>
>> > command?
>>
>>
>> >
>>
>>
>> > Regards,
>>
>>
>> >
>>
>>
>> > Leon.
>>
>>
>>
>
> --
-- 
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

--0000000000005f2c8f05b024d4b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Aashik,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">I recognize the issue that CTRL-C does not pass from the console,=
 but only with *very* minimal configurations.</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">How does your local.conf look like, or better yet how=
 can we reproduce your case?</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Regards, Leon</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Fri, 25 Sep 2020 at 12:46, Aashik Aswin &lt;<a hr=
ef=3D"mailto:thisisaash9698@gmail.com">thisisaash9698@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border=
-left-color:rgb(204,204,204)"><div dir=3D"ltr">Hi Leon, Zoran<div><br></div=
><div>I am using Ctrl+C to kill the Ping command.</div><div><br></div><div>=
<br></div><div>Thanks.</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Sep 25, 2020 at 3:56 PM Zoran Stojsav=
ljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blan=
k">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
Hello Leon,<br><br><br><br><br><br>&gt; Aashik, how are you sending the sig=
nal? Using CTRL-C or<br><br><br>&gt; using the &quot;kill&quot; command?<br=
><br><br><br><br><br>This is a good suggestion for the test. To open anothe=
r terminal and<br><br><br>issue: kill -SIGINT &lt;ping PID&gt;.<br><br><br>=
<br><br><br>I should add that this MUST work: kill -SIGKILL &lt;ping PID&gt=
;, since<br><br><br>SIGKILL handler is un-preemptable.<br><br><br><br><br><=
br>If it does not, something is very wrong... I suggest, Aashik, you<br><br=
><br>write YOCTO bugzilla for Zeus.<br><br><br><br><br><br>&gt; Zoran, are =
you suggesting that the program will change the signal<br><br><br>&gt; hand=
ler to default even after it has exited, and for the subsequent<br><br><br>=
&gt; ping command?<br><br><br><br><br><br>Yes, I do. Then, the ping command=
 should be issued again, and my best<br><br><br>guess is, it should termina=
te the ping process.<br><br><br><br><br><br>Leon, you should try to write a=
nother C f-n and to install other<br><br><br>SIGINT handler (replacing SIG_=
DFL), then test it with my original C:<br><br><br><br><br><br>void=C2=A0 my=
handler(int signum) {<br><br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (SIGINT =3D=
=3D signum)<br><br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 printf(&quot;\nHey, I got SIGINT: %d\n\n&quot;,signum);<br><br><br>}<br=
><br><br><br><br><br>Zoran<br><br><br>_______<br><br><br><br><br><br>On Fri=
, Sep 25, 2020 at 10:54 AM Leon Woestenberg &lt;<a href=3D"mailto:leon@side=
branch.com" target=3D"_blank">leon@sidebranch.com</a>&gt; wrote:<br><br><br=
>&gt;<br><br><br>&gt; Hi Aashik, Zoran,<br><br><br>&gt;<br><br><br>&gt;<br>=
<br><br>&gt; On Fri, Sep 25, 2020 at 10:02 AM Zoran &lt;<a href=3D"mailto:z=
oran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.c=
om</a>&gt; wrote:<br><br><br>&gt; &gt;<br><br><br>&gt; &gt; &gt; ...that I =
am not able to send SIGINT to commands such as Ping, tail etc.\<br><br><br>=
&gt;<br><br><br>&gt; Aashik, how are you sending the signal? Using CTRL-C o=
r using the<br><br><br>&gt; &quot;kill&quot; command?<br><br><br>&gt;<br><b=
r><br>&gt; &gt;<br><br><br>&gt; &gt; Please, do the following: issue in zeu=
s xterm the command: man signal<br><br><br>&gt; &gt; and read it.<br><br><b=
r>&gt; &gt;<br><br><br>&gt; That reads to use sigaction() instead of signal=
() I would assume.<br><br><br>&gt;<br><br><br>&gt; &gt; Then execute the fo=
llowing code (ad-hoc from the top of my head):<br><br><br>&gt; &gt; &lt;...=
&gt;<br><br><br>&gt; &gt; This program serves the double purpose:<br><br><b=
r>&gt; &gt; [1] Gives you the address of the old SIGINT handler which was e=
xecuted<br><br><br>&gt; &gt; prior execution of this code;<br><br><br>&gt; =
&gt; [2] After execution, repeat the routine (ping) and see if &lt;ctrl c&g=
t;<br><br><br>&gt; &gt; terminates the ping process.<br><br><br>&gt; &gt;<b=
r><br><br>&gt;<br><br><br>&gt; Zoran, are you suggesting that program will =
change the signal handler<br><br><br>&gt; to default even after it has exit=
ed, and for the subsequent ping<br><br><br>&gt; command?<br><br><br>&gt;<br=
><br><br>&gt; Regards,<br><br><br>&gt;<br><br><br>&gt; Leon.<br><br><br></b=
lockquote></div><br><br></blockquote></div></div>-- <br><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><div><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0)"><span style=3D"font-=
family:-webkit-standard;font-size:medium">--=C2=A0</span><br><span style=3D=
"font-family:-webkit-standard;font-size:medium">Leon Woestenberg</span><br>=
<span style=3D"font-family:-webkit-standard;font-size:medium"><a href=3D"ma=
ilto:leon@sidebranch.com" target=3D"_blank">leon@sidebranch.com</a></span><=
br><span style=3D"font-family:-webkit-standard;font-size:medium">T: +31 40 =
711 42 76</span><br><span style=3D"font-family:-webkit-standard;font-size:m=
edium">M: +31 6 472 30 372</span><div style=3D"font-family:Helvetica"><img =
src=3D"http://www.sidebranch.eu/en/images/sidebranch-logo.png" width=3D"96"=
 height=3D"53"><br></div><span style=3D"font-family:-webkit-standard;font-s=
ize:medium">Sidebranch</span><font face=3D"Helvetica">=C2=A0</font><span st=
yle=3D"font-family:-webkit-standard;font-size:medium">Embedded Systems</spa=
n><br><span style=3D"font-family:-webkit-standard;font-size:medium">Eindhov=
en, The Netherlands</span><br><span style=3D"font-family:-webkit-standard;f=
ont-size:medium"><a href=3D"http://www.sidebranch.com" target=3D"_blank">ht=
tp://www.sidebranch.com</a></span><div style=3D"font-family:Helvetica"><br>=
</div></div></div></div></div></div>

--0000000000005f2c8f05b024d4b7--
