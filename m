Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
 by mx.groups.io with SMTP id smtpd.web11.5416.1587932628945280749
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Apr 2020 13:23:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=dREh+gFL;
 spf=pass (domain: linaro.org, ip: 209.85.219.176, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f176.google.com with SMTP id v10so858212ybk.3
        for <yocto@lists.yoctoproject.org>; Sun, 26 Apr 2020 13:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S7cBxuM+WWFE1Dv01biZ3MoUI6ZmOclmHF5YtPMN23c=;
        b=dREh+gFLZ2x3h9VYJDlBCuCMUWPkGVwoeR/CKCaWWuDmiATbsQW2Vp/pvRus663IGY
         v2F81zIXaZveXNZfLBDdMl48+SF/3Tdb7qfwxxNvYXMJapqQuVrM1aEjqi7i8jehOTtK
         2nltwr4K9W8H5y1TG6fZ+UGP/3/JxPhBWsnenzS/pid6xPlqRF0sd3WC0bRmSqWZFEdl
         PkKdhOyJor/2QZapDxSHGq1BRFa6foVLGS1eYlSUh4iQddtbj2p9mNK04xbaR/jFnImv
         Y5ftclXGWEeMxropp+zLfpoMBg1ae6PFKVUdVu32FPCOsZwijFSdzdoy3ut8I000xWIV
         gM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S7cBxuM+WWFE1Dv01biZ3MoUI6ZmOclmHF5YtPMN23c=;
        b=kj9lbKLeKZSPTLcLT1tr7jiZYf2uMz+pfnvOziYvTXgv6aZ5RuhmpvPhtK0reVNL2r
         Ad4L76Z3hOASkFx1PabDbmGUhMNhwjqrLnR9bPmKVtXs13TuA7hTPdieTMuLY9on9Upe
         CsnQcTyfwdFQDzZWS0+/acvRGQRrjLKp4Ib5WFh5EXQITab+XRsMTSPo4/RJj+yvAB/S
         yKpwKfMClAPcfHGjLBYaxyCkic4+2VAw/J+g4tcobvaSPFDE9n/hJ2mPBl8WkG0V7ytZ
         X3Tl/cT3LpQNzJ0/wCe7S4SPGlQMUUnva3wvtYOIVD1sOIxabJSepX+0JF6lsXNdHynz
         vRyg==
X-Gm-Message-State: AGi0PuZTOVj8eig/8of2M7Zzcv/AWrgDa/pHu1z9BBuV/BW8+fU/dHcQ
	Fj7warbFxHZ6teHIy1lKnzcZjkI+LmPrjv55ixkS0Q==
X-Google-Smtp-Source: APiQypJh7ux6PjGU6qnftmZDnzlqTsnWfWt0MrlvuHwP9v00lavv/94D/pwLSpgCFGOBzWLWPoFrY6WvGbrwHJ2O1Z8=
X-Received: by 2002:a25:ec1:: with SMTP id 184mr31087158ybo.373.1587932628058;
 Sun, 26 Apr 2020 13:23:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200425115450.7c581f0d@ub1910>
In-Reply-To: <20200425115450.7c581f0d@ub1910>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Sun, 26 Apr 2020 22:23:34 +0200
Message-ID: <CAP71WjxW67=mZwr1FJ8A=x7eghuZ=MK4ZEn8ZnM_3JS3bwVfXA@mail.gmail.com>
Subject: Re: [yocto] Web interface for Yocto & OE mailing lists defaults to Reply to Sender
To: Paul Barker <pbarker@konsulko.com>
Cc: Michael Halstead <mhalstead@linuxfoundation.org>, 
	=?UTF-8?Q?Bart=C5=82omiej_Burdukiewicz?= <bartlomiej.burdukiewicz@gmail.com>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000391de405a437606c"

--000000000000391de405a437606c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi Paul,

On Sat, Apr 25, 2020 at 12:54 PM Paul Barker <pbarker@konsulko.com> wrote:

> Michael,
>
> I've just been discussing on IRC with Bart=C5=82omiej who used the group=
s.io
> web
> interface to reply to an email on the list. It defaulted to sending a
> private
> reply off the list. If I try to do the same "Reply to Sender" is the
> default
> for me as well: https://imgur.com/1RGH9Aw
>
> Looking at the AGL lists on groups.io they have "Reply to Group" as the
> default. Perhaps this is a configuration issue? Could you take when you =
get
> chance?
>

Right. It's a per list configuration item. I have changed for yocto list
for now, and set it to 'reply to group'. we will take care of all lists
(and on lists.openembedded.org as well). Thanks for spotting this.


> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>=20
>

--000000000000391de405a437606c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">hi Paul,<br></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Apr 25, 2020 at 12:54=
 PM Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com">pbarker@konsulk=
o.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Michael,<br>
<br>
I&#39;ve just been discussing on IRC with Bart=C5=82omiej who used the <a =
href=3D"http://groups.io" rel=3D"noreferrer" target=3D"_blank">groups.io</a=
> web<br>
interface to reply to an email on the list. It defaulted to sending a priv=
ate<br>
reply off the list. If I try to do the same &quot;Reply to Sender&quot; is=
 the default<br>
for me as well: <a href=3D"https://imgur.com/1RGH9Aw" rel=3D"noreferrer" t=
arget=3D"_blank">https://imgur.com/1RGH9Aw</a><br>
<br>
Looking at the AGL lists on <a href=3D"http://groups.io" rel=3D"noreferrer=
" target=3D"_blank">groups.io</a> they have &quot;Reply to Group&quot; as t=
he<br>
default. Perhaps this is a configuration issue? Could you take when you ge=
t<br>
chance?<br></blockquote><div><br></div><div>Right. It&#39;s a per list con=
figuration item. I have changed for yocto list for now, and set it to &#39;=
reply to group&#39;. we will take care of all lists (and on <a href=3D"http=
://lists.openembedded.org">lists.openembedded.org</a> as well). Thanks for =
spotting this.<br></div><div> <br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
<br>
</blockquote></div></div>

--000000000000391de405a437606c--
