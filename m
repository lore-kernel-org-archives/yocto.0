Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web12.552.1578603000112200908
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 12:50:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=AIZUGn5Y;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id f5so3649ilq.5
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 12:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=wPfZiGS+hZ8dmANxjxOCi/VL5he9L9AdpJd1F7wqxRA=;
        b=AIZUGn5Yu9mXRNWbhzhqb3Y1ERpGFoYaod3WaXr7BP23O03zJTz7IcbBUHmKXsO+aa
         xCMGwVMaD3jceG3jsbaeHIZAgutyyC72vaimC6mrIviqzb4kodZSZfn9nJPzowXaTpkW
         dzzXb0dPUKPVYl9GocFwAHoI5QnSV01OaMVNGKS/y43sNhp4urzUon4iufS8g51fRsI7
         kRavzhcQo+m+6cDlJcSIJzsz3JER3js3QG8GHspz+Mg7sfRSRJstcokYN328AO4UmusB
         kU2OYNB9f3SWpg+WsUgY9r10iGqEoHndD9UWGcOts+ysO9tShMn6GEQ/JgFGMAVYI/rs
         4jtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=wPfZiGS+hZ8dmANxjxOCi/VL5he9L9AdpJd1F7wqxRA=;
        b=DXHD56117j9e+4gMJbJgPHwKdvjsUKZyAebKmBjKREix1MWAQ1bOXDclM5zKV79n5d
         AyDnrQeXuk9fNJXOxbGvgUa6jUhn7qupxEiUF/dvW4munVYp8TKLyCJ/4jLQYW5dcIhC
         KgBRa8l+M3n/mZyIu/zMRfVQhcrRn0V2uJaU9C/0CVkthFganL7AdVIkzu3YHiqvwxbv
         0JWfHtIuwPKwB3dziT2wz9PDcMOg980rFvKkBRFu0BFc5+tcTv++xH6ZoUSCe1vrRi93
         fvHNVdhw8/Z/U+cviiVyHT292MsEFr9rnUNr3H4iLZ8S4FXFF8aWp5o9t04xRYEVXBiw
         iUrA==
X-Gm-Message-State: APjAAAWzaapm0YicleHFhV7eoc40m164t0KJWPlHoE5fqGGzkE1iw2Vw
	8mZNW3WYErivuhXaiBkHJ9MTDxdOKBlKBpYyCWs=
X-Google-Smtp-Source: APXvYqz8+VHvuCtj83Njh0swro+QBeBp9Pf3tkOBkuRwKdLBZ3/42WMjMQayyzj8jbvrntRUjD9WZaHrwTwX6u+o9AI=
X-Received: by 2002:a92:89c2:: with SMTP id w63mr10251780ilk.252.1578602999555;
 Thu, 09 Jan 2020 12:49:59 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <48c351bc-7116-e7d7-bad8-9d595eedbcdf@mvista.com> <CAGhBkzzSOPkOW2LHjhh4P0_By3CB9Ev9R+vDa=naB2JEBpCVBA@mail.gmail.com>
 <CADfgfoYzGW5jGKd2ru1wKsomuFbSgOthPhGGRYQ8g7tBavp8zw@mail.gmail.com>
 <CAGhBkzxH3c_mUtdJF2wYRe3ovdb4TO73T6wYM1vPZZWvAbsw9w@mail.gmail.com> <CADfgfobNxJMcdBLPoXCFRavt5tA0PshHR+fTKhiZtZZVATx_3g@mail.gmail.com>
In-Reply-To: <CADfgfobNxJMcdBLPoXCFRavt5tA0PshHR+fTKhiZtZZVATx_3g@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Thu, 9 Jan 2020 15:49:48 -0500
Message-ID: <CAGhBkzwLfDnw18LzoTPxrMuToX78v21+DvqPugyC=W8fRLnbtA@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: akuster <akuster@mvista.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000007ace1059bbb27f1"

--00000000000007ace1059bbb27f1
Content-Type: text/plain; charset="UTF-8"

Hi,

Thanks for fixing it last time for us. But it looks like Yocto is down
again.

http://downloads.yoctoproject.org/

I am getting 404 error:
Host Not Found

DNS error (the host name of the page you are looking for does not exist) or
Server did not accept the connection.

Please check that the host name has been spelled correctly.


