Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EFF6E009D7; Thu, 16 Jul 2015 10:53:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B647AE009CC
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:53:27 -0700 (PDT)
Received: by wibud3 with SMTP id ud3so21491391wib.1
	for <yocto@yoctoproject.org>; Thu, 16 Jul 2015 10:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=nvqYHQm0JikHcxGSdAK2vKt58fQlr3N34/YJL1qMe5s=;
	b=p8DHAptkGsvq3jhtfsXyiptjktel+OJqMFlmZNaBeUI2I9QPfA+hnkN7nWsECxgDMf
	gbtDOYqQ7pjtdw+tUs0GVH75kXWOtfclT7Goq8Gv4s5Peht7WKYD/2PqwefaQFznS5d5
	QKU7I71kzTNx1wBVveRISBKviNL8ce2btQaEdVBTfTl9Q8qRrmMtdsfuL4ASDv7QXV3o
	fec0aG5j8+mCxxulkjfv/JJV/RBt4ymnpD4T6fyW2VkBX8Y8j4JVhYCnSY0hcEzz3c0+
	symBm8KA1AYlylbje50EJfLhYuV4pRT0VREtJvCKayzcW475HUy6OxN50KtLIDNxpvx6
	MTSg==
X-Received: by 10.180.109.6 with SMTP id ho6mr7560337wib.58.1437069207132;
	Thu, 16 Jul 2015 10:53:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.27.172.4 with HTTP; Thu, 16 Jul 2015 10:53:07 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Thu, 16 Jul 2015 13:53:07 -0400
Message-ID: <CANge7vWSJK5EtA6k53OxF0NizhY2fun4Ev9rVeMbaZRdAekQ7Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, picmaster@mail.bg
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
X-List-Received-Date: Thu, 16 Jul 2015 17:53:31 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba5f39be008051b01bfab

--e89a8f3ba5f39be008051b01bfab
Content-Type: text/plain; charset=UTF-8

Hi all,


> >
> > So there is no support for depth clones until 2.5.0? I didn't really
> > understand.
>
> Well, shallow clones are supported but only for branch tips, which is
> not what we need. This feature for shallow cloning a specific revision
> is available only in git 2.5.0+. Also, this feature needs a server-side
> configuration option to be enabled, in order to work properly.
>
> Regards,
> Nikolay
>

I'd argue that this whole issue with the whole meta-raspberrypi
firmware.inc download is more than just slow, inconvenient download.  I've
left builds running all night (8+ hours on a 30Mib/s residential link) that
just hang on this, usually timing out.  I initially thought it was just me,
but am hearing others confirm this as well.

As such, I just wanted to continue this conversation.  It sounds like git
fetch's --depth is the best option on the table, but has the issues Nikolay
has described.  What are your thoughts on the following?

(1) We create a git-native and build a version that supports this the fetch
depth?

I suspect this could be made to work, but haven't dug into what
dependencies git may have and how that would play out on various LTS
distros. My knee-jerk is that has too high of a risk/benefit ration, given
that we're talking about 1 repo.

(2) We update the git fetcher to check the git version and support a depth=
option if the git version is sufficient.  If it is not, we spit out a
warning and fall back to the current behavior.

Neither (1) nor (2) address Nikolay's point that --depth requires
server-side support.  However, I'd argue this is something you'd be testing
and verifying when writing the recipe.  Is this a reasonable assertion? How
likely is it that a server supporting this would suddenly be re-configured?

(3) We request that the upstream maintainer of meta-raspberrypi use the
GitHub Release feature [a] to post a tarball of a known checksum at
somewhat regular intervals.  I'm told by a few package maintainers that
while the tarballs that it generates for specific changesets are subject to
change, that the tarballs it autogenerates when using its Releases feature
do not.  However, I have not confirmed this.  If this is false, then one
can upload a tarball with known checksums to the release as an attachment;
I would be *shocked* if they touch your attachments.

While (3) is a nice "not our problem" solution, I think (2) might have some
benefits for other recipes later.  Any other ideas?

Best regards,
Jon

[a] https://help.github.com/articles/creating-releases/

--e89a8f3ba5f39be008051b01bfab
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><div=
>Hi all,<br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
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
Nikolay<br></blockquote><div><br></div><div>I&#39;d argue that this whole i=
ssue with the whole meta-raspberrypi firmware.inc download is more than jus=
t slow, inconvenient download.=C2=A0 I&#39;ve left builds running all night=
 (8+ hours on a 30Mib/s residential link) that just hang on this, usually t=
iming out.=C2=A0 I initially thought it was just me, but am hearing others =
confirm this as well.<br><br></div><div>As such, I just wanted to continue =
this conversation.=C2=A0 It sounds like git fetch&#39;s --depth is the best=
 option on the table, but has the issues Nikolay has described.=C2=A0 What =
are your thoughts on the following?<br><br></div><div>(1) We create a git-n=
ative and build a version that supports this the fetch depth?<br><br></div>=
<div>I suspect this could be made to work, but haven&#39;t dug into what de=
pendencies git may have and how that would play out on various LTS distros.=
 My knee-jerk is that has too high of a risk/benefit ration, given that we&=
#39;re talking about 1 repo.<br><br></div><div>(2) We update the git fetche=
r to check the git version and support a depth=3D option if the git version=
 is sufficient.=C2=A0 If it is not, we spit out a warning and fall back to =
the current behavior.<br></div><div><br></div><div>Neither (1) nor (2) addr=
ess Nikolay&#39;s point that --depth requires server-side support.=C2=A0 Ho=
wever, I&#39;d argue this is something you&#39;d be testing and verifying w=
hen writing the recipe.=C2=A0 Is this a reasonable assertion? How likely is=
 it that a server supporting this would suddenly be re-configured?<br><br><=
/div><div>(3) We request that the upstream maintainer of meta-raspberrypi u=
se the GitHub Release feature [a] to post a tarball of a known checksum at =
somewhat regular intervals.=C2=A0 I&#39;m told by a few package maintainers=
 that while the tarballs that it generates for specific changesets are subj=
ect to change, that the tarballs it autogenerates when using its Releases f=
eature do not.=C2=A0 However, I have not confirmed this.=C2=A0 If this is f=
alse, then one can upload a tarball with known checksums to the release as =
an attachment; I would be *shocked* if they touch your attachments.<br><br>=
</div><div>While (3) is a nice &quot;not our problem&quot; solution, I thin=
k (2) might have some benefits for other recipes later.=C2=A0 Any other ide=
as?<br></div><div><br></div><div>Best regards, <br></div><div>Jon<br></div>=
<div><br></div><div>[a] <a href=3D"https://help.github.com/articles/creatin=
g-releases/">https://help.github.com/articles/creating-releases/</a><br></d=
iv><div><br><br></div></div></div></div>

--e89a8f3ba5f39be008051b01bfab--
