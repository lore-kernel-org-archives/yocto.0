Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 895C0E009E6; Sun, 19 Jul 2015 14:34:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC3AE006EE
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 14:34:50 -0700 (PDT)
Received: by laem6 with SMTP id m6so87133931lae.0
	for <yocto@yoctoproject.org>; Sun, 19 Jul 2015 14:34:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LCOlG2tChGu+gE6w34o06kR1DVPrAKqZL/p/S7bqfn0=;
	b=iPuEeGnNn+cIMNbWJjmPl1vyhxoFkePNW7XSuRJOunJyaUacLI/lPXFsEZpVDaw+1F
	FA8GqT1Ti1XNNrZjsoRXRs6WjNKP5VZ1phZBbFokM+yOAi31gv+39+mSM5oUXjUhSktn
	YYSidohIbf5Og5f+cYSAGuipvdcAb/HoLsXB7t/51tdr60bnu9hyZoPUddM/BmFxDdqY
	+NmKgGR0Usywbc5iRn1eTRwZYy/T1sdc6Z2glb3SuBfCHrjMDrj7g1kZuVvP19exKYUQ
	lTAmLU4cCimkaCPQhuh3/S+zZHXgxkahlBb3GDRUtqKNEZHjXtcBq0aTTA/icJRYTGQF
	7Jtg==
X-Gm-Message-State: ALoCoQkyas+q6RV2lXkKbG0L/JvMModt6rblayHd8/7997RaELXB78nrqw6zSIn0p7zPpT9+5ZiU
X-Received: by 10.152.2.2 with SMTP id 2mr25197450laq.58.1437341688352; Sun,
	19 Jul 2015 14:34:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.147.232 with HTTP; Sun, 19 Jul 2015 14:34:08 -0700 (PDT)
X-Originating-IP: [2a02:8108:9b40:1710:3602:86ff:fe43:7ba5]
In-Reply-To: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
References: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 19 Jul 2015 23:34:08 +0200
Message-ID: <CAK18fxE_1o8iPsB+sDVE6zFUrvQO5VF3rRHfwxLHk3vdqoLB2A@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: fetch from SVN instead of Git
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
X-List-Received-Date: Sun, 19 Jul 2015 21:34:54 -0000
Content-Type: multipart/alternative; boundary=089e013c6470c16b07051b4130cc

--089e013c6470c16b07051b4130cc
Content-Type: text/plain; charset=UTF-8

Hello,

--
Andrei Gherzan

On Thu, Jul 16, 2015 at 7:53 PM, Jon Szymaniak <jon.szymaniak@gmail.com>
wrote:

> Hi all,
>
>
>> >
>> > So there is no support for depth clones until 2.5.0? I didn't really
>> > understand.
>>
>> Well, shallow clones are supported but only for branch tips, which is
>> not what we need. This feature for shallow cloning a specific revision
>> is available only in git 2.5.0+. Also, this feature needs a server-side
>> configuration option to be enabled, in order to work properly.
>>
>> Regards,
>> Nikolay
>>
>
> I'd argue that this whole issue with the whole meta-raspberrypi
> firmware.inc download is more than just slow, inconvenient download.  I've
> left builds running all night (8+ hours on a 30Mib/s residential link) that
> just hang on this, usually timing out.  I initially thought it was just me,
> but am hearing others confirm this as well.
>
> As such, I just wanted to continue this conversation.  It sounds like git
> fetch's --depth is the best option on the table, but has the issues Nikolay
> has described.  What are your thoughts on the following?
>
> (1) We create a git-native and build a version that supports this the
> fetch depth?
>
> I suspect this could be made to work, but haven't dug into what
> dependencies git may have and how that would play out on various LTS
> distros. My knee-jerk is that has too high of a risk/benefit ration, given
> that we're talking about 1 repo.
>
> (2) We update the git fetcher to check the git version and support a
> depth= option if the git version is sufficient.  If it is not, we spit out
> a warning and fall back to the current behavior.
>
> Neither (1) nor (2) address Nikolay's point that --depth requires
> server-side support.  However, I'd argue this is something you'd be testing
> and verifying when writing the recipe.  Is this a reasonable assertion? How
> likely is it that a server supporting this would suddenly be re-configured?
>
> (3) We request that the upstream maintainer of meta-raspberrypi use the
> GitHub Release feature [a] to post a tarball of a known checksum at
> somewhat regular intervals.  I'm told by a few package maintainers that
> while the tarballs that it generates for specific changesets are subject to
> change, that the tarballs it autogenerates when using its Releases feature
> do not.  However, I have not confirmed this.  If this is false, then one
> can upload a tarball with known checksums to the release as an attachment;
> I would be *shocked* if they touch your attachments.
>
> While (3) is a nice "not our problem" solution, I think (2) might have
> some benefits for other recipes later.  Any other ideas?
>
>
Definitely 2 is the best opinion in my opinion too. I'm wondering if there
is any work started in this direction.

