Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66D3E0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 15:00:56 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id l6so3194967vcl.23
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 15:00:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=qyoq03tn7pfaYMsv3cqmvmDs01A3ENhyQd5kJakpawU=;
	b=FZNT082TdGXgHIoWIXdNgGzhP+s4TcOtQOsdRqX/YvIJbWhxuKzBPIrDxFwHbLfgUf
	atA6Wfj8maWOt9teraAIpF3nJMNG9jgaUgCXVFJGQo5gQMAAX1/cgZnndgwHoYLXf90l
	Ow9EChsrQpuHN8ljdosQUjP3vigsohZO2fpvWk39tOzXklIto98X7Uni6EnnpWEKl57x
	4ipyf0tuebmnYJrRukiCVJvzTW8PEyyynGTtcNHMvfuy1J0NF7j8csBulTSoT+UL++T4
	px6939DEPGtJJVomgTKj5pr8bPU558VdWs+I2/piDxutIzguusW7hZhXsre6QVq8w9QE
	bv3g==
Received: by 10.52.88.19 with SMTP id bc19mr37480943vdb.67.1357340456186; Fri,
	04 Jan 2013 15:00:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Fri, 4 Jan 2013 15:00:36 -0800 (PST)
X-Originating-IP: [5.13.212.252]
In-Reply-To: <50E73A16.4070303@dynamicdevices.co.uk>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 5 Jan 2013 01:00:36 +0200
Message-ID: <CAK18fxFFUa+_9W=hLv3+uoW0py+KXivzEYnN1kmXhDL8kJRdnw@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Gm-Message-State: ALoCoQmT0g7BvNktLJWL+xUayvtepReAczbe6jOGb3nbjq91xxYmEgp+wzEng8S2rUi5z1o0kSuY
Cc: Yocto Project <yocto@yoctoproject.org>, ed nelson <enelson1000@comcast.net>
Subject: Re: Raspberry Pi do_fetch failure
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
X-List-Received-Date: Fri, 04 Jan 2013 23:00:57 -0000
Content-Type: multipart/alternative; boundary=20cf3071ca14baf2df04d27e7361

--20cf3071ca14baf2df04d27e7361
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 4, 2013 at 10:22 PM, Alex J Lennon <
ajlennon@dynamicdevices.co.uk> wrote:

> On 01/01/2013 17:34, ed nelson wrote:
> > I am getting a do_fetch failure on raspberrypi kernel.  Is anyone else
> > having this problem?
> >
> > Build Configuration:
> > BB_VERSION        = "1.16.0"
> > TARGET_ARCH       = "arm"
> > TARGET_OS         = "linux-gnueabi"
> > MACHINE           = "raspberrypi"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.3"
> > TUNE_FEATURES     = "armv6 vfp"
> > TARGET_FPU        = "vfp"
> > meta
> > meta-yocto
> > meta-yocto-bsp    = "danny:bf909b267498dbab4d7695c26b0dce903ac8b6b0"
> > meta-raspberrypi  = "master:305c5259e24eaa9fb285ca983dc4f9454743fa0c"
> >
> > NOTE: Resolving any missing task queue dependencies
> > NOTE: Preparing runqueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > WARNING: Failed to fetch URL
> > git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
> > attempting MIRRORS if available
> > ERROR: Fetcher failure: Fetch command failed with exit code 128, output:
> > Cloning into bare repository
> >
> '/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.raspberrypi.linux.git'...
> >
> > fatal: read error: Connection reset by peer
> > fatal: early EOF
> > fatal: index-pack failed
> >
> > ERROR: Function failed: Fetcher failure for URL:
> > 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'.
> > Unable to fetch URL from any source.
> >
> > Thanks
>
> I'm rebuilding an RPi image from scratch here now for some testing and I
> see the same issue, which looks to be a GitHub hiccup.
>
> I do have a cached download of the RPi linux GitHub repository from a
> previous build, which you're welcome to use if it'll help you move
> forward whilst GitHub has this issue.
>
> I've tarred it up as github.com.raspberrypi.linux.git.tgz. You can
> extract this into the Yocto downloads directory and I believe it'll be
> picked up by the build tool, e.g.
>
> cd /path/to/yoctoProject/raspberryPiBuild/downloads
> tar xzf  /path/to/github.com.raspberrypi.linux.git.tgz
>
> You should see it go into a "git2" folder in downloads.
>
> It's currently uploading to a DropBox public link at
>
> https://dl.dropbox.com/u/12130167/rpi/github.com.raspberrypi.linux.git.tgz
>
> (It's around 620MB so it'll be about an hour before it's up. I'll
> probably leave it up there over the weekend but it may disappear next
> week!)
>
> Cheers,
>
> Alex
>
>
Thank you Alex. Hope it will help Nelson.
ag

