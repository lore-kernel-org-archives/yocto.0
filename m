Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 713DAE00CC9; Mon,  4 Sep 2017 00:59:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f54.google.com (mail-vk0-f54.google.com
	[209.85.213.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BF8AE00CAF
	for <yocto@yoctoproject.org>; Mon,  4 Sep 2017 00:59:56 -0700 (PDT)
Received: by mail-vk0-f54.google.com with SMTP id z187so12382959vkd.2
	for <yocto@yoctoproject.org>; Mon, 04 Sep 2017 00:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dIrKZvefYv2mN9UkamTe7e/ptpq7Di6p+nrlhtBSYHY=;
	b=NXg2zUVGRjuPGlfWnR+J6aJ2ljZEcPpgjXpOh7aCUykaOKyuaK9MZNn+1mBqkXCK73
	5xm3hUzfWJpyVrvvXgbXHExuvlTx7mhrq4zWzufQUo2htwjdNyaXzHqHW17IIO1WMvuv
	rzB7yIVQKvob9Aw8a/3ik9M8FZ8ftGQqK5KSUnzWuI8PN5FePn3ufTNBgP+CZ4B8THQD
	mNhK4UaUkCTZxmIpRSlNMhIg15S4gde2NIm2OrElIMpsVjIPSdSm+jdZRz3Hc8xusbxz
	GHYgLxOeQS1hZFxf9wSm3SQVcUl4QkM52e7kQqmojjC3Tbowu/u+94lN1dOD1f9IMR16
	Ij+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dIrKZvefYv2mN9UkamTe7e/ptpq7Di6p+nrlhtBSYHY=;
	b=B39YsnkO3XEIaYs36V8/Fx3Pz6gn13QdBhvwAdLJNOOe69pcQ68GfGM79VX2G6RNOG
	YzZbUZnIVCqpC6y0vIOko1ZHPOCsdPCv/MixglzWVZSHQk7xK8iJg7VDgxrTnK8Btdvy
	3W42C2QZmlkhiwi/JsNKxgO9E4xhxuZRjAOsPkeX+FvUylSmwj/BUfcOK7ktjN3HDCZy
	R8wSt/QTc4RsHWx8JE7AEH8iIIoronuXOgrIVHRZiJeVrL2KJDRIVMVYwnFz35CCAqVK
	xXgQFT/AwK3an8A+s1zIJV/Lzrhrc4PhXyMW3DkWnneCKE7S5IJ61vqu+ozhO1/bOagz
	F7sw==
X-Gm-Message-State: AHPjjUip3ma5Ul7jLsYSf+yK1G8jCTJw+I+Wva4tuMfWUwDN08NPbfjs
	pC+QJ7FDz2Zf/VR54Q4ht6IZgtFGVw==
X-Google-Smtp-Source: ADKCNb5f3xOqUhEGC8sPP07mpAer4X6kzzcOQi0dx5tRD63hccru3s+yQIYtEE1XqSfGAMd/J6h2Klfvj2F3pM/t07E=
X-Received: by 10.31.155.202 with SMTP id d193mr4292100vke.88.1504511996275;
	Mon, 04 Sep 2017 00:59:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.93.42 with HTTP; Mon, 4 Sep 2017 00:59:55 -0700 (PDT)
In-Reply-To: <1504510407.12799.57.camel@intel.com>
References: <CAC+thW14riQRGnruH2NszoavVA5J9utX8926Q36DvKXGPbZrow@mail.gmail.com>
	<CAD4b0_LdonvEYaAANBiUhmYN5iaderdSpOMEmqQTtam+Z2s=2g@mail.gmail.com>
	<CAC+thW3WCk90+eGs5wiT6bari4MGxxN_ParbySkM4rgTSW0a4Q@mail.gmail.com>
	<1504510407.12799.57.camel@intel.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Mon, 4 Sep 2017 09:59:55 +0200
Message-ID: <CAC+thW3S79M-w7EYd9bZ9X8p3qz7gF3V6XH=3rH-LEnNE8JBjA@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot re-use shared state cache between build hosts
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
X-List-Received-Date: Mon, 04 Sep 2017 07:59:58 -0000
Content-Type: multipart/alternative; boundary="001a1140f2de1932450558587fb9"

--001a1140f2de1932450558587fb9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 4, 2017 at 9:33 AM, Patrick Ohly <patrick.ohly@intel.com> wrote=
:

> On Fri, 2017-09-01 at 17:04 +0200, Andrea Galbusera wrote:
> > Hi Maciej,
> >
> > On Fri, Sep 1, 2017 at 4:08 PM, Maciej Borz=C4=99cki <maciej.borzecki@r=
ndi
> > ty.com> wrote:
> > > On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera <gizero@gmail.com>
> > > wrote:
> > > > Hi!
> > > >
> > > > I was trying to share sstate between different hosts, but the
> > > consumer build
> > > > system seems to be unable to use re-use any sstate object. My
> > > scenario is
> > > > setup as follows:
> > > >
> > > > * The cache was populated by a pristine qemux86 core-image-
> > > minimal build of
> > > > morty. This was done in a crops/poky container (running in docker
> > > on Mac)
> > > > * The cache was then served via HTTP
> > >
> > > Make sure that you use a decent HTTP server. Simple `python3 -m
> > > http.server` will quickly choke when the mirror is being checked.
> > > Also
> > > running bitbake -DDD -v makes investigating this much easier.
> >
> > To be honest, the current server was indeed setup with python's
> > SimpleHTTPServer... As you suggest, I checked the verbose debug log
> > and noticed what's happening behind the apparently happy "Checking
> > sstate mirror object availability" step. After a first "SState:
> > Successful fetch test for" that I see correctly served with 200 on
> > the server side, tests for any other sstate object suddenly and
> > systematically fail with logs like this:
> ...
> > DEBUG: checkstatus() urlopen failed: <urlopen error [Errno 9] Bad
> > file descriptor>
>
> More recent bitbake should not fail like that anymore. It's still
> better to use an HTTP server that performs better, though.
>
> commit 6fa07752bbd3ac345cd8617da49a70e0b2dd565f
> Author: Patrick Ohly <patrick.ohly@intel.com>
> Date:   Mon Jul 17 15:25:10 2017 +0200
>
>     fetch2/wget.py: improve error handling during sstate check
>
>     When the sstate is accessed via HTTP, the existence check can fail du=
e
>     to network issues, in which case bitbake silently continues without
>     sstate.
>
>     One such network issue is an HTTP server like Python's own SimpleHTTP
>     which closes the TCP connection despite an explicit "Keep-Alive" in
>     the HTTP request header. The server does that without a "close" in th=
e
>     HTTP response header, so the socket remains in the connection cache,
>     leading to "urlopen failed: <urlopen error [Errno 9] Bad file
>     descriptor>" (only visible in "bitbake -D -D" output) when trying to
>     use the cached connection again.
>
>     The connection might also get closed for other reasons (proxy,
>     timeouts, etc.), so this is something that the client should be able
>     to handle.
>
>     This is achieved by checking for the error, removing the bad
>     connection, and letting the check_status() method try again with a ne=
w
>     connection. It is necessary to let the second attempt fail
>     permanently, because bad proxy setups have been observed to also lead
>     to such broken connections. In that case, we need to abort for real
>     after trying twice, otherwise a build would just hang forever.
>
>     [YOCTO #11782]
>
> --
> Best Regards, Patrick Ohly
>
> The content of this message is my personal opinion only and although
> I am an employee of Intel, the statements I make here in no way
> represent Intel's position on the issue, nor am I authorized to speak
> on behalf of Intel on this matter.
>

Thank you Patrick for pointing that out. While debugging the issue on morty
I had some reminiscence of seeing your patch on the list, but I wasn't able
to find it back in morty's history hence inferring it landed later on.
Anyway doing this test on morty was a requirement... Thanks again for your
clarification. Would such a patch be suitable for eventually being
back-ported to morty?

--001a1140f2de1932450558587fb9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On M=
on, Sep 4, 2017 at 9:33 AM, Patrick Ohly <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:patrick.ohly@intel.com" target=3D"_blank">patrick.ohly@intel.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><=
div class=3D"h5">On Fri, 2017-09-01 at 17:04 +0200, Andrea Galbusera wrote:=
<br>
&gt; Hi Maciej,<br>
&gt;<br>
&gt; On Fri, Sep 1, 2017 at 4:08 PM, Maciej Borz=C4=99cki &lt;maciej.borzec=
ki@rndi<br>
&gt; <a href=3D"http://ty.com" rel=3D"noreferrer" target=3D"_blank">ty.com<=
/a>&gt; wrote:<br>
&gt; &gt; On Fri, Sep 1, 2017 at 3:54 PM, Andrea Galbusera &lt;<a href=3D"m=
ailto:gizero@gmail.com">gizero@gmail.com</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; Hi!<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I was trying to share sstate between different hosts, but th=
e<br>
&gt; &gt; consumer build<br>
&gt; &gt; &gt; system seems to be unable to use re-use any sstate object. M=
y<br>
&gt; &gt; scenario is<br>
&gt; &gt; &gt; setup as follows:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; * The cache was populated by a pristine qemux86 core-image-<=
br>
&gt; &gt; minimal build of<br>
&gt; &gt; &gt; morty. This was done in a crops/poky container (running in d=
ocker<br>
&gt; &gt; on Mac)<br>
&gt; &gt; &gt; * The cache was then served via HTTP<br>
&gt; &gt;<br>
&gt; &gt; Make sure that you use a decent HTTP server. Simple `python3 -m<b=
r>
&gt; &gt; http.server` will quickly choke when the mirror is being checked.=
<br>
&gt; &gt; Also<br>
&gt; &gt; running bitbake -DDD -v makes investigating this much easier.<br>
&gt;<br>
&gt; To be honest, the current server was indeed setup with python&#39;s<br=
>
&gt; SimpleHTTPServer... As you suggest, I checked the verbose debug log<br=
>
&gt; and noticed what&#39;s happening behind the apparently happy &quot;Che=
cking<br>
&gt; sstate mirror object availability&quot; step. After a first &quot;SSta=
te:<br>
&gt; Successful fetch test for&quot; that I see correctly served with 200 o=
n<br>
&gt; the server side, tests for any other sstate object suddenly and<br>
&gt; systematically fail with logs like this:<br>
</div></div>...<br>
<span class=3D"">&gt; DEBUG: checkstatus() urlopen failed: &lt;urlopen erro=
r [Errno 9] Bad<br>
&gt; file descriptor&gt;<br>
<br>
</span>More recent bitbake should not fail like that anymore. It&#39;s stil=
l<br>
better to use an HTTP server that performs better, though.<br>
<br>
commit 6fa07752bbd3ac345cd8617da49a70<wbr>e0b2dd565f<br>
Author: Patrick Ohly &lt;<a href=3D"mailto:patrick.ohly@intel.com">patrick.=
ohly@intel.com</a>&gt;<br>
Date:=C2=A0=C2=A0=C2=A0Mon Jul 17 15:25:10 2017 +0200<br>
<br>
=C2=A0=C2=A0=C2=A0=C2=A0fetch2/wget.py: improve error handling during sstat=
e check<br>
=C2=A0=C2=A0=C2=A0=C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0When the sstate is accessed via HTTP, the existence=
 check can fail due<br>
=C2=A0=C2=A0=C2=A0=C2=A0to network issues, in which case bitbake silently c=
ontinues without<br>
=C2=A0=C2=A0=C2=A0=C2=A0sstate.<br>
=C2=A0=C2=A0=C2=A0=C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0One such network issue is an HTTP server like Pytho=
n&#39;s own SimpleHTTP<br>
=C2=A0=C2=A0=C2=A0=C2=A0which closes the TCP connection despite an explicit=
 &quot;Keep-Alive&quot; in<br>
=C2=A0=C2=A0=C2=A0=C2=A0the HTTP request header. The server does that witho=
ut a &quot;close&quot; in the<br>
=C2=A0=C2=A0=C2=A0=C2=A0HTTP response header, so the socket remains in the =
connection cache,<br>
=C2=A0=C2=A0=C2=A0=C2=A0leading to &quot;urlopen failed: &lt;urlopen error =
[Errno 9] Bad file<br>
=C2=A0=C2=A0=C2=A0=C2=A0descriptor&gt;&quot; (only visible in &quot;bitbake=
 -D -D&quot; output) when trying to<br>
=C2=A0=C2=A0=C2=A0=C2=A0use the cached connection again.<br>
=C2=A0=C2=A0=C2=A0=C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0The connection might also get closed for other reas=
ons (proxy,<br>
=C2=A0=C2=A0=C2=A0=C2=A0timeouts, etc.), so this is something that the clie=
nt should be able<br>
=C2=A0=C2=A0=C2=A0=C2=A0to handle.<br>
=C2=A0=C2=A0=C2=A0=C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0This is achieved by checking for the error, removin=
g the bad<br>
=C2=A0=C2=A0=C2=A0=C2=A0connection, and letting the check_status() method t=
ry again with a new<br>
=C2=A0=C2=A0=C2=A0=C2=A0connection. It is necessary to let the second attem=
pt fail<br>
=C2=A0=C2=A0=C2=A0=C2=A0permanently, because bad proxy setups have been obs=
erved to also lead<br>
=C2=A0=C2=A0=C2=A0=C2=A0to such broken connections. In that case, we need t=
o abort for real<br>
=C2=A0=C2=A0=C2=A0=C2=A0after trying twice, otherwise a build would just ha=
ng forever.<br>
=C2=A0=C2=A0=C2=A0=C2=A0<br>
=C2=A0=C2=A0=C2=A0=C2=A0[YOCTO #11782]<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Best Regards, Patrick Ohly<br>
<br>
The content of this message is my personal opinion only and although<br>
I am an employee of Intel, the statements I make here in no way<br>
represent Intel&#39;s position on the issue, nor am I authorized to speak<b=
r>
on behalf of Intel on this matter.<br></font></span></blockquote><div><br><=
/div><div>Thank you Patrick for pointing that out. While debugging the issu=
e on morty I had some reminiscence of seeing your patch on the list, but I =
wasn&#39;t able to find it back in morty&#39;s history hence inferring it l=
anded later on. Anyway doing this test on morty was a requirement... Thanks=
 again for your clarification. Would such a patch be suitable for eventuall=
y being back-ported to morty?<br></div></div><br></div></div>

--001a1140f2de1932450558587fb9--
