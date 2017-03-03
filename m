Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6C74E009C2; Thu,  2 Mar 2017 20:36:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
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
	*      [209.85.215.48 listed in list.dnswl.org]
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225C5E00887
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 20:36:22 -0800 (PST)
Received: by mail-lf0-f48.google.com with SMTP id j90so5677802lfk.2
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 20:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XI1E79QVCfLMeWJUQPg/qz6UdhXMzRtAB8YCcdqovPs=;
	b=XoPqrkFEDd37XURwFtzAgK41IAtBW8BuzFAfWoYQL/FoQ/VT4CIWY5vnnd/JlC/lg8
	aXdlvXsNvwRvJpw2BfkZgsW0xlLFy5BW0cYYuMEOVwNFlnk17qj3p7JU91y0JwsWe31o
	7b+rQQMWDXBh+9GfFuLTeZUiMPg1U2DJokapr182Onov/EtASwNq1Qm4/BXgB2uCda8+
	T9HHiHZWkI3rUGhznZ5Eturp4bMtdDf3tjpwc53OYYL0oDiZws54gzi64K8IanCOPrYw
	t08Kav/iri3Q6+HwV00FpIZw9xE1eGl9xeetRLUOBNlbHldKhzzMUHc3YymcXStmYpyQ
	k2jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XI1E79QVCfLMeWJUQPg/qz6UdhXMzRtAB8YCcdqovPs=;
	b=RocgmVxUIE2yGwTrsEA82i5nJGeBWzWZI3DERawpxVyQVfFgbtdBdU1t1ObFzMsF8J
	UC4iPsh7EU077yGlvR17Ea2w+iAW/4cqzNWeGsYwGOrqtZFrwAuWhDabiby+lREvgt7L
	AQLLwq272rQsVCJ9EmkGnojMoQPkGGhdxRLcOZQ4v5SF8dzkq6nGXq8ho5FOV9+mWQoy
	LhaA/fmUSLaEvUZDxS34uedsetPAqIpjyCvdyC5YpnYRMljBp8wkTxbUhmQIivmf3dQQ
	M2Al3h4GEVTdtt3TwmL9q3WHijhi4zw2nmKEza7qHTezacca5Hfs4okLKdlJlTFp1eqI
	YAMw==
X-Gm-Message-State: AMke39li/Qe9CswRzx7yRSl5XiIfqM5FKrcbwFeiS4pYncfVKNwoYEydYZcdxJlTlN76mLlLqauEY0NBjnM96Q==
X-Received: by 10.25.181.73 with SMTP id e70mr210710lff.98.1488515781621; Thu,
	02 Mar 2017 20:36:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 20:36:21 -0800 (PST)
In-Reply-To: <20170302230225.GR7350@denix.org>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<20170302165637.GO7350@denix.org>
	<CAF1M0z40DS-FDwhomoP4bLkj29RrNDAHS6oB_Z5zLecfVoPC=Q@mail.gmail.com>
	<20170302230225.GR7350@denix.org>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Fri, 3 Mar 2017 10:06:21 +0530
Message-ID: <CAF1M0z7a9xcTVZgi=UpfiGoEq+3GPKpU+Uh1QvfzTiwFKY78-g@mail.gmail.com>
To: Denys Dmytriyenko <denis@denix.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Fri, 03 Mar 2017 04:36:26 -0000
Content-Type: multipart/alternative; boundary=001a113c441467ffa40549cc16af

--001a113c441467ffa40549cc16af
Content-Type: text/plain; charset=UTF-8

Hi Denys,

I am using linux-ti-staging 4.4,

zImage--4.4.41+git0+7c580a51af-r22a-beaglebone-20170302194632.bin

Image: core-image-minimal

Could you pls clarify where i am going wrong?

Thanks,
satya

On Fri, Mar 3, 2017 at 4:32 AM, Denys Dmytriyenko <denis@denix.org> wrote:

> On Fri, Mar 03, 2017 at 02:31:42AM +0530, SatyaNarayana Sampangi wrote:
> > Hi Denys,
> >
> > I build, system with krogoth and meta-ti with both version same, after
> > running on the beaglebone it is showing like below,
> >
> > anything I need to change.
> >
> > No lease, forking to background
> > done.
> > hwclock: can't open '/dev/misc/rtc': No such file or directory
> > Starting syslogd/klogd: done
> > INIT: Id "O0" respawning too fast: disabled for 5 minutes
> > [   92.942038] random: nonblocking pool is initialized
> > INIT: Id "O0" respawning too fast: disabled for 5 minutes
> >
> > Note: This I did not get in Daisy 1.6 and meta-ti with compatible.
> >
> > Could you help me here.
>
> Would be nice to understand which kernel and which image you are building
> and
> using. The console in recent kernels moved from ttyO to ttyS, although our
> kernel has fallback mechanism and should still boot with ttyO, hence the
> question.
>
> --
> Denys
>
>
> > On Thu, Mar 2, 2017 at 10:26 PM, Denys Dmytriyenko <denis@denix.org>
> wrote:
> >
> > > On Thu, Mar 02, 2017 at 04:19:33PM +0000, Burton, Ross wrote:
> > > > On 2 March 2017 at 16:14, SatyaNarayana Sampangi <
> satya.2891@gmail.com>
> > > > wrote:
> > > >
> > > > > I am using beagle bone black, for which meta-ti layer and poky
> versions
> > > > > compatible is daisy 1.6 as mention in the official website of
> yocto.
> > > If I
> > > > > upgrade the poky to the latest version, then compatibity will be
> lost.
> > > Pls
> > > > > help me out here.
> > > > >
> > > >
> > > > http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/ has branches for
> > > krogoth
> > > > (2.1) and morty (2.2).  Where did you see that 1.6 is the last
> release
> > > > supported?
> > >
> > > ^^^^^^^^^^ This is all that matters! The rest is just fluff...
> > >
> > > --
> > > Denys
> > >
>

--001a113c441467ffa40549cc16af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Denys,<div><br></div><div>I am using linux-ti-staging 4=
.4,</div><div><br></div><div>zImage--4.4.41+git0+7c580a51af-r22a-beaglebone=
-20170302194632.bin<br></div><div><br></div><div>Image: core-image-minimal<=
/div><div><br></div><div>Could you pls clarify where i am going wrong?</div=
><div><br></div><div>Thanks,</div><div>satya</div></div><div class=3D"gmail=
_extra"><br><div class=3D"gmail_quote">On Fri, Mar 3, 2017 at 4:32 AM, Deny=
s Dmytriyenko <span dir=3D"ltr">&lt;<a href=3D"mailto:denis@denix.org" targ=
et=3D"_blank">denis@denix.org</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><span class=3D"">On Fri, Mar 03, 2017 at 02:31:42AM +0530, Satya=
Narayana Sampangi wrote:<br>
&gt; Hi Denys,<br>
&gt;<br>
&gt; I build, system with krogoth and meta-ti with both version same, after=
<br>
&gt; running on the beaglebone it is showing like below,<br>
&gt;<br>
&gt; anything I need to change.<br>
&gt;<br>
&gt; No lease, forking to background<br>
&gt; done.<br>
&gt; hwclock: can&#39;t open &#39;/dev/misc/rtc&#39;: No such file or direc=
tory<br>
&gt; Starting syslogd/klogd: done<br>
&gt; INIT: Id &quot;O0&quot; respawning too fast: disabled for 5 minutes<br=
>
&gt; [=C2=A0 =C2=A092.942038] random: nonblocking pool is initialized<br>
&gt; INIT: Id &quot;O0&quot; respawning too fast: disabled for 5 minutes<br=
>
&gt;<br>
&gt; Note: This I did not get in Daisy 1.6 and meta-ti with compatible.<br>
&gt;<br>
&gt; Could you help me here.<br>
<br>
</span>Would be nice to understand which kernel and which image you are bui=
lding and<br>
using. The console in recent kernels moved from ttyO to ttyS, although our<=
br>
kernel has fallback mechanism and should still boot with ttyO, hence the<br=
>
question.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
Denys<br>
</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; On Thu, Mar 2, 2017 at 10:26 PM, Denys Dmytriyenko &lt;<a href=3D"mail=
to:denis@denix.org">denis@denix.org</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; On Thu, Mar 02, 2017 at 04:19:33PM +0000, Burton, Ross wrote:<br>
&gt; &gt; &gt; On 2 March 2017 at 16:14, SatyaNarayana Sampangi &lt;<a href=
=3D"mailto:satya.2891@gmail.com">satya.2891@gmail.com</a>&gt;<br>
&gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I am using beagle bone black, for which meta-ti layer a=
nd poky versions<br>
&gt; &gt; &gt; &gt; compatible is daisy 1.6 as mention in the official webs=
ite of yocto.<br>
&gt; &gt; If I<br>
&gt; &gt; &gt; &gt; upgrade the poky to the latest version, then compatibit=
y will be lost.<br>
&gt; &gt; Pls<br>
&gt; &gt; &gt; &gt; help me out here.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti=
/" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/<wbr>cg=
it/cgit.cgi/meta-ti/</a> has branches for<br>
&gt; &gt; krogoth<br>
&gt; &gt; &gt; (2.1) and morty (2.2).=C2=A0 Where did you see that 1.6 is t=
he last release<br>
&gt; &gt; &gt; supported?<br>
&gt; &gt;<br>
&gt; &gt; ^^^^^^^^^^ This is all that matters! The rest is just fluff...<br=
>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Denys<br>
&gt; &gt;<br>
</div></div></blockquote></div><br></div>

--001a113c441467ffa40549cc16af--
