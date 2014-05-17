Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADD51E00B65; Sat, 17 May 2014 13:27:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 440 seconds by postgrey-1.32 at yocto-www;
	Sat, 17 May 2014 13:27:06 PDT
Received: from mail-la0-f43.google.com (unknown [209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 474B6E00B20
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 13:27:06 -0700 (PDT)
Received: by mail-la0-f43.google.com with SMTP id mc6so2979679lab.30
	for <yocto@yoctoproject.org>; Sat, 17 May 2014 13:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=8MP3fGuxbEV2jeezb1Nz1iyiO+eu718DNwumPVxccsc=;
	b=BlJj5gd/iOuOUQexRLom+FD0Q4mO491LIwPuKAKCzUv5B362av6BI5sOYYe2r7jGu6
	WJmtcfGl9imkoYB436DrtK5VeJKVmx4pSGrbsSqkLsSIqgpp5ViVwBDZ0aoYCgrsq1qP
	34tXVMQHS8gQDfOeyu9mE3FZthd6LjCeOBwcLer9dbDxbIgHB80rJFp9jekvZuwgYYDS
	m+qxrPzECoSBwvHzW+MK0gpQls+j+Gfh/bMrZ602TqYTrd0UIsbZ6xEEMRJLXPKR1wVm
	sDFx/Y/BO5e/fMA9V9+XTXjJQz09LJND0YeN4YdGeArOsc+sIuBTwIVQc7b0T3t9HjiQ
	RGtg==
MIME-Version: 1.0
X-Received: by 10.152.121.39 with SMTP id lh7mr18035644lab.7.1400357984650;
	Sat, 17 May 2014 13:19:44 -0700 (PDT)
Sender: kergoth@gmail.com
Received: by 10.112.148.170 with HTTP; Sat, 17 May 2014 13:19:44 -0700 (PDT)
In-Reply-To: <CAAPegz1nmK+A0ECf7oKNPkTS+MkU5pPm7Dy-+nELM=uzO+q5Pw@mail.gmail.com>
References: <CAAPegz1-8Xq2wwq1jM+k9O1qaPn_NO7N_8fNA5C_8twQ7+9t_A@mail.gmail.com>
	<CABcZANknNHPuikqAgOe=0WWgDON9mb=TTdyqX5Ap30Jh+v+epQ@mail.gmail.com>
	<CAAPegz1nmK+A0ECf7oKNPkTS+MkU5pPm7Dy-+nELM=uzO+q5Pw@mail.gmail.com>
Date: Sat, 17 May 2014 13:19:44 -0700
X-Google-Sender-Auth: Sbc6Eft078kalJz0HM87m3QZlWM
Message-ID: <CABcZAN=LmEaxJ5OLJ1h4y3r6WxacSZdAEp09eu-gEVkUcseHbw@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
To: Chris Morgan <chmorgan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: git.py support for submodules
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
X-List-Received-Date: Sat, 17 May 2014 20:27:11 -0000
Content-Type: multipart/alternative; boundary=089e011774873bdeaa04f99e4026

--089e011774873bdeaa04f99e4026
Content-Type: text/plain; charset=UTF-8

On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com> wrote:

>
> On May 17, 2014 3:58 PM, "Christopher Larson" <clarson@kergoth.com<javascript:_e(%7B%7D,'cvml','clarson@kergoth.com');>>
> wrote:
> >
> >
> >
> > On Saturday, May 17, 2014, Chris Morgan <chmorgan@gmail.com<javascript:_e(%7B%7D,'cvml','chmorgan@gmail.com');>>
> wrote:
> >>
> >> Hello.
> >>
> >> I noticed that git.py doesn't seem to have support for submodules. I
> worked around this in my recipe by adding a pre configure step but I was
> wondering if a patch to add another option to git.py to fetch submodules
> would make sense and be welcomed (pending it's implementation of course).
> >
> >
> >  See gitsm.py.
> >
> >
> > --
> > Christopher Larson
> > clarson at kergoth dot com
> > Founder - BitBake, OpenEmbedded, OpenZaurus
> > Maintainer - Tslib
> > Senior Software Engineer, Mentor Graphics
>
> I couldn't actually figure out how to use it. I looked at the code and
> wasn't sure how it war supposed to do or what it was for.
>

You use it exactly the way you use git.py - gitsm:// instead of git://.
 It's basically git fetching plus submodule handling. I personally would rather
see it merged into git.py, but I can see the reasoning.


-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e011774873bdeaa04f99e4026
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<br><br>On Saturday, May 17, 2014, Chris Morgan &lt;<a href=3D"mailto:chmor=
gan@gmail.com">chmorgan@gmail.com</a>&gt; wrote:<br><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">
<p dir=3D"ltr"><br>
On May 17, 2014 3:58 PM, &quot;Christopher Larson&quot; &lt;<a href=3D"java=
script:_e(%7B%7D,&#39;cvml&#39;,&#39;clarson@kergoth.com&#39;);" target=3D"=
_blank">clarson@kergoth.com</a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Saturday, May 17, 2014, Chris Morgan &lt;<a href=3D"javascript:_e(%=
7B%7D,&#39;cvml&#39;,&#39;chmorgan@gmail.com&#39;);" target=3D"_blank">chmo=
rgan@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hello.<br>
&gt;&gt;<br>
&gt;&gt; I noticed that git.py doesn&#39;t seem to have support for submodu=
les. I worked around this in my recipe by adding a pre configure step but I=
 was wondering if a patch to add another option to git.py to fetch submodul=
es would make sense and be welcomed (pending it&#39;s implementation of cou=
rse).<br>


&gt;<br>
&gt;<br>
&gt; =C2=A0See gitsm.py.<br>
&gt;<br>
&gt;<br>
&gt; -- <br>
&gt; Christopher Larson<br>
&gt; clarson at kergoth dot com<br>
&gt; Founder - BitBake, OpenEmbedded, OpenZaurus<br>
&gt; Maintainer - Tslib<br>
&gt; Senior Software Engineer, Mentor Graphics<br></p>
<p dir=3D"ltr">I couldn&#39;t actually figure out how to use it. I looked a=
t the code and wasn&#39;t sure how it war supposed to do or what it was for=
.</p></blockquote><div><br></div><div>You use it exactly the way you use gi=
t.py - gitsm:// instead of git://. =C2=A0It&#39;s basically git fetching pl=
us submodule handling. I personally would=C2=A0<span></span>rather see it m=
erged into git.py, but I can see the reasoning.=C2=A0</div>
<br><br>-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder =
- BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Softwar=
e Engineer, Mentor Graphics<br>

--089e011774873bdeaa04f99e4026--
