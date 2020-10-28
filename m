Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web08.7095.1603883463152877092
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Oct 2020 04:11:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=LRUW1yuw;
 spf=pass (domain: apide.com, ip: 209.85.160.181, mailfrom: morten.bruun@apide.com)
Received: by mail-qt1-f181.google.com with SMTP id i7so3188459qti.6
        for <yocto@lists.yoctoproject.org>; Wed, 28 Oct 2020 04:11:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fi/Q9wBdNAJx/c16WksnnlebA6ovu9/tvjDHe3C5WCE=;
        b=LRUW1yuwatVS+iRp6WF3NWMXrX04smFMDiNlPPGYRFJI4Gnhr0YSzt45M3OixwnSDl
         uFwDiHsm6TpqUwyWZg/zIAdU46mir7eTzdSgXNwXxiM52soVw7fHGDLsW2Sh73YGpi3b
         6JrTBrL5ZGc40Jn9A7b2WsTKwH0E+0Xz2P/R4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fi/Q9wBdNAJx/c16WksnnlebA6ovu9/tvjDHe3C5WCE=;
        b=slsLpTsAhlJdc7/cQoUpw39towETSBYK8oZLNP+uxt4mkkE1i1S0k1EqIsQvt6xX4Y
         W1Q5HVFR6UrSV7Zq+ebHIhKr4gt+Cm3QBCG3y6A522CuLNN4NYFEwPWSA/recmjHCWjX
         ieLfiAtGcCDcIIo7VZHFtXiHbxiWXh6e0VqwbViZXqiSviyXtmumIkTI6Cl9505DIBXM
         5aybriOVtETGHa+r1Y94fdJjJgZVLfzrcY/WESx9bBiRDtBYkJ6xoVsF8arg03gQ1Bg3
         m1NJhc0tUi4O7vAWU+ZujTT2DVF6xFUkx2l//PC1eEATovc8pP7b1wn5B7quzcvL6npl
         DCWg==
X-Gm-Message-State: AOAM530mKokRZT1a7wLsVIWm0vXVKbpZABzuUdcJTcqX3P+VT5LjVep8
	R5N76QYKdmrmb3DnW2rgMfDpdCQaHmZa1t0r9D354wGAtJCNtg==
X-Google-Smtp-Source: ABdhPJzEBPOmzzXVE79pJJYmt0S6MVCi0PSRCZUT5N5qJ4M+c2mT4ebRu+i5hXGgkMEciTcbCZfTTX4r93RuxzRxVd4=
X-Received: by 2002:ac8:51cd:: with SMTP id d13mr6491184qtn.148.1603883462065;
 Wed, 28 Oct 2020 04:11:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLi1_w9q-MJectjqL2RAT+jpA6yFYWbyjrdUVEbzu=xODg@mail.gmail.com>
 <f5d78cec-328e-1917-bb63-bcd7672c1f44@gmail.com> <CAB2nKc9+9wJ0gdLGpOqUSjwVukfL_NgkUBtTPsdqEPD5nHMXkg@mail.gmail.com>
In-Reply-To: <CAB2nKc9+9wJ0gdLGpOqUSjwVukfL_NgkUBtTPsdqEPD5nHMXkg@mail.gmail.com>
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Wed, 28 Oct 2020 12:10:51 +0100
Message-ID: <CAMrUZLhz9D=7fZC3OQV+6awp_yQjLkDwy1vHh+Tw2qLqSNyYsg@mail.gmail.com>
Subject: Re: [yocto] Systemd, overlayfs, and machine-id problem
To: yocto@lists.yoctoproject.org
Cc: nefethael <vincent.prince.fr@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000049de905b2b938e6"

--000000000000049de905b2b938e6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the suggestion!

On Tue, Oct 27, 2020 at 4:35 PM nefethael <vincent.prince.fr@gmail.com>
wrote:

>
> In my project, I ended up by overlaying not the entire /etc but only
> subparts I needed to modify.
> (/etc/machine-id is maybe already a bind mount from /run/machine-id)
> Hope it helps,
>
>
If I should overlay just part of /etc I'm down to single files - and that
does not seem to be possible.

