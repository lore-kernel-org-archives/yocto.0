Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web08.8177.1603889293940139118
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Oct 2020 05:48:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RON4f5Im;
 spf=pass (domain: gmail.com, ip: 209.85.128.43, mailfrom: vincent.prince.fr@gmail.com)
Received: by mail-wm1-f43.google.com with SMTP id t3so2193441wmi.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Oct 2020 05:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=03ACSy2vEEoLn1A+TXd6LE9Fq2vJwBYCO9ZUgjou10Q=;
        b=RON4f5ImquBInEWJLd/o3/piTNPmhgsbavcw3vyT8j2fqDrRtMh9BFMaE55ohkI84T
         FjumCqMRn8sT1FDgixHzEWloUqQ16RKd+F+GzD9aWRXhspw14aRylkn2gitXLa9tW8xL
         bN0icOL4cRAv7N9Zg0yg01/OF+UFWbmhkLWPDUa/8dm8232N9QSu0RfJABJK1ZnzWmSe
         wUPX2c+hRwZp7LreBdmVLUz1UK2FFgY4dbvyHNs24AOH0p8V0cZFnIU+cTXP/1x7efGg
         sMLgBz1x4aietBd6tFG1oLFeDwEYeITFGxVM3MfOM81477MFdiZIkarRflc13hnMMPWe
         zwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=03ACSy2vEEoLn1A+TXd6LE9Fq2vJwBYCO9ZUgjou10Q=;
        b=FmEnqiQg+Ze53vAdPo5zGQIE+BQcCyhWSW2cagN6fEtDQQ386dzgnmU4JiTpZhIGyz
         k+Oz3rMDnXUm7EMvkY77nwNHuNjJlQXzkGTcdsPfIHicFr2IgJ4Bssh/UECsMSdypi1I
         VF4B5qnn1BLQfyiGjBYML74latnONX1Q0t36UJCZeMaoXYz3pZ2en3oMueqH4Tc2hlfQ
         s6ilHXx3kZxn0QlwztJsE01UmvTlRGDYFQ8LEC4EMs/ToSQJyCj7IOTE6HVxR8DkK+e/
         Y3KzQDZqZMYeTWb8DesIB/k+OtCsG1/FTIBG/IAz3kjcIK3nNpuNzFMmH5GujZUPrB3O
         NCdw==
X-Gm-Message-State: AOAM530r6FYaqxJtnzQhf1v/IaSDryjL1B2uyrjqz9rDgLjKF0vtT0Tx
	Z0uYUt4nXxj6Q+tWJs/NO0QFcJK08FpcMiA0ZmI=
X-Google-Smtp-Source: ABdhPJzp0ivGkTIfEyV5cUB8T587hW5zac0mUeS2Zp/NqhEo2RslMrHhsMu3ANHog6bLaWzh5HroqvrTQryxGgPxENk=
X-Received: by 2002:a1c:41d6:: with SMTP id o205mr2254402wma.44.1603889292344;
 Wed, 28 Oct 2020 05:48:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAMrUZLi1_w9q-MJectjqL2RAT+jpA6yFYWbyjrdUVEbzu=xODg@mail.gmail.com>
 <f5d78cec-328e-1917-bb63-bcd7672c1f44@gmail.com> <CAB2nKc9+9wJ0gdLGpOqUSjwVukfL_NgkUBtTPsdqEPD5nHMXkg@mail.gmail.com>
 <CAMrUZLhz9D=7fZC3OQV+6awp_yQjLkDwy1vHh+Tw2qLqSNyYsg@mail.gmail.com>
In-Reply-To: <CAMrUZLhz9D=7fZC3OQV+6awp_yQjLkDwy1vHh+Tw2qLqSNyYsg@mail.gmail.com>
From: "nefethael" <vincent.prince.fr@gmail.com>
Date: Wed, 28 Oct 2020 13:48:01 +0100
Message-ID: <CAB2nKc9=ceLFzLJ+f4jKwbLRVF-9s58KH6xU861TFP2YHkbgBg@mail.gmail.com>
Subject: Re: [yocto] Systemd, overlayfs, and machine-id problem
To: Morten Bruun <morten.bruun@apide.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000087803805b2ba93a5"

--00000000000087803805b2ba93a5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you use volatile-binds recipe, you can override folders and files and it
will select overlayfs or bind-mount automatically.
(
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/vol=
atile-binds/volatile-binds.bb
)

