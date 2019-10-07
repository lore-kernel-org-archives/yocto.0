Return-Path: <btgoodwin@geontech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15790E00805; Mon,  7 Oct 2019 08:17:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85BAAE00805
	for <yocto@yoctoproject.org>; Mon,  7 Oct 2019 08:17:34 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id o12so19697357qtf.3
	for <yocto@yoctoproject.org>; Mon, 07 Oct 2019 08:17:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=geontech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=l1ZstuwCQ8+RYIGyKdJ96rE02HNxyxKKky63lHtcBPA=;
	b=rj9ITnn+UUIv9euOkrNy4KoOQ9H0ELATN0G5oI2wrGfTFDpdAnBVDHWb/vcdxMcvkC
	J4qx8GZuAdWE4VYXbP2VCBVC3CSeJ2Oh/AhTI9M7R82TlAWtqmMMKtrV28W1yTshPejc
	IvLQILo36287R3KAJljQQLUQWAm7tGRCBt8FY1YdLcp2FM1sQrNdW8+QC/GgzIZI+Gl1
	h6Fvfhmscx+sun7lyt+4nARGaHKOEa8l+sEZLEtwDUOD7cgpppI2FJPwUuESrTb8xy8v
	0NqQtWIPYjpiwTFFO8Z2H2aj4JVZJ8JJkMv/1yi6jltBev9fg/xNujA+J2YRC/lEIPsz
	qFfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=l1ZstuwCQ8+RYIGyKdJ96rE02HNxyxKKky63lHtcBPA=;
	b=r2t8OXZ4keWdb5a/mvMVerGcpG5NlC47HdH4rp4QxRqc9qWIwrUp9BHYSJv02vo/3r
	jdV/MNUqS+2gZVKLkx69/5UkU8uqbDfdeWI5+hR7MSBQbuEMGQeYTSoX1duFpGmpF8oN
	yqfk5hvTsr9Na9gCb/OBZ3iyWmAQAcxsrrFxYM41Oqi3QpAav0RFZms/psZtqcOcBZKC
	l6K1B4qGcVJT1P45FnqJx0o07tMObnX18iWvIaYoY2lnM7OSASjKLETk+1RSD2LMnn2U
	kYYx/W0hlcnvE+y7AOnrNR3AyPFX4SM5OS6F5pJVDhPubiB/yjshUNpyi+4TEILc40Mr
	5iVA==
X-Gm-Message-State: APjAAAV+Kz+DTy4EVyV9nc4NLVpvgZXwBtyhDpa+LQDyeYwT/Pp9PDk6
	k9nWUXh1t5CvVlnBcnOGuT4MMVU+An5E3Vq11Reu2w==
X-Google-Smtp-Source: APXvYqwU2WRWoAhSlFGw5xYnhOXLcNSw/Jb59VP+MGtEwPz/wvQd6WXcy19/aMBNZ7lUQzaY0jvPKD0lHowFZFDu8Hg=
X-Received: by 2002:ac8:2eaa:: with SMTP id h39mr30420164qta.389.1570461453377;
	Mon, 07 Oct 2019 08:17:33 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=imYTN+JCcHZU4eUfkur1wxwDRNnQzg6Y+W+OUrHar0R9zA@mail.gmail.com>
	<CABudRdy-ut1=4gReM6TEqwx0NWJT=w7eiCP_DOKQS4qwV_Hpcg@mail.gmail.com>
	<CA+4=imYcDHCPxtzoNinad3y-t2TuqAbp5=irpeKTvoSF1EzhrQ@mail.gmail.com>
In-Reply-To: <CA+4=imYcDHCPxtzoNinad3y-t2TuqAbp5=irpeKTvoSF1EzhrQ@mail.gmail.com>
From: Thomas Goodwin <btgoodwin@geontech.com>
Date: Mon, 7 Oct 2019 11:17:21 -0400
Message-ID: <CABudRdz8EfK5_GQCcEDT2+T+5O1wHDFvR_Chx7W4=OY0yi3SWw@mail.gmail.com>
To: Yann Dirson <yann.dirson@blade-group.com>
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
X-List-Received-Date: Mon, 07 Oct 2019 15:17:36 -0000
Content-Type: multipart/alternative; boundary="0000000000000ffea00594538d64"

