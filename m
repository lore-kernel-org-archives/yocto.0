Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.7115.1602820290679225030
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Oct 2020 20:51:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JSi57med;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: idadelm@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id t21so837405eds.6
        for <yocto@lists.yoctoproject.org>; Thu, 15 Oct 2020 20:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=2iVbX8eAJBWDMUzGxvJQz5gnyykzJvWbrZzdad54YRI=;
        b=JSi57medUDs43woX/4OuihbHw6gZ8FBEGbGqv+a+4FeTmJOgrnz315p+dSZG0JqBkC
         +bvQb8gAz9P4SzFDOAb39/LysTZKInEe0+Wi86Dw/stqNV7eePooLLrNjyPCvqxplt+l
         0N+4z1hfxuGyiSfqPu2fsUBHG1gYvXkqz2hR/J0D28Ryu/OpnSogZ+uBGjMo9yiXunHo
         DQH7xheKk55vNQSOIkaPteLoeZ/K4h7jvEfZJ2vGRInIcgvfUtvc1rxbwboxLm2BjpK3
         svWggayDg2LUrh1kKpVDyUA9VEj5A2vAALc1NssWuMhbUnkg0eOz7fK93iW6jQ6/VbJD
         6r7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=2iVbX8eAJBWDMUzGxvJQz5gnyykzJvWbrZzdad54YRI=;
        b=B3bnTeLEoQ5qOYac6LDIROin22x9sulVl8znCPNE6am0SkCIS+IELKec5YH0mUJPXe
         ViQiuqpv3ARdoj3iua6PDiROFWkwR0zZXRLd+NJgfNHC5hEUC7JFHk5saRDThk5kDoWB
         TB+7cRyCH6mkCyY/ztxnl7JLSlyvvuj4BIzH1Har7OEis7ifjH0U7G9sli4x1T4l72jm
         G9BV13LPwempxM/fojcYq8EIkFIoheEs7a/S7+DUvdJhpxIlFp2wXBfXx2ZYyL9khqra
         FFWeZG47rv0t8a08LPSdPUuhkSeaOX1I02qPDNKc6Tc0jKQKsfnxI9K1IYNQzIPBkUKi
         PALA==
X-Gm-Message-State: AOAM531xLwnX8o2L4zH9meDU27uIpy6QWznjgEFr+epFuV1Bz7rvLq2D
	KSU7QVWyyZmxPJVY65NKxY5G6QL67DuuL+7H7g/P5y8iJrQ=
X-Google-Smtp-Source: ABdhPJxnQniax0py76EWfJ1dqKU41vWHmK8kgPbfLgIaqZ0zKmWl3fpmHj9ToNFoUAv7+DMxuIdwiI/nNYkQ0OvbDaM=
X-Received: by 2002:a05:6402:6d0:: with SMTP id n16mr1695485edy.133.1602820288755;
 Thu, 15 Oct 2020 20:51:28 -0700 (PDT)
MIME-Version: 1.0
References: <4y2O.1602815692990017151.jX30@lists.yoctoproject.org> <CAN7sTgsMRS=5H55WkbgfA-FLxMRuhq7pA84GvHE8Lyxxa1u6rA@mail.gmail.com>
In-Reply-To: <CAN7sTgsMRS=5H55WkbgfA-FLxMRuhq7pA84GvHE8Lyxxa1u6rA@mail.gmail.com>
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
Date: Fri, 16 Oct 2020 04:51:17 +0100
Message-ID: <CAN7sTguMQO6H+7gR=4j3fFR2_ygEEHpVTEkiVsGMJHw5L_UJgg@mail.gmail.com>
Subject: Re: [yocto] Enhance yocto Project license tracing #yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f339ac05b1c1ad4f"

--000000000000f339ac05b1c1ad4f
Content-Type: text/plain; charset="UTF-8"

Hi Dorinda,

I believe you are an outreachy applicant like me. This task you have chosen
is what the selected intern will work on from my understanding. As of now
we are still applicants.

