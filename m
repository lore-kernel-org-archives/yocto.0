Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA29E00596
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 10:00:52 -0800 (PST)
Received: from mail-vw0-f52.google.com ([209.85.212.52])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 27 Feb 2012 10:00:51 -0800
Received: by vbih1 with SMTP id h1so1730297vbi.25
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 10:00:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jeffrey.osier-mixon@intel.com
	designates 10.52.20.201 as permitted sender)
	client-ip=10.52.20.201; 
Authentication-Results: mr.google.com; spf=pass (google.com: domain of
	jeffrey.osier-mixon@intel.com designates 10.52.20.201 as
	permitted sender) smtp.mail=jeffrey.osier-mixon@intel.com
Received: from mr.google.com ([10.52.20.201])
	by 10.52.20.201 with SMTP id p9mr7770776vde.87.1330365631795 (num_hops
	= 1); Mon, 27 Feb 2012 10:00:31 -0800 (PST)
MIME-Version: 1.0
Received: by 10.52.20.201 with SMTP id p9mr6337156vde.87.1330365631661; Mon,
	27 Feb 2012 10:00:31 -0800 (PST)
Received: by 10.52.108.102 with HTTP; Mon, 27 Feb 2012 10:00:31 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB12379374D0881@ORSMSX102.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB12379374D0844@ORSMSX102.amr.corp.intel.com>
	<CB714F54.8638%belen.barros.pena@intel.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB12379374D0881@ORSMSX102.amr.corp.intel.com>
Date: Mon, 27 Feb 2012 10:00:31 -0800
Message-ID: <CALZ2gZW55EHP77xqdgmaCKGhoNGObcqcMBBgNJ2uR9sLKYkP9A@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmZRFvVwJsc6MFDjBzsRaVNIajQ6Xf9lr3Q/MX9eGf66Zcl7wC2UNowdaEbIuijUvY22OSK
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Perez-Gonzalez,
	Inaky" <inaky.perez-gonzalez@intel.com>, "Abbas,
	Mohamed" <mohamed.abbas@intel.com>
Subject: Re: Yocto Project Quick Start Feedback
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Feb 2012 18:00:52 -0000
Content-Type: multipart/alternative; boundary=20cf307c9f3ce586f504b9f5e272

--20cf307c9f3ce586f504b9f5e272
Content-Type: text/plain; charset=ISO-8859-1

As this page is regenerated each time the document changes, we'll need to
find a way to add the script to the source so it isn't simply overwritten.
Scott, I'll ping you separately to describe how to do this.

