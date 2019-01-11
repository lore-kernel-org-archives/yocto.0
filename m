Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44713E00CC4; Fri, 11 Jan 2019 09:41:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
	[209.85.208.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAB2CE00B77
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 09:41:11 -0800 (PST)
Received: by mail-ed1-f44.google.com with SMTP id o10so13693864edt.13
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 09:41:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fDJ36dQhEIl6N1nrbSI8RjrJ3QqVAFJGl+NrXevDdug=;
	b=gCkbW6tiBPGXFuWX1Pplg324t2ExRKOyxaazU9Zj7dPaDBMs/rXbeH+TUBZR9r/G+9
	xm9fXhu3figSnELuBoGYb8i52uhXjJ0Wf7o2YWfcYiAdTLE7dFUzmsNEKRe4Mpua4Q1V
	ozjWAS4mWt4mFdd02jw+DEBHIlWfNhXb6YXR6tYPdDe8J1pmewcLHFTvUzdgc+93wFpr
	oULOkEVfR7EfTS9O9d9eFEGNQfbmtq68L/0oRH72tfACOaGQYAJT2SzB3+e4HUVE5Z9B
	kG1/RDHCo9UifZgz1SpO/BTlyRyjjkoRhlmQwdmFf5udrgKk4DVfRdaiDhOzE/qRnVRc
	F23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fDJ36dQhEIl6N1nrbSI8RjrJ3QqVAFJGl+NrXevDdug=;
	b=KRkueLrUzAVXxZL4kk96WNh4jnRtxVfrZi9OSWtTBqY2+SJj6WqvOCBxmVHUwK0sbp
	Zk3Rs5P/mdDz5SEAGuQ6l//qgYTX1VZw9FLF5S1/wh2Rv2jiP558BcHqDuuI0Yblxonk
	c6zM+g8NXUJrMBHPOLCAEsD23F88M954Pii400s88NrTqjdbzmJI2JiBIuuZpFMymMRM
	6wUu440PFFb55vUgFMZkfGm8DghVIMYx02uGxTyxN1kjmYOfdWjwq67AFe7O/cjrclaJ
	Ul4O0Gg74NOi7CLqdJs27ZDhjRaIzIfQDv4huxKWLtcItvb9mR3lS5zuwRSGCtTmEy8W
	Y0qA==
X-Gm-Message-State: AJcUuke0IW/lnIgjokXfuD4nQV4bZqQ9vRK/rCEabrErNs59mP4D21Mf
	cw/HkFiIS/YIY/DD+VhBCTrkVGI1aFedKYkubso=
X-Google-Smtp-Source: ALg8bN5OUxur6tExyOf66qpxeersZrL107Q+/NfOOYS2LrXirT3sZfH610h4lgdG87Nv9/tAhN06Ck0vcGSwHrIwprQ=
X-Received: by 2002:a17:906:2989:: with SMTP id
	x9-v6mr12274368eje.156.1547228470787; 
	Fri, 11 Jan 2019 09:41:10 -0800 (PST)
MIME-Version: 1.0
References: <20190111173252.GA6455@grante>
In-Reply-To: <20190111173252.GA6455@grante>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 11 Jan 2019 09:40:58 -0800
Message-ID: <CAFNP8OsugLp2Jo4RhuwZkOESmOe0gezYo=4JpJaNkJvLPFsVoA@mail.gmail.com>
To: Grant Edwards <grant.b.edwards@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Is there a good "getting started" tutorial?
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
X-List-Received-Date: Fri, 11 Jan 2019 17:41:15 -0000
Content-Type: multipart/alternative; boundary="000000000000634908057f32336f"

--000000000000634908057f32336f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Grant - I will check this out.  I am going to use this manual -
https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctopro=
jectqs.html
.

Scott

On Fri, Jan 11, 2019 at 9:33 AM Grant Edwards <grant.b.edwards@gmail.com>
wrote:

>
> I'm new to Yocto and looking for a good "getting started"
> tutorial. I've tried
>
>
> https://www.yoctoproject.org/docs/2.6/brief-yoctoprojectqs/brief-yoctopro=
jectqs.html
>
> and immediately ran into mistakes on the very first step:
>
>     Use Git to Clone Poky=C2=B6
>     Once you complete the setup instructions for your machine, you need t=
o
> get a copy of the Poky repository on your build host. Use the following
> commands to clone the Poky repository and then checkout the yocto-2.6
> release:
>
>          $ git clone git://git.yoctoproject.org/poky
>          Cloning into 'poky'...
>          remote: Counting objects: 361782, done.
>          remote: Compressing objects: 100% (87100/87100), done.
>          remote: Total 361782 (delta 268619), reused 361439 (delta 268277=
)
>          Receiving objects: 100% (361782/361782), 131.94 MiB | 6.88 MiB/s=
,
> done.
>          Resolving deltas: 100% (268619/268619), done.
>          Checking connectivity... done.
>          $ git checkout tags/yocto-2.5 -b my-yocto-2.5
>
>     The previous Git checkout command creates a local branch named
>     my-yocto-2.6. [...]
>
> It does? The 'git clone' command seems to be OK, but the second command
> fails:
>
>     $ git clone git://git.yoctoproject.org/poky
>     Cloning into 'poky'...
>     remote: Counting objects: 428632, done.
>     remote: Compressing objects: 100% (101203/101203), done.
>     remote: Total 428632 (delta 320463), reused 428532 (delta 320363)
>     Receiving objects: 100% (428632/428632), 153.01 MiB | 1.33 MiB/s, don=
e.
>     Resolving deltas: 100% (320463/320463), done.
>     $ git checkout tags/yocto-2.5 -b my-yocto-2.5
>     fatal: not a git repository (or any parent up to mount point /)
>     Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not
> set).
>
> I re-tried the second command, changing the version from 2.5 to 2.6,
> and that didn't work either:
>
>     $ git checkout tags/yocto-2.6 -b my-yocto-2.6
>     fatal: not a git repository (or any parent up to mount point /)
>     Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not
> set).
>
> It looks like there's a missing 'cd poky' command that needs to be
> inserted before the 'git checkout', and the checkout command needs to
> be changed from 2.5 to 2.6.
>
> Has anybody tried this tutorial recently to see if it actually works?
>
> Is there a better getting started doc?
>
> --
> Grant
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000634908057f32336f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Grant - I will check this out.=C2=A0 I am=
 going to use this manual - <a href=3D"https://www.yoctoproject.org/docs/2.=
