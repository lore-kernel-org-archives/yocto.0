Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30637E007DC
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 17:01:13 -0800 (PST)
Received: by mail-pd0-f173.google.com with SMTP id p10so10493732pdj.18
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 17:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=m3lE4xsHk0hvHQehhOndwLP4EqL4r5uBx34vb2JuBK4=;
	b=PHoBEdqz0vMwnaY5y88CaoGS1dkVl3UScVjXh8Y+Hu7e/MFhmZAIhWyeFip77+t4Jm
	LkRaaRgj6SqxIEhWBgVBdI51vmjyz+SEwYw2eHCZcPhmMhQZRctz+cXaW9Fcl2M63lt7
	jAWQyiF6NA8cqt6w8YNTZYAX/Ee9bKiIWlYIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=m3lE4xsHk0hvHQehhOndwLP4EqL4r5uBx34vb2JuBK4=;
	b=eTtRs2i9EYG1+FVpxD4oPSYFIQs4JyBLSAvJQaqJQWdp/k72JR2TSuLTnYTHWPM/UK
	XODZzZM+gN1WdpTV+DyvJxEOge/HvgZZ1htD8C9yZNsVrr6fOrMwK2TnJkp31VwoIcBw
	jZQQNwkOppMI0R9q2HvQOlrTdluMI4NdEvCvwcJ5m/Ma6NaV9gXEqkU3rWjGkjEZbPwl
	8Ayc8pR9oqlXT0b0gUR0GehvH6uHbH3vyIFlfsS7hqSF8ABZtfmZZz0HC9dWq9oDsRCW
	1GMjtC5UWhgtErv0twk//f5H/CO9+CsWu9As5VUu4Tj0/gyMfKWMenPlsCoExmDeWPbQ
	dt7w==
X-Gm-Message-State: ALoCoQkcWOBVYZXgyeK6G1z2fLOLw35sO63N+M/tI6QOaDdCOZgGxv6BNXBMCLK0pzKpOY0k4imQ
MIME-Version: 1.0
X-Received: by 10.68.88.37 with SMTP id bd5mr6571172pbb.53.1386810067378; Wed,
	11 Dec 2013 17:01:07 -0800 (PST)
Received: by 10.69.25.101 with HTTP; Wed, 11 Dec 2013 17:01:07 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4503C@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311061346180.25975@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F44CAE@ORSMSX101.amr.corp.intel.com>
	<527AA8B5.8060603@linux.intel.com>
	<alpine.DEB.2.02.1311061540140.23267@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F4503C@ORSMSX101.amr.corp.intel.com>
Date: Wed, 11 Dec 2013 17:01:07 -0800
Message-ID: <CA+gsK-rSG6mnkBq-s9LnXdCCfAfLO1TRWqOMLKZCjHOy_NJ+bA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: FW: curious about ref manual, sec 6.1.11, oe-init-build-env-memres
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
X-List-Received-Date: Thu, 12 Dec 2013 01:01:14 -0000
Content-Type: multipart/alternative; boundary=047d7b67692e775e3104ed4be1d6

--047d7b67692e775e3104ed4be1d6
Content-Type: text/plain; charset=ISO-8859-1

I am picking up this thread since I have been mocking around with the
bitbake server.

The use of the oe-init-build-env-memresscript is

source oe-init-build-env-memres <portnumber> <buildenv>

The documentation suggests that you can omit the portnumber in which case
the script would use 12345. According to my tests with master [1] that is
apparently not the case. If you omit the portnumber such as

source oe-init-build-env-memres mybuildenv

 the script will create a build environment with the name build and then
tries to convert mybuildenv into a portnumber wich will most likely fail
unless you used an integer number for the name of your build environment.

This behavior is expected since how would the script for a simple variable
list that does not use any option names be able to reliably detect if the
first parameter is a portnumber or a build environment name?

There are two possible fixes for that:

   1. Reverse the order of the two arguments in which case you can omit
   either the portnumber or both arguments. It would also make the command
   line of the script more consistent with oe-init-build-env.
   2. Check if the first argument is an integer (since portnumbers are
   always integers).

I would prefer 1. but then Scott would have to change the documentation. I
can submit a patch if that is any interest.

BTW, is the protocol that the bitbake server expects on that port
documented somewhere (other than the source code that is)?

Cheers,
Rudi




[1] master:c9b2e30988a9eb514d42a4cf4266b032ffc36f98


