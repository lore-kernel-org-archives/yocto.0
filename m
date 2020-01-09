Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
 by mx.groups.io with SMTP id smtpd.web10.1446.1578606628537765901
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 13:50:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dzqhIVOT;
 spf=pass (domain: gmail.com, ip: 209.85.166.51, mailfrom: eripflo@gmail.com)
Received: by mail-io1-f51.google.com with SMTP id v3so8857939ioj.5
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 13:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IvqVc1DDhAKz8WpKa14aH7nhTy8NhovzeiebkliZ+0E=;
        b=dzqhIVOTwHemwElrxncBQvdjaz9fXCUssrfkSjzPtL5GJAGv8s1AI7vUl0/2f27GcY
         TNSBfhWJNmYNpEd06d7T2vtR/hO1CdFoTu/4Xtji3kIccfdChTgKBnb4dJkXp51i6c2x
         nL2He46wGjByYEz5EEsTDQ2RX+wecf/kpH556cHYNw3B35XzsMEDDMsGhOJn9rBXXWZM
         NYjbsbGwjzXpmuDaasfcO0s5vR21+JU6R9aNV9qLRR5v8ib12d8Hg4+GeelUVoqbNuta
         tkcmffwKaXBE3N4i3Ys4b8pgeG8tl5+hgzpytXRU3AY2WRd9DvetlRgy3+mUcddJ/Dda
         hMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IvqVc1DDhAKz8WpKa14aH7nhTy8NhovzeiebkliZ+0E=;
        b=R4db02DrNihGb17bFE8+6MoS/e+CqsGSoAIl6p7m1/QDmVEe8otmuhkPd7h698Muhc
         zqhbolzRB/yFCPsXagUxAfGNda9fGlMpO1nxgdmv5X6VoPO1oLr1LjkhapeiPbGnpmDx
         tLUl650nwuBU8dzB320Nl9agJ8XV/xsw/uxHArkNowblK9WzO05lG8nW6N1IqDZ0HVOK
         jPAf31jPHqoKP1U4oIb7nbZiUWcexfp0Sm0P6Ariyd8z9RzkO2LB1ZDFW/wvBzC7Y+2x
         r7Vh+wJeTkHIMK784oQDLjvNGuCoCIxGgtJmaKctyQenqXgrGFOPo9qWF+PaU2Xh0Y1u
         xrQw==
X-Gm-Message-State: APjAAAWs3x1a4utzWDZOJ4/gIwH4vaIoMrlpLRtCoUJ98u2vnjYQolNl
	VKl8Wk8n5srFd175D2ELATxK6B9j/PSth+IlxHc=
X-Google-Smtp-Source: APXvYqz7oAI77hkqTaYULbUuAZvVmuxbBQWm8vYxJcSWZlvpZIoWzKa1tRqVh03HTKXxbIwfQJxS+YG34JV36CORByM=
X-Received: by 2002:a5d:8602:: with SMTP id f2mr9388366iol.270.1578606627882;
 Thu, 09 Jan 2020 13:50:27 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
 <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com> <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
In-Reply-To: <CADfgfoaUNu8KsN-JfspzSQpYKm+s-0nVvX-5O1MoRc+uUDcQCQ@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Thu, 9 Jan 2020 16:50:19 -0500
Message-ID: <CAGhBkzwBDJZ7Dxt6CtfUfZziDstLFaA6eSnho7ngB2+5Qxkz-Q@mail.gmail.com>
Subject: Re: [yocto] Yocto host not found
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004b8d19059bbbff87"

--0000000000004b8d19059bbbff87
Content-Type: text/plain; charset="UTF-8"

It is working now.

Thank you

Regards,

Ripu

On Thu., Jan. 9, 2020, 4:44 p.m. Michael Halstead, <
mhalstead@linuxfoundation.org> wrote:

> There was a brief outage while rebooting a storage device. The error
> should have been resolved several minutes ago. If you are still seeing this
> error please let me know.
>
> Michael Halstead
>
> On Thu, Jan 9, 2020 at 1:38 PM FLoraVLogs <eripflo@gmail.com> wrote:
>
>> Also, I do see:
>>
>> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection refused.
>>
>>
>>
>> On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:
>>
>>> Hi,
>>>
>>> I tried to go into the following:
>>> http://downloads.yoctoproject.org/
>>>
>>> I get the following error:
>>>
>>> Host Not Found
>>>
>>> DNS error (the host name of the page you are looking for does not exist)
>>> or Server did not accept the connection.
>>>
>>> Please check that the host name has been spelled correctly.
>>>
>>> Regards,
>>>
>>> Ripu
>>>
>> 
>>
>

--0000000000004b8d19059bbbff87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">It is working now.=C2=A0<div dir=3D"auto"><br></div><div =
dir=3D"auto">Thank you</div><div dir=3D"auto"><br></div><div dir=3D"auto">R=
egards,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Ripu</div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu=
., Jan. 9, 2020, 4:44 p.m. Michael Halstead, &lt;<a href=3D"mailto:mhalstea=
d@linuxfoundation.org">mhalstead@linuxfoundation.org</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">There was a brief=C2=A0ou=
tage while rebooting a storage device. The error should have been resolved =
several minutes ago. If you are still seeing this error please=C2=A0let me =
know.<div><br></div><div>Michael Halstead</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2020 at 1:38 =
PM FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blank" re=
l=3D"noreferrer">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Also, I do see:<br><pre =
style=3D"box-sizing:border-box;white-space:pre-wrap;margin-top:0px;margin-b=
ottom:0px;font-size:14px;background:rgb(38,50,56);color:rgb(233,237,237);pa=
dding:10px 20px;font-family:&quot;Roboto Mono&quot;,monospace">Connecting t=
o <a href=3D"http://downloads.yoctoproject.org" target=3D"_blank" rel=3D"no=
referrer">downloads.yoctoproject.org</a> (<a href=3D"http://downloads.yocto=
project.org" target=3D"_blank" rel=3D"noreferrer">downloads.yoctoproject.or=
g</a>)|198.145.29.63|:80... failed: Connection refused.

</pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=3D"mailto:erip=
flo@gmail.com" target=3D"_blank" rel=3D"noreferrer">eripflo@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr">Hi,<div><br></div><div>I tried to go into the following:</div><d=
iv><a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank" rel=3D"=
noreferrer"><span>http</span>://<span>downloads</span>.<span>yoctoproject</=
span>.<span>org</span>/</a></div><div><br></div><div>I get the following er=
ror:</div><div>=C2=A0</div><h1 style=3D"color:rgb(0,0,0);font-family:&quot;=
Times New Roman&quot;">Host Not Found</h1><p style=3D"color:rgb(0,0,0);font=
-family:&quot;Times New Roman&quot;;font-size:medium">DNS error (the host n=
ame of the page you are looking for does not exist) or Server did not accep=
t the connection.<br><br>Please check that the host name has been spelled c=
orrectly.</p><p style=3D"color:rgb(0,0,0);font-family:&quot;Times New Roman=
&quot;;font-size:medium">Regards,</p><p style=3D"color:rgb(0,0,0);font-fami=
ly:&quot;Times New Roman&quot;;font-size:medium">Ripu</p></div>
</blockquote></div>
<br>
</blockquote></div>
</blockquote></div>

--0000000000004b8d19059bbbff87--
