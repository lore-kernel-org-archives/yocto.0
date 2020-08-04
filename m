Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.1215.1596577045220647607
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 14:37:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@broadcom.com header.s=google header.b=IvhfhFmy;
 spf=permerror, err=parse error for token &{10 18 %{i}._ip.%{h}._ehlo.%{d}._spf.vali.email}: invalid domain name (domain: broadcom.com, ip: 209.85.218.51, mailfrom: rick.liu@broadcom.com)
Received: by mail-ej1-f51.google.com with SMTP id jp10so17512446ejb.0
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 14:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jEIGWrqhF5vPZMKciymn0hXjEFUQ984Ixxm1KS1TQKc=;
        b=IvhfhFmyY8A2TmhTuLHCXQleRbWah/Kg+ILs5jhgQkoET77skFq4DiVSF20w5Cv752
         QNjuRjRDzwgS7vOjp4yEaZ+1pWGGiuKQcsGOlHcKRkQCIpYHDskcDs4AUd1sqpoE2O2c
         aufy+ETxkxWGq3CnvqKPZvGt3DD1D5mdzpz8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jEIGWrqhF5vPZMKciymn0hXjEFUQ984Ixxm1KS1TQKc=;
        b=kWRwbYGFU0YuavhAVAT6a1RXAzud4IoLu5Ed8wjAfRBM39dqGzTj8aCgmMOgsKAWOX
         Vn5eP15HEZrleGp4bGGIFyKKt4GcTsuwuwHLSvORDZXe9Dvzr3r+aMaXiBXsLyOZsGHu
         CKey2QLmLEjrLPzYhRPn+H4xQtqkcYjAXV2tniyqGqfMt779Ta3mogLXX8EO2JeZHv8r
         tVK9nbWZeMJg9Qb/fUUZuPYujx+K3wGjCqiuXdfeaRUcgdvXlfJMa3pDJWT1YRrAk+1d
         FJL/QzdBu88gkCjL3oEW5X9PneVo0HmYsXYM+R0LC0HnGTMR4Tx47hUeX8biMjlLA2eh
         QeTw==
X-Gm-Message-State: AOAM5322IAzVd/Zz16W5S+YyhVBFvTVrbAeQUHVYHQ4NwuZj71SR0iCO
	nGoirF2nlEe5a17XCFoWo5KUXNl8yCHbVUKtV7jX+/gp3Da6
X-Google-Smtp-Source: ABdhPJzgPyTB17ItDZhdIf9ik9QrlhQf+EqCCfZ9AW2Ih7p6RNuG7rIbeSOhD2TG4DSG48dQ8UxocX/Z+jQnk6tHcYo=
X-Received: by 2002:a05:6512:312b:: with SMTP id p11mr44931lfd.202.1596575441676;
 Tue, 04 Aug 2020 14:10:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
 <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
 <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
 <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com>
 <CADfgfoYbR8nNgXZ+dfByGUJtGhhVrRZyaBYoCQ-fntr5OGUaMw@mail.gmail.com> <CAGhBkzwNrnGxSfipxXxqK0=GEznsjw0Vs7=QTFHRkpv=vQgH2w@mail.gmail.com>
In-Reply-To: <CAGhBkzwNrnGxSfipxXxqK0=GEznsjw0Vs7=QTFHRkpv=vQgH2w@mail.gmail.com>
From: "Rick Liu" <rick.liu@broadcom.com>
Date: Tue, 4 Aug 2020 14:10:28 -0700
Message-ID: <CAKmBsaa9mLYvA3gQfbR9vTW1F728Qz2Yb-qw5tKtR4iA2F-1bg@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: FLoraVLogs <eripflo@gmail.com>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
	Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000f42ca05ac13b019"

--0000000000000f42ca05ac13b019
Content-Type: text/plain; charset="UTF-8"

Does http://downloads.yoctoproject.org/ have HA or hot-backup machine?
Is there an instruction on how to create a
http://downloads.yoctoproject.org/  local mirror and sync?