For now we still have to make at least one contribution to the yocto
project before we submit our final applications. We were provided with the
bugzilla link for newcomers to find bugs and fix:
https://wiki.yoctoproject.org/wiki/Newcomers

If you could fix a bug there and submit a patch, I think you are good to go.

You could still go back and re-read the information on this project's page
on the outreachy website:
https://www.outreachy.org/outreachy-december-2020-internship-round/communities/yocto-project/

Cheers,
Ida.

On Fri, 16 Oct 2020, 4:32 am Meh Mbeh Ida Delphine, <idadelm@gmail.com>
wrote:

> Hi Dorinda,
>
> I believe you are an outreachy applicant like me. This task you have
> chosen is what the selected intern will work on from my understanding. As
> of now we are still applicants.
>
> For now we still have to make at least one contribution to the yocto
> project before we submit our final applications. We were provided with the
> bugzilla link for newcomers to find bugs and fix:
> https://wiki.yoctoproject.org/wiki/Newcomers
>
> If you could fix a bug there and submit a patch, I think you are good to
> go.
>
> You could still go back and re-read the information on this project's page
> on the outreachy website:
>
> https://www.outreachy.org/outreachy-december-2020-internship-round/communities/yocto-project/
>
> Cheers,
> Ida.
>
> On Fri, 16 Oct 2020, 3:35 am Dorinda, <dorindabassey@gmail.com> wrote:
>
>> Hi,
>> i merged the latest commit made here to my local branch repository.
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/?h=rpurdie/license-experiments-osls
>> But I am unsure how to go about the next task ->
>> " 2) use the functionality to examine the accuracy of our license tagging
>> (LICENSE fields in recipes); look for errors / noise in the comparison, and
>> produce a simple report with the results"
>> Does this mean I would have to build an image from my local Branch
>> containing the merged file? And after running the build, enable the error
>> reporting tool?
>> 
>>
>>

--000000000000f339ac05b1c1ad4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><span style=3D"font-family:sans-serif;font-size:12.8px">H=
i Dorinda,</span><div dir=3D"auto" style=3D"font-family:sans-serif;font-siz=
e:12.8px"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif;font-=
size:12.8px">I believe you are an outreachy applicant like me. This task yo=
u have chosen is what the selected intern will work on from my understandin=
g. As of now we are still applicants.</div><div dir=3D"auto" style=3D"font-=
family:sans-serif;font-size:12.8px"><br></div><div dir=3D"auto" style=3D"fo=
nt-family:sans-serif;font-size:12.8px">For now we still have to make at lea=
st one contribution to the yocto project before we submit our final applica=
tions. We were provided with the bugzilla link for newcomers to find bugs a=
nd fix:</div><div dir=3D"auto" style=3D"font-family:sans-serif;font-size:12=
.8px"><span style=3D"color:rgb(51,51,51);font-family:&#39;-apple-system&#39=
;,&#39;blinkmacsystemfont&#39;,&#39;segoe ui&#39;,&#39;roboto&#39;,&#39;hel=
vetica neue&#39;,&#39;arial&#39;,&#39;noto sans&#39;,sans-serif,&#39;apple =
color emoji&#39;,&#39;segoe ui emoji&#39;,&#39;segoe ui symbol&#39;,&#39;no=
to color emoji&#39;;font-size:16px;background-color:rgb(255,255,255)"><a hr=
ef=3D"https://wiki.yoctoproject.org/wiki/Newcomers" style=3D"text-decoratio=
n-line:none;color:rgb(66,133,244)">https://wiki.yoctoproject.org/wiki/Newco=
mers</a></span><br></div><div dir=3D"auto" style=3D"font-family:sans-serif;=
font-size:12.8px"><br></div><div dir=3D"auto" style=3D"font-family:sans-ser=
if;font-size:12.8px">If you could fix a bug there and submit a patch, I thi=
nk you are good to go.</div><div dir=3D"auto" style=3D"font-family:sans-ser=
if;font-size:12.8px"><br></div><div dir=3D"auto" style=3D"font-family:sans-=
serif;font-size:12.8px">You could still go back and re-read the information=
 on this project&#39;s page on the outreachy website:</div><div dir=3D"auto=