On Mon, Feb 27, 2012 at 7:27 AM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> I notified the person here that should know how to do that stuff.
>
> Thanks,
> Scott
>
> -----Original Message-----
> From: Barros Pena, Belen
> Sent: Monday, February 27, 2012 9:23 AM
> To: Rifenbark, Scott M; William Mills
> Cc: Abbas, Mohamed; Yocto Project; Darren Hart; Perez-Gonzalez, Inaky;
> Purdie, Richard
> Subject: Re: [yocto] Yocto Project Quick Start Feedback
>
> Thanks, Scott. Do you know who manages the CMS? I guess that's the person
> who could add the GA script to the page.
>
> Cheers
>
> Belen
>
> On 27/02/2012 15:00, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
> wrote:
>
> >Good suggestion.
> >
> >-----Original Message-----
> >From: Barros Pena, Belen
> >Sent: Monday, February 27, 2012 6:02 AM
> >To: Rifenbark, Scott M; William Mills
> >Cc: Abbas, Mohamed; Yocto Project; Darren Hart; Perez-Gonzalez, Inaky;
> >Purdie, Richard
> >Subject: Re: [yocto] Yocto Project Quick Start Feedback
> >
> >Hi all,
> >
> >Sorry to jump in. After reading the discussion I went to check the web
> >traffic data for the Quick Start page, thinking that it might give us some
> >useful information about how people are using the content and how to
> >improve it.
> >
> >Unfortunately, it looks like the Google Analytics script is missing from
> >
> http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs
> >.
> >html, so no web traffic information is available.
> >
> >Before making changes to the content, maybe we could add the Google
> >Analytics tracking script to the page and see what comes out of it. By
> >providing volume, the data could help us break the 'personal opinion
> >deadlock'.
> >
> >What do you think?
> >
> >Belen
> >
> >
> >On 24/02/2012 22:19, "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
> >wrote:
> >
> >>Bill,
> >>
> >>You are reading me wrong.  I actually like the idea.  It fits a Quick
> >>Start.  I was going to divert the expert reader anyway.  The reason I
> >>tried to paint the picture here was to see what others thought of the
> >>idea.
> >>
> >>Scott
> >>
> >>-----Original Message-----
> >>From: William Mills [mailto:wmills@ti.com]
> >>Sent: Friday, February 24, 2012 1:07 PM
> >>To: Rifenbark, Scott M
> >>Cc: Darren Hart; Yocto Project; Abbas, Mohamed; Purdie, Richard;
> >>Perez-Gonzalez, Inaky
> >>Subject: Re: [yocto] Yocto Project Quick Start Feedback
> >>
> >>On 02/24/2012 01:05 PM, Rifenbark, Scott M wrote:
> >>> The "movie" angle is interesting.  Picture this... the opening 1/2 page
> >>>sets up the packages for Ubuntu, downloads files, builds
> >>>core-image-sata, and runs qemu.  All this done without even telling
> >>>anyone what YP is.  Follow that by "what just happened... we just built
> >>>and ran an image using the Yocto Project.  Then the QS launches into the
> >>>"Welcome" stuff and flows on as normal.  That would be a unique
> >>>beginning for a technical manual.
> >>
> >>I sense some derision in your word "unique"?  Thats fine, your doing
> >>most of the work and you have to be happy with it.
> >>
> >>However I don't think it is unique.  Yes it would be a bad approuch to
> >>use in a reference manual but I have found a number of  intros/tutorials
> >>start this way and I always enjoy the approuch.  Perhaps the QS at only
> >>9 printed pages is too short to be structured this way.  The QS guide
> >>itself is just this "taste of the bigger picture" for the full doc set.
> >>
> >>As I said, just some thoughts.
> >>
> >>Bill
> >>_______________________________________________
> >>yocto mailing list
> >>yocto@yoctoproject.org
> >>https://lists.yoctoproject.org/listinfo/yocto
> >
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

--20cf307c9f3ce586f504b9f5e272
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

As this page is regenerated each time the document changes, we&#39;ll need =
to find a way to add the script to the source so it isn&#39;t simply overwr=
itten. Scott, I&#39;ll ping you separately to describe how to do this.<br>
<br><div class=3D"gmail_quote">On Mon, Feb 27, 2012 at 7:27 AM, Rifenbark, =
Scott M <span dir=3D"ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com=
">scott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
I notified the person here that should know how to do that stuff.<br>
<br>
Thanks,<br>
Scott<br>
<div class=3D"im HOEnZb"><br>
-----Original Message-----<br>
From: Barros Pena, Belen<br>
</div><div class=3D"HOEnZb"><div class=3D"h5">Sent: Monday, February 27, 20=
12 9:23 AM<br>
To: Rifenbark, Scott M; William Mills<br>
Cc: Abbas, Mohamed; Yocto Project; Darren Hart; Perez-Gonzalez, Inaky; Purd=
ie, Richard<br>
Subject: Re: [yocto] Yocto Project Quick Start Feedback<br>
<br>
Thanks, Scott. Do you know who manages the CMS? I guess that&#39;s the pers=
on<br>
who could add the GA script to the page.<br>
<br>
Cheers<br>
<br>
Belen<br>
<br>
On 27/02/2012 15:00, &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:s=
cott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>
wrote:<br>
<br>
&gt;Good suggestion.<br>
&gt;<br>
&gt;-----Original Message-----<br>
&gt;From: Barros Pena, Belen<br>
&gt;Sent: Monday, February 27, 2012 6:02 AM<br>
&gt;To: Rifenbark, Scott M; William Mills<br>
&gt;Cc: Abbas, Mohamed; Yocto Project; Darren Hart; Perez-Gonzalez, Inaky;<=
br>
&gt;Purdie, Richard<br>
&gt;Subject: Re: [yocto] Yocto Project Quick Start Feedback<br>
&gt;<br>
&gt;Hi all,<br>
&gt;<br>
&gt;Sorry to jump in. After reading the discussion I went to check the web<=
br>
&gt;traffic data for the Quick Start page, thinking that it might give us s=
ome<br>
&gt;useful information about how people are using the content and how to<br=
>
&gt;improve it.<br>
&gt;<br>
&gt;Unfortunately, it looks like the Google Analytics script is missing fro=
m<br>
&gt;<a href=3D"http://www.yoctoproject.org/docs/current/yocto-project-qs/yo=
cto-project-qs" target=3D"_blank">http://www.yoctoproject.org/docs/current/=
yocto-project-qs/yocto-project-qs</a><br>
&gt;.<br>
&gt;html, so no web traffic information is available.<br>
&gt;<br>
&gt;Before making changes to the content, maybe we could add the Google<br>
&gt;Analytics tracking script to the page and see what comes out of it. By<=
br>
&gt;providing volume, the data could help us break the &#39;personal opinio=
n<br>
&gt;deadlock&#39;.<br>
&gt;<br>
&gt;What do you think?<br>
&gt;<br>
&gt;Belen<br>
&gt;<br>
&gt;<br>
&gt;On 24/02/2012 22:19, &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mail=
to:scott.m.rifenbark@intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>
&gt;wrote:<br>
&gt;<br>
&gt;&gt;Bill,<br>
&gt;&gt;<br>
&gt;&gt;You are reading me wrong. =A0I actually like the idea. =A0It fits a=
 Quick<br>
