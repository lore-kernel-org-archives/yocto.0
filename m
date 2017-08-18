Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5C9FE00CEC; Fri, 18 Aug 2017 15:58:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95864E0090A
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 15:58:18 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id g189so36678521vke.5
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 15:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=i2941ZKbZnemr5WKYYrbqrVsiLztyZUdyNb16nNJwNU=;
	b=oP5mHVOvrDNHyosgFavxE2gKvzMiBpJLMcJkRINiKtCjuwrwi4TA8UpnCfvW5cRY6f
	SH1HJWs/Zk23LXzeMhqdVwOfHKwQxp83sxH3L6nNqToflQDt6bz/uaTITFu1Jteh3yXr
	j7fuu74TbxgCSI7BCLhXZkWfxy5/uhieP8t41yLGVLhgWV5E8k9IFINY8OvzRq+pJB1a
	YbBuzC/r03UdyEBTUrzghhp7yDahExlVankibAtLJ9309tY1E9hqfUoUT5xKUN1EBH3X
	3KlEZpoqUtFWHI9gHc6qYi8DBAHPnsMPLh6O3kGkcj5OK21d3LE0nX2VuL4hMMQmoNju
	mBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=i2941ZKbZnemr5WKYYrbqrVsiLztyZUdyNb16nNJwNU=;
	b=dDUstyU6avr7shMNRtCct8eN6/34dIpRfnfImxVx/Qe4O5IX5sJlU6Iwv4073eUyus
	jKXLgzHZ8e5hTP/ydMNRHksovn7CVN+ftdT5XnYRZ13E2aHnXssoHUNjG0RH5Ng+d7O0
	igy9pL3cJemAOmiHaATdjFY1IP5r7gR5beI8/ou19//lrI5Id5A7oBvG+6pO0R6HsuUr
	qyPKr5cfqh8/vrZ1S3P5ZzOg6b1Rw5BheFIml0FZ8xCBAgtZyQxYlmdVU5nJqI7AwN5G
	RBWfdflp9in1RY3/EEsdDR6w+5MqldWUnFTRIOoqFlEQALrxT8w0ihyUSM5vHSZxwjjX
	wIfw==
X-Gm-Message-State: AHYfb5hHeMbK4zpGWJnltEC8n2Xs5S2F29ydVOk/es1UD1cYfjiMhb28
	9njJNHKbbIis94TYqM+owz3KHvG8cQ==
X-Received: by 10.31.48.79 with SMTP id w76mr6130788vkw.51.1503097097471; Fri,
	18 Aug 2017 15:58:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.26.168 with HTTP; Fri, 18 Aug 2017 15:58:16 -0700 (PDT)
Received: by 10.176.26.168 with HTTP; Fri, 18 Aug 2017 15:58:16 -0700 (PDT)
In-Reply-To: <1502802952.2652.34.camel@gmail.com>
References: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
	<1502737813.26251.119.camel@genivi.org>
	<f6a1b7cc-f5fc-b891-bed5-3aa0f33632e1@topic.nl>
	<1502802952.2652.34.camel@gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Sat, 19 Aug 2017 00:58:16 +0200
Message-ID: <CAEjjReLSPdZB4UdgxFm5HHtqhuVtdcgSvYPqAm74h-t6Xr5HVg@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: release management
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
X-List-Received-Date: Fri, 18 Aug 2017 22:58:19 -0000
Content-Type: multipart/alternative; boundary="001a1143f0d28ecb4005570f1089"

--001a1143f0d28ecb4005570f1089
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Regarding submodule for layers. This is good when no one beside you use it.
Especially  with yocto layers. But when dev starts to use it. You or other
support team will be faced against wall of problems with basic
understanding of git submodules and index. But google starts to invest some
funds in submodules instead repo usage. So it can be a game changer in
favor of git submodules.

From own experience (dev team of 80 persons) we decided to leave submodules
in favor of repo tool. But we had the same conclusion at first. Why to use
other tool were git provides submodules. Further development and expansion
of layers are pro the repo tool manifest file. But that is from my own exp.
And it was good change.

Br,
Chris Z

15.08.2017 15:16 "Joshua Watt" <jpewhacker@gmail.com> napisa=C5=82(a):

