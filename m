Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFEC7E00C58; Wed, 28 Nov 2018 11:45:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2CA1E008C6
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 11:45:14 -0800 (PST)
Received: by mail-qt1-f196.google.com with SMTP id t13so27269365qtn.3
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 11:45:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=16Ae5x6WNRtNWr2G8cmCi10KOzNzYIgKbgWF5tWnhPQ=;
	b=sFek+mJrigD4MooQkn40ztDEsO9Tp4dq7cIKo9T5tMAI+nYj/8O5tI9Nz0T1+dABYS
	X6g2L7qQQrwsoKcXB5890V6UiHiK0ki05pbIJt0WkvnuxDQXjvP3jnsUDeXWqz6bfL5z
	TQYZ5uXazgy3+MQI6N1HlQpa9mL5oJlqgZb72SFsDMtbXQhCL8zjhX4KZkCPHdMecohF
	V4xGIPvomxSABnumAEVY8LJncuPv0X7lIyCyPl4KWQa2H4q7fofTATYFWwXZCVFZCu9Y
	1kRDriLOhUPaY4sFpsWce7R00MrcK/ruaycVVGVpCaEAhlBS1x0Nf9Ra/zjZks4f8/0M
	txxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=16Ae5x6WNRtNWr2G8cmCi10KOzNzYIgKbgWF5tWnhPQ=;
	b=qmgQE70aiKYltDZwERkua5zRcORUBO4aXPYliMMOGNe2vKKyysP8tgErea81a7p3p+
	svTnIPeSFdPILpAkdwseRx7QApnEbf5JfiRnUUronVgJcc7sSQgdv3KrVg4x+IKVmy1C
	xNWU59YO/CKP0jvTpmdcPLrUrb5JPcWAQg1skjpg4wbXZ7DHDks4MMbYehtrXnAg9n5U
	EcWzOZ5rvZHYq+pbgGcq1N2ciObR8wh0TfV/Vzg+qnNQOoEM7rrqjS9qdDPAZCOWxU4n
	aShKyMX63O5iAwACI1jP2Wz78cWz9KbeeSMUTeZy2v1jGev2BLM/qwXiAdrgfVsdG2bn
	vazw==
X-Gm-Message-State: AGRZ1gIJaSzCuqoQy9sVsGK6nFOTDe6HneMM4RsdfG6zbBMhvwX9nKk8
	cm2/bL30O4+E3VDHihq3MxQzYPHYca2aC1rftoA=
X-Google-Smtp-Source: AJdET5crh6wcMKTQxcDj9eAEbWmyL1QTfd7WwRocH6VCCAwovUAzmjXQhKBMf9p1anyi5LFnmvmMdpa7W8nOaRMOxZs=
X-Received: by 2002:ac8:748:: with SMTP id k8mr36184770qth.235.1543434313854; 
	Wed, 28 Nov 2018 11:45:13 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<CANik3vH9-EP_JYQ5oapNgfC2F_HN0XErOkqs=LnDc9eA_Uinfg@mail.gmail.com>
In-Reply-To: <CANik3vH9-EP_JYQ5oapNgfC2F_HN0XErOkqs=LnDc9eA_Uinfg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 28 Nov 2018 20:45:02 +0100
Message-ID: <CAGAf8LyFHr1TmAxwfyBPX2x6jjtwSRUjbQt3XH_HuWwZd7YUUA@mail.gmail.com>
To: pidge@toganlabs.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 19:45:15 -0000
Content-Type: multipart/alternative; boundary="00000000000002ff11057bbece50"

--00000000000002ff11057bbece50
Content-Type: text/plain; charset="UTF-8"

> I'm not sure what the request is here. To ask all the repository
> maintainers *to add tags* so you don't return a fatal on git describe?

Not quite. To add tags, yes, NOT for git describe (it is just a test).
Rather for git log (using tags).

Thank you,
Zoran
_______


On Wed, Nov 28, 2018 at 7:37 PM Beth Flanagan <pidge@toganlabs.com> wrote:

> On Wed, Nov 28, 2018 at 9:18 AM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello YOCTO people,
> >
> > I would like to use standard git tool while using all the Yocto
> > layers. NOT only Poky repository (which, I believe, works all the way
> > with git tools), but as much as possible with other github proprietary
> > repos and layers. Since I am not able to execute git commands using
> > some number of proprietary repos over github.
> >
> > As example, I'll use meta-bbb repository.
> > https://github.com/jumpnow/meta-bbb.git, after cloning the following
> > happens (chosen, since it has at least dozen of branches):
> >
> > After cloning, I did not get anything from the following commands,
> > being in the root of the meta-bbb repo, namely:
> >
> > [user@fedora28-ssd meta-bbb]$ pwd
> > /home/user/projects2/beaglebone-black/yocto-master/meta-bbb
> > [user@fedora28-ssd meta-bbb]$ git describe
> > fatal: No names found, cannot describe anything.
> > [user@fedora28-ssd meta-bbb]$ git tag
> > [user@fedora28-ssd meta-bbb]$ git checkout thud
> > Branch 'thud' set up to track remote branch 'thud' from 'origin'.
> > Switched to a new branch 'thud'
> > [user@fedora28-ssd meta-bbb]$ git checkout sumo
> > Switched to branch 'sumo'
> > Your branch is up to date with 'origin/sumo'.
> > [user@fedora28-ssd meta-bbb]$ git describe
> > fatal: No names found, cannot describe anything.
> > [user@fedora28-ssd meta-bbb]$
> >
> > The rationale behind this request: git is the powerful tool which
> > should work and be solely used for YOCTO layers' synchronization. In
> > other words, YOCTO should give some tools' (namely git) unification
> > guidelines in some way. :-)
> >
>
> Zoran,
>
> This is normal behaviour for git repositories with no tags. Git
> describe just describes the latest annotated tag and if there is none,
> then it of course, can't describe anything. Generally, this is up to
> the repo maintainer to define tagging policy (I think all we do in
> OE/YP is ask for named release branches).  So this isn't something
> that is "broken" it's just not asked of layer maintainers. I'm not
> sure why you need git describe in your workflow, but you could easily
> write something that reverts to something like `git shortlog -1` or
> something on repos that return fatal on a git describe.
>
> I'm not sure what the request is here. To ask all the repository
> maintainers to add tags so you don't return a fatal on git describe?
>
> -b
>

