Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
 by mx.groups.io with SMTP id smtpd.web11.5717.1587110969639660450
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Apr 2020 01:09:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=RQUVx1/M;
 spf=pass (domain: linaro.org, ip: 209.85.219.171, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f171.google.com with SMTP id i16so597134ybq.9
        for <yocto@lists.yoctoproject.org>; Fri, 17 Apr 2020 01:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=W1Biq+A4NZd7hT0SiPOq9oiBgzHIHPjHdSjH8svfCaM=;
        b=RQUVx1/MfI0zPh2sXzEjRzSBOPWVINYmuihxIvxyeppjYQbvNXTjcsfvmOnsDJLzlZ
         0WESco0JltIlCk6WU/e5vXAxBr7HAOx+ZyF3yM9zDWtOv+gDCwiMe2eqFgHrz4m6m/GJ
         PbEdfeQqCR6JbJm32biNiplSrY/Vc6Pk9hXk89pRJX8ULcwSmD33IQh+6DOBwrP6ssF4
         6HPIVbFjdRZd0uDRV8t+IV8J+fSrr0Old5rQGTZYru5Clxkh8STeUUETon/WPDsjRiI6
         9rwmQBerVeZLzveZhOP2TGRjSQh2HfIbYCuhoWy04o0j3J3OzqCWS0XMJjUyFhPXb14V
         pW/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=W1Biq+A4NZd7hT0SiPOq9oiBgzHIHPjHdSjH8svfCaM=;
        b=fXhYARfXI7gkXMOHquqEy+xUdxiToWs9t2Y9ZZ8hLkqXYFeAGIkzfrkXUK2X2fmyWH
         INGb45vnM25yqPmZ5oKw2IhKH7e4MBtcaSENlLjwYelQs9oCG3clKMcga1rRlZyUO7bV
         8Q3KCimJ2j9/GrkEHfphETFK2yVn9a2n8jAmep8we8+AXSeUiEjilMbuYy+Qia7A1lpL
         4hZlJeF6iB+7JG9+iFPZyAABzMxrCcdK4WbLXqjytQa86klb4o78BqDgWxIbZ/gLFooO
         n5J5I5tIpKG6cI6FWjy41Gv+Vq5cw60BrMFzMitDzvSXeQkKKkRzYnKbb+IyDVjsqTa9
         ghdg==
X-Gm-Message-State: AGi0PuYW8hBX8tSZvFWYTYhlWLpOCyj08pySTuEIxpb6nIPMOVw7ppkl
	8cL+u2NNDJAEnHsJFnSR3ysSBwtCtRTJeAvwf5p92g==
X-Google-Smtp-Source: APiQypITkfrap6At7IbCGetbkArDwa1Y7J7Jr6bbmSA1UtmkvzrtoPQeEi62GHiQO7sT0ZpgIygzUF5pH7u0FiBqU8o=
X-Received: by 2002:a25:e6c5:: with SMTP id d188mr3679543ybh.454.1587110968701;
 Fri, 17 Apr 2020 01:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <d4b42754-b89d-e5b5-7939-af4056c457df@windriver.com> <20200416193629.GF11927@denix.org>
In-Reply-To: <20200416193629.GF11927@denix.org>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Fri, 17 Apr 2020 10:09:15 +0200
Message-ID: <CAP71WjzL8NQ=Dds6af41Jz+Dak9PJ0WR8R0-h0jrcM5q5CfEUw@mail.gmail.com>
Subject: Re: [yocto] FYI: Why people are using #hashtags in yocto email subjects.
To: Denys Dmytriyenko <denis@denix.org>
Cc: Randy MacLeod <randy.macleod@windriver.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000082508005a3781180"

--00000000000082508005a3781180
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 16, 2020 at 9:36 PM Denys Dmytriyenko <denis@denix.org> wrote:

> I doubt people that actually send emails to the list use #hashtags.
>
> But the new list server provides this posting feature for anyone to
> address
> the list and requests poster to add #hashtags - very annoying, indeed:
>
> https://lists.yoctoproject.org/g/yocto/post


there is that. And looking at the history on the server, most of the
existing tags came from the web. But a hashtag is created automatically
when using '#' in the email subject. that's how #define was created:
https://lists.yoctoproject.org/g/yocto/message/48686

and this email created #hashtags ;-)

I haven't found a way to disable it.. from what I can see we can
1. force every message to have at least one hashtag...
2. bounce message with a new hashtag in $subject
3. remove new hashtag when used in $subject

I think we will need to do some tests to see what #3 does.. But in any
case, I don't think we can prevent users from creating hashtags from the
web..

Is that causing any issues with patches workflow?


>
> --
> Denys
>
>
> On Thu, Apr 16, 2020 at 03:18:34PM -0400, Randy MacLeod wrote:
> > FYI:
> >
> > I don't know if I missed the memo/tweet about the email archive feature
> > but I just noticed that the new archive site will index emails
> > by hashtag:
> >
> >    https://lists.yoctoproject.org/g/yocto
> >
> >    https://lists.yoctoproject.org/g/yocto/hashtags
> >
> > I thought it was an annoying new behaviour coming from Twitter users
> > but now I understand why there are hashtags on my lawn^Hsubject lines.
> >
> > ;-)
> >
> > --
> > # Randy MacLeod
> > # Wind River Linux
>
> >
>
> 
>

