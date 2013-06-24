Return-Path: <peachj@lexmark.com>
Received: from exprod8og120.obsmtp.com (exprod8og120.obsmtp.com [64.18.3.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0682FE01528
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:59:57 -0700 (PDT)
Received: from mail-ob0-f178.google.com ([209.85.214.178]) (using TLSv1) by
	exprod8ob120.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUchCzBecrux2jMedHHFCXx24YnrruCsl@postini.com;
	Mon, 24 Jun 2013 06:00:01 PDT
Received: by mail-ob0-f178.google.com with SMTP id fb19so10731332obc.37
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:59:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=8hSUvN/mw+Z2LULcWyrVOmVB7CB4HZuB4bRgzo7wH6M=;
	b=cUNE/rut4NvkR44KeMcdPpQe9HTOpzhT/fx5Fxh02r5n1zS/QB/XmqmVqR89dUNI85
	FzeBnyMvpdyDwTB5Wi8VOoMdVt5uJy0tX7aDMmFTZ0mGto57Mljq+yx094xJ+yROHgqs
	Hlcg+nudeIjMFZKbQ/V5Bl7Ujy8rQo3fnU/whoZpZccaHM/JLudWHJLbVyxJQoPZOgIL
	7CqIaW2SSxNEfXs8i2qvyKpKr+bOT3lZoqcXW4gxnbe3DnjrlaVu1DxXsj197DqGN82I
	ZKDezCFG0Hc56XMKI1PKPpzJWhcUnmKn2UpJAKSpVOOXbUsomcaNwy5fMWEixnHMukmG
	x3pA==
X-Received: by 10.60.23.69 with SMTP id k5mr1544101oef.73.1372078796412;
	Mon, 24 Jun 2013 05:59:56 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.60.23.69 with SMTP id k5mr1544097oef.73.1372078796298; Mon,
	24 Jun 2013 05:59:56 -0700 (PDT)
Received: by 10.76.163.70 with HTTP; Mon, 24 Jun 2013 05:59:56 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
Date: Mon, 24 Jun 2013 08:59:56 -0400
Message-ID: <CA+QkY1A5haUkuhPGteJuyEE11JZ1Gdsr2_wA6x_ajzYbWzko1g@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQl0gnMi4p3rfnhQNzo+3US1Tzl9yPKIgoj4rtjMieco4RVJxXa2abYLy7sUzuX6HKbNwj9W/A7QMzuyu4CdJj7fSLhYuPHhIMSI60oW5fthderghpiZ1Ru9ViO883eRPtNPHLgfzeUXlYE9s3cJYSNntDX+fI3jTr2zAMaBuJrAO5Bmtfs=
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 13:00:01 -0000
Content-Type: multipart/alternative; boundary=047d7b33caaa41f32604dfe5fdec

--047d7b33caaa41f32604dfe5fdec
Content-Type: text/plain; charset=ISO-8859-1

Scott,

I think the general diagram looks pretty good, although I'd argue there's a
little too much detail in the file list being shown, or else some of this
new stuff is going to be useful in 1.5 when it's not doing anything in 1.4.
 Here are the files I see as excessive:

In meta-yocto:

   - local.conf.example.extended
   - site.conf.sample
   - auto.conf (That's not even present in my 1.4 workspace.  Is this going
   to be something new in 1.5?)

In the build directory (these files aren't even present for me in 1.4):

   - site.conf
   - auto.conf

Also, I don't see anything specifying machines.  Do you want to break that
out here, or are you thinking that's going to come into play somewhere
else?  If you're thinking of breaking out machines elsewhere, I'd argue
that distros are on a similar level of detail and then also don't belong on
this chart.

Kind regards,

Jerrod


On Sun, Jun 23, 2013 at 11:52 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> Hi,
>
> I am going to start throwing these diagrams out to the mailing list and
> see if I can get any feedback.  This attached figure dives into user
> configuration.  Any and all discussion, correction, suggestions are welcome.
>
> Scott
>
> >-----Original Message-----
> >From: Rifenbark, Scott M
> >Sent: Friday, June 21, 2013 1:22 AM
> >To: Paul Eggleton; Burton, Ross
> >Subject: user configuration
> >
> >Paul and Ross,
> >
> >Attached is a sample figure that focuses on "User Configuration."  The
> >illustration attempts to reveal where user configuration data comes from
> >and what processes and user-driven commands are related to it.  Right
> >now, BitBake is simply a box.
> >
> >If you can, give me some comments on this.  I would like to hear on
> >level of detail as well as technical accuracy.
> >
> >Thanks,
> >Scott
> >
> >Scott Rifenbark
> >Intel Corporation
> >Yocto Project Documentation
> >503.712.2702
> >503.341.0418 (cell)
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b33caaa41f32604dfe5fdec
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Scott,<div><br></div><div>I think the general diagram look=
s pretty good, although I&#39;d argue there&#39;s a little too much detail =
in the file list being shown, or else some of this new stuff is going to be=
 useful in 1.5 when it&#39;s not doing anything in 1.4. =A0Here are the fil=
es I see as excessive:</div>
<div><br></div><div style>In meta-yocto:</div><div style><ul style><li styl=
e>local.conf.example.extended<br></li><li style>site.conf.sample<br></li><l=
i style>auto.conf (That&#39;s not even present in my 1.4 workspace. =A0Is t=
his going to be something new in 1.5?)</li>
</ul><div style>In the build directory (these files aren&#39;t even present=
 for me in 1.4):</div><div style><ul style><li style>site.conf</li><li styl=
e>auto.conf</li></ul><div style>Also, I don&#39;t see anything specifying m=
achines. =A0Do you want to break that out here, or are you thinking that&#3=
9;s going to come into play somewhere else? =A0If you&#39;re thinking of br=
eaking out machines elsewhere, I&#39;d argue that distros are on a similar =
level of detail and then also don&#39;t belong on this chart.</div>
<div style><br></div><div style>Kind regards,</div><div style><br></div><di=
v style>Jerrod</div></div></div></div><div class=3D"gmail_extra"><br><br><d=
iv class=3D"gmail_quote">On Sun, Jun 23, 2013 at 11:52 PM, Rifenbark, Scott=
 M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" tar=
get=3D"_blank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I am going to start throwing these diagrams out to the mailing list and see=
 if I can get any feedback. =A0This attached figure dives into user configu=
ration. =A0Any and all discussion, correction, suggestions are welcome.<br>

<br>
Scott<br>
<br>
&gt;-----Original Message-----<br>
&gt;From: Rifenbark, Scott M<br>
&gt;Sent: Friday, June 21, 2013 1:22 AM<br>
&gt;To: Paul Eggleton; Burton, Ross<br>
&gt;Subject: user configuration<br>
&gt;<br>
&gt;Paul and Ross,<br>
&gt;<br>
&gt;Attached is a sample figure that focuses on &quot;User Configuration.&q=
uot; =A0The<br>
&gt;illustration attempts to reveal where user configuration data comes fro=
m<br>
&gt;and what processes and user-driven commands are related to it. =A0Right=
<br>
&gt;now, BitBake is simply a box.<br>
&gt;<br>
&gt;If you can, give me some comments on this. =A0I would like to hear on<b=
r>
&gt;level of detail as well as technical accuracy.<br>
&gt;<br>
&gt;Thanks,<br>
&gt;Scott<br>
&gt;<br>
&gt;Scott Rifenbark<br>
&gt;Intel Corporation<br>
&gt;Yocto Project Documentation<br>
&gt;<a href=3D"tel:503.712.2702" value=3D"+15037122702">503.712.2702</a><br=
>
&gt;<a href=3D"tel:503.341.0418" value=3D"+15033410418">503.341.0418</a> (c=
ell)<br>
<br>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div>

--047d7b33caaa41f32604dfe5fdec--