On Thu, Nov 7, 2013 at 8:37 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> I updated the section.  See if that is better.
>
> Thanks
> Scott
>
> >-----Original Message-----
> >From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >Sent: Wednesday, November 06, 2013 12:41 PM
> >To: Saul Wold
> >Cc: Rifenbark, Scott M; Yocto discussion list
> >Subject: Re: [yocto] FW: curious about ref manual, sec 6.1.11,
> oe-init-build-
> >env-memres
> >
> >On Wed, 6 Nov 2013, Saul Wold wrote:
> >
> >> On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:
> >> > Anyone know this?
> >> >
> >> > > -----Original Message-----
> >> > > From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
> >> > > Sent: Wednesday, November 06, 2013 10:48 AM
> >> > > To: Rifenbark, Scott M
> >> > > Subject: curious about ref manual, sec 6.1.11,
> >> > > oe-init-build-env-memres
> >> > >
> >> > >
> >> > >   i've never used that memory-resident version of bitbake -- it's
> >> > > not clear from that section whether you need to start bitbake
> >> > > running before you run that script.
> >> > >
> >> Running that scripts will start the server at the default port of
> >> 12345 and setup the default "build" directory.
> >
> >  i suspected as much, but the way that section is worded, that isn't
> clear.
> >thanks.
> >
> >rday
> >
> >--
> >
> >===========================================================
> >=============
> >Robert P. J. Day                                 Ottawa, Ontario, CANADA
> >                        http://crashcourse.ca
> >
> >Twitter:                                       http://twitter.com/rpjday
> >LinkedIn:                               http://ca.linkedin.com/in/rpjday
> >===========================================================
> >=============
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b67692e775e3104ed4be1d6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am picking up this thread since I have been mocking arou=
nd with the bitbake server.<div><br></div><div>The use of the oe-init-build=
-env-memresscript is</div><div><br></div><div>source oe-init-build-env-memr=
es &lt;portnumber&gt; &lt;buildenv&gt;</div>
<div><br></div><div>The documentation suggests that you can omit the portnu=
mber in which case the script would use 12345. According to my tests with m=
aster [1] that is apparently not the case. If you omit the portnumber such =
as</div>
<div><br></div><div>source oe-init-build-env-memres mybuildenv<br></div><di=
v><br></div><div>=A0the script will create a build environment with the nam=
e build and then tries to convert mybuildenv into a portnumber wich will mo=
st likely fail unless you used an integer number for the name of your build=
 environment.</div>
<div><br></div><div>This behavior is expected since how would the script fo=
r a simple variable list that does not use any option names be able to reli=
ably detect if the first parameter is a portnumber or a build environment n=
ame?</div>
<div><br></div><div>There are two possible fixes for that:</div><div><ol><l=
i>Reverse the order of the two arguments in which case you can omit either =
the portnumber or both arguments. It would also make the command line of th=
e script more consistent with oe-init-build-env.</li>
<li>Check if the first argument is an integer (since portnumbers are always=
 integers).</li></ol></div><div>I would prefer 1. but then Scott would have=
 to change the documentation. I can submit a patch if that is any interest.=
</div>
<div><br></div><div>BTW, is the protocol that the bitbake server expects on=
 that port documented somewhere (other than the source code that is)?</div>=
<div><br></div><div>Cheers,</div><div>Rudi</div><div><br></div><div><br>
</div><div><br></div><div><br></div><div>[1]=A0master:c9b2e30988a9eb514d42a=
4cf4266b032ffc36f98</div><div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Thu, Nov 7, 2013 at 8:37 AM, Rifenbark, Scott M <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_bl=
ank">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">I updated the section. =A0See if that is better.<br>
<br>
Thanks<br>
<span class=3D""><font color=3D"#888888">Scott<br>
</font></span><div class=3D"im"><br>
&gt;-----Original Message-----<br>
&gt;From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@crashcourse.ca"=
>rpjday@crashcourse.ca</a>]<br>
</div><div class=3D"im">&gt;Sent: Wednesday, November 06, 2013 12:41 PM<br>
&gt;To: Saul Wold<br>
&gt;Cc: Rifenbark, Scott M; Yocto discussion list<br>
</div><div class=3D""><div class=3D"h5">&gt;Subject: Re: [yocto] FW: curiou=
s about ref manual, sec 6.1.11, oe-init-build-<br>
&gt;env-memres<br>
&gt;<br>
&gt;On Wed, 6 Nov 2013, Saul Wold wrote:<br>
&gt;<br>
&gt;&gt; On 11/06/2013 11:11 AM, Rifenbark, Scott M wrote:<br>
&gt;&gt; &gt; Anyone know this?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; &gt; -----Original Message-----<br>
&gt;&gt; &gt; &gt; From: Robert P. J. Day [mailto:<a href=3D"mailto:rpjday@=
crashcourse.ca">rpjday@crashcourse.ca</a>]<br>
&gt;&gt; &gt; &gt; Sent: Wednesday, November 06, 2013 10:48 AM<br>
&gt;&gt; &gt; &gt; To: Rifenbark, Scott M<br>
&gt;&gt; &gt; &gt; Subject: curious about ref manual, sec 6.1.11,<br>
&gt;&gt; &gt; &gt; oe-init-build-env-memres<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; &gt; &gt; =A0 i&#39;ve never used that memory-resident version of =
bitbake -- it&#39;s<br>
&gt;&gt; &gt; &gt; not clear from that section whether you need to start bi=
tbake<br>
&gt;&gt; &gt; &gt; running before you run that script.<br>
&gt;&gt; &gt; &gt;<br>
&gt;&gt; Running that scripts will start the server at the default port of<=
br>
&gt;&gt; 12345 and setup the default &quot;build&quot; directory.<br>
&gt;<br>
&gt; =A0i suspected as much, but the way that section is worded, that isn&#=
39;t clear.<br>
&gt;thanks.<br>
&gt;<br>
&gt;rday<br>
&gt;<br>
&gt;--<br>
&gt;<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 Ottawa, Ontario, CANADA<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crash=
course.ca" target=3D"_blank">http://crashcourse.ca</a><br>
&gt;<br>
&gt;Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">htt=
p://twitter.com/rpjday</a><br>
&gt;LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <=
a href=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.lin=
kedin.com/in/rpjday</a><br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
&gt;=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>
</div></div></div>

--047d7b67692e775e3104ed4be1d6--