> On Tue, 2017-08-15 at 09:25 +0200, Mike Looijmans wrote:
> > =EF=BB=BFOn 14-08-17 21:10, Gunnar Andersson wrote:
> > >
> > > Hey Russell
> > >
> > > I don't claim to be an authority on best practices but I will share
> > > some
> > > thoughts.
> > >
> > > On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:
> > > > Hello.
> > > >
> > > > As I learn more about yocto and more importantly gain practical
> > > > experience
> > > > with it I have started to think about my release structure.  Is
> > > > there a
> > > > =E2=80=9Cbest practices=E2=80=9D document or something like that th=
at speaks to
> > > > this?
> > > > For example, how does everyone deal with =E2=80=9Cexternal=E2=80=9D=
 meta layer
> > > > dependencies?  My software uses poky and meta-openembedded, of
> > > > course.
> > >
> > > We simply use a parent project [1] that includes git submodules,
> > > one per
> > > yocto layer.  I'm of the opinion that if git (only) can be used,
> > > why
> > > introduce other tools?   But it requires you to learn and master
> > > that
> > > feature.
> > >
> >
> > We arrived at exactly the same setup. One parent repository that
> > contains the
> > project-unique recipes, and submodules for the layers it needs.
> >
> > It's a lot better than attempting to script things. For one thing,
> > git will
> > tell you the state of the submodules.
> >
> > If I rembemer correctly, Android builds use a tool to manage the
> > layer
> > repositories. I didn't much like it though. And "yet another tool"...
>
> It's called "repo" https://code.google.com/archive/p/git-repo/.
>
> In my experience git submodules work fine if you follow the core
> workflow of adding new submodules and updating them to newer versions.
> The workflows for deleting, renaming, changed upstream repostiory, etc.
> for submodules is IHMO pretty bad. Pretty much every time I've tried
> that it has resulted in a borked local repository that I either had to
> manually go into the .git directory and fix, or just start over with a
> fresh clone (perhaps I'm just bad at it or newer versions of git are
> better?). Not to say you shouldn't use them, just be aware of some of
> the catches so you can match the tool to your expected workflow.
>
> For my $0.02: We use git submodules to manage the multiple yocto trees
> we are pulling in and also keep "parallel" layers for each with the
> local changes we want to make in .bbappends, where possible (following
> the strategy of no modifying the original). We do (particularly for
> older versions of Yocto) make changes to the core since we have local
> mirrors, but we follow a strict policy of getting changes upstreamed
> first, and they trying to get upstream to backport to our version (if
> it is still supported).
>
> >
> >
> > Kind regards,
> >
> > Mike Looijmans
> > System Expert
> >
> > TOPIC Products
> > Materiaalweg 4, NL-5681 RJ Best
> > Postbus 440, NL-5680 AK Best
> > Telefoon: +31 (0) 499 33 69 79
> > E-mail: mike.looijmans@topicproducts.com
> > Website: www.topicproducts.com
> >
> > Please consider the environment before printing this e-mail
> >
> >
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143f0d28ecb4005570f1089
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">Regardin=
g submodule for layers. This is good when no one beside you use it. Especia=
lly =C2=A0with yocto layers. But when dev starts to use it. You or other su=
pport team will be faced against wall of problems with basic understanding =
of git submodules and index. But google starts to invest some funds in subm=
odules instead repo usage. So it can be a game changer in favor of git subm=
odules.</div><div dir=3D"auto"><br></div><div dir=3D"auto">From own experie=
nce (dev team of 80 persons) we decided to leave submodules in favor of rep=
o tool. But we had the same conclusion at first. Why to use other tool were=
 git provides submodules. Further development and expansion of layers are p=
ro the repo tool manifest file. But that is from my own exp. And it was goo=
d change.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Br,</div><div =
dir=3D"auto">Chris Z</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">15.08.2017 15:16 &quot;Joshua Watt&quot; &lt;<a href=3D"ma=
ilto:jpewhacker@gmail.com">jpewhacker@gmail.com</a>&gt; napisa=C5=82(a):<br=
 type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, 2017-08-15 at =
09:25 +0200, Mike Looijmans wrote:<br>
&gt; =EF=BB=BFOn 14-08-17 21:10, Gunnar Andersson wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hey Russell<br>
&gt; &gt;<br>
&gt; &gt; I don&#39;t claim to be an authority on best practices but I will=
 share<br>
