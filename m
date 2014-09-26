Return-Path: <doug.geiger@bioradiation.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C68EE006DB; Fri, 26 Sep 2014 10:55:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.45 listed in list.dnswl.org]
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAC47E0056A
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 10:55:34 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id q108so9308830qgd.18
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 10:55:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=oqdyldFNRV54QMo0OkLAzRaj20DXaAlH07ge1nUub3Y=;
	b=R5iNOWDiMw2amePqxOgEYqXyyzWRsWknVlJRrl5GgseXsQ1yPOXOI/004oXOo2rM4J
	figHemiMAwDHiS9eq2tV892t7YxZJ2py/Wf1hIegE/ITAzd24FOQXgusnjElBSeRyZRw
	Nq+YefgcOGVdcgFWLql/wZygTd5De+ruVzQpooibPrtNd/7k8Otx5z/8FdtMRDG7lffQ
	eMx2a+YRpnn3YQ8FhSgeXx2FCxYTsByFdGfeofbsPypvLFCQ+jxHErBAb7a/L+UilFzG
	eG8G6yEn5DHs5jlQG/vl5mgj2uAac5F1yL2aY5Z2YaKExLgmlbkreipEnYa7aLb7RsH0
	TGTw==
X-Gm-Message-State: ALoCoQnbn2V6P8QKyHmsK3phaeqUUczI/b98XxTy7Jln5NVNsg3xXtnmBfNhjnr3R9IJjuV5u4h+
MIME-Version: 1.0
X-Received: by 10.224.120.70 with SMTP id c6mr31812251qar.28.1411754133416;
	Fri, 26 Sep 2014 10:55:33 -0700 (PDT)
Received: by 10.229.211.202 with HTTP; Fri, 26 Sep 2014 10:55:33 -0700 (PDT)
In-Reply-To: <54259DB5.4060506@balister.org>
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>
	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
	<54259DB5.4060506@balister.org>
Date: Fri, 26 Sep 2014 13:55:33 -0400
Message-ID: <CAAqtnPQMvQdaX9ZVuPQek6KU5UYan5wrU4XQwmyBuSF_jPGRZA@mail.gmail.com>
From: Douglas Geiger <doug.geiger@bioradiation.net>
To: Philip Balister <philip@balister.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Leo Schwab <lschwab@sensity.com>, yocto@yoctoproject.org
Subject: Re: Adding 'build-id' to Build Image
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
X-List-Received-Date: Fri, 26 Sep 2014 17:55:41 -0000
Content-Type: multipart/alternative; boundary=001a11c2fb1ca20b070503fb9fdd

--001a11c2fb1ca20b070503fb9fdd
Content-Type: text/plain; charset=UTF-8

I've attached a build_info.inc that I've used in some of my image to the
issue - comments welcome.
Currently I include a build timestamp, and the names and version info on
all the layers used in the build and put it in /etc/build

 Doug

On Fri, Sep 26, 2014 at 1:09 PM, Philip Balister <philip@balister.org>
wrote:

> I added https://bugzilla.yoctoproject.org/show_bug.cgi?id=6770
>
> Sorry no patch yet :)
>
> Philip
>
> On 09/10/2014 12:38 AM, Paul Eggleton wrote:
> > On Tuesday 09 September 2014 15:03:39 Philip Balister wrote:
> >> On 09/08/2014 07:08 PM, Leo Schwab wrote:
> >>> We'd like to have the system images we build to contain a build id, or
> >>> at least a pile of information inside the image itself that lets us
> >>> identify which build is being run/tested.  Indeed, the information
> >>> 'bitbake' kicks out just as it starts a build is exactly the sort of
> >>> thing we'd like sitting in a file in the image somewhere.
> >>>
> >>> I turned on the 'buildhistory' feature in conf/local.conf which, among
> >>> other things, generates a 'build-id' file.  However, it doesn't place
> >>> it in the image, but in an entirely separate directory hierarchy.
> >>>
> >>> Surely this sort of thing has been done before.  Is there an existing
> >>> recipe I can use, or will I have to cobble together a custom recipe
> >>> out of buildhistory_get_layers() or get_layers_branch_rev()?
> >>
> >> I was asking the same question yesterday. I have a hacky solution for my
> >> immediate need, but I'd like a long term solution along these lines
> also.
> >>
> >> Should we add this to bugzilla and see if we can get it done for 1.8? (I
> >> think I ahve the version number right)
> >
> > Yes, please add this to the bugzilla. This has also come up before
> several
> > times, we should just do it (and bonus points if someone wants to send a
> patch
> > ;).
> >
> > Cheers,
> > Paul
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Doug Geiger
doug.geiger@bioradiation.net

