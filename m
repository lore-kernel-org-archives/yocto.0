Return-Path: <tomasz.dziendzielski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 787DCE00B81; Thu, 18 Oct 2018 03:04:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (tomasz.dziendzielski[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45FA7E00A0C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 03:04:34 -0700 (PDT)
Received: by mail-it1-f169.google.com with SMTP id c23-v6so5854897itd.5
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 03:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fCfFavf2JcvinUJAPf8LRdtoj8p/qT7BPAbljxDQZtA=;
	b=E1yq+ujloTdTvYChSIj7wMuR2I9eoPLuPAqPfK29xYBhntklubRwuyRVY8D3A4Z8yM
	ixM74iDxrTm4KncFNOOWf3KMKBYYhGL61j90jq7AOqNAUJICNdmbKhpHbmJDUlIijZGa
	/e6POkpuhoeWM3rw8xGxQ3Df9eFifqOWzWKm/CorOvAzxh9BFTLTwoh8/l2TJzyoNj95
	n1omlzScm5SZ6SlhzkwV9u9CUavlW3jHPUql8w9OADjIB9LapWOtqVQBlMDheNTCD8Sa
	YYBx0I0ApCCxT27hnSjlV1sVaG0miIv6zCi5B31SxQNc39yHr2pMpkDtYB1KtLJNAcve
	4uAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fCfFavf2JcvinUJAPf8LRdtoj8p/qT7BPAbljxDQZtA=;
	b=Ab3rorLHv/Amh96K2qD8C0GMfIKJ8zaSFAg3ObdoFh+W08WXmo1vTqFOhMFMTgPPZy
	fhvS3mMWDR4Px/cTP6h1Nib9V7aW7vf5UN3VAeWPKyHQ6nEREeA5zGFHnZgJQ6zmTs/L
	45rYV7Wp4GOI7ykuvIOM7vCiczvsu+J8GqW53vVE31KfeiF+u47ohiitr88BL85n3jFS
	UdiAMtfhkJTmuHVBqI7v4iskRM/j3p0bFQ77P4Y6z5DThN4aEW4kGBzvJi5mfiwonzk6
	7Eu0PENxePkTcJUogd4Ry2DzbkRPyjrq40Y1z5Sjjl4XG9Qd/P6okkwHeP3VIEzWT4Xp
	lcyg==
X-Gm-Message-State: ABuFfogzEXBuBQ0FWsMiU71Nj8iYGlUxLdDBR1EGcDxSol1qJQnmaeIw
	7++t9sglcTB2p2D1lJNdoJJGvZxaDT23O0ZdNCs=
X-Google-Smtp-Source: AJdET5fHaSL7zP4urfNXFTV7QLKEb9GSJWNEEVHrLSUjQg6O+eIQVzZHLJYTs7skGB3sYjEDzSR6eCgSAMmxS2kLekQ=
X-Received: by 2002:a24:cb05:: with SMTP id
	u5-v6mr4629225itg.157.1539857074409; 
	Thu, 18 Oct 2018 03:04:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkqNs1qEJHk-knxqZ-+P1VSOjgeZt9x=RjMWSV1QUt5J3i-aw@mail.gmail.com>
	<CAJTo0LYGf_waBvUe22FY+vA7s4eNMPfZqH8JUoMGUQqyAiWWcA@mail.gmail.com>
	<CAJkqNs0bzNNuaXEAfWXvKw507iMv+OJ-uhLOr09g5K5gXTPgdA@mail.gmail.com>
	<CAJkqNs3qrO21DyFy6DZYtDs816fR23eyuXCxNL0uVt3Uea3hig@mail.gmail.com>
	<CAJTo0LbjRpmGW6qx-TBSDat=KScSoJLESU+U8RtmWnwxXkLPZg@mail.gmail.com>
In-Reply-To: <CAJTo0LbjRpmGW6qx-TBSDat=KScSoJLESU+U8RtmWnwxXkLPZg@mail.gmail.com>
From: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>
Date: Thu, 18 Oct 2018 12:05:05 +0200
Message-ID: <CAJkqNs3pmP57zMR3_ZsF8aO9Rsj_ZYUf-f+To-HEiOdnKEL7QQ@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: archiver.bbclass: do_dumpdata - shell format
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
X-List-Received-Date: Thu, 18 Oct 2018 10:04:36 -0000
Content-Type: multipart/alternative; boundary="000000000000ecdcb205787de9e7"

--000000000000ecdcb205787de9e7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>I suspect the proper solution is to treat the -e output as shell-like
From the bitbake/lib/bb/data.py:
"""Emits all items in the data store in a format such that it can be
sourced by a shell."""
so if you say it's shell-like, not shell, shouldn't we replace that to
"""Emits all items in the data store in a shell-like format"""?
If it cannot be sourced the statement "can be sourced by a shell" should be
removed.

>parse it with a proper parser.
So is there any proper parser to source this?

Best regards,
Tomasz Dziendzielski

czw., 18 pa=C5=BA 2018 o 11:51 Burton, Ross <ross.burton@intel.com> napisa=
=C5=82(a):

> Well, as you've discovered, bitbake variables can have names that are
> invalid in shell.  I suspect the proper solution is to treat the -e
> output as shell-like, and parse it with a proper parser.
>
> Ross
> On Thu, 18 Oct 2018 at 09:56, Tomasz Dziendzielski
> <tomasz.dziendzielski@gmail.com> wrote:
> >
> > So what is the proper solution?
> >
> > Best regards,
> > Tomasz Dziendzielski
> >
> > wt., 16 pa=C5=BA 2018 o 16:00 Tomasz Dziendzielski <
> tomasz.dziendzielski@gmail.com> napisa=C5=82(a):
> >>
> >> Yes, I want to source the data files. I'm trying to adapt devtool the
> way it's creating the workspace, then I'm sourcing a script with all the
> necessary variables and then interactively run commands by hand.
> >> I was thinking about the devshell but in devshell variables like ${S},
> ${B} are not set and developers would need to set it manually. Or maybe
> this is where we should do the change and inject exporting that variables
> in devshell?
> >>
> >> >it's shell-like but not actually shell.
> >> So we should not state that this can be sourced by a shell. It's state=
d
> in bitbake/lib/bb/data.py few times.
> >> Or fix it and make it possible to source.
> >>
> >> Best regards,
> >> Tomasz Dziendzielski
> >>
> >> wt., 16 pa=C5=BA 2018 o 15:00 Burton, Ross <ross.burton@intel.com>
> napisa=C5=82(a):
> >>>
> >>> Do you actually want to source the data files, and if so why?  As wit=
h
> >>> the bitbake -e output, it's shell-like but not actually shell.
> >>>
> >>> Ross
> >>> On Tue, 16 Oct 2018 at 13:44, Tomasz Dziendzielski
> >>> <tomasz.dziendzielski@gmail.com> wrote:
> >>> >
> >>> > Hi,
> >>> > when using archiver.bbclass the do_dumpdata task is using
> bb.data.emit_env function, which should emit variables "in a format such
> that it can be sourced by a shell.".
> >>> > The problem is that the *-showdata.dump file can't be properly
> sourced, because variables are not in a correct format.
> >>> >
> >>> > There are many lines like:
> >>> > PREFERRED_PROVIDER_virtual/fakeroot-native=3D"pseudo-native"
> >>> > The variables with slash are considered to be a directory and the
> ones with dash are considered to be a command.
> >>> > Also shell cannot properly set the variables like FOO_machine.
> >>> >
> >>> > Should it be sourced with some specific shell or is that function
> wrong and should be fixed?
> >>> >
> >>> > Best regards,
> >>> > Tomasz Dziendzielski
> >>> > --
> >>> > _______________________________________________
> >>> > yocto mailing list
> >>> > yocto@yoctoproject.org
> >>> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ecdcb205787de9e7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>&gt;I suspect the proper solution is=
 to treat the -e output as shell-like</div><div>From the bitbake/lib/bb/dat=
a.py:</div><div>&quot;&quot;&quot;Emits all items in the data store in a fo=
rmat such that it can be sourced by a shell.&quot;&quot;&quot;</div><div>so=
 if you say it&#39;s shell-like, not shell, shouldn&#39;t we replace that t=
o &quot;&quot;&quot;Emits all items in the data store in a shell-like forma=
t&quot;&quot;&quot;? <br></div><div>If it cannot be sourced the statement &=
quot;can be sourced by a shell&quot; should be removed.</div><div><br></div=
><div>&gt;parse it with a proper parser.</div><div>So is there any proper p=
arser to source this?<br></div><div><br></div><div>Best regards,</div><div>=
Tomasz Dziendzielski<br></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr">czw., 18 pa=C5=BA 2018 o 11:51=C2=A0Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; napisa=C5=
=82(a):<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">Well, as you&#39;ve discove=
red, bitbake variables can have names that are<br>
invalid in shell.=C2=A0 I suspect the proper solution is to treat the -e<br=
>
output as shell-like, and parse it with a proper parser.<br>
<br>
Ross<br>
On Thu, 18 Oct 2018 at 09:56, Tomasz Dziendzielski<br>
&lt;<a href=3D"mailto:tomasz.dziendzielski@gmail.com" target=3D"_blank">tom=
asz.dziendzielski@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; So what is the proper solution?<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Tomasz Dziendzielski<br>
&gt;<br>
&gt; wt., 16 pa=C5=BA 2018 o 16:00 Tomasz Dziendzielski &lt;<a href=3D"mail=
to:tomasz.dziendzielski@gmail.com" target=3D"_blank">tomasz.dziendzielski@g=
mail.com</a>&gt; napisa=C5=82(a):<br>
&gt;&gt;<br>
&gt;&gt; Yes, I want to source the data files. I&#39;m trying to adapt devt=
ool the way it&#39;s creating the workspace, then I&#39;m sourcing a script=
 with all the necessary variables and then interactively run commands by ha=
nd.<br>
&gt;&gt; I was thinking about the devshell but in devshell variables like $=
{S}, ${B} are not set and developers would need to set it manually. Or mayb=
e this is where we should do the change and inject exporting that variables=
 in devshell?<br>
&gt;&gt;<br>
&gt;&gt; &gt;it&#39;s shell-like but not actually shell.<br>
&gt;&gt; So we should not state that this can be sourced by a shell. It&#39=
;s stated in bitbake/lib/bb/data.py few times.<br>
&gt;&gt; Or fix it and make it possible to source.<br>
&gt;&gt;<br>
&gt;&gt; Best regards,<br>
&gt;&gt; Tomasz Dziendzielski<br>
&gt;&gt;<br>
&gt;&gt; wt., 16 pa=C5=BA 2018 o 15:00 Burton, Ross &lt;<a href=3D"mailto:r=
oss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; napis=
a=C5=82(a):<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Do you actually want to source the data files, and if so why?=
=C2=A0 As with<br>
&gt;&gt;&gt; the bitbake -e output, it&#39;s shell-like but not actually sh=
ell.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ross<br>
&gt;&gt;&gt; On Tue, 16 Oct 2018 at 13:44, Tomasz Dziendzielski<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:tomasz.dziendzielski@gmail.com" target=
=3D"_blank">tomasz.dziendzielski@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Hi,<br>
&gt;&gt;&gt; &gt; when using archiver.bbclass the do_dumpdata task is using=
 bb.data.emit_env function, which should emit variables &quot;in a format s=
uch that it can be sourced by a shell.&quot;.<br>
&gt;&gt;&gt; &gt; The problem is that the *-showdata.dump file can&#39;t be=
 properly sourced, because variables are not in a correct format.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; There are many lines like:<br>
&gt;&gt;&gt; &gt; PREFERRED_PROVIDER_virtual/fakeroot-native=3D&quot;pseudo=
-native&quot;<br>
&gt;&gt;&gt; &gt; The variables with slash are considered to be a directory=
 and the ones with dash are considered to be a command.<br>
&gt;&gt;&gt; &gt; Also shell cannot properly set the variables like FOO_mac=
hine.<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Should it be sourced with some specific shell or is that =
function wrong and should be fixed?<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Best regards,<br>
&gt;&gt;&gt; &gt; Tomasz Dziendzielski<br>
&gt;&gt;&gt; &gt; --<br>
&gt;&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
</blockquote></div>

--000000000000ecdcb205787de9e7--