--00000000000002ff11057bbece50
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; I&#39;m not sure what the request is here. To ask all=
 the repository<br>&gt; maintainers <b><i><font color=3D"#ff0000">to add ta=
gs</font></i></b> so you don&#39;t return a fatal on git describe?<div><br>=
</div><div>Not quite. To add tags, yes, NOT for git describe (it is just a =
test). Rather for git log (using tags).</div><div><br></div><div>Thank you,=
</div><div>Zoran</div><div>_______</div></div><br><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr">On Wed, Nov 28, 2018 at 7:37 PM Beth Flanagan &lt;<a=
 href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On Wed, Nov 28, 2018 at 9:18 AM Zoran =
Stojsavljevic<br>
&lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zora=
n.stojsavljevic@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello YOCTO people,<br>
&gt;<br>
&gt; I would like to use standard git tool while using all the Yocto<br>
&gt; layers. NOT only Poky repository (which, I believe, works all the way<=
br>
&gt; with git tools), but as much as possible with other github proprietary=
<br>
&gt; repos and layers. Since I am not able to execute git commands using<br=
>
&gt; some number of proprietary repos over github.<br>
&gt;<br>
&gt; As example, I&#39;ll use meta-bbb repository.<br>
&gt; <a href=3D"https://github.com/jumpnow/meta-bbb.git" rel=3D"noreferrer"=
 target=3D"_blank">https://github.com/jumpnow/meta-bbb.git</a>, after cloni=
ng the following<br>
&gt; happens (chosen, since it has at least dozen of branches):<br>
&gt;<br>
&gt; After cloning, I did not get anything from the following commands,<br>
&gt; being in the root of the meta-bbb repo, namely:<br>
&gt;<br>
&gt; [user@fedora28-ssd meta-bbb]$ pwd<br>
&gt; /home/user/projects2/beaglebone-black/yocto-master/meta-bbb<br>
&gt; [user@fedora28-ssd meta-bbb]$ git describe<br>
&gt; fatal: No names found, cannot describe anything.<br>
&gt; [user@fedora28-ssd meta-bbb]$ git tag<br>
&gt; [user@fedora28-ssd meta-bbb]$ git checkout thud<br>
&gt; Branch &#39;thud&#39; set up to track remote branch &#39;thud&#39; fro=
m &#39;origin&#39;.<br>
&gt; Switched to a new branch &#39;thud&#39;<br>
&gt; [user@fedora28-ssd meta-bbb]$ git checkout sumo<br>
&gt; Switched to branch &#39;sumo&#39;<br>
&gt; Your branch is up to date with &#39;origin/sumo&#39;.<br>
&gt; [user@fedora28-ssd meta-bbb]$ git describe<br>
&gt; fatal: No names found, cannot describe anything.<br>
&gt; [user@fedora28-ssd meta-bbb]$<br>
&gt;<br>
&gt; The rationale behind this request: git is the powerful tool which<br>
&gt; should work and be solely used for YOCTO layers&#39; synchronization. =
In<br>
&gt; other words, YOCTO should give some tools&#39; (namely git) unificatio=
n<br>
&gt; guidelines in some way. :-)<br>
&gt;<br>
<br>
Zoran,<br>
<br>
This is normal behaviour for git repositories with no tags. Git<br>
describe just describes the latest annotated tag and if there is none,<br>
then it of course, can&#39;t describe anything. Generally, this is up to<br=
>
the repo maintainer to define tagging policy (I think all we do in<br>
OE/YP is ask for named release branches).=C2=A0 So this isn&#39;t something=
<br>
that is &quot;broken&quot; it&#39;s just not asked of layer maintainers. I&=
#39;m not<br>
sure why you need git describe in your workflow, but you could easily<br>
write something that reverts to something like `git shortlog -1` or<br>
something on repos that return fatal on a git describe.<br>
<br>
I&#39;m not sure what the request is here. To ask all the repository<br>
maintainers to add tags so you don&#39;t return a fatal on git describe?<br=
>
<br>
-b<br>
</blockquote></div>

--00000000000002ff11057bbece50--
