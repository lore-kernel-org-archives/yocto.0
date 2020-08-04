Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
 by mx.groups.io with SMTP id smtpd.web10.8554.1596556974324063680
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 09:02:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FuUXZTEm;
 spf=pass (domain: gmail.com, ip: 209.85.166.171, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f171.google.com with SMTP id z3so24436348ilh.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 09:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k9sBS48zyS5Y3GFkffzRovU1msA92aqIJKNc4hybaMg=;
        b=FuUXZTEmf23TstkMRQuq4FHaydf3iHpBVT+o7SWbJSU+uqZckO9P3DE9pdK4EY+RjR
         P92H2a0rM777t8254LdT8ypAgfAJbwtLX48EovgrG1LIfmNdTzOCGBVCrgXiGsfPNbIZ
         SPWazX5GUu4aPa7U47Cik/ZcIVcA2309buJ7XbQuRyreMUaIJ7mdOefnxoBK/DBksYvi
         ANxXS0tvu8dH2tGa5/oYmR5aKzeMpNSS4y2JWIBZe+pRRTeQ5bsBhwgirbP8G7e4n4pY
         NWl1FQKy0HrjEieRYMPyoDJC1Yv63Uw6U2MJHrjILNmg+itX4klnVn5IIBswi4Aw/Thp
         7snw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k9sBS48zyS5Y3GFkffzRovU1msA92aqIJKNc4hybaMg=;
        b=YsKY/HyQM6P/0GTtkAiOa3XKq2k93gqBgRtr/OTEpI7+z98FtnKnZljtgxmrDBP4Wp
         R+2fhocsbDHOGzWXfqLmJ0rYbwmVOc0rHQOVcuRaAT7AmOLBuyQfnrPhH16VuuM3G+W8
         l0FJQor4ef9HJEO7Nj4DYOZ8YhQnHu7XAsTw/Q4SOJpaSdlau6VOWQ+cyvbOsuceYLwY
         jlNxRo3b4wdVjvhXSk+fzmNRpk6ci/BI8DrYzMHmrNLHJU5M0mOUD9pTAUFtoYvEfjvD
         xyveCdT8+m9jHbnOMV37Lr8u5dqk6wK3TPdgipFPaT+EoakI4c7DvojhMY7GknSJZnk2
         ajtA==
X-Gm-Message-State: AOAM530cAJXfvQa8Vb3nqSJudWQAxxjlL6Tb/63c28OWOQ4qWpceFKL6
	vcAjyChXeScXHepHSTm76rUcdY8y+1fpXF252Ro=
X-Google-Smtp-Source: ABdhPJzBKMHz9cBJCxrSPOg+YNVhBqqbYxMAYlRjpd8c47ZuB0UoVRg2jdV1GWRKT951DeTmnjUZ0GJG7By3bp2oO8w=
X-Received: by 2002:a92:bac5:: with SMTP id t66mr5342225ill.125.1596556973688;
 Tue, 04 Aug 2020 09:02:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
 <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com> <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
In-Reply-To: <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Tue, 4 Aug 2020 12:02:42 -0400
Message-ID: <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000047ccb605ac0f63ad"

--00000000000047ccb605ac0f63ad
Content-Type: text/plain; charset="UTF-8"

Is there any ETA on this?

Regards,

Ripu

On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz <
jester@theyoctojester.info> wrote:

> https://twitter.com/TheYoctoJester/status/1290569609100308480
>
> Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs <eripflo@gmail.com>:
> >
> > I am seeing the following error:
> >
> > Gateway Timeout
> >
> > Server error - server 198.145.29.63 is unreachable at this moment.
> >
> > Please retry the request or contact your administrator.
> >
> >
> > Kindly help.
> >
> >
> > Regards,
> >
> >
> > Ripu
> >
> >
> > On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:
> >>
> >> Hi,
> >>
> >> It seems like Yocto is down again.
> >>
> >> http://downloads.yoctoproject.org/
> >>
> >> Could you please help solve this?
> >>
> >> Regards,
> >>
> >> Ripu
> >>
> >> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:
> >>>
> >>> It is working now.
> >>>
> >>> Thank you
> >>>
> >>> Regards,
> >>>
> >>> Ripu
> >>>
> >>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
> mhalstead@linuxfoundation.org> wrote:
> >>>>
> >>>> There was a brief outage while rebooting a storage device. The error
> should have been resolved several minutes ago. If you are still seeing this
> error please let me know.
> >>>>
> >>>> Michael Halstead
> >>>>
> >>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:
> >>>>>
> >>>>> Also, I do see:
> >>>>>
> >>>>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.29.63|:80...
> failed: Connection refused.
> >>>>>
> >>>>>
> >>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:
> >>>>>>
> >>>>>> Hi,
> >>>>>>
> >>>>>> I tried to go into the following:
> >>>>>> http://downloads.yoctoproject.org/
> >>>>>>
> >>>>>> I get the following error:
> >>>>>>
> >>>>>>
> >>>>>> Host Not Found
> >>>>>>
> >>>>>> DNS error (the host name of the page you are looking for does not
> exist) or Server did not accept the connection.
> >>>>>>
> >>>>>> Please check that the host name has been spelled correctly.
> >>>>>>
> >>>>>> Regards,
> >>>>>>
> >>>>>> Ripu
> >>>>>
> >>>>>
> > 
>

--00000000000047ccb605ac0f63ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Is there any ETA on this?<div><br></div><div>Regards,</div=
><div><br></div><div>Ripu</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Aug 4, 2020 at 11:30 AM Josef Holzma=
yr-Khosh Amoz &lt;<a href=3D"mailto:jester@theyoctojester.info">jester@they=
octojester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><a href=3D"https://twitter.com/TheYoctoJester/status/1290569=
609100308480" rel=3D"noreferrer" target=3D"_blank">https://twitter.com/TheY=
octoJester/status/1290569609100308480</a><br>
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

--00000000000047ccb605ac0f63ad--
