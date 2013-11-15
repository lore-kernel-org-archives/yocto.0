Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61B2AE0154F
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 00:54:22 -0800 (PST)
Received: by mail-oa0-f43.google.com with SMTP id g12so3652054oah.30
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 00:54:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JVOTrmvTrvvnGdq5vNSNS6THrMEqwX7QvFYNLaS/3as=;
	b=KE2vK48hyJ5+jawuuag5TG2Dn80dt6JCYqwNnSSTYxVjXurz/FQe9dDPIlimv8mINX
	TtwJ+QWe7OUEP/r6hsiojt1s9i+ks7Q7D8R6YlXRHRMP1bIer0zIYzGiy79doTGWUMum
	z1mfv9MgRTvzeuC60j7DmKBx3jPcniJMB3wxWBdapwSJSnn4R4Z/QoETUKQTYsnCsowq
	vpa0uS6PJCKrHNw49/lmtQkJNLkemnAYmdO8ijkxKEWlPL3zFRswBUfEpc1uFArQtHM4
	nZOgdYBxLwNtiDMbgMJ5LF/r19U1+thUcSc9IOcfOE4Do0ju+sHhEahpP15T+o09HgmZ
	4F4A==
X-Gm-Message-State: ALoCoQkBq4gPbT8jEgeSO7G5rSZ9Jlei0Oly1HUEVK1GV8G/1aQzmjIyFD5Jy4AT6YoEU1vCbf8q
X-Received: by 10.182.71.82 with SMTP id s18mr5858550obu.9.1384505661579; Fri,
	15 Nov 2013 00:54:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.156.40 with HTTP; Fri, 15 Nov 2013 00:54:01 -0800 (PST)
In-Reply-To: <52859082.1030805@balister.org>
References: <CA+YB3rYsddJ2St94FVBmUvNyv7hvRm3=gmvZTyEdu66gfGPD-w@mail.gmail.com>
	<alpine.DEB.2.02.1311142022090.27630@oneiric>
	<52859082.1030805@balister.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 15 Nov 2013 09:54:01 +0100
Message-ID: <CAP71Wjyp8BLe7fA8tjCWkj3hmR20HrGFs8JPZBvOxpLgaDeKCQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Happy Birthday, Yocto Project
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
X-List-Received-Date: Fri, 15 Nov 2013 08:54:23 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1fde625fa0704eb3358ab

--e89a8fb1fde625fa0704eb3358ab
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Nov 15, 2013 at 4:09 AM, Philip Balister <philip@balister.org>wrote:

> On 11/14/2013 08:22 PM, Robert P. J. Day wrote:
> > On Thu, 14 Nov 2013, Jeff Osier-Mixon wrote:
> >
> >> Happy birthday, Yocto Project!
> >
> >   what's a birthday without cake?
> >
> > http://www.instructables.com/id/Brain-Cake/
> >
> > rday
> >
>
> Berlios suggests bitbake was born on Dec 7, 2004. So in a few weeks we
> will celebrate the 9'th birthday of the OpenEmbedded build system.
>
> I know we've all forgotten the exact date :), but this is the best I
> could find.
>

hmm. it looks like the SVN 'r1' corresponds to this commit in the bitbake
git:

http://cgit.openembedded.org/bitbake/commit/?id=d91e57c44e923b6b65396515ff878199d43763a1

(I diff'd them)

However in the bitbake git there are older commits before the initial 'SVN'
import. In fact there are commits before this one on 2004/12/7:

 $ git log --oneline d91e57c44e923b6b65396515ff878199d43763a1 | wc -l
726

and the first commit in git is:

http://cgit.openembedded.org/bitbake/commit/?id=af645b03b585a9c92dc111188756b8f6badfec5f

commit af645b03b585a9c92dc111188756b8f6badfec5f
Author: Chris Larson <clarson@kergoth.com>
Date:   Fri Feb 21 04:03:45 2003 +0000

    .oe file parser function

so technically, we missed the 10th anniversary earlier this year ;-)

--e89a8fb1fde625fa0704eb3358ab
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Nov 15, 2013 at 4:09 AM, Philip Balister <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:philip@balister.org" target=3D"_blank">philip@balister.org</a=
>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"im">On 11/14/2013 08:22 PM, Robert P. J. Day=
 wrote:<br>


&gt; On Thu, 14 Nov 2013, Jeff Osier-Mixon wrote:<br>
&gt;<br>
&gt;&gt; Happy birthday, Yocto Project!<br>
&gt;<br>
&gt; =A0 what&#39;s a birthday without cake?<br>
&gt;<br>
&gt; <a href=3D"http://www.instructables.com/id/Brain-Cake/" target=3D"_bla=
nk">http://www.instructables.com/id/Brain-Cake/</a><br>
&gt;<br>
&gt; rday<br>
&gt;<br>
<br>
</div>Berlios suggests bitbake was born on Dec 7, 2004. So in a few weeks w=
e<br>
will celebrate the 9&#39;th birthday of the OpenEmbedded build system.<br>
<br>
I know we&#39;ve all forgotten the exact date :), but this is the best I<br=
>
could find.<div class=3D""><div id=3D":23n" class=3D"" tabindex=3D"0"><img =
class=3D"" src=3D"images/cleardot.gif"></div></div></blockquote></div><br>h=
mm. it looks like the SVN &#39;r1&#39; corresponds to this commit in the bi=
tbake git:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=3D"=
http://cgit.openembedded.org/bitbake/commit/?id=3Dd91e57c44e923b6b65396515f=
f878199d43763a1">http://cgit.openembedded.org/bitbake/commit/?id=3Dd91e57c4=
4e923b6b65396515ff878199d43763a1</a></div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">(I diff&#39=
;d them)</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extr=
a">However in the bitbake git there are older commits before the initial &#=
39;SVN&#39; import. In fact there are commits before this one on 2004/12/7:=
</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=A0$ git lo=
g --oneline d91e57c44e923b6b65396515ff878199d43763a1 | wc -l</div><div clas=
s=3D"gmail_extra">726</div><div><br></div><div>and the first commit in git =
is:</div>

<div><br></div><div><a href=3D"http://cgit.openembedded.org/bitbake/commit/=
?id=3Daf645b03b585a9c92dc111188756b8f6badfec5f">http://cgit.openembedded.or=
g/bitbake/commit/?id=3Daf645b03b585a9c92dc111188756b8f6badfec5f</a><br></di=
v>

<div><br></div><div><div>commit af645b03b585a9c92dc111188756b8f6badfec5f</d=
iv><div>Author: Chris Larson &lt;<a href=3D"mailto:clarson@kergoth.com">cla=
rson@kergoth.com</a>&gt;</div><div>Date: =A0 Fri Feb 21 04:03:45 2003 +0000=
</div>

<div><br></div><div>=A0 =A0 .oe file parser function</div></div><div><br></=
div><div>so technically, we missed the 10th anniversary earlier this year ;=
-)</div><div><br></div></div>

--e89a8fb1fde625fa0704eb3358ab--
