Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B45E0120B
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2013 10:28:29 -0800 (PST)
Received: by mail-vb0-f49.google.com with SMTP id r6so19515936vbi.22
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2013 10:28:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=kBm6qjhq4HYvrOV+776Wc2MNZ0srMH2M4IgLNAT6jKA=;
	b=fSH8oPG5J3THoVj+c96wlCTt5DoHT7vT4m+l3FzfpAQhsB01PyuBhVWSE6NN6NCBkT
	+ihiVpR+NyFLYPVJ2yM6jaAHmFP/pOLrpycL+Irte4wMUHz1/zDodaZSCt7S+PI4aPh/
	pOpV76Igg1jCjI1fBZgyF5NNSQXEFozvhp02Gaji6Nnk+ZT7Dv9ORsSq5Iqw2Lq8LHG3
	N/92vDkDP3eFlqk6VOuuUzhpw7LaUsBps9IafEzhNDCrM78qjS+3CFHnz023w0/m0AGT
	Gd6x4C1UtqAO5Y2gOfdsJzM340C9f6c1369VRhNEX/lp2lCGXmNqht1I4Wafzgridsin
	nsyQ==
Received: by 10.220.247.136 with SMTP id mc8mr5823041vcb.44.1357583308946;
	Mon, 07 Jan 2013 10:28:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Mon, 7 Jan 2013 10:28:07 -0800 (PST)
X-Originating-IP: [5.13.212.252]
In-Reply-To: <alpine.DEB.2.02.1301071251510.1319@oneiric>
References: <50E31E11.2090708@comcast.net>
	<50E73A16.4070303@dynamicdevices.co.uk>
	<50EA5C2E.9060701@comcast.net> <50EAB28F.6080506@dynamicdevices.co.uk>
	<alpine.DEB.2.02.1301071251510.1319@oneiric>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 7 Jan 2013 20:28:07 +0200
Message-ID: <CAK18fxFLb3PsK0c=kBucStW_7OFj+UrxCg=g4b7M=D3MXCvw5A@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQmVqkv6dbcCn9mKM5KPvTZtslv59VRAC8j1IAMsLsrhFD4Lj3ejXs0TFkgXK2EGG1X/Cnjb
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
X-List-Received-Date: Mon, 07 Jan 2013 18:28:30 -0000
Content-Type: multipart/alternative; boundary=bcaec54ee910e1fe1104d2b6fee1

--bcaec54ee910e1fe1104d2b6fee1
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jan 7, 2013 at 7:53 PM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