&gt;&gt;Start. =A0I was going to divert the expert reader anyway. =A0The re=
ason I<br>
&gt;&gt;tried to paint the picture here was to see what others thought of t=
he<br>
&gt;&gt;idea.<br>
&gt;&gt;<br>
&gt;&gt;Scott<br>
&gt;&gt;<br>
&gt;&gt;-----Original Message-----<br>
&gt;&gt;From: William Mills [mailto:<a href=3D"mailto:wmills@ti.com">wmills=
@ti.com</a>]<br>
&gt;&gt;Sent: Friday, February 24, 2012 1:07 PM<br>
&gt;&gt;To: Rifenbark, Scott M<br>
&gt;&gt;Cc: Darren Hart; Yocto Project; Abbas, Mohamed; Purdie, Richard;<br=
>
&gt;&gt;Perez-Gonzalez, Inaky<br>
&gt;&gt;Subject: Re: [yocto] Yocto Project Quick Start Feedback<br>
&gt;&gt;<br>
&gt;&gt;On 02/24/2012 01:05 PM, Rifenbark, Scott M wrote:<br>
&gt;&gt;&gt; The &quot;movie&quot; angle is interesting. =A0Picture this...=
 the opening 1/2 page<br>
&gt;&gt;&gt;sets up the packages for Ubuntu, downloads files, builds<br>
&gt;&gt;&gt;core-image-sata, and runs qemu. =A0All this done without even t=
elling<br>
&gt;&gt;&gt;anyone what YP is. =A0Follow that by &quot;what just happened..=
. we just built<br>
&gt;&gt;&gt;and ran an image using the Yocto Project. =A0Then the QS launch=
es into the<br>
&gt;&gt;&gt;&quot;Welcome&quot; stuff and flows on as normal. =A0That would=
 be a unique<br>
&gt;&gt;&gt;beginning for a technical manual.<br>
&gt;&gt;<br>
&gt;&gt;I sense some derision in your word &quot;unique&quot;? =A0Thats fin=
e, your doing<br>
&gt;&gt;most of the work and you have to be happy with it.<br>
&gt;&gt;<br>
&gt;&gt;However I don&#39;t think it is unique. =A0Yes it would be a bad ap=
prouch to<br>
&gt;&gt;use in a reference manual but I have found a number of =A0intros/tu=
torials<br>
&gt;&gt;start this way and I always enjoy the approuch. =A0Perhaps the QS a=
t only<br>
&gt;&gt;9 printed pages is too short to be structured this way. =A0The QS g=
uide<br>
&gt;&gt;itself is just this &quot;taste of the bigger picture&quot; for the=
 full doc set.<br>
&gt;&gt;<br>
&gt;&gt;As I said, just some thoughts.<br>
&gt;&gt;<br>
&gt;&gt;Bill<br>
&gt;&gt;_______________________________________________<br>
&gt;&gt;yocto mailing list<br>
&gt;&gt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
><br>
&gt;&gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D=
"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
Jeff Osier-Mixon=A0<a href=3D"http://jefro.net/blog" target=3D"_blank">http=
://jefro.net/blog</a><div>Yocto Project Community Manager @Intel=A0<a href=
=3D"http://yoctoproject.org/" target=3D"_blank">http://yoctoproject.org</a>=
</div>
<br>

--20cf307c9f3ce586f504b9f5e272--
