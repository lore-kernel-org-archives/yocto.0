Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
 by mx.groups.io with SMTP id smtpd.web10.2968.1596581172214324545
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 15:46:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RKMTIHMT;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.219.175, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-yb1-f175.google.com with SMTP id a34so17749414ybj.9
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 15:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RWmRTZ+u2B+FatyYaxMcxBhO1b8Rj1aSPTY5ZaBthzw=;
        b=RKMTIHMTuk3BjKMrd5y6+A9orZHfgXW6d7EMguODuyXYfLn6/1QtaTB2hTBrrMVXsX
         yyALekNBpnch9lrpqAJyuzwqRXhJVyBOYJv00WlDz8hd0jQ4ye2ppDmop7/Ujvl2/VNw
         Am4Kq6+ETsewLVcSl+pC+JQ44b6NAF4pl0/LE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RWmRTZ+u2B+FatyYaxMcxBhO1b8Rj1aSPTY5ZaBthzw=;
        b=UAyaKiL65LyYU3IZshLBWP7+KNIsFIZJcv/0BOtL8RGU9GN0qSVgB3vqndbXELeRTr
         en09lG+D/zAKDhETKK4NjxH+iGa5HaudlK4AIyqe1glWGhGmJSCaCADLoAOx8grPdirJ
         SMXVbJXvievGCR8U0TLH+Ie+CSwVWCyvRbh9iLqHH+GV+up3O2cE4hEqRdZj9fRuQ/pi
         yyqnOfxtezK4eO7IlgGu7pyhXkk9j7f1a3O3QhiJgiQ1Bo+a666J/kUt/jMchBuisJaH
         pVJ9PMMeWmO1vOC5hihwUVV0oXE408Z0S7LGr1XVDYfTZXGhn3RveHF3OHdyVFMI0VHj
         Z6XA==
X-Gm-Message-State: AOAM531N4n8gdy+QvaHkxFXhRHTh/cdrJST8wIraJe9xcHrXJ+BXfDyL
	Ac28WejhXeOxo85lW+nQJOyUhYYVwZ2xn1GWgP7Ong==
X-Google-Smtp-Source: ABdhPJz9QgLklJTlAA7BHgtRrDn1VL9GR6SWvdLj1bQ+J9CdXc2W/1KH1PrJM27COIRHn1azWYC6JK0uUMLyB68fCeI=
X-Received: by 2002:a25:3bce:: with SMTP id i197mr471075yba.426.1596581171344;
 Tue, 04 Aug 2020 15:46:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
 <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
 <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
 <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com>
 <CADfgfoYbR8nNgXZ+dfByGUJtGhhVrRZyaBYoCQ-fntr5OGUaMw@mail.gmail.com>
 <CAGhBkzwNrnGxSfipxXxqK0=GEznsjw0Vs7=QTFHRkpv=vQgH2w@mail.gmail.com> <CAKmBsaa9mLYvA3gQfbR9vTW1F728Qz2Yb-qw5tKtR4iA2F-1bg@mail.gmail.com>
In-Reply-To: <CAKmBsaa9mLYvA3gQfbR9vTW1F728Qz2Yb-qw5tKtR4iA2F-1bg@mail.gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 4 Aug 2020 15:46:00 -0700
Message-ID: <CADfgfobHj3=TWy8G1YE3ryqoq-yxgQhTv3SxtjrCY5q=BEmbGA@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: Rick Liu <rick.liu@broadcom.com>
Cc: FLoraVLogs <eripflo@gmail.com>, 
	Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000092fdec05ac150541"

--00000000000092fdec05ac150541
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 4, 2020 at 2:10 PM Rick Liu <rick.liu@broadcom.com> wrote:

> Does http://downloads.yoctoproject.org/ have HA or hot-backup machine?
>

No. Many important files are mirrored at http://mirrors.kernel.org/yocto/
 though.


> Is there an instruction on how to create a
> http://downloads.yoctoproject.org/  local mirror and sync?
>

Some larger users keep local mirrors. The full archive is almost 20TB so
they usually only mirror parts of it. Please email me directly if you are
interested.


