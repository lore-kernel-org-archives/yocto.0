Return-Path: <dresser.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A81E7E00BC8; Thu,  3 Jan 2019 06:51:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
	[209.85.221.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 966AAE0053F
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 06:50:59 -0800 (PST)
Received: by mail-wr1-f45.google.com with SMTP id u4so33785132wrp.3
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 06:50:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=T1g6kot98YWyDQOuZ8YH3cEgm+Ccf/2SJ5kZ5zcFrX4=;
	b=QA/kdr2PGt1G9MGjVmP9SyDsN6oH5XPhHJXAngRYouTMImtxIcG+ZKCTwj7KBTqoIy
	xFMYAnkTO1ahCJ/5a3iI1ebYguXqXJjWRv9vdgZsk8bFH6B6ob6o3cyEwIURiNy1T/Tc
	Dfgg8Leyy7FzMCIViDMWN/cWWAIJhloSOUzxx/8mD6iMo1zOKTsjLRNBYxx+URgRZNQs
	wyx3UTUklE5tPHDh7izJRIf/GM7Z9GBLkFpCJS280Q4nWLfeuvYSeLzBz6wKt/XZxVs1
	0QiiWRDebEFT6z0k0M68cgj6fXTUQ9ho9QnXT20NlI6XHKnsqcUd0AsmwY3xnBqWZ4TT
	uODQ==
X-Gm-Message-State: AJcUukdk8999ded9cmE2sodxGitKcwjtHjzk1lfnRL2H6m5G15PszCbz
	4TZHrpJTmsHyd8lWvsfhULSqi9p1GYu0MUMriTE=
X-Google-Smtp-Source: ALg8bN6O1HSfbiHsUrBcJD2DB5RbCp1SGHzKoyRe4fFtm0bS8Xu4dO22ktWWoRlvCBIAbXh8+hAG7HvlTFicGTY4Rlo=
X-Received: by 2002:adf:8506:: with SMTP id 6mr32804265wrh.128.1546527058470; 
	Thu, 03 Jan 2019 06:50:58 -0800 (PST)
MIME-Version: 1.0
References: <CADmsHKdd=SePN5Gd5Sb0zRc-dA62RO4tOp4A9E5uvYvDVDN-Xg@mail.gmail.com>
	<CANNYZj9Lk=nGg+xprdGcAJ+Q7jsSbt=ZjSeBNT0a62DFZYRH_w@mail.gmail.com>
In-Reply-To: <CANNYZj9Lk=nGg+xprdGcAJ+Q7jsSbt=ZjSeBNT0a62DFZYRH_w@mail.gmail.com>
From: Derek Dresser <dresserd@alum.mit.edu>
Date: Thu, 3 Jan 2019 09:50:46 -0500
Message-ID: <CADmsHKcfz5Hgh-imV-kr4MYHUHkM4PR6-zL5hNhFe-EJeTTU8w@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
X-Mailman-Approved-At: Tue, 15 Jan 2019 05:41:00 -0800
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python upgrade path?
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
X-List-Received-Date: Thu, 03 Jan 2019 14:51:00 -0000
Content-Type: multipart/alternative; boundary="000000000000f4ade2057e8ee309"

--000000000000f4ade2057e8ee309
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 3, 2019 at 5:36 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> On Thu, 3 Jan 2019 at 10:11, Derek Dresser <dresserd@alum.mit.edu> wrote:
> > I have an application that uses features introduced in Python 3.6, so I
> am trying to add a new version of Python to my Yocto build.  I know that
> 3.5.6 is the latest version of Python that has been included in a Yocto
> release.  I found the patches here
> > https://patchwork.openembedded.org/series/14778/
> > and was able to build Python3.7.1 for the commit specified in the
> patch.  I looked briefly at rebasing the patches on the Thud branch, but I
> think that is beyond my current Python and Yocto capabilities.
> >
> > Are there any paths forward for me to get a newer version of Python
> using Yocto?  Would it be possible for me to use a package created from
> that patched build and integrate it with my current thud build?  Are there
> any other workarounds I could use until a newer version of Python is
> supported?
> >
> > I'd be happy to spend some time on this if I could help move this
> forward, but I don't think this is something I can do by myself at this
> point.  I'm quite new to Yocto.
>
> Sadly there is no good answer. There are patches, but they need
> further work (see oe-core list for details). Worse yet, thud is likely
> to stay with 3.5, as such drastic version upgrades are usually not
> done in stable branches (you are still free to do it via a custom
> layer with backported recipes though).
>
> If you can take solving the issues and getting py 3.7 merged into
> master as an exercise, this would be greatly appreciated by everyone,
> and would take you out of 'new to yocto' :)
>
>
> Alex
>

