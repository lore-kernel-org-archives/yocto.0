Return-Path: <yann.dirson@blade-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC9B5E00D98; Wed, 25 Sep 2019 02:17:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
	[209.85.167.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 946B3E00D89
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 02:17:22 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id 83so4282119oii.1
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2019 02:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=blade-group.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CPNKZFGrR9z0qK+dhGaeBVVzlB1hgM6hEELvQQCEHvM=;
	b=Brmq58wD4zreTB8YbpyuIeqbd6JmxjmEXeRG1IkUoJyyM74JPegTaBNT7g9a7Dxjx/
	dqxTvdHJPt7j9GzVZyPwX0q//ua9jp6QnY1FiSkPUJZEXDjpU00ZetV80qRrkSeG0KnZ
	U1byAchCRA8JbsbL6mvpNRoyf696W37WC4vnbaNd6098DLBAurXv1rF2WxcEOjGO0wmG
	xzKsLA0zsyDWLTcZmwSSGplcnLx8tbIDsMYyB+4mbd3KinMMKWZGdcH0bivXcK+2Abit
	bw4+ulMRUgK/Sd+8/tHpIDpOFB0xgWWPlm6q+RiDoyjNXjU1UG1IBUEKZSbVgsDlPlKO
	J8vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CPNKZFGrR9z0qK+dhGaeBVVzlB1hgM6hEELvQQCEHvM=;
	b=ghN57G22RIxP1X+m3VHemud3egjIc1MKfcAKZEYi/tkwLvj3bKTykAmXeq3VGuIFG7
	PlGJnFRpIrEEpQtpwjZ6uLnY+//vWhgE8TNoZOuARtyjA3MeG83Q24d7wjhjQr2VuT2X
	4mhD2n7MK1A763N6wHzPZxW4crrgQNO//sg/8qXID7Ajrmwm6joUmjbqDXgTEZyrS6Hz
	tqfBlxWqalq5CMpRlMdmAATIbAKoPdsveg5Mqwjx+/bmiveKY7hg9xUI/LqXFjMTEgGt
	wdbp9jBsNsfzNQT8dSMA0uYUbfuxPz6tsZx4y5Brek5rAXk8dA46KuekCEYv1mqfkkrs
	WuAA==
X-Gm-Message-State: APjAAAW12R7jOETdO4Y30uEezHBFzSsnU8VbdX+JI2uP3i+Mqa1bxkSs
	E5Rk0G4Jeh/ukilQHaW7X+bdkj/wUanW3fCXfOxvJA==
X-Google-Smtp-Source: APXvYqwmbwKYC8Uq8H9fn9olAprhmTdLZyqNqUyhVHrGNKuyaUq6cd3o+M00b9lKszXbqdrSNXP/HJjy1dU+Os9s8WI=
X-Received: by 2002:aca:645:: with SMTP id 66mr3631168oig.117.1569403041962;
	Wed, 25 Sep 2019 02:17:21 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
	<CABudRdy-ut1=4gReM6TEqwx0NWJT=w7eiCP_DOKQS4qwV_Hpcg@mail.gmail.com>
In-Reply-To: <CABudRdy-ut1=4gReM6TEqwx0NWJT=w7eiCP_DOKQS4qwV_Hpcg@mail.gmail.com>
From: Yann Dirson <yann.dirson@blade-group.com>
Date: Wed, 25 Sep 2019 11:17:10 +0200
Message-ID: <CA+4=imYcDHCPxtzoNinad3y-t2TuqAbp5=irpeKTvoSF1EzhrQ@mail.gmail.com>
To: Thomas Goodwin <btgoodwin@geontech.com>
Cc: yocto@yoctoproject.org, Simon Spannagel <simon.spannagel@cern.ch>,
	Adrian Bunk <bunk@stusta.de>
Subject: Re: gitlab-ci helper scripts for OpenEmbedded builds
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
X-List-Received-Date: Wed, 25 Sep 2019 09:17:23 -0000
Content-Type: multipart/alternative; boundary="000000000000d3732105935d1e87"

--000000000000d3732105935d1e87
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Thomas,

Le mar. 24 sept. 2019 =C3=A0 14:36, Thomas Goodwin <btgoodwin@geontech.com>=
 a
=C3=A9crit :

> Hi Yann,
>
> Thanks for sharing! We're working through something similar using a tweak
> to the CROPS docker containers and GitLab-CI (we started with autobuilder
> 2, so we've actually merged quite a bit of that experience with our GitLa=
b
> setup).
>

Thanks for pointing me to CROPS, that will help bringing Docker support
here :)