--20cf3071ca14baf2df04d27e7361
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Jan 4, 2013 at 10:22 PM, Alex J Lennon <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_bl=
ank">ajlennon@dynamicdevices.co.uk</a>&gt;</span> wrote:<br><div class=3D"g=
mail_extra">

<div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204=
);border-left-style:solid;padding-left:1ex"><div class=3D""><div class=3D"h=
5">On 01/01/2013 17:34, ed nelson wrote:<br>


&gt; I am getting a do_fetch failure on raspberrypi kernel. =A0Is anyone el=
se<br>
&gt; having this problem?<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.16.0&quot;<br>
&gt; TARGET_ARCH =A0 =A0 =A0 =3D &quot;arm&quot;<br>
&gt; TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;raspberrypi&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.3&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;armv6 vfp&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;danny:bf909b267498dbab4d7695c26b0dce90=
3ac8b6b0&quot;<br>
&gt; meta-raspberrypi =A0=3D &quot;master:305c5259e24eaa9fb285ca983dc4f9454=
743fa0c&quot;<br>
&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; NOTE: Preparing runqueue<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; WARNING: Failed to fetch URL<br>
&gt; git://<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgi=
t;branch=3Drpi-3.2.27" target=3D"_blank">github.com/raspberrypi/linux.git;p=
rotocol=3Dgit;branch=3Drpi-3.2.27</a>,<br>
&gt; attempting MIRRORS if available<br>
&gt; ERROR: Fetcher failure: Fetch command failed with exit code 128, outpu=
t:<br>
&gt; Cloning into bare repository<br>
&gt; &#39;/home/ed/oe/poky-danny/rasperryPiBuild/downloads/git2/github.com.=
raspberrypi.linux.git&#39;...<br>
&gt;<br>
&gt; fatal: read error: Connection reset by peer<br>
&gt; fatal: early EOF<br>
&gt; fatal: index-pack failed<br>
&gt;<br>
&gt; ERROR: Function failed: Fetcher failure for URL:<br>
&gt; &#39;git://<a href=3D"http://github.com/raspberrypi/linux.git;protocol=
=3Dgit;branch=3Drpi-3.2.27" target=3D"_blank">github.com/raspberrypi/linux.=
git;protocol=3Dgit;branch=3Drpi-3.2.27</a>&#39;.<br>
&gt; Unable to fetch URL from any source.<br>
&gt;<br>
&gt; Thanks<br>
<br>
</div></div>I&#39;m rebuilding an RPi image from scratch here now for some =
testing and I<br>
see the same issue, which looks to be a GitHub hiccup.<br>
<br>
I do have a cached download of the RPi linux GitHub repository from a<br>
previous build, which you&#39;re welcome to use if it&#39;ll help you move<=
br>
forward whilst GitHub has this issue.<br>
<br>
I&#39;ve tarred it up as github.com.raspberrypi.linux.git.tgz. You can<br>
extract this into the Yocto downloads directory and I believe it&#39;ll be<=
br>
picked up by the build tool, e.g.<br>
<br>
cd /path/to/yoctoProject/raspberryPiBuild/downloads<br>
tar xzf =A0/path/to/github.com.raspberrypi.linux.git.tgz<br>
<br>
You should see it go into a &quot;git2&quot; folder in downloads.<br>
<br>
It&#39;s currently uploading to a DropBox public link at<br>
<br>
<a href=3D"https://dl.dropbox.com/u/12130167/rpi/github.com.raspberrypi.lin=
ux.git.tgz" target=3D"_blank">https://dl.dropbox.com/u/12130167/rpi/github.=
com.raspberrypi.linux.git.tgz</a><br>
<br>
(It&#39;s around 620MB so it&#39;ll be about an hour before it&#39;s up. I&=
#39;ll<br>
probably leave it up there over the weekend but it may disappear next week!=
)<br>
<br>
Cheers,<br>
<br>
Alex<br>
<div class=3D""><div class=3D"h5"><br></div></div></blockquote><div>=A0</di=
v><div>Thank you Alex. Hope it will help Nelson.</div><div style>ag=A0</div=
></div></div></div>

--20cf3071ca14baf2df04d27e7361--
