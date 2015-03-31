Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01DB6E0085D; Tue, 31 Mar 2015 04:43:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85B1DE00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 04:43:54 -0700 (PDT)
Received: by qgh3 with SMTP id 3so11307475qgh.2
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 04:43:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=a8bULIItTVXPLUwDILwrFilCeVWqyacTiZYlsAbTw0Y=;
	b=VfvyKmCQ30nRZJshUUi5c1eMfbYsPTVUKdcZsW1FqYxnmph4UioKzpxW4iqLw5HZMb
	E4zvfNb90ov8R7ZLLBjenZC9egUsAOkZcluD4sNtOHE06IdNm1MJwnkR9JeJFY7lVz6/
	1YY70NuaUDvZBo+TG678EJ/i8K6M8WbimLgszpVvBNZex1MVwgQ3ZfGlyz9cxAKqoh+w
	MaB+K0/DSSt6F+KNYPYKT55xKbMwEY2sfDnJnJNl/Pog6ELKlL2+GCbfWjWXf3mdhDfx
	TyKseZ29E/j6butxSM9c9DrAqViBMcTiGYp9tK1/6zpXeaLjAyyZitukmBK3kCPUWvXx
	kUng==
X-Gm-Message-State: ALoCoQkAG7lT42+EHlFZm/uAudFOafMsEReExfzKfUY+03MFVQ6wr+QYC95fFJR/G9E2R3QAoWxw
X-Received: by 10.55.24.160 with SMTP id 32mr77880989qky.23.1427802234185;
	Tue, 31 Mar 2015 04:43:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Tue, 31 Mar 2015 04:43:33 -0700 (PDT)
In-Reply-To: <CAPhnLPADsigrXe6HZ0sLakyELujxid+19m18awYQetoUBUD9KA@mail.gmail.com>
References: <1427468590-6615-1-git-send-email-elizabeth.flanagan@intel.com>
	<1779560.QYRt8DUNQe@peggleto-mobl.ger.corp.intel.com>
	<CAPhnLPADsigrXe6HZ0sLakyELujxid+19m18awYQetoUBUD9KA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 31 Mar 2015 12:43:33 +0100
Message-ID: <CAJTo0LbwdyuYAV3NF0u8iuignk3OVipsBMmoMfVGdqOf-P38UQ@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH][yocto-docs] poky.ent: Ubuntu based systems need xlstproc
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
X-List-Received-Date: Tue, 31 Mar 2015 11:43:57 -0000
Content-Type: multipart/alternative; boundary=001a11441462fa7ffa0512941cb3

--001a11441462fa7ffa0512941cb3
Content-Type: text/plain; charset=UTF-8

On 31 March 2015 at 12:38, Flanagan, Elizabeth <elizabeth.flanagan@intel.com
> wrote:

> On 28 March 2015 at 04:23, Paul Eggleton <paul.eggleton@linux.intel.com>
> wrote:
> > Hi Beth,
> >
> > On Friday 27 March 2015 15:03:10 Beth Flanagan wrote:
> >> xlstproc is needed for doc building. I'm sure others are
> >> effected as well.
> >>
> >> Signed-off-by: Beth Flanagan <elizabeth.flanagan@intel.com>
> >> ---
> >>  documentation/poky.ent | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/documentation/poky.ent b/documentation/poky.ent
> >> index 5d12fc1..a8fe99f 100644
> >> --- a/documentation/poky.ent
> >> +++ b/documentation/poky.ent
> >> @@ -59,7 +59,7 @@
> >>  <!ENTITY OE_INIT_PATH "&YOCTO_POKY;/oe-init-build-env">
> >>  <!ENTITY OE_INIT_FILE "oe-init-build-env">
> >>  <!ENTITY UBUNTU_HOST_PACKAGES_ESSENTIAL "gawk wget git-core diffstat
> unzip
> >> texinfo gcc-multilib \ -     build-essential chrpath socat">
> >> +     build-essential chrpath socat xsltproc">
> >>  <!ENTITY FEDORA_HOST_PACKAGES_ESSENTIAL "gawk make wget tar bzip2 gzip
> >> python unzip perl patch \ diffutils diffstat git cpp gcc gcc-c++
> >> glibc-devel texinfo chrpath \ ccache perl-Data-Dumper
> perl-Text-ParseWords
> >> perl-Thread-Queue socat">
> >
> > Which doc building? Our manuals or docs as part of recipes? Can you give
> an
> > example of a failure?
> >
>
> yocto-docs. On an Ubuntu based system I was having issues building
> them because xsltproc wasn't installed during the normal system
> install. I'm not sure if other can verify that, but I tried it on two
> of my systems with the same results (Mint 17.1 Rebecca).
>