> Using docker runners as our cluster, we setup volume mounts to the host
> system for caching the shared state and downloads directories (as well as
> other artifacts upon successful build).  As part of the CI setup, we then
> insert a build/conf/auto.conf file that enforces the usage of that volume
> (DL_DIR and SSTATE_DIR).  At the deploy stage (package feeds, etc. like
> you're doing), we did the same thing -- copy out to that path so that it
> ends up on the network share rather than the container.
>
> Also like you, we're using the "include" and "extends" instructions
> throughout so that we have a top-level "common" set of CI YAML includes
> alongside a growing set of repositories for each machine-specific build.
> Each of those repositories follows the Yocto release branching style so
> that we can trace build success to newer releases by simply creating a
> branch and using the branch name for the initial clone of the layers.
>
> One thing that came directly from our autobuilder 2 experience is a way t=
o
> inject extra variables into the autoconf.  AB2 called this *EXTRAARGS*,
> which was simply a list of variables to add.  For our common CI "setup"
> stage, we check for a file of the same name (extraargs.conf) and append i=
t
> to the auto.conf if it exists.  In this way our downstream projects can
> simply include that file if necessary and version control it as new relea=
se
> branches are added.
>
> One of the drawbacks we've seen in going this route is that every
> repository has its own build timeout limit, which is always laughably
> small.  There's a backlog issue on GitLab for a global definition of this
> value, but it's slated for 12.7 (I think).
>
> I'm hoping to put a write-up out soon with examples for how this all
> worked together, but I want to hold off until we can get the CROPS change=
s
> we needed upstreamed in a way that doesn't break those containers for
> everyone else (something about the entrypoint doesn't appreciate the
> runner's bash/shell detection script).
>

Looking forward to this!


> Cheers,
>
> Thomas
>
> Geon Technologies, LLC
>
>
> On Mon, Sep 23, 2019 at 5:50 PM Yann Dirson <yann.dirson@blade-group.com>
> wrote:
>
>> Hi all,
>>
>> We released our scripts to help in setting up continuous integration
>> of a yocto-based project
>> using Gitlab-CI.  You'll find the repository at
>> https://github.com/BladeGroup/gitlab-oe
>>
>> Although we're using this in production, it still has a couple of
>> rough edges and may need
>> tuning for different usages.  We'd love to hear how well it fits (or
>> doesn't fit ;) with other use
>> cases, and will gladly consider evolutions to make it more generally
>> usable.
>>
>> Best regards,
>> --
>> Yann Dirson <yann@blade-group.com>
>> Blade / Shadow -- http://shadow.tech
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--=20
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--000000000000d3732105935d1e87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Thomas,<br></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 24 sept. 2019 =
=C3=A0=C2=A014:36, Thomas Goodwin &lt;<a href=3D"mailto:btgoodwin@geontech.=
com">btgoodwin@geontech.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">H=
i Yann,<input name=3D"virtru-metadata" value=3D"{&quot;email-policy&quot;:{=
&quot;state&quot;:&quot;closed&quot;,&quot;expirationUnit&quot;:&quot;days&=
quot;,&quot;disableCopyPaste&quot;:false,&quot;disablePrint&quot;:false,&qu=
ot;disableForwarding&quot;:false,&quot;enableNoauth&quot;:false,&quot;persi=
stentProtection&quot;:false,&quot;expandedWatermarking&quot;:false,&quot;ex=
pires&quot;:false,&quot;isManaged&quot;:false},&quot;attachments&quot;:{},&=
quot;compose-id&quot;:&quot;21&quot;,&quot;compose-window&quot;:{&quot;secu=
re&quot;:false}}" type=3D"hidden"><div><br></div><div>Thanks for sharing! W=
e&#39;re working through something similar using a tweak to the CROPS docke=
r containers and GitLab-CI (we started with autobuilder 2, so we&#39;ve act=
ually merged quite a bit of that experience with our GitLab setup).</div></=
div></div></blockquote><div><br></div><div>Thanks for pointing me to CROPS,=
 that will help bringing Docker support here :)</div><div> <br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"lt=