--089e013c6470c16b07051b4130cc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div class=3D"gmail_extra"><br clear=3D"all"><di=
v><div class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><di=
v>--</div>Andrei Gherzan</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Thu, Jul 16, 2015 at 7:53 PM, Jon Szymani=
ak <span dir=3D"ltr">&lt;<a href=3D"mailto:jon.szymaniak@gmail.com" target=
=3D"_blank">jon.szymaniak@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"=
gmail_quote"><div>Hi all,<br></div><span class=3D""><div>=C2=A0</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">
&gt;<br>
&gt; So there is no support for depth clones until 2.5.0? I didn&#39;t real=
ly<br>
&gt; understand.<br>
<br>
Well, shallow clones are supported but only for branch tips, which is<br>
not what we need. This feature for shallow cloning a specific revision<br>
is available only in git 2.5.0+. Also, this feature needs a server-side<br>
configuration option to be enabled, in order to work properly.<br>
<br>
Regards,<br>
Nikolay<br></blockquote><div><br></div></span><div>I&#39;d argue that this =
whole issue with the whole meta-raspberrypi firmware.inc download is more t=
han just slow, inconvenient download.=C2=A0 I&#39;ve left builds running al=
l night (8+ hours on a 30Mib/s residential link) that just hang on this, us=
ually timing out.=C2=A0 I initially thought it was just me, but am hearing =
others confirm this as well.<br><br></div><div>As such, I just wanted to co=
ntinue this conversation.=C2=A0 It sounds like git fetch&#39;s --depth is t=
he best option on the table, but has the issues Nikolay has described.=C2=
=A0 What are your thoughts on the following?<br><br></div><div>(1) We creat=
e a git-native and build a version that supports this the fetch depth?<br><=
br></div><div>I suspect this could be made to work, but haven&#39;t dug int=
o what dependencies git may have and how that would play out on various LTS=
 distros. My knee-jerk is that has too high of a risk/benefit ration, given=
 that we&#39;re talking about 1 repo.<br><br></div><div>(2) We update the g=
it fetcher to check the git version and support a depth=3D option if the gi=
t version is sufficient.=C2=A0 If it is not, we spit out a warning and fall=
 back to the current behavior.<br></div><div><br></div><div>Neither (1) nor=
 (2) address Nikolay&#39;s point that --depth requires server-side support.=
=C2=A0 However, I&#39;d argue this is something you&#39;d be testing and ve=
rifying when writing the recipe.=C2=A0 Is this a reasonable assertion? How =
likely is it that a server supporting this would suddenly be re-configured?=
<br><br></div><div>(3) We request that the upstream maintainer of meta-rasp=
berrypi use the GitHub Release feature [a] to post a tarball of a known che=
cksum at somewhat regular intervals.=C2=A0 I&#39;m told by a few package ma=
intainers that while the tarballs that it generates for specific changesets=
 are subject to change, that the tarballs it autogenerates when using its R=
eleases feature do not.=C2=A0 However, I have not confirmed this.=C2=A0 If =
this is false, then one can upload a tarball with known checksums to the re=
lease as an attachment; I would be *shocked* if they touch your attachments=
.<br><br></div><div>While (3) is a nice &quot;not our problem&quot; solutio=
n, I think (2) might have some benefits for other recipes later.=C2=A0 Any =
other ideas?<br></div><div><br></div></div></div></div></blockquote><div><b=
r></div><div>Definitely 2 is the best opinion in my opinion too. I&#39;m wo=
ndering if there is any work started in this direction.</div></div></div></=
div>

--089e013c6470c16b07051b4130cc--
