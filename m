Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web12.7049.1589434937424136330
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 22:42:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=pkkOHzyQ;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: joel.winarske@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id f23so801704pgj.4
        for <yocto@lists.yoctoproject.org>; Wed, 13 May 2020 22:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LDC0xm/uGkOBWdRNifV7I23bl7zmYS47Thp8XD5rhlg=;
        b=pkkOHzyQ+oI/bNsaMRuT1zKGSi4GrMnp46eJC/PnRj1RUQ4pqsvQH9jQpuhBE/nCy2
         mMJf6KTxBXgkNhJIQiKNXQvanEdEJdcKSPSe50rzu5ezfg6Z0BRKJQqK7vXUNCxDYd4J
         vLkhA7RBLS+8h+GFNvFcu6zaJ8AodxAVD8fX3y1BJFZk1WETXLCgQBZFEUlHUXk1E1/Z
         yhF16EziRt7umT0pcshgRqZsDF/lLgBcm2eamqBfbxQfAOHh5MMayGR+gSSLpgP+mUsy
         x7hY2FBmRpMDo66n/t51fJ8eB0tlkJLnhBhCCCENDl/+LhfrDdDSwJlrvjOMBennJ1Nm
         CdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LDC0xm/uGkOBWdRNifV7I23bl7zmYS47Thp8XD5rhlg=;
        b=UngihWstIEZOiKVAt52ipWZ9DePhC6U617kb7o5NuiFSWTeiUPQO3pqjJ3mX3rRMfP
         y8zNudidATDaajhVrUCl9WcjXsPBptOo7gWi2q9yfdYJMxcmaIkV0gmF5PjiMDbfI+ce
         lYAA2Rm5K0TraVnPUjNjY7Eob7VX4BOq9QuHaterEGKa9GAXohnovcW8jzJsvwf1ZybY
         h+zescZyfAM+EBX1IDWx5awnmn9bIQSR0kxpEGsQISnfWMNUbLJOlm5DhmcvoBLfXNGb
         6SH/7iNLzjSv30vUhwbD77/h/3S3fvWSMwZQKpWFIUOf4G0Th5o9F5xaXOBVQ2OzJbKz
         YBeg==
X-Gm-Message-State: AOAM530bzROTxaKAocwxUSbJiyjfrZn6iMAItfhz4dbvZbeq9WiKO9I6
	A5crjtuD79EKw8/+6eisbW2Fdw2S+kgWlD9Surk=
X-Google-Smtp-Source: ABdhPJwp1Wt0gCpBimlTT+yazxYzUURK8/VpzU+nRXMLm0KSqEZdu+jJB0xc4ikZ8A1QnqKx6LQF+HEXQPIg8+6Fd6c=
X-Received: by 2002:a63:2943:: with SMTP id p64mr2614886pgp.36.1589434936753;
 Wed, 13 May 2020 22:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkP+Mr4CiHZTbgW=WN98F6j4fvA4pdUqde06nUwmX39s_dw@mail.gmail.com>
 <CAAnfSTtUAJO=agi0fpBWEt4Q0dEatXXijCfRVrbguVRzQrLAyw@mail.gmail.com>
 <CABKMkPJOBH+b=7DmpSvYH6By+3hXQmxrQ702D7basQAae2q78w@mail.gmail.com>
 <CAAnfSTs5S3+f1CJsbW5eiPj-Rr4ZawhnOXsbC3617CGNMm9kCw@mail.gmail.com>
 <CABKMkPLjwNPvDrCxOx_XC-Gy4iKtLW_OZowpQ3b6tjAwOe+tBQ@mail.gmail.com> <CAAnfSTuKs3drhr7gO2XWFn488TF0RD00Wsz_KNbU3xWHwhYjKA@mail.gmail.com>
In-Reply-To: <CAAnfSTuKs3drhr7gO2XWFn488TF0RD00Wsz_KNbU3xWHwhYjKA@mail.gmail.com>
From: "Joel Winarske" <joel.winarske@gmail.com>
Date: Wed, 13 May 2020 22:42:04 -0700
Message-ID: <CABKMkPLCp0NGOmUJ5FAuACy7_cBqErW1uB2WFTExbj3E7Q8PHw@mail.gmail.com>
Subject: Re: [yocto] project that builds target and host
To: Ross Burton <ross@burtonini.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cc82d205a5952899"

--000000000000cc82d205a5952899
Content-Type: text/plain; charset="UTF-8"

>
>
> Putting files in the target sysroot that are in fact native binaries.
> Don't do that.
>

Yeah i don't want to disable stripping the Target files.


> > The major surgery would be less maintainable.
>
> Can you not work with upstream to integrate the changes?
> Alternatively, if the native parts are relatively simple, you can just
> build them directly.
>

Well actually, I'll take a look at patching the tree with a custom
CMakeLists.txt file.  It may not be that bad.

Thanks Ross

>

--000000000000cc82d205a5952899
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_quote"><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><br>
Putting files in the target sysroot that are in fact native binaries.<br>
Don&#39;t do that.<br></blockquote></div></div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Yeah i don&#39;t want to disable stripping the Target fil=
es.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_=
quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
<br>
&gt; The major surgery would be less maintainable.<br>
<br>
Can you not work with upstream to integrate the changes?<br>
Alternatively, if the native parts are relatively simple, you can just<br>
build them directly.<br></blockquote></div></div><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Well actually, I&#39;ll take a look at patching the tre=
e with a custom CMakeLists.txt file.=C2=A0 It may not be that bad.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Thanks Ross</div><div dir=3D"aut=
o"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
</blockquote></div></div></div>

--000000000000cc82d205a5952899--
