Return-Path: <sleepylight@jive-turkey.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D432BE00A70; Thu, 23 Jul 2015 07:58:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA1A3E00A76
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 07:58:33 -0700 (PDT)
Received: by laah7 with SMTP id h7so27899657laa.0
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 07:58:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=+SO34oEA7+QmG6M2lFJSbSA2g7KA3UtmBWQrLHwUxVM=;
	b=QMVrnCJZPzYkyiyYjwALR0aAnJH40GQI6jNyukeDbbpBdehRSbJWl7ycOlR3hKWMPm
	HLqIsku5VlI0ZdNPkjdnJYVPpdqcUod4X4HTf3fk7GOfw6pjMOaKT19EyXjNXi7ByI7w
	i/+zDRsldCzV0TGqz+jO0uCpTMes88ygk7vC2n6HhKdF13AztpvrKdhK4q5Wcc5yUze8
	5zLeYIzQEQLfIkfpcgmamfyx3PUD2O1bqF75+d2D2AkGDoN3uj8XTF8K3oKdbP7xLlNL
	lEvEm/oCbIv0z1AdV7f+/cC1nN5HCLinCb58KnwQpaUzeEeAsSdygOdfypUaZED8+7Wg
	Pg1g==
X-Gm-Message-State: ALoCoQnvBbQ33F9x26GNE8qnDGyOwhw1nS5DA7yFG8VToWOJP/wW01Lf5gw7NRMm9G00hlOgOPtn
MIME-Version: 1.0
X-Received: by 10.152.26.163 with SMTP id m3mr8514123lag.86.1437663510817;
	Thu, 23 Jul 2015 07:58:30 -0700 (PDT)
Received: by 10.25.156.65 with HTTP; Thu, 23 Jul 2015 07:58:30 -0700 (PDT)
In-Reply-To: <CADi-vsyPaW_XJ+0_im=jtEdnqRT2=bHv7xO96rU05-TmMbTKgw@mail.gmail.com>
References: <CADi-vsyPaW_XJ+0_im=jtEdnqRT2=bHv7xO96rU05-TmMbTKgw@mail.gmail.com>
Date: Thu, 23 Jul 2015 10:58:30 -0400
Message-ID: <CADi-vswcCm+cUzfys6N_3TzpNsiT1k91J9Ec2mrJqtF+mwMrWQ@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Missing _bsddb.so from python build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 23 Jul 2015 14:58:51 -0000
Content-Type: multipart/alternative; boundary=089e0158c73ede85e0051b8c1e04

--089e0158c73ede85e0051b8c1e04
Content-Type: text/plain; charset=UTF-8

I figured this out in the end.

By default it looks like Fido, and at least the releases from Dizzy on
build Berkeley db version 6.  Python 2.7 needs db version 5 in order to
build all of the components for python-bsddb.  If you build using db
version 6, there aren't any warning messages that get propagated to the
user, and you end up with a non-working version of the python database
binding.  That's frustrating, but I expect has been fixed in Python 3.x.  I
haven't tried.

Anyway, the fix in my case was just to change the preferred version of db,
and rebuild my image.
Adding PREFERRED_VERSION_db = "5.3.28" to my local.conf file did the trick.

On Wed, Jul 22, 2015 at 10:15 AM, Maxwell Bottiger <
sleepylight@jive-turkey.net> wrote:

> Hi,
>
> I'm trying to build python in yocto, and I'm hung up on a missing
> library.  I've built python-bsddb, and I see all of the .py and .pyc
> libraries, but I don't have _bsddb.so in lib-dynload.  I see the
> python-2.7-mainfest.inc either installs it or expects to install it, but I
> can't get anything to build it.
>
> Does anyone know how to generate _bsddb.so?
>
> -Max
>

--089e0158c73ede85e0051b8c1e04
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I figured this out in the end.<br><br></div=
>By default it looks like Fido, and at least the releases from Dizzy on bui=
ld Berkeley db version 6.=C2=A0 Python 2.7 needs db version 5 in order to b=
uild all of the components for python-bsddb.=C2=A0 If you build using db ve=
rsion 6, there aren&#39;t any warning messages that get propagated to the u=
ser, and you end up with a non-working version of the python database bindi=
ng.=C2=A0 That&#39;s frustrating, but I expect has been fixed in Python 3.x=
.=C2=A0 I haven&#39;t tried.<br><br></div>Anyway, the fix in my case was ju=
st to change the preferred version of db, and rebuild my image.<br></div>Ad=
ding PREFERRED_VERSION_db =3D &quot;5.3.28&quot; to my local.conf file did =
the trick.<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Wed, Jul 22, 2015 at 10:15 AM, Maxwell Bottiger <span dir=3D"ltr">&lt=
;<a href=3D"mailto:sleepylight@jive-turkey.net" target=3D"_blank">sleepylig=
ht@jive-turkey.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m trying to build py=
thon in yocto, and I&#39;m hung up on a missing library.=C2=A0 I&#39;ve bui=
lt python-bsddb, and I see all of the .py and .pyc libraries, but I don&#39=
;t have _bsddb.so in lib-dynload.=C2=A0 I see the python-2.7-mainfest.inc e=
ither installs it or expects to install it, but I can&#39;t get anything to=
 build it.<br><br></div>Does anyone know how to generate _bsddb.so?<br><br>=
</div>-Max<br></div>
</blockquote></div><br></div>

--089e0158c73ede85e0051b8c1e04--