--0000000000000ffea00594538d64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The CROPS changes are all upstream now, so I've put up an example gist
here: https://gist.github.com/btgoodwin/028c3a63315a27cae3c5989455058eef.

There are comments throughout the files, and I'm still hammering out the
"deploy" stage.  There are ongoing quirks like in the case of deploying the
SDK, despite running the populate_sdk task at the start of the stage, the
related sdk directory doesn't exist or is empty as if it was not unpacked
from the shared state cache (I could not replicate this behavior at my
desk).  Another odd behavior was getting a bitbake worker halt error as if
the container ran out of space or memory, but the server doesn't agree with
that information.

One improvement I would suggest for anyone going this route would be to
have 2 separate definitions for artifacts.  The files only get touched in
the setup stage, so that should be the long-running artifact to collect
whereas all others could be trimmed back to perhaps a few minutes of keep
time.  This would prevent a copy of those artifacts being present at every
job and retained for a week (which would be a good GB for a whole pipeline
depending on how many layers and the size of the layer history).

Cheers,

Thomas


On Wed, Sep 25, 2019 at 5:17 AM Yann Dirson <yann.dirson@blade-group.com>
wrote:

> Hi Thomas,
>
> Le mar. 24 sept. 2019 =C3=A0 14:36, Thomas Goodwin <btgoodwin@geontech.co=
m> a
> =C3=A9crit :
>
>> Hi Yann,
>>
>> Thanks for sharing! We're working through something similar using a twea=
k
>> to the CROPS docker containers and GitLab-CI (we started with autobuilde=
r
>> 2, so we've actually merged quite a bit of that experience with our GitL=
ab
>> setup).
>>
>
> Thanks for pointing me to CROPS, that will help bringing Docker support
> here :)
>
>
>> Using docker runners as our cluster, we setup volume mounts to the host
>> system for caching the shared state and downloads directories (as well a=
s
>> other artifacts upon successful build).  As part of the CI setup, we the=
n
>> insert a build/conf/auto.conf file that enforces the usage of that volum=
e
>> (DL_DIR and SSTATE_DIR).  At the deploy stage (package feeds, etc. like
>> you're doing), we did the same thing -- copy out to that path so that it
>> ends up on the network share rather than the container.
>>
>> Also like you, we're using the "include" and "extends" instructions
>> throughout so that we have a top-level "common" set of CI YAML includes
>> alongside a growing set of repositories for each machine-specific build.
>> Each of those repositories follows the Yocto release branching style so
>> that we can trace build success to newer releases by simply creating a
>> branch and using the branch name for the initial clone of the layers.
>>
>> One thing that came directly from our autobuilder 2 experience is a way
>> to inject extra variables into the autoconf.  AB2 called this *EXTRAARGS=
*,
>> which was simply a list of variables to add.  For our common CI "setup"
>> stage, we check for a file of the same name (extraargs.conf) and append =
it
>> to the auto.conf if it exists.  In this way our downstream projects can
>> simply include that file if necessary and version control it as new rele=
ase
>> branches are added.
>>
>> One of the drawbacks we've seen in going this route is that every
>> repository has its own build timeout limit, which is always laughably
>> small.  There's a backlog issue on GitLab for a global definition of thi=
s
>> value, but it's slated for 12.7 (I think).
>>
>> I'm hoping to put a write-up out soon with examples for how this all
>> worked together, but I want to hold off until we can get the CROPS chang=
es
>> we needed upstreamed in a way that doesn't break those containers for
>> everyone else (something about the entrypoint doesn't appreciate the
>> runner's bash/shell detection script).
>>
>
> Looking forward to this!
>
>
>> Cheers,
>>
>> Thomas
>>
>> Geon Technologies, LLC
>>
>>
>> On Mon, Sep 23, 2019 at 5:50 PM Yann Dirson <yann.dirson@blade-group.com=
>
>> wrote:
>>
>>> Hi all,
>>>
>>> We released our scripts to help in setting up continuous integration
>>> of a yocto-based project
>>> using Gitlab-CI.  You'll find the repository at
>>> https://github.com/BladeGroup/gitlab-oe
>>>
>>> Although we're using this in production, it still has a couple of
>>> rough edges and may need
>>> tuning for different usages.  We'd love to hear how well it fits (or
>>> doesn't fit ;) with other use
>>> cases, and will gladly consider evolutions to make it more generally
>>> usable.
>>>
>>> Best regards,
>>> --
>>> Yann Dirson <yann@blade-group.com>
>>> Blade / Shadow -- http://shadow.tech
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
>
>

--0000000000000ffea00594538d64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The CROPS changes are all upstream now, s=
o I&#39;ve put up an example gist here:=C2=A0<a href=3D"https://gist.github=
.com/btgoodwin/028c3a63315a27cae3c5989455058eef">https://gist.github.com/bt=
goodwin/028c3a63315a27cae3c5989455058eef</a>.<div><br></div><div>There are =
comments throughout the files, and I&#39;m still hammering out the &quot;de=
ploy&quot; stage.=C2=A0 There are ongoing quirks like in the case of deploy=
ing the SDK, despite running the populate_sdk task at the start of the stag=
e, the related sdk directory doesn&#39;t exist or is empty as if it was not=
 unpacked from the shared state cache (I could not replicate this behavior =
at my desk).=C2=A0 Another odd behavior was getting a bitbake worker halt e=
rror as if the container ran out of space or memory, but the server doesn&#=
39;t agree with that information.<div><br></div><div>One improvement I woul=
d suggest for anyone going this route would be to have 2 separate definitio=
ns for artifacts.=C2=A0 The files only get touched in the setup stage, so t=
hat should be the long-running artifact to collect whereas all others could=
 be trimmed back to perhaps a few minutes of keep time.=C2=A0 This would pr=
event a copy of those artifacts being present at every job and retained for=
 a week (which would be a good GB for a whole pipeline depending on how man=
y layers and the size of the layer history).</div><div><br></div><div>Cheer=
s,</div><div><br></div><div>Thomas</div><div><div><br></div></div></div><in=
put name=3D"virtru-metadata" type=3D"hidden" value=3D"{&quot;email-policy&q=
uot;:{&quot;state&quot;:&quot;closed&quot;,&quot;expirationUnit&quot;:&quot=
;days&quot;,&quot;disableCopyPaste&quot;:false,&quot;disablePrint&quot;:fal=
se,&quot;disableForwarding&quot;:false,&quot;enableNoauth&quot;:false,&quot=
;persistentProtection&quot;:false,&quot;expandedWatermarking&quot;:false,&q=
uot;expires&quot;:false,&quot;isManaged&quot;:false},&quot;attachments&quot=
;:{},&quot;compose-id&quot;:&quot;3&quot;,&quot;compose-window&quot;:{&quot=
;secure&quot;:false}}"></div><br><div class=3D"gmail_quote" style=3D""><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 25, 2019 at 5:17 AM Yann Dirs=
on &lt;<a href=3D"mailto:yann.dirson@blade-group.com">yann.dirson@blade-gro=
up.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Thomas,<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 24 sept=
. 2019 =C3=A0=C2=A014:36, Thomas Goodwin &lt;<a href=3D"mailto:btgoodwin@ge=
ontech.com" target=3D"_blank">btgoodwin@geontech.com</a>&gt; a =C3=A9crit=
=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">Hi Yann,<div><br></div><div>Thanks for sharing! W=
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
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr">Yann Dirso=
n &lt;<a href=3D"mailto:yann@blade-group.com" target=3D"_blank">yann@blade-=
group.com</a>&gt;<br>Blade / Shadow -- <a href=3D"http://shadow.tech" targe=
t=3D"_blank">http://shadow.tech</a><br><br></div></div>
</blockquote></div></div>

--0000000000000ffea00594538d64--
