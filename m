Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40D4DE009BA; Thu,  1 May 2014 21:43:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B8A0E0096C
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 21:43:40 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h18so1398690igc.14
	for <yocto@yoctoproject.org>; Thu, 01 May 2014 21:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gDPP7jZfa82ptPNI1hIXzKf4Qibf2UmvXG1Y5zbYY9k=;
	b=CKYFAYvwbT05b3xC3SFtUkIoWhmjUQc6Xo0UXbG3vZcFvOH3aEmJzxULOgjnu8hW42
	sxNjwyZdnwVCYgL8a0DdwaqIKOHZ/o5A67pPtzjcHlF+djv2P8UYj0exXDqNWREUPghX
	6eALEoan1Hhi2Wrma5ecGwfYGXZnoVq/Y/7pzVGrmPLjlaWc4F/Gs+xB2cply/YAqiIP
	/Q02tWn6aaD1b1PzV85BOcZqHBV6whXw09gqSfYuPBzMOCeXJBzjBDPKtQCwb68q0QGT
	0mhbsq6MITsPyVVhxZ0GWK17iq5rqRzHnvsocFcrzz7d6aanAF8fbfG6fpg54dtrwFAY
	o3pA==
MIME-Version: 1.0
X-Received: by 10.50.78.201 with SMTP id d9mr1366328igx.17.1399005819625; Thu,
	01 May 2014 21:43:39 -0700 (PDT)
Received: by 10.50.74.228 with HTTP; Thu, 1 May 2014 21:43:39 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1405012032460.2904@localhost>
References: <alpine.LFD.2.11.1405011731520.3588@localhost>
	<CA+gsK-otGEfVxRyOtH+SXf+wCjZGcPhDWJZZ_esfKO_tQL43dA@mail.gmail.com>
	<alpine.LFD.2.11.1405012032460.2904@localhost>
Date: Thu, 1 May 2014 21:43:39 -0700
Message-ID: <CAMKF1spG-vMRCh+0MHKsRq6D4qoj6qQ9VhfAevsASJ2YvN=9CA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: is anyone giving a yocto talk at linuxcon in chicago in august?
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
X-List-Received-Date: Fri, 02 May 2014 04:43:42 -0000
Content-Type: multipart/alternative; boundary=089e0122f09ceae7b204f8636ce6

--089e0122f09ceae7b204f8636ce6
Content-Type: text/plain; charset=UTF-8

On Thursday, May 1, 2014, Robert P. J. Day <rpjday@crashcourse.ca> wrote:

> On Thu, 1 May 2014, Rudolf Streif wrote:
>
> >
> >         i would think *someone* would be doing a yocto talk at linuxcon
> in
> >       august. if not, i'll propose one since i need an excuse to go. if
> one
> >       is already on the schedule, i'll propose something else.
> >
> > The typical target for YP (and the YP Dev Day) were the Embedded
> > Linux Conferences not that much the more general LinuxCon. However,
> > during a conversation at LinuxCon NA last year in NOLA I learned
> > from a company that they are using YP to build custom stacks for
> > their cloud servers. From that perspective having a YP talk at LCNA
> > would actually be a good idea. A talk how one could use YP to build
> > your own desktop or server distro may be interesting and extend the
> > reach of the YP.
>
>   i think that's what i'm going to submit. tomorrow's the submission
> deadline so i have to get something in quick. i figure i'll submit
> something like "Building an Embedded Linux System Using YoctoProject",
> using the BeagleBone Black as the platform example.
>
>
I have done a POC generating very small specific appliances using OE and
lxc, in previous life which you then launch in thousands on demands on a
big server to do specific jobs like subscriber connections etc. I think
such a topic would definitely interest linuxcon attendees, I don't plan to
attend this one but if someone wants to take this and develop into a talk I
can help.


> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> =============================================================

--089e0122f09ceae7b204f8636ce6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Thursday, May 1, 2014, Robert P. J. Day &lt;<a href=3D"mailto:rp=
jday@crashcourse.ca">rpjday@crashcourse.ca</a>&gt; wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
On Thu, 1 May 2014, Rudolf Streif wrote:<br>
<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 i would think *someone* would be doing a y=
octo talk at linuxcon in<br>
&gt; =C2=A0 =C2=A0 =C2=A0 august. if not, i&#39;ll propose one since i need=
 an excuse to go. if one<br>
&gt; =C2=A0 =C2=A0 =C2=A0 is already on the schedule, i&#39;ll propose some=
thing else.<br>
&gt;<br>
&gt; The typical target for YP (and the YP Dev Day) were the Embedded<br>
&gt; Linux Conferences not that much the more general LinuxCon. However,<br=
>
&gt; during a conversation at LinuxCon NA last year in NOLA I learned<br>
&gt; from a company that they are using YP to build custom stacks for<br>
&gt; their cloud servers. From that perspective having a YP talk at LCNA<br=
>
&gt; would actually be a good idea. A talk how one could use YP to build<br=
>
&gt; your own desktop or server distro may be interesting and extend the<br=
>
&gt; reach of the YP.<br>
<br>
=C2=A0 i think that&#39;s what i&#39;m going to submit. tomorrow&#39;s the =
submission<br>
deadline so i have to get something in quick. i figure i&#39;ll submit<br>
something like &quot;Building an Embedded Linux System Using YoctoProject&q=
uot;,<br>
using the BeagleBone Black as the platform example.<br>
<br></blockquote><div><br></div><div>I have done a POC generating very=C2=
=A0small specific=C2=A0appliances using OE and lxc, in previous life which =
you then launch in thousands on demands on a big server to do specific jobs=
 like subscriber connections etc. I think such a topic would definitely int=
erest=C2=A0linuxcon attendees, I don&#39;t plan to attend this one but if s=
omeone wants=C2=A0to take this and develop into a talk I can help.</div>
<div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ottawa, Ontario, CA=
NADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" target=3D"_blank">http://crash=
course.ca</a><br>
<br>
Twitter: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=
=3D"http://twitter.com/rpjday" target=3D"_blank">http://twitter.com/rpjday<=
/a><br>
LinkedIn: =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://ca.linkedin.com=
/in/rpjday" target=3D"_blank">http://ca.linkedin.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</blockquote>

--089e0122f09ceae7b204f8636ce6--
