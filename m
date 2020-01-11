Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web09.11370.1578769315265478549
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Jan 2020 11:01:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20150623.gappssmtp.com header.s=20150623 header.b=oE9cTUMr;
 spf=neutral (domain: ibeeto.com, ip: 209.85.167.53, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-lf1-f53.google.com with SMTP id f15so3954509lfl.13
        for <yocto@lists.yoctoproject.org>; Sat, 11 Jan 2020 11:01:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eid9Nyq2sbfwVc3rSMXKbyNn+zl85vfzagFXn9SFq6c=;
        b=oE9cTUMr2vM43YeTsZ6Nt+eaDaZ45/IqkG3WmZ9LgNubZ2Zj0ntV8IDIewt/7855R3
         RBzFpNv8OOhgCjPkIDAavuGodyPnb9ZK+xwIeh3tNQaQJ/wmUla058vqyR6HX9OHOTRU
         VKokA4s57LR3aRyrkdCSD2tXuwokQ5QB2Wrjj8tIeNHCraWo704uA0h2oZ4FoamSw5vf
         +In0G5Wd7rFHSEQYO5aa5pm2M3HmyO1QlBbo/E4xuV/nv4HJIoM5+NB6IHsC1lrUj3XG
         J9CKajHuHLP028Vcx065BhzglDBjvwGfaBTcj6YFepcwn96LS1pkPZrJHfQnuiywpTr/
         gseA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eid9Nyq2sbfwVc3rSMXKbyNn+zl85vfzagFXn9SFq6c=;
        b=pgR1bwnntmdtfFW9uN2658z+OVveYE8m/czq14Mr4yQEodjU+wJH92hHIiTU0+0aGZ
         44eVSIZsnpHHAhGn4eM40+TcKiTvaV6XVDFmHM43Rf/YwK1Sri2COhjeVIq6t+6pHIAl
         Bw/mdJAJ3dFifY5SAlhJNm9ebT9ZnasLGm2jesQHfLxps/XwAodXauebPVJFZJRH4fPX
         yynQdmPlUOrVY6yrP5CbI6oJJt/Tg0BYTFkjwCm61cLPWzqey4YCqu/jV8SSVr3Mxwqa
         b7hnQScDzAa9NujuGfnn4mbo42iDVIFl9FtE92u8ANkuzror1AbKSagj5i4M4lb6T9rQ
         v7qw==
X-Gm-Message-State: APjAAAWx0PBoEGaLOnK27LOIsPihNXT0ommLBh6Bm5Jxs0wE4NU2XNxm
	pPVKSkjZSTZffgC451+imWc4nsR1zx+ucMj4qQrdfA==
X-Google-Smtp-Source: APXvYqw478qknF1UKqK6m7Jn9GDNbktnuj0NJdRmC3A/n37t8JLSg1+rLTv93FJp3qujq21C69XGyDCnC8o+2WvUp5g=
X-Received: by 2002:ac2:4476:: with SMTP id y22mr5914884lfl.169.1578769313339;
 Sat, 11 Jan 2020 11:01:53 -0800 (PST)
MIME-Version: 1.0
References: <0201edc5-143a-9c9a-cebb-2f331cbed6be@messofts.be> <6ce085f2-5383-08ce-41b2-401b406a392e@messofts.be>
In-Reply-To: <6ce085f2-5383-08ce-41b2-401b406a392e@messofts.be>
From: "Rudolf J Streif" <rudolf.streif@ibeeto.com>
Date: Sat, 11 Jan 2020 11:01:40 -0800
Message-ID: <CAPxNcndo+SM7S8UnVG8jKZFpztGP=1ecrvApu5BD8z9khQVYiw@mail.gmail.com>
Subject: Re: [yocto] Drivers ?
To: pfl <pfl@messofts.be>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001ab0a8059be1e0c2"

--0000000000001ab0a8059be1e0c2
Content-Type: text/plain; charset="UTF-8"

Hi Phil,

It looks like this is your first encounter with the Yocto Project. Welcome!

You did  not specify what USB hardware you are using hence I won't be able
to give you a specific answer.

To start, you should simply build an OS for the RPi, install it, boot it
and then plug your USB hardware in. Chances are that it works if it is
recognized as a generic sound card etc. If not come back to this list, tell
us about your hardware and copy the last 10 lines of the output of dmesg
after you plugged it in.

Cheers,
Rudi

On Sat, Jan 11, 2020, 09:54 pfl <pfl@messofts.be> wrote:

> Hello
>
> my  project consists of making my own *raspberrypi OS* that basicaly runs
> *pure-data*, accessing a *usb soundcard *(behringer or chinese audio usb
> dongle)
>
> I found a yocto tutorial for *raspbery pi* and some infos about building
> a distro with a *package manager *(apt-get)
>
> *but how do I make sure usb/audio card drivers are part of the
> distribution ?*
>
> thanks
>
> Phil
> 
>

--0000000000001ab0a8059be1e0c2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Phil,<div dir=3D"auto"><br></div><div dir=3D"auto">It =
looks like this is your first encounter with the Yocto Project. Welcome!</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">You did=C2=A0 not specify =
what USB hardware you are using hence I won&#39;t be able to give you a spe=
cific answer.</div><div dir=3D"auto"><br></div><div dir=3D"auto">To start, =
you should simply build an OS for the RPi, install it, boot it and then plu=
g your USB hardware in. Chances are that it works if it is recognized as a =
generic sound card etc. If not come back to this list, tell us about your h=
ardware and copy the last 10 lines of the output of dmesg after you plugged=
 it in.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Cheers,=C2=A0</d=
iv><div dir=3D"auto">Rudi=C2=A0</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jan 11, 2020, 09:54 pfl &lt;<a=
 href=3D"mailto:pfl@messofts.be">pfl@messofts.be</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">
  

    
  
  <div>
    <p>Hello</p>
    <div>
      <p>my=C2=A0 project consists of making my own <b>raspberrypi OS</b>
        that basicaly runs <b>pure-data</b>, accessing a <b>usb
          soundcard </b>(behringer or chinese audio usb dongle)<b><br>
        </b></p>
      <p>I found a yocto tutorial for <b>raspbery pi</b> and some infos
        about building a distro with a <b>package manager </b>(apt-get)<br=
>
      </p>
      <p><u>but how do I make sure usb/audio card drivers are part of
          the distribution ?</u></p>
      <p>thanks</p>
      <p>Phil<br>
      </p>
    </div>
  </div>

<br>
</blockquote></div>

--0000000000001ab0a8059be1e0c2--
