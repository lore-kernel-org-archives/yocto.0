Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC1D7E01835
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 02:13:19 -0800 (PST)
Received: by mail-wg0-f44.google.com with SMTP id k14so183837wgh.11
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 02:13:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mNfiWaQ945oNNbDkalH2G1DwSDMSGf7qIvnlAck5gGs=;
	b=foOUKqMhMZLfDdg1M7/x4qIorKLEda6mJh7dBxyHCFrzSbxa30XK3Jf4r0WpyUo9XJ
	cGAfu+jQEVmQG4/bF5boYVFHYEX5aGcRRGWgV2PD/KqywOc+IeH9eWcphvJ3OW+weQUv
	B19iEXTKdEdFLuK9JYLlWjQ5UUgRaj4zZTPRh8bY0IbdX+BfjpgUsamyUlIzKiqY6Xfx
	Y/AYI+kb8CL+coazIfsaQbIqzb/eY0rahLas7vnbLToxcQj8Sz0/711JeogcefFMrVby
	UDTGOuH5r3xt5IceNek8L23A2LrLl92omeWynawryNxUYhc4cupGvKddxYmN4xGgoVzk
	1+ZA==
X-Gm-Message-State: ALoCoQne31g208qhkhFLeRM5rvkfPzm4HyLmebyCoL1qzC33vZ6a1718xEUTg4+hj0OUryxbo7em
X-Received: by 10.181.12.75 with SMTP id eo11mr16223158wid.37.1384337597784;
	Wed, 13 Nov 2013 02:13:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 02:12:57 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <FF5FFA9A-1B00-4D9C-A3A3-8866CC0A258C@gmail.com>
References: <1384233151-21897-1-git-send-email-raj.khem@gmail.com>
	<CAK18fxGCK4wk9gacSkyyFOdqi8zKGu_tEGGqyR8XdfSn=ykV6w@mail.gmail.com>
	<FF5FFA9A-1B00-4D9C-A3A3-8866CC0A258C@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 12:12:57 +0200
Message-ID: <CAK18fxEfdtGzFMwJiyaidzN-Qj59RgjoMgaoKM4UHJnxcSrNWg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] mesa: Match bbappend to OE-Core mesa version
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
X-List-Received-Date: Wed, 13 Nov 2013 10:13:20 -0000
Content-Type: multipart/alternative; boundary=f46d043c7c56c3ff7904eb0c362b

--f46d043c7c56c3ff7904eb0c362b
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 9:05 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Nov 12, 2013, at 12:35 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>
> >
> >
> >
> > On Tue, Nov 12, 2013 at 7:12 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > Remove PRINC now that we have a chance
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  recipes-graphics/mesa/{mesa_9.1.6.bbappend => mesa_9.2.2.bbappend} | 2
> --
> >  1 file changed, 2 deletions(-)
> >  rename recipes-graphics/mesa/{mesa_9.1.6.bbappend =>
> mesa_9.2.2.bbappend} (97%)
> >
> > diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> > similarity index 97%
> > rename from recipes-graphics/mesa/mesa_9.1.6.bbappend
> > rename to recipes-graphics/mesa/mesa_9.2.2.bbappend
> > index 88e5eab..7d158f2 100644
> > --- a/recipes-graphics/mesa/mesa_9.1.6.bbappend
> > +++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
> > @@ -1,5 +1,3 @@
> > -PRINC := "${@int(PRINC) + 1}"
> > -
> >  #
> >  # FIXME
> >  # We may a way to disable EGL and GL ES2, these are provided by
> userland package
> > --
> > 1.8.3.2
> >
> >
> > Thanks Raj. A similar patch was already merged
>
> OK
>
> > - expecting for the PRINC stuff which will be addressed in a separate
> commit for all recipes.
>
> no you can not do it in a big swoop like that. You have to wait for
> opportunities where the base package
> gets upgraded in base layer like this one and then reset it but this is
> gone now. Otherwise you are going to  mess up the PR
> servers of folks who are using meta-raspberrypi
>

Yes. It makes sense. Will keep an eye on this. Thanks.

ag

--f46d043c7c56c3ff7904eb0c362b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 9:05 AM, Khem Raj <span dir=3D"ltr">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><br>
On Nov 12, 2013, at 12:35 AM, Andrei Gherzan &lt;<a href=3D"mailto:andrei@g=
herzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Nov 12, 2013 at 7:12 AM, Khem Raj &lt;<a href=3D"mailto:raj.kh=
em@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt; Remove PRINC now that we have a chance<br>
&gt;<br>
&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt; =A0recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D&gt; mesa_9.2.2.bbapp=
end} | 2 --<br>
&gt; =A01 file changed, 2 deletions(-)<br>
&gt; =A0rename recipes-graphics/mesa/{mesa_9.1.6.bbappend =3D&gt; mesa_9.2.=
2.bbappend} (97%)<br>
&gt;<br>
&gt; diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graph=
ics/mesa/mesa_9.2.2.bbappend<br>
&gt; similarity index 97%<br>
&gt; rename from recipes-graphics/mesa/mesa_9.1.6.bbappend<br>
&gt; rename to recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
&gt; index 88e5eab..7d158f2 100644<br>
&gt; --- a/recipes-graphics/mesa/mesa_9.1.6.bbappend<br>
&gt; +++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
&gt; @@ -1,5 +1,3 @@<br>
&gt; -PRINC :=3D &quot;${@int(PRINC) + 1}&quot;<br>
&gt; -<br>
&gt; =A0#<br>
&gt; =A0# FIXME<br>
&gt; =A0# We may a way to disable EGL and GL ES2, these are provided by use=
rland package<br>
&gt; --<br>
&gt; 1.8.3.2<br>
&gt;<br>
&gt;<br>
&gt; Thanks Raj. A similar patch was already merged<br>
<br>
OK<br>
<br>
&gt; - expecting for the PRINC stuff which will be addressed in a separate =
commit for all recipes.<br>
<br>
no you can not do it in a big swoop like that. You have to wait for opportu=
nities where the base package<br>
gets upgraded in base layer like this one and then reset it but this is gon=
e now. Otherwise you are going to =A0mess up the PR<br>
servers of folks who are using meta-raspberrypi<br></blockquote><div><br></=
div><div>Yes. It makes sense. Will keep an eye on this. Thanks.</div><div><=
br></div><div>ag=A0</div></div>
</div></div>

--f46d043c7c56c3ff7904eb0c362b--
