Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
 by mx.groups.io with SMTP id smtpd.web10.40719.1598613218449246693
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 04:13:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=nM0ZKAMt;
 spf=pass (domain: gmail.com, ip: 209.85.166.53, mailfrom: thisisaash9698@gmail.com)
Received: by mail-io1-f53.google.com with SMTP id h4so805949ioe.5
        for <yocto@lists.yoctoproject.org>; Fri, 28 Aug 2020 04:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WFL64cDkUfFpL4SGZqnEUfk24CrWgSoYWGnqAi2cUG8=;
        b=nM0ZKAMtknnHACjIz/n4s+XLy7vx9+rvfaUIGes9nJ2N0oj9OQhCK4ocArJZeAz7i+
         xQXDOB5dZDiN+7BKeH6tHgb7kxWMFrpQIazUefsqkuUEIXXcAJg3piDhZyimhAHorXR2
         N2D6otFozuAKYeeL+pGOF0LJJhFwPdWbcrMQ+2alJksN0h/CypCVUTnw7oSB26dDjnwA
         cBfkHAOdbyKrIhk9Od+G7Q0TT2R98QRAjzZlKq+e0JLjOGx9QcahoC8zmkF1oCSbeO7H
         iV7bHtGoKF4k1h3B8KFf5XzBrQoMxmBKZkAno1utZF8N3ObV++eu3RCyPYwvy8AdZ2JV
         qyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WFL64cDkUfFpL4SGZqnEUfk24CrWgSoYWGnqAi2cUG8=;
        b=Fw/x8cHpj9QRw+VXmT28myfvF6ZQe7xB1BPMNE0qaM8FepaZlT1xSkMDRN5QpTAYAw
         GpYsBjRCV1kiy58nTOdmI+GB4DOP4YF/Rg6/8pjyA6i9uUGiwjbJqocGdhiyusrVdIiS
         M0M2sUEvCzHqZOAELVJPE7cvjiNWL+HFAgT9B2fPS9jtvNLA9GKaZw9q1RRBF8egiYml
         n2p44ahSt4WJDQb/kVzlxWo0JQOpajI5elvZpIJWgHggP+X0A6/yuRQl8PuRvLjs9W+3
         g0SgBH9TwRSJXKT6WLneTlN4/Il3wsj17L6BC7Y03TadPLegx6Djn4QG2+/2xyUSSxm2
         6Rqw==
X-Gm-Message-State: AOAM532axQOA0YuugddBbr57Jm7JUHXMW5E+3eVVJUGqHFx0S0TAwpQN
	MvmRxjgz0vbTT2X9XyplbS0wujSkZEAFp75gq+yV7rUlk7YN7Q==
X-Google-Smtp-Source: ABdhPJwyqjsFRmQpVBL5oalMvhAxRiIqAZbKLASzHRe6TGd9IOakzFi0iv3+8S5lOA0fY9XCUqMMrqGqnS6lQIvDo2A=
X-Received: by 2002:a05:6638:1685:: with SMTP id f5mr692778jat.48.1598613217578;
 Fri, 28 Aug 2020 04:13:37 -0700 (PDT)
MIME-Version: 1.0
References: <CANVQz1acaPcBOLw7OWCD3sXBM4Q_iqC2bJcRRm_xQtgMtuYwhg@mail.gmail.com>
 <a61e089e-a927-cf88-c005-41f01e6fcf95@3mdeb.com> <CANVQz1aQH1DRheyAE70y+PuGMs9OZ6hhMGR=CkjpyMnP2e5rhQ@mail.gmail.com>
 <3d0b2801-1120-fde4-ea56-0d364b12539c@3mdeb.com>
In-Reply-To: <3d0b2801-1120-fde4-ea56-0d364b12539c@3mdeb.com>
From: "Aashik Aswin" <thisisaash9698@gmail.com>
Date: Fri, 28 Aug 2020 16:43:25 +0530
Message-ID: <CANVQz1bx3nrJJJZUJ7b549JpSfFApKWXPfvFyvrWffgXt2C9AQ@mail.gmail.com>
Subject: Re: [yocto] Removing Python2 Completely
To: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f795cc05adee24a6"

--000000000000f795cc05adee24a6
Content-Type: text/plain; charset="UTF-8"

Thanks,

Now I am able to see only python-core remaining in the RootFS Manifest and
Image size has decreased by nearly 10 MB.

Thanks,
Aashik

On Fri, Aug 28, 2020 at 12:44 PM Maciej Pijanowski <
maciej.pijanowski@3mdeb.com> wrote:

>
> On 28.08.2020 09:10, Aashik Aswin wrote:
>
> Hi,
>
> I am currently using Yocto Zeus. So is it safe to say that if we remove
> all the Python2 calls from image, that itself will remove Python2 overall ?
>
>
> If you want to remove python2 from the image, you need to make sure that
> no other package installed
> to the image RDEPENDS (runtime dependency) on it. I would start with
> checking what still pulls the
> python2 to your image.
>
>
> https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#usingpoky-debugging-dependencies
>
> Also, please reply to the list, not directly to just me.
>
>
> Thanks,
> Aashik
>
> On Fri 28 Aug, 2020, 12:37 PM Maciej Pijanowski, <
> maciej.pijanowski@3mdeb.com> wrote:
>
>>
>> On 28.08.2020 09:04, Aashik Aswin wrote:
>>
>> Hi,
>>
>> I am trying to remove Python2 and it's supporting modules completely from
>> my Image, as I have moved all my code to Python3 and hence no longer
>> require Python2. I tried the IMAGE_INSTALL_remove variable but seems to
>> have no effect. Is there a way I can remove Python2 without much changes to
>> the layers and through configuration variables only ?
>>
>> You can see what is pulling the python2 to the image (using the bitbake
>> -g for example).
>>
>> Which Yocto release are you using? I believe the latest one (Dunfell) is
>> already python3 only.
>>
>>
>>
>> Please point me to the correct mailer if  I am wrong.
>>
>> Thanks,
>> Aashik
>>
>> --
>> Maciej Pijanowski
>> Embedded Systems Engineer
>> GPG: 9963C36AAC3B2B46https://3mdeb.com | @3mdeb_com
>>
>> 
>>
> --
> Maciej Pijanowski
> Embedded Systems Engineer
> GPG: 9963C36AAC3B2B46https://3mdeb.com | @3mdeb_com
>
>

--000000000000f795cc05adee24a6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks,<div><br></div><div>Now I am able to see only pytho=
n-core remaining in the RootFS Manifest and Image size has decreased by nea=
rly 10 MB.</div><div><br></div><div>Thanks,</div><div>Aashik</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, A=
ug 28, 2020 at 12:44 PM Maciej Pijanowski &lt;<a href=3D"mailto:maciej.pija=
nowski@3mdeb.com">maciej.pijanowski@3mdeb.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <p><br>
    </p>
    <div>On 28.08.2020 09:10, Aashik Aswin
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"auto">Hi,
        <div dir=3D"auto">=C2=A0</div>
        <div dir=3D"auto">I am currently using Yocto Zeus. So is it safe
          to say that if we remove all the Python2 calls from image,
          that itself will remove Python2 overall ?</div>
      </div>
    </blockquote>
    <br>
    If you want to remove python2 from the image, you need to make sure
    that no other package installed<br>
    to the image RDEPENDS (runtime dependency) on it. I would start with
    checking what still pulls the<br>
    python2 to your image.<br>
    <br>
    <p>
<a href=3D"https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.htm=
l#usingpoky-debugging-dependencies" target=3D"_blank">https://www.yoctoproj=
ect.org/docs/1.8/ref-manual/ref-manual.html#usingpoky-debugging-dependencie=
s</a></p>
    <p>Also, please reply to the list, not directly to just me.<br>
    </p>
    <blockquote type=3D"cite">
      <div dir=3D"auto">
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Thanks,</div>
        <div dir=3D"auto">Aashik</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Fri 28 Aug, 2020, 12:37 P=
M
          Maciej Pijanowski, &lt;<a href=3D"mailto:maciej.pijanowski@3mdeb=
.com" target=3D"_blank">maciej.pijanowski@3mdeb.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div>
            <p><br>
            </p>
            <div>On 28.08.2020 09:04, Aashik Aswin wrote:<br>
            </div>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">Hi,
                <div><br>
                </div>
                <div>I am trying to remove Python2 and it&#39;s supporting
                  modules completely from my Image, as I have moved all
                  my code to Python3 and hence no longer require
                  Python2.=C2=A0<span>I tried the IMAGE_INSTALL_remove
                    variable but seems to have no effect. Is there a way
                    I can remove Python2 without much changes to the
                    layers and through configuration variables only ?</spa=
n></div>
              </div>
            </blockquote>
            <p>You can see what is pulling the python2 to the image
              (using the bitbake -g for example).<br>
              <br>
              Which Yocto release are you using? I believe the latest
              one (Dunfell) is already python3 only.<br>
            </p>
            <p><br>
            </p>
            <blockquote type=3D"cite">
              <div dir=3D"ltr">
                <div><span><br>
                  </span></div>
                <div><span>Please point me to the correct mailer if=C2=A0 =
I
                    am wrong.</span></div>
                <div><span><br>
                  </span></div>
                <div><span>Thanks,</span></div>
                <div><span>Aashik</span></div>
              </div>
              <br>
              <fieldset></fieldset>
            </blockquote>
            <pre cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a href=3D"https://3mdeb.com" rel=3D"noreferrer" target=3D"_blank">https:/=
/3mdeb.com</a> | @3mdeb_com</pre>
          </div>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <pre cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: 9963C36AAC3B2B46
<a href=3D"https://3mdeb.com" target=3D"_blank">https://3mdeb.com</a> | @3=
mdeb_com</pre>
  </div>

</blockquote></div>

--000000000000f795cc05adee24a6--
