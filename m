Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web11.11216.1596564342203424460
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 11:05:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=I7X9oJ7B;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.219.176, mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-yb1-f176.google.com with SMTP id e187so10065558ybc.5
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 11:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UK49RTNTEyKquPJaS1CqNZl6OZcu8NkO4ns9x1zNkMw=;
        b=I7X9oJ7BTa/Dcp+mo7CiUzidgNiwH0YGGWZ+PiPHZeJbuWpKDW7fKm3hnyPEPp7CNb
         bE4StqOH+eJ4BfWQHYXsg3+DGtzEU+qFpyb1kqDrSyRT5ARFEeUpYw5V4ssNwLrbuNTP
         gSgIRWqw/rL4TEIfv+k2Uahr9jxJKgsfb42/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UK49RTNTEyKquPJaS1CqNZl6OZcu8NkO4ns9x1zNkMw=;
        b=foIBNtFcczY+nYtWh+polsdvkpzAinttepZFh842L45v+dVFWs3F562naiJLiJsW1h
         TYZL7H9f4sVt/uhR9eBId3HhkJ71liXF31LiLU3hdfNRYydEen6JFo8tfs5dV8Sj1E7o
         e3iEO6KacFGgoFYCmhVNztGAMwtg46l5tkw68rAFcEX7+z453BIWv6q3xGjc+evQdsGT
         +9/TtVqD+EKisjzTPnEZ0ma28nYgWbT8iYu8NDjdQJ/p2zz2fCrTsz1kaj+tHr3NHNBJ
         cyMX1ZMVblRjgpo28cuVAa9dbFyXWQJU6rK7BgYhEsO1b/DcXsMKkdb0uY28NQf2dBgv
         GStA==
X-Gm-Message-State: AOAM532ZbriFo/96HhxK0oX/9dQWJQUTH+jNxHp36BpgIWpKLxhfigoD
	xF67cNHtv0du0va8uA5AdnjqKN1F3x9S0VIfD3WOOQ==
X-Google-Smtp-Source: ABdhPJzY5qnM5Wr/SKhxo36dVMoNTr640izOeTnnyD9JSHDt5WOD5/TYT7r6lg8uJe/bumnhvyV9yFribBaVR2GH4fs=
X-Received: by 2002:a25:ac6:: with SMTP id 189mr35648413ybk.120.1596564341338;
 Tue, 04 Aug 2020 11:05:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
 <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
 <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com> <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com>
In-Reply-To: <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Tue, 4 Aug 2020 11:05:30 -0700
Message-ID: <CADfgfoYbR8nNgXZ+dfByGUJtGhhVrRZyaBYoCQ-fntr5OGUaMw@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: FLoraVLogs <eripflo@gmail.com>
Cc: Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006d526b05ac111ae6"

--0000000000006d526b05ac111ae6
Content-Type: text/plain; charset="UTF-8"

Remote troubleshooting has stalled. I'm headed to the data center to
continue. No ETA yet.

On Tue, Aug 4, 2020 at 9:02 AM FLoraVLogs <eripflo@gmail.com> wrote:

> Is there any ETA on this?
>
> Regards,
>
> Ripu
>
> On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz <
> jester@theyoctojester.info> wrote:
>
>> https://twitter.com/TheYoctoJester/status/1290569609100308480
>>
>> Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs <eripflo@gmail.com>:
>> >
>> > I am seeing the following error:
>> >
>> > Gateway Timeout
>> >
>> > Server error - server 198.145.29.63 is unreachable at this moment.
>> >
>> > Please retry the request or contact your administrator.
>> >
>> >
>> > Kindly help.
>> >
>> >
>> > Regards,
>> >
>> >
>> > Ripu
>> >
>> >
>> > On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:
>> >>
>> >> Hi,
>> >>
>> >> It seems like Yocto is down again.
>> >>
>> >> http://downloads.yoctoproject.org/
>> >>
>> >> Could you please help solve this?
>> >>
>> >> Regards,
>> >>
>> >> Ripu
>> >>
>> >> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:
>> >>>
>> >>> It is working now.
>> >>>
>> >>> Thank you
>> >>>
>> >>> Regards,
>> >>>
>> >>> Ripu
>> >>>
>> >>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
>> mhalstead@linuxfoundation.org> wrote:
>> >>>>
>> >>>> There was a brief outage while rebooting a storage device. The error
>> should have been resolved several minutes ago. If you are still seeing this
>> error please let me know.
>> >>>>
>> >>>> Michael Halstead
>> >>>>
>> >>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:
>> >>>>>
>> >>>>> Also, I do see:
>> >>>>>
>> >>>>> Connecting to downloads.yoctoproject.org (
>> downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection
>> refused.
>> >>>>>
>> >>>>>
>> >>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com>
>> wrote:
>> >>>>>>
>> >>>>>> Hi,
>> >>>>>>
>> >>>>>> I tried to go into the following:
>> >>>>>> http://downloads.yoctoproject.org/
>> >>>>>>
>> >>>>>> I get the following error:
>> >>>>>>
>> >>>>>>
>> >>>>>> Host Not Found
>> >>>>>>
>> >>>>>> DNS error (the host name of the page you are looking for does not
>> exist) or Server did not accept the connection.
>> >>>>>>
>> >>>>>> Please check that the host name has been spelled correctly.
>> >>>>>>
>> >>>>>> Regards,
>> >>>>>>
>> >>>>>> Ripu
>> >>>>>
>> >>>>>
>> >
>>
> 
>


-- 
Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer

--0000000000006d526b05ac111ae6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Remote troubleshooting has stalled. I&#39;m headed to the =
data center to continue. No ETA yet.</div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 2020 at 9:02 AM FLoraVLo=
gs &lt;<a href=3D"mailto:eripflo@gmail.com">eripflo@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Is there any ETA on this?<div><br></div><div>Regards,</div><div><br></di=
v><div>Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz =
&lt;<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">jester@=
theyoctojester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><a href=3D"https://twitter.com/TheYoctoJester/status/129=
0569609100308480" rel=3D"noreferrer" target=3D"_blank">https://twitter.com/=
TheYoctoJester/status/1290569609100308480</a><br>
<br>
Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs &lt;<a href=3D"mailto=
:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt;:<br>
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
lo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; It seems like Yocto is down again.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"http://downloads.yoctoproject.org/" rel=3D"noreferrer"=
 target=3D"_blank">http://downloads.yoctoproject.org/</a><br>
&gt;&gt;<br>
&gt;&gt; Could you please help solve this?<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; Ripu<br>
&gt;&gt;<br>
&gt;&gt; On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs &lt;<a href=3D"mailto:e=
ripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br>
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
f=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@linu=
xfoundation.org</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; There was a brief outage while rebooting a storage device=
. The error should have been resolved several minutes ago. If you are still=
 seeing this error please let me know.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Michael Halstead<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs &lt;<a href=3D"=
mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Also, I do see:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Connecting to <a href=3D"http://downloads.yoctoprojec=
t.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctoproject.org</a> =
(<a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" target=3D=
"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:80... failed: Conne=
ction refused.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=
=
=3D"mailto:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; =
wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; I tried to go into the following:<br>
&gt;&gt;&gt;&gt;&gt;&gt; <a href=3D"http://downloads.yoctoproject.org/" re=
l=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproject.org/</a><b=
r>
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
" class=3D"gmail_signature"><div dir=3D"ltr">Michael Halstead<div>Linux Fou=
ndation / Yocto Project</div><div>Systems Operations Engineer</div></div></=
div>

--0000000000006d526b05ac111ae6--
