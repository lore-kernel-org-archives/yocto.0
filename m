Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
 by mx.groups.io with SMTP id smtpd.web09.426.1578602340415289278
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jan 2020 12:39:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UINEE+3U;
 spf=pass (domain: gmail.com, ip: 209.85.166.181, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f181.google.com with SMTP id c4so6806044ilo.7
        for <yocto@lists.yoctoproject.org>; Thu, 09 Jan 2020 12:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=DF9tGRRL6SYWaW6TDnxS+6kOVl4JVrQqp8WTWW9g+pQ=;
        b=UINEE+3UFqLt6RvExBh+Xn7Bnk7Ei02mdvvYdxltAoHPmTBY9kWLaTvHBDGLu2o2+Z
         /bMWfvL7cxugbkLNUp0dVCKTw0dG/0YEp2RQ8UOOKp/MwavZecQE1qhjhF5p50b9WuX2
         DWIDB9wp8gycBBTYi6+a7Ph2qMqU9dQ1bXXA3r/VCQn15fb59FGp4CKmKSNsqrGDlU3I
         CZx+wlLogotCyIef+fq2LczrTKaQz6VO+N7GOoHuZWEEz20uwghAHFpVMjP8ixK3IqRI
         Dqjel2xbgtPHV+H0XaFe4MsBIBWPJADzKSy/+feRdxQT7YAGLVX4I1hiHUEHsRNgfS9k
         07hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=DF9tGRRL6SYWaW6TDnxS+6kOVl4JVrQqp8WTWW9g+pQ=;
        b=tcYMF5EYw05tng3I5NcZEIrq/WCCy4O4VBhh7hIbCWJTL+4s3zD7SrNZo9Pj6Fi59T
         sJmXFWjgiK4vK1Vhal4/X+SQfqkLT3Ndxyj/c9Npp9i9TYn3ud//fgo7wNKzX7qvnQjb
         FhaMgt05pXj/3TwQB8Pzf1tC3j/XoaucKew/6H4UW1GhTbrKfR0tyUHwC1xNTO2jGl5b
         Lw+OOJJ4HhtoKySBn+6TJiKWW2GnT08FU3jErjxGKV2/F7RPeiNQkAFQBnT1b5Lh7cbi
         +nXcg2XFHUsndPVPWAqfaIUUKvcnpWSxBMAkQAnbK8Hb3GZadRDk2kxsE8bj9od096W6
         H0Zg==
X-Gm-Message-State: APjAAAWeAw+uASxQQPSwla9wsyrpKFc5gGImz8FV0Dvy8KgyUu4bBL7H
	CqhpzODt+M+NaV5w8/lHNcafCgKvkqTRijjVc6q5VMP9BZ8=
X-Google-Smtp-Source: APXvYqwPAGBD2FuG2v91xyaFSmf+lIQTL1nMMVLlqx2Kox2hP4w6JWDwSLqKSZrQN/Mqwe4NkjwchQJlTQuYr38upMU=
X-Received: by 2002:a92:7d07:: with SMTP id y7mr10231508ilc.270.1578602339683;
 Thu, 09 Jan 2020 12:38:59 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
In-Reply-To: <CAGhBkzxwg4q_E1h+x1uJK6PGY6x_j91HQq2ahWnyZZbO_SC=Zw@mail.gmail.com>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Thu, 9 Jan 2020 15:38:48 -0500
Message-ID: <CAGhBkzyYq4HOqz7u-qenXMeSkKyoJtejXtHz0mscJp_Pd4GGjw@mail.gmail.com>
Subject: Re: Yocto host not found
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b2d203059bbaff1b"

--000000000000b2d203059bbaff1b
Content-Type: text/plain; charset="UTF-8"

Also, I do see:

Connecting to downloads.yoctoproject.org
(downloads.yoctoproject.org)|198.145.29.63|:80... failed: Connection
refused.



On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs <eripflo@gmail.com> wrote:

> Hi,
>
> I tried to go into the following:
> http://downloads.yoctoproject.org/
>
> I get the following error:
>
> Host Not Found
>
> DNS error (the host name of the page you are looking for does not exist)
> or Server did not accept the connection.
>
> Please check that the host name has been spelled correctly.
>
> Regards,
>
> Ripu
>

--000000000000b2d203059bbaff1b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Also, I do see:<br><pre class=3D"gmail-console-output" sty=
le=3D"box-sizing:border-box;white-space:pre-wrap;margin-top:0px;margin-bott=
om:0px;font-size:14px;background:rgb(38,50,56);color:rgb(233,237,237);paddi=
ng:10px 20px;font-family:&quot;Roboto Mono&quot;,monospace">Connecting to <=
a href=3D"http://downloads.yoctoproject.org">downloads.yoctoproject.org</a>=
 (<a href=3D"http://downloads.yoctoproject.org">downloads.yoctoproject.org<=
/a>)|198.145.29.63|:80... failed: Connection refused.

</pre></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Thu, Jan 9, 2020 at 3:37 PM FLoraVLogs &lt;<a href=3D"mailto:eripf=
lo@gmail.com">eripflo@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I =
tried to go into the following:</div><div><a href=3D"http://downloads.yocto=
project.org/" target=3D"_blank"><span>http</span>://<span>downloads</span>.=
<span>yoctoproject</span>.<span>org</span>/</a></div><div><br></div><div>I =
get the following error:</div><div>=C2=A0</div><h1 style=3D"color:rgb(0,0,0=
);font-family:&quot;Times New Roman&quot;">Host Not Found</h1><p style=3D"c=
olor:rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font-size:medium">D=
NS error (the host name of the page you are looking for does not exist) or =
Server did not accept the connection.<br><br>Please check that the host nam=
e has been spelled correctly.</p><p style=3D"color:rgb(0,0,0);font-family:&=
quot;Times New Roman&quot;;font-size:medium">Regards,</p><p style=3D"color:=
rgb(0,0,0);font-family:&quot;Times New Roman&quot;;font-size:medium">Ripu</=
p></div>
</blockquote></div>

--000000000000b2d203059bbaff1b--