--001a11c2fb1ca20b070503fb9fdd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve attached a build_info.inc that I&#39;ve used in s=
ome of my image to the issue - comments welcome.<div>Currently I include a =
build timestamp, and the names and version info on all the layers used in t=
he build and put it in /etc/build</div><div><br></div><div>=C2=A0Doug</div>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Sep=
 26, 2014 at 1:09 PM, Philip Balister <span dir=3D"ltr">&lt;<a href=3D"mail=
to:philip@balister.org" target=3D"_blank">philip@balister.org</a>&gt;</span=
> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">I added <a href=3D"https://bugzi=
lla.yoctoproject.org/show_bug.cgi?id=3D6770" target=3D"_blank">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D6770</a><br>
<br>
Sorry no patch yet :)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Philip<br>
</font></span><span class=3D"im HOEnZb"><br>
On 09/10/2014 12:38 AM, Paul Eggleton wrote:<br>
&gt; On Tuesday 09 September 2014 15:03:39 Philip Balister wrote:<br>
&gt;&gt; On 09/08/2014 07:08 PM, Leo Schwab wrote:<br>
&gt;&gt;&gt; We&#39;d like to have the system images we build to contain a =
build id, or<br>
&gt;&gt;&gt; at least a pile of information inside the image itself that le=
ts us<br>
&gt;&gt;&gt; identify which build is being run/tested.=C2=A0 Indeed, the in=
formation<br>
&gt;&gt;&gt; &#39;bitbake&#39; kicks out just as it starts a build is exact=
ly the sort of<br>
&gt;&gt;&gt; thing we&#39;d like sitting in a file in the image somewhere.<=
br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I turned on the &#39;buildhistory&#39; feature in conf/local.c=
onf which, among<br>
&gt;&gt;&gt; other things, generates a &#39;build-id&#39; file.=C2=A0 Howev=
er, it doesn&#39;t place<br>
&gt;&gt;&gt; it in the image, but in an entirely separate directory hierarc=
hy.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Surely this sort of thing has been done before.=C2=A0 Is there=
 an existing<br>
&gt;&gt;&gt; recipe I can use, or will I have to cobble together a custom r=
ecipe<br>
&gt;&gt;&gt; out of buildhistory_get_layers() or get_layers_branch_rev()?<b=
r>
&gt;&gt;<br>
&gt;&gt; I was asking the same question yesterday. I have a hacky solution =
for my<br>
&gt;&gt; immediate need, but I&#39;d like a long term solution along these =
lines also.<br>
&gt;&gt;<br>
&gt;&gt; Should we add this to bugzilla and see if we can get it done for 1=
.8? (I<br>
&gt;&gt; think I ahve the version number right)<br>
&gt;<br>
&gt; Yes, please add this to the bugzilla. This has also come up before sev=
eral<br>
&gt; times, we should just do it (and bonus points if someone wants to send=
 a patch<br>
&gt; ;).<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Paul<br>
&gt;<br>
--<br>
</span><div class=3D"HOEnZb"><div class=3D"h5">____________________________=
___________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
Doug Geiger<br><a href=3D"mailto:doug.geiger@bioradiation.net">doug.geiger@=
bioradiation.net</a>
</div>

--001a11c2fb1ca20b070503fb9fdd--