Regards,

Ripu

On Fri, Dec 13, 2019 at 3:43 PM Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> Configuration is complete and these services are online.
>
> On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs <eripflo@gmail.com> wrote:
> >
> > Ok, thanks for the update :)
> >
> > On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, <
> mhalstead@linuxfoundation.org> wrote:
> >>
> >> Update: Spare hardware is racked and cabled. Data center staff is
> beginning configuration. I expect service to be restored in 30 to 40
> minutes.
> >>
> >> On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs <eripflo@gmail.com> wrote:
> >>>
> >>> Thank you for your response. Kindly keep me posted.
> >>>
> >>> Regards,
> >>> Ripu
> >>>
> >>> On Fri., Dec. 13, 2019, 12:36 p.m. akuster, <akuster@mvista.com>
> wrote:
> >>>>
> >>>>
> >>>>
> >>>> On 12/13/19 7:46 AM, FLoraVLogs wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> I went to "http://downloads.yoctoproject.org/" and I get the
> following message:
> >>>>
> >>>> Gateway Timeout
> >>>>
> >>>> Server error - server 198.145.29.63 is unreachable at this moment.
> >>>>
> >>>> Please retry the request or contact your administrator.
> >>>>
> >>>> Kindly assist here.
> >>>>
> >>>>
> >>>> Thanks. The LF IT department is aware of  this and working towards a
> solution.
> >>>>
> >>>> No ETA.
> >>>>
> >>>> Regards,
> >>>> Armin
> >>>>
> >>>> Regards,
> >>>>
> >>>> Ripu
> >>>>
> >>>>
> >>>> 
>

--00000000000007ace1059bbb27f1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thanks for fixing it last time for =
us. But it looks like Yocto is down again.</div><div><br></div><div><a href=
=
=3D"http://downloads.yoctoproject.org/">http://downloads.yoctoproject.org/=
</a>=C2=A0</div><div><br></div><div>I am getting 404 error:</div><h1 style=
=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;">Host Not Fou=
nd</h1><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;=
;font-size:medium">DNS error (the host name of the page you are looking for=
 does not exist) or Server did not accept the connection.<br><br></p><div><=
span style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font=
-size:medium">Please check that the host name has been spelled correctly.</=
span></div><div><br></div><div><br></div><div>Regards,</div><div><br></div>=
<div>Ripu=C2=A0<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 3:43 PM Michael Halstead &=
lt;<a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundati=
on.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Configuration is complete and these services are online.<br>
<br>
On Fri, Dec 13, 2019 at 11:55 AM FLoraVLogs &lt;<a href=3D"mailto:eripflo@=
gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Ok, thanks for the update :)<br>
&gt;<br>
&gt; On Fri., Dec. 13, 2019, 2:43 p.m. Michael Halstead, &lt;<a href=3D"ma=
ilto:mhalstead@linuxfoundation.org" target=3D"_blank">mhalstead@linuxfounda=
tion.org</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Update: Spare hardware is racked and cabled. Data center staff is=
 beginning configuration. I expect service to be restored in 30 to 40 minut=
es.<br>
&gt;&gt;<br>
&gt;&gt; On Fri, Dec 13, 2019 at 10:53 AM FLoraVLogs &lt;<a href=3D"mailto=
:eripflo@gmail.com" target=3D"_blank">eripflo@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Thank you for your response. Kindly keep me posted.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt; Ripu<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Fri., Dec. 13, 2019, 12:36 p.m. akuster, &lt;<a href=3D"ma=
ilto:akuster@mvista.com" target=3D"_blank">akuster@mvista.com</a>&gt; wrote=
:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 12/13/19 7:46 AM, FLoraVLogs wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I went to &quot;<a href=3D"http://downloads.yoctoproject.=
org/" rel=3D"noreferrer" target=3D"_blank">http://downloads.yoctoproject.or=
g/</a>&quot; and I get the following message:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Gateway Timeout<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Server error - server 198.145.29.63 is unreachable at thi=
s moment.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Please retry the request or contact your administrator.<b=
r>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Kindly assist here.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Thanks. The LF IT department is aware of=C2=A0 this and w=
orking towards a solution.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; No ETA.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;&gt; Armin<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Regards,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Ripu<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; <br>
</blockquote></div>

--00000000000007ace1059bbb27f1--