Thanks for the response.  I will take a look at getting 3.7 to build, but
I'd benefit from some guidance on the process to do so.  I was able to get
the patches to build on the specified commit that they target (although I
just tried again and ran into some issues.  I'll have to figure out what I
did the first time.)  This is what I did.

1. download patches from https://patchwork.openembedded.org/series/14778/
2. checkout poky at specified commit
"e349b239c8833bcdad9b1ff1a0702ace2db71959"
3. apply patch
4. bitbake python3

I then tried to rebase the patches on the master branch and ran into many
merge conflicts that I didn't really have the context to resolve.  I
believe that is where I'll have to dig in to get things working.

My questions are, is that a reasonable process?  Is there a better process
using devtool or something?  Any guidance is appreciated.

Thanks,
Derek

--000000000000f4ade2057e8ee309
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jan 3,=
 2019 at 5:36 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail=
.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">On Thu, 3 Jan 2019 at 10:11, Derek Dresser &lt;<a href=3D"mailto:d=
resserd@alum.mit.edu" target=3D"_blank">dresserd@alum.mit.edu</a>&gt; wrote=
:<br>
&gt; I have an application that uses features introduced in Python 3.6, so =
I am trying to add a new version of Python to my Yocto build.=C2=A0 I know =
that 3.5.6 is the latest version of Python that has been included in a Yoct=
o release.=C2=A0 I found the patches here<br>
&gt; <a href=3D"https://patchwork.openembedded.org/series/14778/" rel=3D"no=
referrer" target=3D"_blank">https://patchwork.openembedded.org/series/14778=
/</a><br>
&gt; and was able to build Python3.7.1 for the commit specified in the patc=
h.=C2=A0 I looked briefly at rebasing the patches on the Thud branch, but I=
 think that is beyond my current Python and Yocto capabilities.<br>
&gt;<br>
&gt; Are there any paths forward for me to get a newer version of Python us=
ing Yocto?=C2=A0 Would it be possible for me to use a package created from =
that patched build and integrate it with my current thud build?=C2=A0 Are t=
here any other workarounds I could use until a newer version of Python is s=
upported?<br>
&gt;<br>
&gt; I&#39;d be happy to spend some time on this if I could help move this =
forward, but I don&#39;t think this is something I can do by myself at this=
 point.=C2=A0 I&#39;m quite new to Yocto.<br>
<br>
Sadly there is no good answer. There are patches, but they need<br>
further work (see oe-core list for details). Worse yet, thud is likely<br>
to stay with 3.5, as such drastic version upgrades are usually not<br>
done in stable branches (you are still free to do it via a custom<br>
layer with backported recipes though).<br>
<br>
If you can take solving the issues and getting py 3.7 merged into<br>
master as an exercise, this would be greatly appreciated by everyone,<br>
and would take you out of &#39;new to yocto&#39; :)<br>
<br>
<br>
Alex<br></blockquote><div><br></div><div>Thanks for the response.=C2=A0 I w=
ill take a look at getting 3.7 to build, but I&#39;d benefit from some guid=
ance on the process to do so.=C2=A0 I was able to get the patches to build =
on the specified commit that they target (although I just tried again and r=
an into some issues.=C2=A0 I&#39;ll have to figure out what I did the first=
 time.)=C2=A0 This is what I did.</div><div><br></div><div>1. download patc=
hes from <a href=3D"https://patchwork.openembedded.org/series/14778/">https=
://patchwork.openembedded.org/series/14778/</a></div><div>2. checkout poky =
at specified commit &quot;e349b239c8833bcdad9b1ff1a0702ace2db71959&quot;</d=
iv><div>3. apply patch</div><div>4. bitbake python3</div><div><br></div><di=
v>I then tried to rebase the patches on the master branch and ran into many=
 merge conflicts that I didn&#39;t really have the context to resolve.=C2=
=A0 I believe that is where I&#39;ll have to dig in to get things working.<=
/div><div><br></div><div>My questions are, is that a reasonable process?=C2=
=A0 Is there a better process using devtool or something?=C2=A0 Any guidanc=
e is appreciated.</div><div><br></div><div>Thanks,</div><div>Derek<br></div=
><div><br></div></div></div>

--000000000000f4ade2057e8ee309--
