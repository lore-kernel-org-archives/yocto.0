Return-Path: <fede.vitali@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC03FE00AFF
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 08:45:25 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id i11so2779091oag.6
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 08:45:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=g4KGZNarhRsP47GM7SpWI67POLL5fEjjD8J6liyNC2I=;
	b=yLVrVTivw2uRGAAOwwE6Ki4ixQP+ZdBMrSa26Kn+L2h5LkHG+N+H1YmHKs0mj37lcp
	xqix57nLJTC8cd8/GOq7CYuKra8+yyK00vrNlPuai+2DvPw5mJvKEHQLnX+yNIHtbv3j
	c3IMZ3h0hOtjVFP6L8b5wBxxJxLDr22VbtcUuNqUIhRdeYStFt369bEHJHvnxvfrO+sY
	QKK35lMU0tEgwDr4ddkIKG356hELQpauzx/W9VunxObwX7LlZLxJaX8RSn4SaZ9LBogE
	Lv6NmdZ9R4P19RoVO07pTUdrhTCgvLMgTEVruYFLaOL1fMF4aNJas0tbNsG3uRTBwER7
	bmBg==
MIME-Version: 1.0
X-Received: by 10.182.148.106 with SMTP id tr10mr2112931obb.65.1394811925148; 
	Fri, 14 Mar 2014 08:45:25 -0700 (PDT)
Received: by 10.76.101.11 with HTTP; Fri, 14 Mar 2014 08:45:25 -0700 (PDT)
In-Reply-To: <CAP71Wjx9ab3bf_6=k-oocYTo0vZuy+oBbq=kTWGQBibsHonyNw@mail.gmail.com>
References: <CAD78y+7tSFGtRUy89p1Sut+aBuw2Rghmq9uc0y+uySgKXozp1g@mail.gmail.com>
	<CAP71Wjxkzj1t=Fq_a1-AJMJcik3jD1P1LrbfPK809QjJtU2aMg@mail.gmail.com>
	<CAD78y+4tJLHEGAd6NZ-S=XU7j_J9=-pFb5vYRxF7gZb52Qkq-Q@mail.gmail.com>
	<5322C771.8070601@mlbassoc.com>
	<CAP71WjzXHvngY_gk5_jdC4jDD5DhFBR7pfL_GDUMOVfHc9Cpag@mail.gmail.com>
	<CAD78y+5oXeVFhmq8QYiftL+SXLY0SuPx=PS2gWE1-+a6aVimMg@mail.gmail.com>
	<CAP71Wjx9ab3bf_6=k-oocYTo0vZuy+oBbq=kTWGQBibsHonyNw@mail.gmail.com>
Date: Fri, 14 Mar 2014 16:45:25 +0100
Message-ID: <CAD78y+4_m_MsukuwAYyGc-8N_TeUxUwJ96zX9gJnOQBiWBVFuQ@mail.gmail.com>
From: Federico Vitali <fede.vitali@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: What is the best practice for customizing libraries included in yocto distribution?
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
X-List-Received-Date: Fri, 14 Mar 2014 15:45:28 -0000
Content-Type: multipart/alternative; boundary=089e012940d853bbfa04f492f5b1

--089e012940d853bbfa04f492f5b1
Content-Type: text/plain; charset=ISO-8859-1

It worked! Thank you so much! Now I have to go out, I have only to
understand
a couple of things...

1. how to make bitbake understand that I've only changed one or more file,
now I have
to do bitbake -c clean gst-plugins-base && bitbake gst-plugins-base

2. how to debug via Eclipse.

Thank you again!


Federico



2014-03-14 11:18 GMT+01:00 Nicolas Dechesne <nicolas.dechesne@linaro.org>:

> Frederico,
>
> On Fri, Mar 14, 2014 at 11:09 AM, Federico Vitali <fede.vitali@gmail.com>
> wrote:
> > Thank you Nicholas and Gary! I'm quite experienced in linux embedded
> > developement, but I'm new to yocto / openembedded.
> > Nicolas, can you please explain me how to use my sources separate from OE
> > build dir tree and still using oe built system?
> > Do I have to edit the sources directly in builddir/tmp/work/etcetera or
> can
> > I keep it separate?
>
> Please have a look at
>
>
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc
>
> http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-from-an-external-source
>
> let us know if you have additional questions
>

--089e012940d853bbfa04f492f5b1
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">It worked! Thank you so much! Now I have to go out, I have only to understand<div>a couple of things...</div><div><br></div><div>1. how to make bitbake understand that I&#39;ve only changed one or more file, now I have</div>
<div>to do bitbake -c clean gst-plugins-base &amp;&amp; bitbake gst-plugins-base</div><div><br></div><div>2. how to debug via Eclipse.</div><div><br></div><div>Thank you again!</div><div><br></div><div><br></div><div>Federico</div>
<div><br></div></div><div class="gmail_extra"><br><br><div class="gmail_quote">2014-03-14 11:18 GMT+01:00 Nicolas Dechesne <span dir="ltr">&lt;<a href="mailto:nicolas.dechesne@linaro.org" target="_blank">nicolas.dechesne@linaro.org</a>&gt;</span>:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Frederico,<br>
<div class=""><br>
On Fri, Mar 14, 2014 at 11:09 AM, Federico Vitali &lt;<a href="mailto:fede.vitali@gmail.com">fede.vitali@gmail.com</a>&gt; wrote:<br>
&gt; Thank you Nicholas and Gary! I&#39;m quite experienced in linux embedded<br>
&gt; developement, but I&#39;m new to yocto / openembedded.<br>
&gt; Nicolas, can you please explain me how to use my sources separate from OE<br>
&gt; build dir tree and still using oe built system?<br>
&gt; Do I have to edit the sources directly in builddir/tmp/work/etcetera or can<br>
&gt; I keep it separate?<br>
<br>
</div>Please have a look at<br>
<br>
<a href="http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc" target="_blank">http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#ref-classes-externalsrc</a><br>
<a href="http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-from-an-external-source" target="_blank">http://www.yoctoproject.org/docs/1.5.1/dev-manual/dev-manual.html#building-software-from-an-external-source</a><br>

<br>
let us know if you have additional questions<br>
</blockquote></div><br></div>

--089e012940d853bbfa04f492f5b1--