--00000000000082508005a3781180
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 16, 2020 at 9:36 PM Denys=
 Dmytriyenko &lt;<a href=3D"mailto:denis@denix.org">denis@denix.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I doubt =
people that actually send emails to the list use #hashtags.<br>
<br>
But the new list server provides this posting feature for anyone to addres=
s <br>
the list and requests poster to add #hashtags - very annoying, indeed:<br>
<br>
<a href=3D"https://lists.yoctoproject.org/g/yocto/post" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/g/yocto/post</a></blockqu=
ote><div><br></div><div>there is that. And looking at the history on the se=
rver, most of the existing tags came from the web. But a hashtag is created=
 automatically when using &#39;#&#39; in the email subject. that&#39;s how =
#define was created:</div><div><a href=3D"https://lists.yoctoproject.org/g/=
yocto/message/48686">https://lists.yoctoproject.org/g/yocto/message/48686</=
a></div><div><br></div><div>and this email created #hashtags ;-)</div><div>=
<br></div><div>I haven&#39;t found a way to disable it.. from what I can se=
e we can</div><div>1. force every message to have at least one hashtag... <=
br></div><div>2. bounce message with a new hashtag in $subject<br></div><di=
v>3. remove new hashtag when used in $subject</div><div><br></div><div>I th=
ink we will need to do some tests to see what #3 does.. But in any case, I =
don&#39;t think we can prevent users from creating hashtags from the web.. =
<br></div><div><br></div><div>Is that causing any issues with patches workf=
low?</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<br>
<br>
-- <br>
Denys<br>
<br>
<br>
On Thu, Apr 16, 2020 at 03:18:34PM -0400, Randy MacLeod wrote:<br>
&gt; FYI:<br>
&gt; <br>
&gt; I don&#39;t know if I missed the memo/tweet about the email archive f=
eature<br>
&gt; but I just noticed that the new archive site will index emails<br>
&gt; by hashtag:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/g/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto</=
a><br>
&gt; <br>
&gt;=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/g/yocto/hashta=
gs" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/hashtags</a><br>
&gt; <br>
&gt; I thought it was an annoying new behaviour coming from Twitter users<=
br>
&gt; but now I understand why there are hashtags on my lawn^Hsubject lines=
.<br>
&gt; <br>
&gt; ;-)<br>
&gt; <br>
&gt; -- <br>
&gt; # Randy MacLeod<br>
&gt; # Wind River Linux<br>
<br>
&gt; <br>
<br>
<br>
</blockquote></div></div>

--00000000000082508005a3781180--