r"><div><br></div><div>Using docker runners as our cluster, we setup volume=
 mounts to the host system for caching the shared state and downloads direc=
tories (as well as other artifacts upon successful build).=C2=A0 As part of=
 the CI setup,=C2=A0we then insert a build/conf/auto.conf file that enforce=
s the usage of that volume (DL_DIR and SSTATE_DIR).=C2=A0 At the deploy sta=
ge (package feeds, etc. like you&#39;re doing), we did the same thing -- co=
py out to that path so that it ends up on the network share rather than the=
 container.</div><div><br></div><div>Also like you, we&#39;re using the &qu=
ot;include&quot; and &quot;extends&quot; instructions throughout so that we=
 have a top-level &quot;common&quot; set of CI YAML includes alongside a gr=
owing set of repositories for each machine-specific build.=C2=A0 Each of th=
ose repositories follows the Yocto release branching style so that we can t=
race build success to newer releases by simply creating a branch and using =
the branch name for the initial clone of the layers.</div><div><br></div><d=
iv>One thing that came directly from our autobuilder 2 experience is a way =
to inject extra variables into the autoconf.=C2=A0 AB2 called this <i>EXTRA=
ARGS</i>, which was simply a list of variables to add.=C2=A0 For our common=
 CI &quot;setup&quot; stage, we check for a file of the same name (extraarg=
s.conf) and append it to the auto.conf if it exists.=C2=A0 In this way our =
downstream projects can simply include that file if necessary and version c=
ontrol it as new release branches are added.</div><div><br></div><div>One o=
f the drawbacks we&#39;ve seen in going this route is that every repository=
 has its own build timeout limit, which is always laughably small.=C2=A0 Th=
ere&#39;s a backlog issue on GitLab for a global definition of this value, =
but it&#39;s slated for 12.7 (I think).</div><div><br></div><div>I&#39;m ho=
ping to put a write-up out soon with examples for how this all worked toget=
her, but I want to hold off until we can get the CROPS changes we needed up=
streamed in a way that doesn&#39;t break those containers for everyone else=
 (something about the entrypoint doesn&#39;t appreciate the runner&#39;s ba=
sh/shell detection script).</div></div></div></blockquote><div><br></div><d=
iv>Looking forward to this!</div><div> <br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><d=
iv>Cheers,</div><div><br></div><div>Thomas</div><div><br></div><div>Geon Te=
chnologies, LLC</div><div><br></div><div></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 23, 2019 at 5:50=
 PM Yann Dirson &lt;<a href=3D"mailto:yann.dirson@blade-group.com" target=
=3D"_blank">yann.dirson@blade-group.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hi all,<br>
<br>
We released our scripts to help in setting up continuous integration<br>
of a yocto-based project<br>
using Gitlab-CI.=C2=A0 You&#39;ll find the repository at<br>
<a href=3D"https://github.com/BladeGroup/gitlab-oe" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/BladeGroup/gitlab-oe</a><br>
<br>
Although we&#39;re using this in production, it still has a couple of<br>
rough edges and may need<br>
tuning for different usages.=C2=A0 We&#39;d love to hear how well it fits (=
or<br>
doesn&#39;t fit ;) with other use<br>
cases, and will gladly consider evolutions to make it more generally usable=
.<br>
<br>
Best regards,<br>
-- <br>
Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" target=3D"_blank">y=
ann@blade-group.com</a>&gt;<br>
Blade / Shadow -- <a href=3D"http://shadow.tech" rel=3D"noreferrer" target=
=3D"_blank">http://shadow.tech</a><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">Yann Dirson &lt;<a href=3D"mailto:yann@blade-group.com" tar=
get=3D"_blank">yann@blade-group.com</a>&gt;<br>Blade / Shadow -- <a href=3D=
"http://shadow.tech" target=3D"_blank">http://shadow.tech</a><br><br></div>=
</div>

--000000000000d3732105935d1e87--