> On Mon, 7 Jan 2013, Alex J Lennon wrote:
>
> > > Alex
> > >
> > > Thanks I was able to download and build core-image-sato
> > >
> > > Having discussion with github but no real solution yet.
> > >
> >
> > Hi Ed, I'm glad that was useful in moving you forward. I did some
> > googling and this issue with GitHub does seem to pop up
> > intermittently. My gut feeling is there's some kind of resource
> > issue, perhaps related to compression on the server. Some of the
> > comments do seem to suggest that disabling compression helps.
> >
> > I do wonder if someone from the Yocto project is able to fork the
> > RPi linux repo and mirror either the Git repo itself or an archive
> > of that (and indeed if that's a good idea)?
>
>   is there a current diagnosis for this github fetching irritation?  i
> thought i'd take a shot at building for rpi and, like others, i failed
> to fetch the kernel from github:
>
> WARNING: Failed to fetch URL
> git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command failed with exit code 128,
> output:
> Cloning into bare repository
>
> '/home/rpjday/oe/builds/rpi/downloads/git2/github.com.raspberrypi.linux.git'...
>
> fatal: The remote end hung up unexpectedly
> fatal: early EOF
> fatal: index-pack failed
>
> ERROR: Function failed: Fetcher failure for URL:
> 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.2.27'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in:
>
> /home/rpjday/oe/builds/rpi/tmp-eglibc/work/armv6-vfp-oe-linux-gnueabi/linux-libc-headers-raspberrypi/3.2.27-r0/temp/log.do_fetch.1278
> ERROR: Task 62
>
> (/home/rpjday/oe/dist/layers/meta-raspberrypi/recipes-kernel/linux-libc-headers/
> linux-libc-headers-raspberrypi_3.2.27.bb,
> do_fetch) failed with exit code '1'
>
>   thoughts?  i've tried a few times this morning, same result each
> time.
>
> rday
>

I tested it today too and i ended up using a shared download directory. The
problem is at github. Will submit a bug (even if somebody already did).
More bugs - many changes to get it fixed soon. Keep you posted.

ag

--bcaec54ee910e1fe1104d2b6fee1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Mon, Jan 7, 2013 at 7:53 PM,=
 Robert P. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcours=
e.ca" target=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><div=
 class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Mon, 7 Jan 2013, Alex J=
 Lennon wrote:<br>
<br>
&gt; &gt; Alex<br>
&gt; &gt;<br>
&gt; &gt; Thanks I was able to download and build core-image-sato<br>
&gt; &gt;<br>
&gt; &gt; Having discussion with github but no real solution yet.<br>
&gt; &gt;<br>
&gt;<br>
&gt; Hi Ed, I&#39;m glad that was useful in moving you forward. I did some<=
br>
&gt; googling and this issue with GitHub does seem to pop up<br>
&gt; intermittently. My gut feeling is there&#39;s some kind of resource<br=
>
&gt; issue, perhaps related to compression on the server. Some of the<br>
&gt; comments do seem to suggest that disabling compression helps.<br>
&gt;<br>
&gt; I do wonder if someone from the Yocto project is able to fork the<br>
&gt; RPi linux repo and mirror either the Git repo itself or an archive<br>
&gt; of that (and indeed if that&#39;s a good idea)?<br>
<br>
</div>=A0 is there a current diagnosis for this github fetching irritation?=
 =A0i<br>
thought i&#39;d take a shot at building for rpi and, like others, i failed<=
br>
to fetch the kernel from github:<br>
<div class=3D"im"><br>
WARNING: Failed to fetch URL<br>
git://<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgit;bra=
nch=3Drpi-3.2.27" target=3D"_blank">github.com/raspberrypi/linux.git;protoc=
ol=3Dgit;branch=3Drpi-3.2.27</a>,<br>
attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command failed with exit code 128,<br>
output:<br>
Cloning into bare repository<br>
</div>&#39;/home/rpjday/oe/builds/rpi/downloads/git2/github.com.raspberrypi=
.linux.git&#39;...<br>
<br>
fatal: The remote end hung up unexpectedly<br>
<div class=3D"im">fatal: early EOF<br>
fatal: index-pack failed<br>
<br>
ERROR: Function failed: Fetcher failure for URL:<br>
&#39;git://<a href=3D"http://github.com/raspberrypi/linux.git;protocol=3Dgi=
t;branch=3Drpi-3.2.27" target=3D"_blank">github.com/raspberrypi/linux.git;p=
rotocol=3Dgit;branch=3Drpi-3.2.27</a>&#39;.<br>
Unable to fetch URL from any source.<br>
</div>ERROR: Logfile of failure stored in:<br>
/home/rpjday/oe/builds/rpi/tmp-eglibc/work/armv6-vfp-oe-linux-gnueabi/linux=
-libc-headers-raspberrypi/3.2.27-r0/temp/log.do_fetch.1278<br>
ERROR: Task 62<br>
(/home/rpjday/oe/dist/layers/meta-raspberrypi/recipes-kernel/linux-libc-hea=
ders/<a href=3D"http://linux-libc-headers-raspberrypi_3.2.27.bb" target=3D"=
_blank">linux-libc-headers-raspberrypi_3.2.27.bb</a>,<br>
do_fetch) failed with exit code &#39;1&#39;<br>
<br>
=A0 thoughts? =A0i&#39;ve tried a few times this morning, same result each<=
br>
time.<br>
<br>
rday<br></blockquote><div><br></div><div style>I tested it today too and i =
ended up using a shared download directory. The problem is at github. Will =
submit a bug (even if somebody already did). More bugs - many changes to ge=
t it fixed soon. Keep you posted.</div>

<div style><br></div><div style>ag</div></div></div></div>

--bcaec54ee910e1fe1104d2b6fee1--