For example you can override /etc/hostname and /root with
volatile-binds.bbappend:

VOLATILE_BINDS +=3D " \
    /data/etc-hostname    /etc/hostname \n\
    /data/root            /root         \n\
 "



Le mer. 28 oct. 2020 =C3=A0 12:11, Morten Bruun <morten.bruun@apide.com> a
=C3=A9crit :

> Thanks for the suggestion!
>
> On Tue, Oct 27, 2020 at 4:35 PM nefethael <vincent.prince.fr@gmail.com>
> wrote:
>
>>
>> In my project, I ended up by overlaying not the entire /etc but only
>> subparts I needed to modify.
>> (/etc/machine-id is maybe already a bind mount from /run/machine-id)
>> Hope it helps,
>>
>>
> If I should overlay just part of /etc I'm down to single files - and tha=
t
> does not seem to be possible.
>
> I'm trying to figure out if I can solve my problem using bind mounts
> instead.
>
> Otherwise I will have to skip the systemd test during for testimage or
> create our own version of it.
>
> /Morten
>
>
>
>> Le mar. 27 oct. 2020 =C3=A0 16:24, Khem Raj <raj.khem@gmail.com> a =C3=
=A9crit :
>>
>>>
>>>
>>> On 10/27/20 2:23 AM, Morten Bruun wrote:
>>> > Hi,
>>> >
>>> > In our current Yocto project we are using an overlayfs on top of /et=
c
>>> >
>>> > This seems to trigger the systemd-machine-id-setup service which fai=
ls
>>> > with the error below:
>>> >
>>> > systemd-machine-id-setup[204]: Failed to unmount transient
>>> > /etc/machine-id file: Invalid argument.
>>> >
>>> > The failed service then triggers an error in the test_systemd_failed
>>> > test in the systemd testimage suite.
>>> >
>>> > As far as I understand the machine-id setup is triggered because
>>> > path_is_mount_point() can report false positives when using overlayf=
s.
>>> >
>>> > Is there a way to fix this?
>>>
>>> maybe pregeenerate machine ID sometimes you can seed it from CPU Id or
>>> soc ID from eeprom.
>>>
>>> >
>>> > Kind regards,
>>> > Morten
>>> >
>>> >
>>> >
>>> >
>>> >
>>>
>>>
>>>
>>>
>>=20
>>
>>
>
> --
>
> [image: apide.png]
>
> Morten Bruun
>
> e: morten@apide.com
>
> t: +45 2968 2241
>
> w: apide.com
>

--00000000000087803805b2ba93a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If you use volatile-binds recipe, you can override fo=
lders and files and it will select overlayfs or bind-mount automatically.</=
div><div>(<a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/m=
eta/recipes-core/volatile-binds/volatile-binds.bb">https://git.yoctoproject=
.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/volatile-binds/volatile-bind=
s.bb</a>)</div><div><br></div><div>For example you can override /etc/hostna=
me and /root with <br></div><div></div><div>
<span class=3D"gmail-stub">volatile-binds.bbappend:</span> <br></div><div>=
<br></div><div>
<pre>VOLATILE_BINDS +=3D &quot; \
    /data/etc-hostname    /etc/hostname \n\<br>    /data/root            /=
root         \n\
=C2=A0&quot;
<br>
</pre>