6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html">https://www.yoctoprojec=
t.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a>.</div><=
div dir=3D"ltr"><br></div><div>Scott<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr">On Fri, Jan 11, 2019 at 9:33 AM Grant Edwards &lt;=
<a href=3D"mailto:grant.b.edwards@gmail.com">grant.b.edwards@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
I&#39;m new to Yocto and looking for a good &quot;getting started&quot;<br>
tutorial. I&#39;ve tried<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.6/brief-yoctoprojectqs/brief=
-yoctoprojectqs.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoct=
oproject.org/docs/2.6/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a><br=
>
<br>
and immediately ran into mistakes on the very first step:<br>
<br>
=C2=A0 =C2=A0 Use Git to Clone Poky=C2=B6<br>
=C2=A0 =C2=A0 Once you complete the setup instructions for your machine, yo=
u need to get a copy of the Poky repository on your build host. Use the fol=
lowing commands to clone the Poky repository and then checkout the yocto-2.=
6 release:<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ git clone git://<a href=3D"http://git.y=
octoproject.org/poky" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject=
.org/poky</a><br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cloning into &#39;poky&#39;...<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remote: Counting objects: 361782, done.<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remote: Compressing objects: 100% (87100/=
87100), done.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remote: Total 361782 (delta 268619), reus=
ed 361439 (delta 268277)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Receiving objects: 100% (361782/361782), =
131.94 MiB | 6.88 MiB/s, done.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Resolving deltas: 100% (268619/268619), d=
one.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Checking connectivity... done.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0$ git checkout tags/yocto-2.5 -b my-yocto=
-2.5<br>
<br>
=C2=A0 =C2=A0 The previous Git checkout command creates a local branch name=
d<br>
=C2=A0 =C2=A0 my-yocto-2.6. [...]<br>
<br>
It does? The &#39;git clone&#39; command seems to be OK, but the second com=
mand fails:<br>
<br>
=C2=A0 =C2=A0 $ git clone git://<a href=3D"http://git.yoctoproject.org/poky=
" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/poky</a><br>
=C2=A0 =C2=A0 Cloning into &#39;poky&#39;...<br>
=C2=A0 =C2=A0 remote: Counting objects: 428632, done.<br>
=C2=A0 =C2=A0 remote: Compressing objects: 100% (101203/101203), done.<br>
=C2=A0 =C2=A0 remote: Total 428632 (delta 320463), reused 428532 (delta 320=
363)<br>
=C2=A0 =C2=A0 Receiving objects: 100% (428632/428632), 153.01 MiB | 1.33 Mi=
B/s, done.<br>
=C2=A0 =C2=A0 Resolving deltas: 100% (320463/320463), done.<br>
=C2=A0 =C2=A0 $ git checkout tags/yocto-2.5 -b my-yocto-2.5<br>
=C2=A0 =C2=A0 fatal: not a git repository (or any parent up to mount point =
/)<br>
=C2=A0 =C2=A0 Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYS=
TEM not set).<br>
<br>
I re-tried the second command, changing the version from 2.5 to 2.6,<br>
and that didn&#39;t work either:<br>
<br>
=C2=A0 =C2=A0 $ git checkout tags/yocto-2.6 -b my-yocto-2.6<br>
=C2=A0 =C2=A0 fatal: not a git repository (or any parent up to mount point =
/)<br>
=C2=A0 =C2=A0 Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYS=
TEM not set).<br>
<br>
It looks like there&#39;s a missing &#39;cd poky&#39; command that needs to=
 be<br>
inserted before the &#39;git checkout&#39;, and the checkout command needs =
to<br>
be changed from 2.5 to 2.6.<br>
<br>
Has anybody tried this tutorial recently to see if it actually works?<br>
<br>
Is there a better getting started doc?<br>
<br>
--<br>
Grant<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000634908057f32336f--