Rick

On Tue, Aug 4, 2020 at 11:16 AM FLoraVLogs <eripflo@gmail.com> wrote:

> Ok, thanks for the update. Kindly keep me posted.
>
> On Tue., Aug. 4, 2020, 2:05 p.m. Michael Halstead, <
> mhalstead@linuxfoundation.org> wrote:
>
>> Remote troubleshooting has stalled. I'm headed to the data center to
>> continue. No ETA yet.
>>
>> On Tue, Aug 4, 2020 at 9:02 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>
>>> Is there any ETA on this?
>>>
>>> Regards,
>>>
>>> Ripu
>>>
>>> On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz <
>>> jester@theyoctojester.info> wrote:
>>>
>>>> https://twitter.com/TheYoctoJester/status/1290569609100308480
>>>>
>>>> Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs <eripflo@gmail.com
>>>> >:
>>>> >
>>>> > I am seeing the following error:
>>>> >
>>>> > Gateway Timeout
>>>> >
>>>> > Server error - server 198.145.29.63 is unreachable at this moment.
>>>> >
>>>> > Please retry the request or contact your administrator.
>>>> >
>>>> >
>>>> > Kindly help.
>>>> >
>>>> >
>>>> > Regards,
>>>> >
>>>> >
>>>> > Ripu
>>>> >
>>>> >
>>>> > On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>>> >>
>>>> >> Hi,
>>>> >>
>>>> >> It seems like Yocto is down again.
>>>> >>
>>>> >> http://downloads.yoctoproject.org/
>>>> >>
>>>> >> Could you please help solve this?
>>>> >>
>>>> >> Regards,
>>>> >>
>>>> >> Ripu
>>>> >>
>>>> >> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>>> >>>
>>>> >>> It is working now.
>>>> >>>
>>>> >>> Thank you
>>>> >>>
>>>> >>> Regards,
>>>> >>>
>>>> >>> Ripu
>>>> >>>
>>>> >>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
>>>> mhalstead@linuxfoundation.org> wrote:
>>>> >>>>
>>>> >>>> There was a brief outage while rebooting a storage device. The
>>>> error should have been resolved several minutes ago. If you are still
>>>> seeing this error please let me know.
>>>> >>>>
>>>> >>>> Michael Halstead
>>>> >>>>
>>>> >>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com>
>>>> wrote:
>>>> >>>>>
>>>> >>>>> Also, I do see:
>>>> >>>>>
>>>> >>>>> Connecting to downloads.yoctoproject.org (
>>>> downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection
>>>> refused.
>>>> >>>>>
>>>> >>>>>
>>>> >>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com>
>>>> wrote:
>>>> >>>>>>
>>>> >>>>>> Hi,
>>>> >>>>>>
>>>> >>>>>> I tried to go into the following:
>>>> >>>>>> http://downloads.yoctoproject.org/
>>>> >>>>>>
>>>> >>>>>> I get the following error:
>>>> >>>>>>
>>>> >>>>>>
>>>> >>>>>> Host Not Found
>>>> >>>>>>
>>>> >>>>>> DNS error (the host name of the page you are looking for does
>>>> not exist) or Server did not accept the connection.
>>>> >>>>>>
>>>> >>>>>> Please check that the host name has been spelled correctly.
>>>> >>>>>>
>>>> >>>>>> Regards,
>>>> >>>>>>
>>>> >>>>>> Ripu
>>>> >>>>>
>>>> >>>>>
>>>> >
>>>>
>>>
>>>
>>
>> --
>> Michael Halstead
>> Linux Foundation / Yocto Project
>> Systems Operations Engineer
>>
> 
>

--0000000000000f42ca05ac13b019
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does=C2=A0<a href=3D"http://downloads.yoctoproject.org/">h=
ttp://downloads.yoctoproject.org/</a>=C2=A0have HA or hot-backup machine?<d=
iv>Is there an instruction on how to create a=C2=A0=C2=A0<a href=3D"http://=
downloads.yoctoproject.org/">http://downloads.yoctoproject.org/</a>=C2=A0 l=
ocal mirror and sync?</div><div><br></div><div>Rick</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 202=
0 at 11:16 AM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com">eripflo@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"auto">Ok, thanks for the update. Kindly keep me posted.=
=
=C2=A0</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Tue., Aug. 4, 2020, 2:05 p.m. Michael Halstead, &lt;<a href=3D"ma=
ilto:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfounda=
tion.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr">Remote troubleshooting has stalled. I&#39;m headed=
 to the data center to continue. No ETA yet.</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 2020 at 9:02 AM =
FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" rel=3D"noreferrer" targ=
et=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Is there any ETA on this=
?<div><br></div><div>Regards,</div><div><br></div><div>Ripu</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Au=
g 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz &lt;<a href=3D"mailto:jeste=
r@theyoctojester.info" rel=3D"noreferrer" target=3D"_blank">jester@theyocto=
jester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><a href=3D"https://twitter.com/TheYoctoJester/status/1290569609=
100308480" rel=3D"noreferrer noreferrer" target=3D"_blank">https://twitter.=
com/TheYoctoJester/status/1290569609100308480</a><br>
<br>
Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs &lt;<a href=3D"mailto=
:eripflo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com<=
/a>&gt;:<br>
&gt;<br>
&gt; I am seeing the following error:<br>
&gt;<br>
&gt; Gateway Timeout<br>
&gt;<br>
&gt; Server error - server 198.145.29.63 is unreachable at this moment.<br=
>
&gt;<br>
&gt; Please retry the request or contact your administrator.<br>
&gt;<br>
&gt;<br>
&gt; Kindly help.<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt;<br>
&gt; Ripu<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs &lt;<a href=3D"mailto:eripf=
lo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com</a>&gt=
; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; It seems like Yocto is down again.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"http://downloads.yoctoproject.org/" rel=3D"noreferrer =
noreferrer" target=3D"_blank">http://downloads.yoctoproject.org/</a><br>
&gt;&gt;<br>
&gt;&gt; Could you please help solve this?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; Ripu<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs &lt;<a href=3D"mailto:e=
ripflo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com</a=
>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; It is working now.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thank you<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ripu<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, &lt;<a hre=
f=3D"mailto:mhalstead@linuxfoundation.org" rel=3D"noreferrer" target=3D"_bl=
ank">mhalstead@linuxfoundation.org</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; There was a brief outage while rebooting a storage device=
. The error should have been resolved several minutes ago. If you are still=
 seeing this error please let me know.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Michael Halstead<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs &lt;<a href=3D"=
mailto:eripflo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo@gmai=
l.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Also, I do see:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Connecting to <a href=3D"http://downloads.yoctoprojec=
t.org" rel=3D"noreferrer noreferrer" target=3D"_blank">downloads.yoctoproje=
ct.org</a> (<a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.6=
3|:80... failed: Connection refused.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=
=
=3D"mailto:eripflo@gmail.com" rel=3D"noreferrer" target=3D"_blank">eripflo=
@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; I tried to go into the following:<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://downloads.yoctoproject.org/" re=
l=3D"noreferrer noreferrer" target=3D"_blank">http://downloads.yoctoproject=
.org/</a><br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; I get the following error:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Host Not Found<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; DNS error (the host name of the page you are look=
ing for does not exist) or Server did not accept the connection.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Please check that the host name has been spelled =
correctly.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Ripu<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt; <br>
</blockquote></div>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
"><div dir=3D"ltr">Michael Halstead<div>Linux Foundation / Yocto Project</d=
iv><div>Systems Operations Engineer</div></div></div>
</blockquote></div>
<br>
</blockquote></div>

--0000000000000f42ca05ac13b019--