Building the documentation from scratch isn't a normal thing for a user to
do, so I wouldn't add xsltproc to the list of build essential packages for
builds.

It should be documented along with the other dependencies in the
instructions for building the documentation of course.

Ross

--001a11441462fa7ffa0512941cb3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 3=
1 March 2015 at 12:38, Flanagan, Elizabeth <span dir=3D"ltr">&lt;<a href=3D=
"mailto:elizabeth.flanagan@intel.com" target=3D"_blank">elizabeth.flanagan@=
intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div cla=
ss=3D"HOEnZb"><div class=3D"h5">On 28 March 2015 at 04:23, Paul Eggleton &l=
t;<a href=3D"mailto:paul.eggleton@linux.intel.com">paul.eggleton@linux.inte=
l.com</a>&gt; wrote:<br>
&gt; Hi Beth,<br>
&gt;<br>
&gt; On Friday 27 March 2015 15:03:10 Beth Flanagan wrote:<br>
&gt;&gt; xlstproc is needed for doc building. I&#39;m sure others are<br>
&gt;&gt; effected as well.<br>
&gt;&gt;<br>
&gt;&gt; Signed-off-by: Beth Flanagan &lt;<a href=3D"mailto:elizabeth.flana=
gan@intel.com">elizabeth.flanagan@intel.com</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 documentation/poky.ent | 2 +-<br>
&gt;&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/documentation/poky.ent b/documentation/poky.ent<br>
&gt;&gt; index 5d12fc1..a8fe99f 100644<br>
&gt;&gt; --- a/documentation/poky.ent<br>
&gt;&gt; +++ b/documentation/poky.ent<br>
&gt;&gt; @@ -59,7 +59,7 @@<br>
&gt;&gt;=C2=A0 &lt;!ENTITY OE_INIT_PATH &quot;&amp;YOCTO_POKY;/oe-init-buil=
d-env&quot;&gt;<br>
&gt;&gt;=C2=A0 &lt;!ENTITY OE_INIT_FILE &quot;oe-init-build-env&quot;&gt;<b=
r>
&gt;&gt;=C2=A0 &lt;!ENTITY UBUNTU_HOST_PACKAGES_ESSENTIAL &quot;gawk wget g=
it-core diffstat unzip<br>
&gt;&gt; texinfo gcc-multilib \ -=C2=A0 =C2=A0 =C2=A0build-essential chrpat=
h socat&quot;&gt;<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0build-essential chrpath socat xsltproc&quot;&=
gt;<br>
&gt;&gt;=C2=A0 &lt;!ENTITY FEDORA_HOST_PACKAGES_ESSENTIAL &quot;gawk make w=
get tar bzip2 gzip<br>
&gt;&gt; python unzip perl patch \ diffutils diffstat git cpp gcc gcc-c++<b=
r>
&gt;&gt; glibc-devel texinfo chrpath \ ccache perl-Data-Dumper perl-Text-Pa=
rseWords<br>
&gt;&gt; perl-Thread-Queue socat&quot;&gt;<br>
&gt;<br>
&gt; Which doc building? Our manuals or docs as part of recipes? Can you gi=
ve an<br>
&gt; example of a failure?<br>
&gt;<br>
<br>
</div></div>yocto-docs. On an Ubuntu based system I was having issues build=
ing<br>
them because xsltproc wasn&#39;t installed during the normal system<br>
install. I&#39;m not sure if other can verify that, but I tried it on two<b=
r>
of my systems with the same results (Mint 17.1 Rebecca).<br></blockquote><d=
iv><br></div><div>Building the documentation from scratch isn&#39;t a norma=
l thing for a user to do, so I wouldn&#39;t add xsltproc to the list of bui=
ld essential packages for builds.</div><div><br></div><div>It should be doc=
umented along with the other dependencies in the instructions for building =
the documentation of course.</div><div><br></div><div>Ross</div></div></div=
></div>

--001a11441462fa7ffa0512941cb3--