&gt; &gt; some<br>
&gt; &gt; thoughts.<br>
&gt; &gt;<br>
&gt; &gt; On Sun, 2017-08-13 at 06:58 -0400, Russell Peterson wrote:<br>
&gt; &gt; &gt; Hello.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; As I learn more about yocto and more importantly gain practi=
cal<br>
&gt; &gt; &gt; experience<br>
&gt; &gt; &gt; with it I have started to think about my release structure.=
=C2=A0 Is<br>
&gt; &gt; &gt; there a<br>
&gt; &gt; &gt; =E2=80=9Cbest practices=E2=80=9D document or something like =
that that speaks to<br>
&gt; &gt; &gt; this?<br>
&gt; &gt; &gt; For example, how does everyone deal with =E2=80=9Cexternal=
=E2=80=9D meta layer<br>
&gt; &gt; &gt; dependencies?=C2=A0 My software uses poky and meta-openembed=
ded, of<br>
&gt; &gt; &gt; course.<br>
&gt; &gt;<br>
&gt; &gt; We simply use a parent project [1] that includes git submodules,<=
br>
&gt; &gt; one per<br>
&gt; &gt; yocto layer.=C2=A0 I&#39;m of the opinion that if git (only) can =
be used,<br>
&gt; &gt; why<br>
&gt; &gt; introduce other tools?=C2=A0 =C2=A0But it requires you to learn a=
nd master<br>
&gt; &gt; that<br>
&gt; &gt; feature.<br>
&gt; &gt;<br>
&gt;<br>
&gt; We arrived at exactly the same setup. One parent repository that<br>
&gt; contains the<br>
&gt; project-unique recipes, and submodules for the layers it needs.<br>
&gt;<br>
&gt; It&#39;s a lot better than attempting to script things. For one thing,=
<br>
&gt; git will<br>
&gt; tell you the state of the submodules.<br>
&gt;<br>
&gt; If I rembemer correctly, Android builds use a tool to manage the<br>
&gt; layer<br>
&gt; repositories. I didn&#39;t much like it though. And &quot;yet another =
tool&quot;...<br>
<br>
It&#39;s called &quot;repo&quot; <a href=3D"https://code.google.com/archive=
/p/git-repo/" rel=3D"noreferrer" target=3D"_blank">https://code.google.com/=
<wbr>archive/p/git-repo/</a>.<br>
<br>
In my experience git submodules work fine if you follow the core<br>
workflow of adding new submodules and updating them to newer versions.<br>
The workflows for deleting, renaming, changed upstream repostiory, etc.<br>
for submodules is IHMO pretty bad. Pretty much every time I&#39;ve tried<br=
>
that it has resulted in a borked local repository that I either had to<br>
manually go into the .git directory and fix, or just start over with a<br>
fresh clone (perhaps I&#39;m just bad at it or newer versions of git are<br=
>
better?). Not to say you shouldn&#39;t use them, just be aware of some of<b=
r>
the catches so you can match the tool to your expected workflow.<br>
<br>
For my $0.02: We use git submodules to manage the multiple yocto trees<br>
we are pulling in and also keep &quot;parallel&quot; layers for each with t=
he<br>
local changes we want to make in .bbappends, where possible (following<br>
the strategy of no modifying the original). We do (particularly for<br>
older versions of Yocto) make changes to the core since we have local<br>
mirrors, but we follow a strict policy of getting changes upstreamed<br>
first, and they trying to get upstream to backport to our version (if<br>
it is still supported).<br>
<br>
&gt;<br>
&gt;<br>
&gt; Kind regards,<br>
&gt;<br>
&gt; Mike Looijmans<br>
&gt; System Expert<br>
&gt;<br>
&gt; TOPIC Products<br>
&gt; Materiaalweg 4, NL-5681 RJ Best<br>
&gt; Postbus 440, NL-5680 AK Best<br>
&gt; Telefoon: <a href=3D"tel:%2B31%20%280%29%20499%2033%2069%2079" value=
=3D"+31499336979">+31 (0) 499 33 69 79</a><br>
&gt; E-mail: <a href=3D"mailto:mike.looijmans@topicproducts.com">mike.looij=
mans@topicproducts.<wbr>com</a><br>
&gt; Website: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" t=
arget=3D"_blank">www.topicproducts.com</a><br>
&gt;<br>
&gt; Please consider the environment before printing this e-mail<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</blockquote></div></div>

--001a1143f0d28ecb4005570f1089--
