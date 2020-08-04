Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
 by mx.groups.io with SMTP id smtpd.web10.11368.1596564995462471050
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 11:16:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qNtZjzQR;
 spf=pass (domain: gmail.com, ip: 209.85.166.47, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f47.google.com with SMTP id g19so31151449ioh.8
        for <yocto@lists.yoctoproject.org>; Tue, 04 Aug 2020 11:16:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7NW3Pq8RP2P99SV4MC1flv3XUFodmKQBcyWtjcxPik8=;
        b=qNtZjzQRb/sJo+BTlqGzD5wkCoLVQq1DppKo/2+c/GswjFmStIYi6WGUYSgHEl4kjd
         8FuFtoVLbFv37OG/R657eQatzrXtB8UCYRjNx89dlt3fBh2HNodr3YE9ueL7jtXrQsQD
         56jRSavbtcF2LNm+QBKStKVNAyLAY5fc6nEE8jCp1ZyPoONLOpQfee8inCc1Pu8xr5s3
         mwv2ktqDO26izNB7g9PmQcfLhjSu2aplSZb/k1w0wYO6bB46JF7UTrY6e0Ucv8xalWEQ
         TaUo2+CnaUzguSLjrX4Cabsojwg/kDTvOOAz9Nnxm8gCcgBOrdQEIyQMOBkiPmDtzSfI
         0IpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7NW3Pq8RP2P99SV4MC1flv3XUFodmKQBcyWtjcxPik8=;
        b=Qq68rUaE1bnx+SbNXwbCD/uq3yi0lIWz10GSlNbLUCxr412pkSmpWZrn7dA8mvdIwM
         cPIOh/jcK/XyQ9h+3tiXJSZoq3tBHkBQpZU0x83oY1jBw0nABrrPWOMLFOsSW9eYtQeP
         GAf2Kc9bm3JWFVYAgf5pB18Qdsy7DUTskIp8IJ5hCxHFFeh6jSVecBtY+fX+7XkDdzWa
         CU6o2LMBn8bhClS8eb93iV2D7Zi3lgP1Hp+cumKn4JG393UQs0Hgoo0V1l5QjrwgBBlU
         PqFiHzTzK02l/4F/gCaKt17ktRJSTLK3LI8Gy2cR0O6L5HHslzGYzBQDVN3T/mMBy71H
         8crA==
X-Gm-Message-State: AOAM532dU3Lto53cfETxNyLxvKQniQg454icXdUiPhChHAqkQ4yPqNJ4
	h/0+ycO0k0aWVnjYw6bmFSa3YJPUmjJh0hxbqG4=
X-Google-Smtp-Source: ABdhPJz4PYZrp/cWRASNg0txGrJtsZWajmu0I1W7tukVdF6raYwKroRtJ9ZCjqnlTZSfMjJCT5ewbHBIfrBEB4c2wO8=
X-Received: by 2002:a5e:dd44:: with SMTP id u4mr6476130iop.192.1596564994772;
 Tue, 04 Aug 2020 11:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
 <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
 <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
 <CAGhBkzxzXZEv4g0+D3KabG4ZbTwNJ6MEr_P9=CyneQZ32SaR9Q@mail.gmail.com>
 <CAGhBkzxZnZ+TK+k0b_kOFFGvtyJ0RAwz8iFGMsbtVY5RAz5pyw@mail.gmail.com>
 <CAEt6NwqMKnWxKqQEWhVcgAYnaxwD2KeC-G4KA1biMmdL2KBang@mail.gmail.com>
 <CAGhBkzxBtGuzkuT69UQZUL+4Q_YL8adoWd=kZZF5FQZLD2gO+w@mail.gmail.com> <CADfgfoYbR8nNgXZ+dfByGUJtGhhVrRZyaBYoCQ-fntr5OGUaMw@mail.gmail.com>
In-Reply-To: <CADfgfoYbR8nNgXZ+dfByGUJtGhhVrRZyaBYoCQ-fntr5OGUaMw@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Tue, 4 Aug 2020 14:16:25 -0400
Message-ID: <CAGhBkzwNrnGxSfipxXxqK0=GEznsjw0Vs7=QTFHRkpv=vQgH2w@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Josef Holzmayr-Khosh Amoz <jester@theyoctojester.info>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005fd59505ac1141b2"

--0000000000005fd59505ac1141b2
Content-Type: text/plain; charset="UTF-8"

Ok, thanks for the update. Kindly keep me posted.

On Tue., Aug. 4, 2020, 2:05 p.m. Michael Halstead, <
mhalstead@linuxfoundation.org> wrote:

> Remote troubleshooting has stalled. I'm headed to the data center to
> continue. No ETA yet.
>
> On Tue, Aug 4, 2020 at 9:02 AM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Is there any ETA on this?
>>
>> Regards,
>>
>> Ripu
>>
>> On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz <
>> jester@theyoctojester.info> wrote:
>>
>>> https://twitter.com/TheYoctoJester/status/1290569609100308480
>>>
>>> Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs <eripflo@gmail.com
>>> >:
>>> >
>>> > I am seeing the following error:
>>> >
>>> > Gateway Timeout
>>> >
>>> > Server error - server 198.145.29.63 is unreachable at this moment.
>>> >
>>> > Please retry the request or contact your administrator.
>>> >
>>> >
>>> > Kindly help.
>>> >
>>> >
>>> > Regards,
>>> >
>>> >
>>> > Ripu
>>> >
>>> >
>>> > On Tue, Aug 4, 2020 at 9:14 AM FLoraVLogs <eripflo@gmail.com> wrote:
>>> >>
>>> >> Hi,
>>> >>
>>> >> It seems like Yocto is down again.
>>> >>
>>> >> http://downloads.yoctoproject.org/
>>> >>
>>> >> Could you please help solve this?
>>> >>
>>> >> Regards,
>>> >>
>>> >> Ripu
>>> >>
>>> >> On Thu, Jan 9, 2020 at 4:50 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>> >>>
>>> >>> It is working now.
>>> >>>
>>> >>> Thank you
>>> >>>
>>> >>> Regards,
>>> >>>
>>> >>> Ripu
>>> >>>
>>> >>> On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
>>> mhalstead@linuxfoundation.org> wrote:
>>> >>>>
>>> >>>> There was a brief outage while rebooting a storage device. The
>>> error should have been resolved several minutes ago. If you are still
>>> seeing this error please let me know.
>>> >>>>
>>> >>>> Michael Halstead
>>> >>>>
>>> >>>> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com>
>>> wrote:
>>> >>>>>
>>> >>>>> Also, I do see:
>>> >>>>>
>>> >>>>> Connecting to downloads.yoctoproject.org (
>>> downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection
>>> refused.
>>> >>>>>
>>> >>>>>
>>> >>>>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com>
>>> wrote:
>>> >>>>>>
>>> >>>>>> Hi,
>>> >>>>>>
>>> >>>>>> I tried to go into the following:
>>> >>>>>> http://downloads.yoctoproject.org/
>>> >>>>>>
>>> >>>>>> I get the following error:
>>> >>>>>>
>>> >>>>>>
>>> >>>>>> Host Not Found
>>> >>>>>>
>>> >>>>>> DNS error (the host name of the page you are looking for does not
>>> exist) or Server did not accept the connection.
>>> >>>>>>
>>> >>>>>> Please check that the host name has been spelled correctly.
>>> >>>>>>
>>> >>>>>> Regards,
>>> >>>>>>
>>> >>>>>> Ripu
>>> >>>>>
>>> >>>>>
>>> >
>>>
>> 
>>
>
>
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>

--0000000000005fd59505ac1141b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, thanks for the update. Kindly keep me posted.=C2=A0</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue., Aug. 4, 2020, 2:05 p.m. Michael Halstead, &lt;<a href=3D"mailto:mhal=
stead@linuxfoundation.org">mhalstead@linuxfoundation.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Remote troubleshootin=
g has stalled. I&#39;m headed to the data center to continue. No ETA yet.</=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Aug 4, 2020 at 9:02 AM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail=
.com" target=3D"_blank" rel=3D"noreferrer">eripflo@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr=
">Is there any ETA on this?<div><br></div><div>Regards,</div><div><br></div=
><div>Ripu</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=
=3D"gmail_attr">On Tue, Aug 4, 2020 at 11:30 AM Josef Holzmayr-Khosh Amoz =
&lt;<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank" rel=3D"=
noreferrer">jester@theyoctojester.info</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><a href=3D"https://twitter.com/TheYoc=
toJester/status/1290569609100308480" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://twitter.com/TheYoctoJester/status/1290569609100308480<=
/a><br>
<br>
Am Di., 4. Aug. 2020 um 15:17 Uhr schrieb FLoraVLogs &lt;<a href=3D"mailto=
:eripflo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo@gmail.com<=
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
lo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo@gmail.com</a>&gt=
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
ripflo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo@gmail.com</a=
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
f=3D"mailto:mhalstead@linuxfoundation.org" target=3D"_blank" rel=3D"norefer=
rer">mhalstead@linuxfoundation.org</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; There was a brief outage while rebooting a storage device=
. The error should have been resolved several minutes ago. If you are still=
 seeing this error please let me know.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Michael Halstead<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs &lt;<a href=3D"=
mailto:eripflo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo@gmai=
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
=3D"mailto:eripflo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo=
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

--0000000000005fd59505ac1141b2--