</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">Le=C2=A0mer. 28 oct. 2020 =C3=A0=C2=A012:11, Morten B=
ruun &lt;<a href=3D"mailto:morten.bruun@apide.com">morten.bruun@apide.com</=
a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" =
style=3D"font-family:arial,helvetica,sans-serif">Thanks for the suggestion!=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Oct 27, 2020 at 4:35 PM nefethael &lt;<a href=3D"mailto:vince=
nt.prince.fr@gmail.com" target=3D"_blank">vincent.prince.fr@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div><br></div><div>In my project, I ended up by overlaying not =
the entire /etc but only subparts I needed to modify.</div><div>(/etc/machi=
ne-id is maybe already a bind mount from /run/machine-id)<br></div><div>Hop=
e it helps,</div><div><br></div><div></div></div></blockquote><div><br></di=
v><div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sa=
ns-serif">If I should overlay just part of /etc I&#39;m down to single file=
s - and that does not seem to be possible.=C2=A0</div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">I&#39=
;m trying to figure out if I can solve my problem using bind mounts instead=
.</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sa=
ns-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:arial=
,helvetica,sans-serif">Otherwise I will have to skip the systemd test durin=
g for testimage or create our own version of it.</div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif"><br></div><div cla=
ss=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">/Mort=
en</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Le=C2=A0mar. 27 oct. 2020 =C3=A0=C2=A016:=
24, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">ra=
j.khem@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div></div><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
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
"><div dir=3D"ltr"><div><div dir=3D"ltr"><span><br><div dir=3D"ltr" style=
=3D"margin-left:0pt"><table style=3D"border:medium none;border-collapse:co=
llapse"><colgroup><col width=3D"119"><col width=3D"505"></colgroup><tbody><=
tr style=3D"height:0px"><td style=3D"border-width:0px;border-style:solid;bo=
rder-color:rgb(255,255,255);vertical-align:top;padding:7px"><p dir=3D"ltr" =
style=3D"line-height:1;margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:15px;font-family:&quot;Trebuchet MS&quot;;color:rgb(0,0,0);vertical-=
align:baseline;white-space:pre-wrap;background-color:transparent"><img src=
=3D"https://lh3.googleusercontent.com/jTvhvM5DMeEX_hph5vH47a72YRm4CtBmz2Ss=
vyBaNkPUNNLUQ8kAfpUVvKYdpyPJkPhHEqf8GzBEyca3Lw3A-qEjoLgvD7AzzUp78S7avh-KWAd=
RNopzqWLYOZnlDGf3Ig" style=3D"border: medium none;" alt=3D"apide.png" width=
=
=3D"100px;" height=3D"100px;"></span></p></td><td style=3D"border-width:0p=
x;border-style:solid;border-color:rgb(255,255,255);vertical-align:top;paddi=
ng:7px"><br><p dir=3D"ltr" style=3D"line-height:1;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:13px;font-family:&quot;Trebuchet MS&quot;=
;color:rgb(67,67,67);font-weight:bold;vertical-align:baseline;white-space:p=
re-wrap;background-color:transparent">Morten Bruun</span></p><p dir=3D"ltr"=
 style=3D"line-height:1;margin-top:0pt;margin-bottom:0pt"><span style=3D"fo=
nt-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(255,195,31);fon=
t-weight:bold;vertical-align:baseline;white-space:pre-wrap;background-color=
:transparent">e:</span><span style=3D"font-size:13px;font-family:&quot;Treb=
uchet MS&quot;;color:rgb(67,67,67);vertical-align:baseline;white-space:pre-=
wrap;background-color:transparent"> </span><a href=3D"mailto:morten@apide.c=
om" style=3D"text-decoration:none" target=3D"_blank"><span style=3D"font-si=
ze:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(67,67,67);vertical-a=
lign:baseline;white-space:pre-wrap;background-color:transparent">morten@api=
de.com</span></a></p><p dir=3D"ltr" style=3D"line-height:1;margin-top:0pt;m=
argin-bottom:0pt"><span style=3D"font-size:13px;font-family:&quot;Trebuchet=
 MS&quot;;color:rgb(255,195,31);font-weight:bold;vertical-align:baseline;wh=
ite-space:pre-wrap;background-color:transparent">t:</span><span style=3D"fo=
nt-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(67,67,67);verti=
cal-align:baseline;white-space:pre-wrap;background-color:transparent"> +45 =
2968 2241</span></p><p dir=3D"ltr" style=3D"line-height:1;margin-top:0pt;ma=
rgin-bottom:0pt"><span style=3D"font-size:13px;font-family:&quot;Trebuchet =
MS&quot;;color:rgb(255,195,31);font-weight:bold;vertical-align:baseline;whi=
te-space:pre-wrap;background-color:transparent">w:</span><span style=3D"fon=
t-size:13px;font-family:&quot;Trebuchet MS&quot;;color:rgb(67,67,67);vertic=
al-align:baseline;white-space:pre-wrap;background-color:transparent"> </spa=
n><a href=3D"https://apide.com/" style=3D"text-decoration:none" target=3D"_=
blank"><span style=3D"font-size:13px;font-family:&quot;Trebuchet MS&quot;;c=
olor:rgb(67,67,67);vertical-align:baseline;white-space:pre-wrap;background-=
color:transparent">apide.com</span></a></p></td></tr></tbody></table></div>=
</span></div></div></div></div></div>
</blockquote></div>

--00000000000087803805b2ba93a5--
