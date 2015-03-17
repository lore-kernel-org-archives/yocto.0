Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0BB9E008EA; Tue, 17 Mar 2015 14:03:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FE0E00753
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 14:03:06 -0700 (PDT)
Received: by wgra20 with SMTP id a20so18673820wgr.3
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 14:03:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UsQxB5jPgAgZlLzCDSbyC9x89pQTUrK5OvUe8iNYeYA=;
	b=fE7SEfsPwwl0unxiEkERXnSRgcQM4zjL8XEi0LHwq1HGNybgjCk9/8jbkD5YEysUV0
	zXPlpzv5OMFPy1T2aglt0P5ntf1AQuPKifs4oiX59el8AmKNNS/0SdQgh9Kh2qGjQMf3
	rhrJvzoWPXXnG24t9gcBNEyp5Z5um7FOCF6MY6xW1QXIIKcTXarVH0w0Y+MYGojMMC2Z
	dkXgkXc8ilIqyDA0kJth/iizqF5CRDLPyqgSUdzURj350mm+SveTvi7hZ0ySO4Ma4+Fy
	JGCcmDfLl1ReEGcef4ebhOPCy//1pZqlyJTE534rdGNKkApVE+K62Blb6EjzommYwxXk
	5eAQ==
X-Gm-Message-State: ALoCoQkbtOGFXu+IiQPYXtr6pO/pzdeclOKpIOGz2bC38FedNCPVZZyo/hpgmMhrU2C3KEpdZ3Sj
X-Received: by 10.194.63.16 with SMTP id c16mr138342162wjs.117.1426626185162; 
	Tue, 17 Mar 2015 14:03:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.95.132 with HTTP; Tue, 17 Mar 2015 14:02:44 -0700 (PDT)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <CADkTA4P0JpDfegzWM--jKxUdpxC09T+ki9JOTkOeGbK4SuK1Lg@mail.gmail.com>
References: <55086B23.1030203@dynamicdevices.co.uk>
	<CADkTA4P0JpDfegzWM--jKxUdpxC09T+ki9JOTkOeGbK4SuK1Lg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 17 Mar 2015 22:02:44 +0100
Message-ID: <CAK18fxHV0ukPFYYZuBFe3E1XFMRsHJU__q75qq+XLP74dbDp8w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Kernel configuration fragments and defconfig from kernel source tree, not meta layer file
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
X-List-Received-Date: Tue, 17 Mar 2015 21:03:10 -0000
Content-Type: multipart/alternative; boundary=047d7b86da3afe836b0511824a08

--047d7b86da3afe836b0511824a08
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 9:08 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Tue, Mar 17, 2015 at 1:57 PM, Alex J Lennon
> <ajlennon@dynamicdevices.co.uk> wrote:
> > Hi,
> >
> > I've been looking into a request to have Yocto kernel configuration
> > fragment support in meta-raspberrypi with a defconfig which is pulled
> > from the kernel source tree for the configured machine.
> >
> > My understanding is that Yocto expects the defconfig file to be supplied
> > in the meta-layer and then configured with SRC_URI += "file://defconfig"
> >
> > We'd prefer not to maintain copies of defconfigs, instead using the true
> > default configuration from the kernel tree and allowing users to add
> > their own .cfg fragments to the SRC_URI via, say, .bbappends.
>
> Anyone who knows me, knows that I'd say I hate to see defconfigs
> at all ;)
>
> But back on topic, this is something I can change, it is simply that
> when I first put together the linux-yocto kernel configuration steps,
> that most defconfigs were actually out of tree, and not within the kernel
> tree itself.
>
> >
> > It's easy enough to _prepend() a function to copy the appropriate
> > defconfig from the kernel source to the working directory, but I am
> > having a problem as do_patch() in kernel-yocto.bbclass seems to require
> > a defconfig file from the layer itself via use of SRC_URI in find_sccs().
> >
> > Any thoughts? Thanks,
>
> Pop an enhancement request into the yocto bugzilla and assign it to
> me. I can take care of it from there.
>
> But just to be clear, this will have to stay out of oe-core for a bit,
> since
> it is past feature freeze for 1.8 and even bug fixes are cut off shortly.
>
>
There is absolutely no way we can have this for 1.8? It's a minor thing.
And would help us a lot.


-- 
*Andrei Gherzan*

--047d7b86da3afe836b0511824a08
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, Mar 17, 2015 at 9:08 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<=
a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield=
@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Tue, Mar 17, 2015 at 1:57 PM, Alex J Lennon<br>
&lt;<a href=3D"mailto:ajlennon@dynamicdevices.co.uk">ajlennon@dynamicdevice=
s.co.uk</a>&gt; wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;ve been looking into a request to have Yocto kernel configuratio=
n<br>
&gt; fragment support in meta-raspberrypi with a defconfig which is pulled<=
br>
&gt; from the kernel source tree for the configured machine.<br>
&gt;<br>
&gt; My understanding is that Yocto expects the defconfig file to be suppli=
ed<br>
&gt; in the meta-layer and then configured with SRC_URI +=3D &quot;file://d=
efconfig&quot;<br>
&gt;<br>
&gt; We&#39;d prefer not to maintain copies of defconfigs, instead using th=
e true<br>
&gt; default configuration from the kernel tree and allowing users to add<b=
r>
&gt; their own .cfg fragments to the SRC_URI via, say, .bbappends.<br>
<br>
</span>Anyone who knows me, knows that I&#39;d say I hate to see defconfigs=
<br>
at all ;)<br>
<br>
But back on topic, this is something I can change, it is simply that<br>
when I first put together the linux-yocto kernel configuration steps,<br>
that most defconfigs were actually out of tree, and not within the kernel<b=
r>
tree itself.<br>
<span class=3D""><br>
&gt;<br>
&gt; It&#39;s easy enough to _prepend() a function to copy the appropriate<=
br>
&gt; defconfig from the kernel source to the working directory, but I am<br=
>
&gt; having a problem as do_patch() in kernel-yocto.bbclass seems to requir=
e<br>
&gt; a defconfig file from the layer itself via use of SRC_URI in find_sccs=
().<br>
&gt;<br>
&gt; Any thoughts? Thanks,<br>
<br>
</span>Pop an enhancement request into the yocto bugzilla and assign it to<=
br>
me. I can take care of it from there.<br>
<br>
But just to be clear, this will have to stay out of oe-core for a bit, sinc=
e<br>
it is past feature freeze for 1.8 and even bug fixes are cut off shortly.<b=
r>
<br></blockquote><div><br></div><div>There is absolutely no way we can have=
 this for 1.8? It&#39;s a minor thing. And would help us a lot.=C2=A0</div>=
</div><br clear=3D"all"><div><br></div>-- <br><div class=3D"gmail_signature=
"><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left"><b style=3D"font-family:Arial;font-size=
:small;color:rgb(51,51,51);text-align:center">Andrei Gherzan</b><br></div><=
/div></div></div>
</div></div>

--047d7b86da3afe836b0511824a08--