>
> Rick
>
> On Tue, Aug 4, 2020 at 11:16 AM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Ok, thanks for the update. Kindly keep me posted.
>>
>> On Tue., Aug. 4, 2020, 2:05 p.m. Michael Halstead, <
>> mhalstead@linuxfoundation.org> wrote:
>>
>>> Remote troubleshooting has stalled. I'm headed to the data center to
>>> continue. No ETA yet.
>>>
>>> On Tue, Aug 4, 2020 at 9:02 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>>
>>>> Is there any ETA on this?
>>>>
>>>> Regards,
>>>>
>>>> Ripu
>>>>
>>>> On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz <
>>>> jester@theyoctojester.info> wrote:
>>>>
>>>>> https://twitter.com/TheYoctoJester/status/1290569609100308480
>>>>>
>>>>> Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs <
>>>>> eripflo@gmail.com>:
>>>>> >
>>>>> > I am seeing the following error:
>>>>> >
>>>>> > Gateway Timeout
>>>>> >
>>>>> > Server error - server 198.145.29.63 is unreachable at this moment.
>>>>> >
>>>>> > Please retry the request or contact your administrator.
>>>>> >
>>>>> >
>>>>> > Kindly help.
>>>>> >
>>>>> >
>>>>> > Regards,
>>>>> >
>>>>> >
>>>>> > Ripu
>>>>> >
>>>>> >
>>>>> > On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>>>> >>
>>>>> >> Hi,
>>>>> >>
>>>>> >> It seems like Yocto is down again.
>>>>> >>
>>>>> >> http://downloads.yoctoproject.org/
>>>>> >>
>>>>> >> Could you please help solve this?
>>>>> >>
>>>>> >> Regards,
>>>>> >>
>>>>> >> Ripu
>>>>> >>
>>>>> >> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com>
>>>>> wrote:
>>>>> >>>
>>>>> >>> It is working now.
>>>>> >>>
>>>>> >>> Thank you
>>>>> >>>
>>>>> >>> Regards,
>>>>> >>>
>>>>> >>> Ripu
>>>>> >>>
>>>>> >>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
>>>>> mhalstead@linuxfoundation.org> wrote:
>>>>> >>>>
>>>>> >>>> There was a brief outage while rebooting a storage device. The
>>>>> error should have been resolved several minutes ago. If you are still
>>>>> seeing this error please let me know.
>>>>> >>>>
>>>>> >>>> Michael Halstead
>>>>> >>>>
>>>>> >>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com>
>>>>> wrote:
>>>>> >>>>>
>>>>> >>>>> Also, I do see:
>>>>> >>>>>
>>>>> >>>>> Connecting to downloads.yoctoproject.org (
>>>>> downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection
>>>>> refused.
>>>>> >>>>>
>>>>> >>>>>
>>>>> >>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com>
>>>>> wrote:
>>>>> >>>>>>
>>>>> >>>>>> Hi,
>>>>> >>>>>>
>>>>> >>>>>> I tried to go into the following:
>>>>> >>>>>> http://downloads.yoctoproject.org/
>>>>> >>>>>>
>>>>> >>>>>> I get the following error:
>>>>> >>>>>>
>>>>> >>>>>>
>>>>> >>>>>> Host Not Found
>>>>> >>>>>>
>>>>> >>>>>> DNS error (the host name of the page you are looking for does
>>>>> not exist) or Server did not accept the connection.
>>>>> >>>>>>
>>>>> >>>>>> Please check that the host name has been spelled correctly.
>>>>> >>>>>>
>>>>> >>>>>> Regards,
>>>>> >>>>>>
>>>>> >>>>>> Ripu
>>>>> >>>>>
>>>>> >>>>>
>>>>> >
>>>>>
>>>>
>>>>
>>>
>>> --
>>> Michael Halstead
>>> Linux Foundation / Yocto Project
>>> Systems Operations Engineer
>>>
>> 
>>
>

-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--00000000000092fdec05ac150541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 2020 at 2=
:10 PM Rick Liu &lt;<a href=3D"mailto:rick.liu@broadcom.com">rick.liu@broad=
com.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Does=C2=A0<a href=3D"http://downloads.yoctoproject.=
org/" target=3D"_blank">http://downloads.yoctoproject.org/</a>=C2=A0have HA=
 or hot-backup machine?</div></blockquote><div><br></div><div>No. Many impo=
rtant files are mirrored at=C2=A0<a href=3D"http://mirrors.kernel.org/yocto=
/">http://mirrors.kernel.org/yocto/</a>=C2=A0though.</div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Is =
there an instruction on how to create a=C2=A0=C2=A0<a href=3D"http://downlo=
ads.yoctoproject.org/" target=3D"_blank">http://downloads.yoctoproject.org/=
</a>=C2=A0 local mirror and sync?</div></div></blockquote><div><br></div><d=
iv>Some larger users keep local mirrors. The full archive is almost 20TB so=
 they usually only mirror parts of it. Please email me directly if you are =
interested.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div><br></div><div>Rick</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 2=
020 at 11:16 AM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=
=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"auto">Ok, thanks for the update. =
Kindly keep me posted.=C2=A0</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue., Aug. 4, 2020, 2:05 p.m. Michael Hal=
stead, &lt;<a href=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blan=
k">mhalstead@linuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Remote troubleshooting h=
as stalled. I&#39;m headed to the data center to continue. No ETA yet.</div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, Aug 4, 2020 at 9:02 AM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.co=
m" rel=3D"noreferrer" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I=
s there any ETA on this?<div><br></div><div>Regards,</div><div><br></div><d=
iv>Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz &lt;=
<a href=3D"mailto:jester@theyoctojester.info" rel=3D"noreferrer" target=3D"=
_blank">jester@theyoctojester.info</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><a href=3D"https://twitter.com/TheYoctoJe=
ster/status/1290569609100308480" rel=3D"noreferrer noreferrer" target=3D"_b=
lank">https://twitter.com/TheYoctoJester/status/1290569609100308480</a><br>
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
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div></div></div>

--00000000000092fdec05ac150541--
