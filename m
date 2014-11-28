Return-Path: <yuchankit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A96C8E00972; Fri, 28 Nov 2014 03:33:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuchankit[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wg0-f53.google.com (mail-wg0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EF29E008EA
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 03:33:37 -0800 (PST)
Received: by mail-wg0-f53.google.com with SMTP id l18so8601810wgh.40
	for <yocto@yoctoproject.org>; Fri, 28 Nov 2014 03:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=T3Jr3zwfnU9uuliTlGll/uPmXCVD6mJWlUhixIgkVAM=;
	b=bqnWIougZMYHlGxr/6mp3Fo1364KX7RtMnusswx2dkgTQPp6gMyuMFuMvojiiqfLOh
	ZJhxI/oO8GUA/2CZAA2KIoWvfmaWvTPClBpue1gURountYWFWqNngb+RfdSnAgvMsYfU
	3iG52UP/CHRh+8/Ng67nHXm3AsutdAXl6kVYUrLq7M1VjxGz8Ow5SJOURLBtAePdy75e
	GxkfCeu2ZUmPJMh6DbJyGTLQMqehAZbVLvxLPdPQZ5/oY+2D04OCNM4W1dioP39UFsWW
	RoEH2UD8Up0SQmDXvsbyQ0ehO7yBTVCAyReSE2fNcyu6aDrwHaoHGmCefvBSm9P5onqx
	DBwA==
MIME-Version: 1.0
X-Received: by 10.194.62.76 with SMTP id w12mr49950223wjr.5.1417174416789;
	Fri, 28 Nov 2014 03:33:36 -0800 (PST)
Received: by 10.180.72.208 with HTTP; Fri, 28 Nov 2014 03:33:36 -0800 (PST)
Received: by 10.180.72.208 with HTTP; Fri, 28 Nov 2014 03:33:36 -0800 (PST)
In-Reply-To: <CANyK_8dXPEHPYDYXdpggbn7LQ879dwT0Z6v0k_aF+sOE71krjQ@mail.gmail.com>
References: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
	<CANyK_8dXPEHPYDYXdpggbn7LQ879dwT0Z6v0k_aF+sOE71krjQ@mail.gmail.com>
Date: Fri, 28 Nov 2014 19:33:36 +0800
Message-ID: <CANusJLOstxQyp+feBLSbnSAqHhBCTGu=DDGQ2BtJ=Rotu1ZYeg@mail.gmail.com>
From: Chan Kit Yu <yuchankit@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Creating a recipe to create /usr/local
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
X-List-Received-Date: Fri, 28 Nov 2014 11:33:45 -0000
Content-Type: multipart/alternative; boundary=047d7ba977a4b294b80508e9a19e

--047d7ba977a4b294b80508e9a19e
Content-Type: text/plain; charset=ISO-8859-1

Thanks for saving me from myself. I will try it out and let you know my
results
On Nov 28, 2014 7:22 PM, "Paul Barker" <paul@paulbarker.me.uk> wrote:

> On 27 November 2014 at 07:09, Chan Kit Yu <yuchankit@gmail.com> wrote:
> > Hi all,
> >
> > I'm not sure if emailing this is the most appropriate way and I
> > apologize in advance if that's not.
> >
> > I have some scripts that require /usr/local to exist in Yocto and
> > therefore I need to a recipe to create /usr/local directory. I tried
> > to accomplish this with a simple recipe but that proved futile.
> >
> > Although bitbaking that particular recipe was fine, trying to include
> > that package in local.conf resulted errors and those errors are
> > gibberish (it listed all the packages inside the image that I was
> > trying to comple) . Here's my simple stupid recipe:
> >
> > SUMMARY= "...."
> > LICENSE = "something...."
> > ...
> > ...
> > INSANE_SKIP_${PN} = "installed-vs-shipped"
>
> This line is hiding the warning that a file has been installed (copied
> into ${D} by your do_install function) but not shipped (which means
> placed in an actual package).
>
> /usr/local isn't usually populated so isn't included in a package by
> default, you can modify FILES_xxx to change what is included in the
> package 'xxx'. In a recipe the main package name (which is based off
> the recipe file name), is stored in ${PN}.
>
> So basically, you need to add something like:
>     FILES_${PN} += "/usr/local"
>
> Also, you should never need to use INSANE_SKIP unless you're doing
> something that is actually insane. Those warnings are there for a
> reason!
>
> >
> > do_install(){
> >      mkdir -p ${D}/usr/local
> > }
> >
> > Is there a better way (or preferably the canonical way) to do this?
> >
> > Thanks,
> > Chan Kit
>
> Cheers,
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk
>

--047d7ba977a4b294b80508e9a19e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Thanks for saving me from myself. I will try it out and let =
you know my results</p>
<div class=3D"gmail_quote">On Nov 28, 2014 7:22 PM, &quot;Paul Barker&quot;=
 &lt;<a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a>&gt;=
 wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 27 Novemb=
er 2014 at 07:09, Chan Kit Yu &lt;<a href=3D"mailto:yuchankit@gmail.com">yu=
chankit@gmail.com</a>&gt; wrote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m not sure if emailing this is the most appropriate way and I<br=
>
&gt; apologize in advance if that&#39;s not.<br>
&gt;<br>
&gt; I have some scripts that require /usr/local to exist in Yocto and<br>
&gt; therefore I need to a recipe to create /usr/local directory. I tried<b=
r>
&gt; to accomplish this with a simple recipe but that proved futile.<br>
&gt;<br>
&gt; Although bitbaking that particular recipe was fine, trying to include<=
br>
&gt; that package in local.conf resulted errors and those errors are<br>
&gt; gibberish (it listed all the packages inside the image that I was<br>
&gt; trying to comple) . Here&#39;s my simple stupid recipe:<br>
&gt;<br>
&gt; SUMMARY=3D &quot;....&quot;<br>
&gt; LICENSE =3D &quot;something....&quot;<br>
&gt; ...<br>
&gt; ...<br>
&gt; INSANE_SKIP_${PN} =3D &quot;installed-vs-shipped&quot;<br>
<br>
This line is hiding the warning that a file has been installed (copied<br>
into ${D} by your do_install function) but not shipped (which means<br>
placed in an actual package).<br>
<br>
/usr/local isn&#39;t usually populated so isn&#39;t included in a package b=
y<br>
default, you can modify FILES_xxx to change what is included in the<br>
package &#39;xxx&#39;. In a recipe the main package name (which is based of=
f<br>
the recipe file name), is stored in ${PN}.<br>
<br>
So basically, you need to add something like:<br>
=A0 =A0 FILES_${PN} +=3D &quot;/usr/local&quot;<br>
<br>
Also, you should never need to use INSANE_SKIP unless you&#39;re doing<br>
something that is actually insane. Those warnings are there for a<br>
reason!<br>
<br>
&gt;<br>
&gt; do_install(){<br>
&gt;=A0 =A0 =A0 mkdir -p ${D}/usr/local<br>
&gt; }<br>
&gt;<br>
&gt; Is there a better way (or preferably the canonical way) to do this?<br=
>
&gt;<br>
&gt; Thanks,<br>
&gt; Chan Kit<br>
<br>
Cheers,<br>
<br>
--<br>
Paul Barker<br>
<br>
Email: <a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.me.uk</a><b=
r>
<a href=3D"http://www.paulbarker.me.uk" target=3D"_blank">http://www.paulba=
rker.me.uk</a><br>
</blockquote></div>

--047d7ba977a4b294b80508e9a19e--