" style=3D"font-family:sans-serif;font-size:12.8px"><a href=3D"https://www.=
outreachy.org/outreachy-december-2020-internship-round/communities/yocto-pr=
oject/" style=3D"text-decoration-line:none;color:rgb(66,133,244)">https://w=
ww.outreachy.org/outreachy-december-2020-internship-round/communities/yocto=
-project/</a><br></div><div dir=3D"auto" style=3D"font-family:sans-serif;fo=
nt-size:12.8px"><br></div><div dir=3D"auto" style=3D"font-family:sans-serif=
;font-size:12.8px">Cheers,</div><div dir=3D"auto" style=3D"font-family:sans=
-serif;font-size:12.8px">Ida.</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, 16 Oct 2020, 4:32 am Meh Mbeh Id=
a Delphine, &lt;<a href=3D"mailto:idadelm@gmail.com">idadelm@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">Hi Dor=
inda,<div dir=3D"auto"><br></div><div dir=3D"auto">I believe you are an out=
reachy applicant like me. This task you have chosen is what the selected in=
tern will work on from my understanding. As of now we are still applicants.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">For now we still have t=
o make at least one contribution to the yocto project before we submit our =
final applications. We were provided with the bugzilla link for newcomers t=
o find bugs and fix:</div><div dir=3D"auto"><span style=3D"color:rgb(51,51,=
51);font-family:-apple-system,blinkmacsystemfont,&quot;segoe ui&quot;,robot=
o,&quot;helvetica neue&quot;,arial,&quot;noto sans&quot;,sans-serif,&quot;a=
pple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quo=
t;,&quot;noto color emoji&quot;;font-size:16px;background-color:rgb(255,255=
,255)"><a href=3D"https://wiki.yoctoproject.org/wiki/Newcomers" target=3D"_=
blank" rel=3D"noreferrer">https://wiki.yoctoproject.org/wiki/Newcomers</a><=
/span><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">If you could =
fix a bug there and submit a patch, I think you are good to go.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">You could still go back and re-read=
 the information on this project&#39;s page on the outreachy website:</div>=
<div dir=3D"auto"><a href=3D"https://www.outreachy.org/outreachy-december-2=
020-internship-round/communities/yocto-project/" target=3D"_blank" rel=3D"n=
oreferrer">https://www.outreachy.org/outreachy-december-2020-internship-rou=
nd/communities/yocto-project/</a><br></div><div dir=3D"auto"><br></div><div=
 dir=3D"auto">Cheers,</div><div dir=3D"auto">Ida.</div></div><br><div class=
=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 16 Oct 2020=
, 3:35 am Dorinda, &lt;<a href=3D"mailto:dorindabassey@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">dorindabassey@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">Hi,<br><span style=3D"font-weight:bold">i m=
erged the latest commit made here to my local branch repository. <a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/?h=3Drpurdie/licens=
e-experiments-osls" rel=3D"noreferrer noreferrer" target=3D"_blank">http://=
git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/?h=3Drpurdie/license-experi=
ments-osls</a></span><br>But I am unsure how to go about the next task -&gt=
;<br><span style=3D"font-family:-apple-system,BlinkMacSystemFont,&#39;Segoe=
 UI&#39;,Roboto,&#39;Helvetica Neue&#39;,Arial,&#39;Noto Sans&#39;,sans-ser=
if,&#39;Apple Color Emoji&#39;,&#39;Segoe UI Emoji&#39;,&#39;Segoe UI Symbo=
l&#39;,&#39;Noto Color Emoji&#39;;font-size:16px">&quot; 2) use the functio=
nality to examine the accuracy of our license tagging (LICENSE fields in re=
cipes); look for errors / noise in the comparison, and produce a simple rep=
ort with the results&quot;<br></span>Does this mean I would have to build a=
n image from my local Branch containing the merged file? And after running =
the build, enable the error reporting tool?
<br>
<br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000f339ac05b1c1ad4f--
