Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDE84E00D60; Wed,  9 May 2018 17:40:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f169.google.com (mail-yb0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2B4CE009F8
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 17:40:54 -0700 (PDT)
Received: by mail-yb0-f169.google.com with SMTP id v12-v6so120292ybl.10
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 17:40:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/4MBE5dIau3q9PUXPJxYGgcu6DwW4dAs/nsJM1J+sQM=;
	b=rVlUvF1rEmnD95AhpUf7kHqCwAspP5UPNQnLvVwCjeBZ2dLqvIf7+vihb0QHLq1tXf
	Ifj/Nl333R2LXcc1/PrkP5HeNzRPPyIObj3qkrp6/hjvysfUXExW5pz7HSXQmlqPWoF5
	qbs3nsrNMWfcOokT/pE2SnTD1c/oSwKLX/oZZV95uSOcgaeH+hI3+94XjTbPs0ePrEB5
	6ZBDqlsMjzZFggzjS958nFJSqAeNM1vabYzlhiL67YQdpA2L5VY4Bh0COWVxyLIU4WNj
	9kbiwT/lJRxR6NowhinDb4eHob8qHnUNQ6xtktCOJzPHbzC9D/bfszkmVmV4tZG2uvEg
	6BfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/4MBE5dIau3q9PUXPJxYGgcu6DwW4dAs/nsJM1J+sQM=;
	b=HWAOIRL+OdhBEPM+lAQHEVAEiLVfRbvBLT8j9SZw+nxZ0F8V2IrnpGPhC9dl5pveuU
	8xwsvWYGd9usqTUTFhu15FnnAXt9YTFOmBbeNe/kMAipMzP51vZVvD9AS2C/TiCvucu3
	GcoONOs88wK1xFhQUy6lZsuA8u3SjTiOy28ep+ag1GYBmj2akHbbVcDQp8lAvNjGq+Lm
	PfwYU9MUlwqGsb52O2qXfzOXjEur7rYMMaUNDhYzLRs/WE1MGC9jLztR5HuGDmAOGku2
	91MhtCm+thIjse1HJ/gMF925jau0QGUHwMzZFAbhnZMkioVeVmyZAgE2ylLzMPOazMOF
	vPDg==
X-Gm-Message-State: ALQs6tBfgpvFTcOcSC1xCvMepYYqeqQG0BuEIMpMG3iC9U0v8J+EDdR8
	4/bHT6AM1fY8BNGHWCE0DMyeEKEZymHnxTBN+0U=
X-Google-Smtp-Source: AB8JxZr5KYzG/ma6XduuoihEcxGC63WW+CH4h7FLTpo7zYWFzLUpd58R0cLkWTygdlJOeYjXGxQzF1XXOkDcMEGjBBY=
X-Received: by 2002:a25:ef46:: with SMTP id
	w6-v6mr28590952ybm.267.1525912853553; 
	Wed, 09 May 2018 17:40:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:748c:0:0:0:0:0 with HTTP;
	Wed, 9 May 2018 17:40:13 -0700 (PDT)
In-Reply-To: <CAJ86T=UpVWZsvYSz4yeDVZp+EmbnhFsWGRGq5EWgG766qTZ-xA@mail.gmail.com>
References: <20180509214855.3330-1-matt.hoosier@gmail.com>
	<CAJ86T=UpVWZsvYSz4yeDVZp+EmbnhFsWGRGq5EWgG766qTZ-xA@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Wed, 9 May 2018 19:40:13 -0500
Message-ID: <CAJgxT3_=C2roF-oP9-VpPZcFTphOyCe8VLpqYjuy+8C628_XZQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bitbake: fetch2/gitsm: avoid live submodule fetching during unpack()
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
X-List-Received-Date: Thu, 10 May 2018 00:40:56 -0000
Content-Type: multipart/alternative; boundary="000000000000982841056bcf45ac"

--000000000000982841056bcf45ac
Content-Type: text/plain; charset="UTF-8"

On Wed, May 9, 2018 at 6:27 PM, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Wed, May 9, 2018 at 2:48 PM, Matt Hoosier <matt.hoosier@gmail.com>
> wrote:
> > From: Matt Hoosier <matt.hoosier@garmin.com>
> >
> > Although the submodules' histories have been fetched during the
> > do_fetch() phase, the mechanics used to clone the workdir copy
> > of the repo haven't been transferring the actual .git/modules
> > directory from the repo fetched into downloads/ during the
> > fetch task.
> >
> > Fix that, and for good measure also explicitly tell Git to avoid
> > hitting the network during do_unpack() of the submodules.
> >
> > Ref:
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=12739
>
> Patches for bitbake should be sent to the bitbake-devel mailing list:
>
>   http://lists.openembedded.org/mailman/listinfo/bitbake-devel



Right, okay. How's that meant to work for stuff developed in-tree with
poky? Do you manually want the 'bitbake/' leading directory stripped off
before emailing the patch?



>
>
> > ---
> >  bitbake/lib/bb/fetch2/gitsm.py | 12 +++++++++++-
> >  1 file changed, 11 insertions(+), 1 deletion(-)
> >
> > diff --git a/bitbake/lib/bb/fetch2/gitsm.py
> b/bitbake/lib/bb/fetch2/gitsm.py
> > index 0aff1008e5..1f3fc44352 100644
> > --- a/bitbake/lib/bb/fetch2/gitsm.py
> > +++ b/bitbake/lib/bb/fetch2/gitsm.py
> > @@ -132,4 +132,14 @@ class GitSM(Git):
> >
> >          if self.uses_submodules(ud, d, ud.destdir):
> >              runfetchcmd(ud.basecmd + " checkout " +
> ud.revisions[ud.names[0]], d, workdir=ud.destdir)
> > -            runfetchcmd(ud.basecmd + " submodule update --init
> --recursive", d, workdir=ud.destdir)
> > +
> > +            # Copy over the submodules' fetched histories too.
> > +            if ud.bareclone:
> > +                repo_conf = ud.destdir
> > +            else:
> > +                repo_conf = os.path.join(ud.destdir, '.git')
> > +            runfetchcmd("cp -pr %s %s" % (os.path.join(ud.clonedir,
> 'modules'), repo_conf), d)
> > +
> > +            # Careful not to hit the network during unpacking; all
> history should already
> > +            # be fetched.
> > +            runfetchcmd(ud.basecmd + " submodule update --init
> --recursive --no-fetch", d, workdir=ud.destdir)
> > --
> > 2.13.6
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000982841056bcf45ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Wed, May 9, 2018 at 6:27 PM, Andre McCurdy <span dir=3D=
"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_blank">armccurd=
y@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Wed, Ma=
y 9, 2018 at 2:48 PM, Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@gmail=
.com">matt.hoosier@gmail.com</a>&gt; wrote:<br>
&gt; From: Matt Hoosier &lt;<a href=3D"mailto:matt.hoosier@garmin.com">matt=
.hoosier@garmin.com</a>&gt;<br>
&gt;<br>
&gt; Although the submodules&#39; histories have been fetched during the<br=
>
&gt; do_fetch() phase, the mechanics used to clone the workdir copy<br>
&gt; of the repo haven&#39;t been transferring the actual .git/modules<br>
&gt; directory from the repo fetched into downloads/ during the<br>
&gt; fetch task.<br>
&gt;<br>
&gt; Fix that, and for good measure also explicitly tell Git to avoid<br>
&gt; hitting the network during do_unpack() of the submodules.<br>
&gt;<br>
&gt; Ref:<br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12739" =
rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.<wbr>org=
/show_bug.cgi?id=3D12739</a><br>
<br>
</span>Patches for bitbake should be sent to the bitbake-devel mailing list=
:<br>
<br>
=C2=A0 <a href=3D"http://lists.openembedded.org/mailman/listinfo/bitbake-de=
vel" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/<wb=
r>mailman/listinfo/bitbake-devel</a></blockquote><div><br></div><div><br></=
div><div>Right, okay. How&#39;s that meant to work for stuff developed in-t=
ree with poky? Do you manually want the &#39;bitbake/&#39; leading director=
y stripped off before emailing the patch?</div><div><br></div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt; ---<br>
&gt;=C2=A0 bitbake/lib/bb/fetch2/gitsm.py | 12 +++++++++++-<br>
&gt;=C2=A0 1 file changed, 11 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; diff --git a/bitbake/lib/bb/fetch2/gitsm.<wbr>py b/bitbake/lib/bb/fetc=
h2/gitsm.<wbr>py<br>
&gt; index 0aff1008e5..1f3fc44352 100644<br>
&gt; --- a/bitbake/lib/bb/fetch2/gitsm.<wbr>py<br>
&gt; +++ b/bitbake/lib/bb/fetch2/gitsm.<wbr>py<br>
&gt; @@ -132,4 +132,14 @@ class GitSM(Git):<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if self.uses_submodules(ud, d, ud.de=
stdir):<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(ud.basecmd=
 + &quot; checkout &quot; + ud.revisions[ud.names[0]], d, workdir=3Dud.dest=
dir)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(ud.basecmd + &q=
uot; submodule update --init --recursive&quot;, d, workdir=3Dud.destdir)<br=
>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Copy over the submodules&=
#39; fetched histories too.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ud.bareclone:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repo_conf =3D=
 ud.destdir<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 repo_conf =3D=
 os.path.join(ud.destdir, &#39;.git&#39;)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(&quot;cp -pr %s=
 %s&quot; % (os.path.join(ud.clonedir, &#39;modules&#39;), repo_conf), d)<b=
r>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # Careful not to hit the ne=
twork during unpacking; all history should already<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # be fetched.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 runfetchcmd(ud.basecmd + &q=
uot; submodule update --init --recursive --no-fetch&quot;, d, workdir=3Dud.=
destdir)<br>
&gt; --<br>
&gt; 2.13.6<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
</font></span></blockquote></div><br></div></div>

--000000000000982841056bcf45ac--
