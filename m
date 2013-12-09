Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 311AFE005B1
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 11:51:39 -0800 (PST)
Received: by mail-oa0-f50.google.com with SMTP id n16so4407116oag.37
	for <yocto@yoctoproject.org>; Mon, 09 Dec 2013 11:51:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8R/XV9cFWXj8vaPYZhX//UxJR6DXXZjRMzeqfIWpGhc=;
	b=V2kmxC+ZPlcpxHRwxQwxmEI2IH7QEGoL0ZH0S1hViCVOTLbhktN/PC8VkL38eXc0ys
	oC8VhuB1oyAn0q368iwRJKoEO/Nnb7U5NuY5YM3+KyBbsAmfyqN/rJUrISxJyo8Je36f
	MAy+HPlW6j3o02nxKQ7fEpUKIGKbo90jqBszCE9+h9DEpjUSrbFRpaMMcAUaYq6bU0VZ
	vtlrPCP279QVv41VqZOhdu31/IuTS4DYIZrpa9HrBOqImBqoMQPrDdowYMwLohVosrSB
	jMFVqz/TxammNlDKm2oQhXpHgL6eB+t7JlimopapKRvxmSvTylht6l0Vjg3tSxInJ4qn
	t1YA==
MIME-Version: 1.0
X-Received: by 10.60.59.99 with SMTP id y3mr201351oeq.70.1386618698470; Mon,
	09 Dec 2013 11:51:38 -0800 (PST)
Received: by 10.76.23.136 with HTTP; Mon, 9 Dec 2013 11:51:38 -0800 (PST)
In-Reply-To: <1386360528.3028.62.camel@empanada>
References: <CAE8H0+XtcT9ZriW31mN28xjDzASAp7AASxOOg=fE9LvepTatRA@mail.gmail.com>
	<1386360528.3028.62.camel@empanada>
Date: Mon, 9 Dec 2013 14:51:38 -0500
Message-ID: <CAE8H0+U_XmpsS=iVrGbWp6um6nMUXxDb+fighV7KruBuFRGWFw@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-tiny breaks at ncurses and perl (Dylan 9.0.1)
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
X-List-Received-Date: Mon, 09 Dec 2013 19:51:40 -0000
Content-Type: multipart/alternative; boundary=089e013d06d4f619f404ed1f5284

--089e013d06d4f619f404ed1f5284
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Dec 6, 2013 at 3:08 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:

> On Fri, 2013-12-06 at 14:08 -0500, r10kindsofpeople wrote:
> > After some success building my system (crownbay), I'm now trying to
> > optimize boot time, so I read up on poky-tiny, created a new layer and
> > am trying to build.  I think I've pulled most of my system changes out
> > so that I can at least bitbake core-image-minimal, but I'm still not
> > able to get past ncurses config and perl.  (ncurses reports autoconf
> > errors in widec, perl has undefined references to gcvt, I'm also
> > getting complaints about multiple providers for the kernel, etc.)
> >
> >
> > Is poky-tiny still active and tested?  What are the odds of this being
> > resolved in Dora versus the odds of running into other migration
> > issues?
> >
>
> I haven't tried poky-tiny with dylan, but I have with dora and didn't
> run into any build problems - the build errors you're running into
> aren't things I've seen either.
>
> So maybe you can try with dora and see what happens - if you still run
> into problems, please provide some more details on your setup.
>
>
Thanks, Tom...using Dora, I was able to get the basic system to build.

Adding some features (dhcp-server, for instance) still breaks the build,
but I suspect that's just a consequence of -tiny doing it's thing.

John

--089e013d06d4f619f404ed1f5284
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>On Fri, Dec 6, 2013 at 3:08 PM, Tom Zanussi <span dir=
=3D"ltr">&lt;<a href=3D"mailto:tom.zanussi@intel.com" target=3D"_blank">tom=
.zanussi@intel.com</a>&gt;</span> wrote:<br></div><div class=3D"gmail_extra=
"><div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">On Fri, 2013-12-06 at 14:08 -0500, r10kindsofpeople wrote:=
<br>

&gt; After some success building my system (crownbay), I&#39;m now trying t=
o<br>
&gt; optimize boot time, so I read up on poky-tiny, created a new layer and=
<br>
&gt; am trying to build. =A0I think I&#39;ve pulled most of my system chang=
es out<br>
&gt; so that I can at least bitbake core-image-minimal, but I&#39;m still n=
ot<br>
&gt; able to get past ncurses config and perl. =A0(ncurses reports autoconf=
<br>
&gt; errors in widec, perl has undefined references to gcvt, I&#39;m also<b=
r>
&gt; getting complaints about multiple providers for the kernel, etc.)<br>
&gt;<br>
&gt;<br>
&gt; Is poky-tiny still active and tested? =A0What are the odds of this bei=
ng<br>
&gt; resolved in Dora versus the odds of running into other migration<br>
&gt; issues?<br>
&gt;<br>
<br>
I haven&#39;t tried poky-tiny with dylan, but I have with dora and didn&#39=
;t<br>
run into any build problems - the build errors you&#39;re running into<br>
aren&#39;t things I&#39;ve seen either.<br>
<br>
So maybe you can try with dora and see what happens - if you still run<br>
into problems, please provide some more details on your setup.<br>
<br>
</blockquote><div><br></div><div>Thanks, Tom...using Dora, I was able to ge=
t the basic system to build.=A0</div><div><br></div><div>Adding some featur=
es (dhcp-server, for instance) still breaks the build, but I suspect that&#=
39;s just a consequence of -tiny doing it&#39;s thing.</div>
<div><br></div><div>John</div></div><br></div></div>

--089e013d06d4f619f404ed1f5284--