I'm trying to figure out if I can solve my problem using bind mounts
instead.

Otherwise I will have to skip the systemd test during for testimage or
create our own version of it.

/Morten



> Le mar. 27 oct. 2020 =C3=A0 16:24, Khem Raj <raj.khem@gmail.com> a =C3=
=A9crit :
>
>>
>>
>> On 10/27/20 2:23 AM, Morten Bruun wrote:
>> > Hi,
>> >
>> > In our current Yocto project we are using an overlayfs on top of /etc
>> >
>> > This seems to trigger the systemd-machine-id-setup service which fail=
s
>> > with the error below:
>> >
>> > systemd-machine-id-setup[204]: Failed to unmount transient
>> > /etc/machine-id file: Invalid argument.
>> >
>> > The failed service then triggers an error in the test_systemd_failed
>> > test in the systemd testimage suite.
>> >
>> > As far as I understand the machine-id setup is triggered because
>> > path_is_mount_point() can report false positives when using overlayfs=
.
>> >
>> > Is there a way to fix this?
>>
>> maybe pregeenerate machine ID sometimes you can seed it from CPU Id or
>> soc ID from eeprom.
>>
>> >
>> > Kind regards,
>> > Morten
>> >
>> >
>> >
>> >
>> >
>>
>>
>>
>>
>=20
>
>

--=20

[image: apide.png]

Morten Bruun

e: morten@apide.com

t: +45 2968 2241

w: apide.com

--000000000000049de905b2b938e6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:arial,helvetica,sans-serif">Thanks for the suggestion!</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Oct 27, 2020 at 4:35 PM nefethael &lt;<a href=3D"mailto:vincent.prince.fr=
@gmail.com">vincent.prince.fr@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div=
>In my project, I ended up by overlaying not the entire /etc but only subpa=
rts I needed to modify.</div><div>(/etc/machine-id is maybe already a bind =
mount from /run/machine-id)<br></div><div>Hope it helps,</div><div><br></di=
v><div></div></div></blockquote><div><br></div><div><div class=3D"gmail_def=
ault" style=3D"font-family:arial,helvetica,sans-serif">If I should overlay =
just part of /etc I&#39;m down to single files - and that does not seem to =
be possible.=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:a=
rial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:arial,helvetica,sans-serif">I&#39;m trying to figure out if I c=
an solve my problem using bind mounts instead.</div><div class=3D"gmail_def=
ault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=
=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Otherw=
ise I will have to skip the systemd test during for testimage or create our=
 own version of it.</div><div class=3D"gmail_default" style=3D"font-family:=
arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:arial,helvetica,sans-serif">/Morten</div><br></div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>Le=C2=A0mar. 27 oct. 2020 =C3=A0=C2=A016:24, Khem Raj &lt;<a href=3D"mai=
lto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; a =C3=
=A9crit=C2=A0:<br></div></div><div class=3D"gmail_quote"><blockquote class=
=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><br>
<br>
On 10/27/20 2:23 AM, Morten Bruun wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; In our current Yocto project we are using an overlayfs on top of /etc=
<br>
&gt; <br>
&gt; This seems to trigger the systemd-machine-id-setup service which fail=
s <br>
&gt; with the error below:<br>
&gt; <br>
&gt; systemd-machine-id-setup[204]: Failed to unmount transient <br>
&gt; /etc/machine-id file: Invalid argument.<br>
&gt; <br>
&gt; The failed service then triggers an error in the test_systemd_failed =
<br>
&gt; test in the systemd testimage suite.<br>
&gt; <br>
&gt; As far as I understand the machine-id setup is triggered because <br>
&gt; path_is_mount_point() can report false positives when using overlayfs=
.<br>
&gt; <br>
&gt; Is there a way to fix this?<br>
<br>
maybe pregeenerate machine ID sometimes you can seed it from CPU Id or <br=
>
soc ID from eeprom.<br>
<br>
&gt; <br>
&gt; Kind regards,<br>
&gt; Morten<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
<br>
</blockquote></div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><span><b=
r><div dir=3D"ltr" style=3D"margin-left:0pt"><table style=3D"border:none;bo=
rder-collapse:collapse"><colgroup><col width=3D"119"><col width=3D"505"></c=
olgroup><tbody><tr style=3D"height:0px"><td style=3D"border-width:0px;borde=
r-style:solid;border-color:rgb(255,255,255);vertical-align:top;padding:7px"=
><p dir=3D"ltr" style=3D"line-height:1;margin-top:0pt;margin-bottom:0pt"><s=
pan style=3D"font-size:15px;font-family:&quot;Trebuchet MS&quot;;color:rgb(=
0,0,0);vertical-align:baseline;white-space:pre-wrap;background-color:transp=
arent"><img src=3D"https://lh3.googleusercontent.com/jTvhvM5DMeEX_hph5vH47a=
72YRm4CtBmz2SsvyBaNkPUNNLUQ8kAfpUVvKYdpyPJkPhHEqf8GzBEyca3Lw3A-qEjoLgvD7Azz=
Up78S7avh-KWAdRNopzqWLYOZnlDGf3Ig" width=3D"100px;" height=3D"100px;" style=
=
=3D"border: none;" alt=3D"apide.png"></span></p></td><td style=3D"border-w=
idth:0px;border-style:solid;border-color:rgb(255,255,255);vertical-align:to=
p;padding:7px"><br><p dir=3D"ltr" style=3D"line-height:1;margin-top:0pt;mar=
gin-bottom:0pt"><span style=3D"font-size:13px;font-family:&quot;Trebuchet M=
S&quot;;color:rgb(67,67,67);font-weight:bold;vertical-align:baseline;white-=
space:pre-wrap;background-color:transparent">Morten Bruun</span></p><p dir=
=3D"ltr" style=3D"line-height:1;margin-top:0pt;margin-bottom:0pt"><span st=
yle=3D"font-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(255,19=
5,31);font-weight:bold;vertical-align:baseline;white-space:pre-wrap;backgro=
und-color:transparent">e:</span><span style=3D"font-size:13px;font-family:&=
quot;Trebuchet MS&quot;;color:rgb(67,67,67);vertical-align:baseline;white-s=
pace:pre-wrap;background-color:transparent"> </span><a href=3D"mailto:morte=
n@apide.com" style=3D"text-decoration:none" target=3D"_blank"><span style=
=3D"font-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(67,67,67=
);vertical-align:baseline;white-space:pre-wrap;background-color:transparent=
">morten@apide.com</span></a></p><p dir=3D"ltr" style=3D"line-height:1;marg=
in-top:0pt;margin-bottom:0pt"><span style=3D"font-size:13px;font-family:&qu=
ot;Trebuchet MS&quot;;color:rgb(255,195,31);font-weight:bold;vertical-align=
:baseline;white-space:pre-wrap;background-color:transparent">t:</span><span=
 style=3D"font-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(67,=
67,67);vertical-align:baseline;white-space:pre-wrap;background-color:transp=
arent"> +45 2968 2241</span></p><p dir=3D"ltr" style=3D"line-height:1;margi=
n-top:0pt;margin-bottom:0pt"><span style=3D"font-size:13px;font-family:&quo=
t;Trebuchet MS&quot;;color:rgb(255,195,31);font-weight:bold;vertical-align:=
baseline;white-space:pre-wrap;background-color:transparent">w:</span><span =
style=3D"font-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(67,6=
7,67);vertical-align:baseline;white-space:pre-wrap;background-color:transpa=
rent"> </span><a href=3D"https://apide.com/" style=3D"text-decoration:none"=
 target=3D"_blank"><span style=3D"font-size:13px;font-family:&quot;Trebuche=
t MS&quot;;color:rgb(67,67,67);vertical-align:baseline;white-space:pre-wrap=
;background-color:transparent">apide.com</span></a></p></td></tr></tbody></=
table></div></span></div></div></div></div></div>

--000000000000049de905b2b938e6--
