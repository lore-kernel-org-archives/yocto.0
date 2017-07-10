Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63E4EE00C2C; Mon, 10 Jul 2017 05:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EC49E00C2A
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 05:32:52 -0700 (PDT)
Received: by mail-qk0-f173.google.com with SMTP id 16so71784662qkg.2
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 05:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=sqY/XtDZBTwYz21uN/Yu/BUxiv5T3BEnULV46cCfmK0=;
	b=DatmnuuWfCBuaAJ7BZMc7jffLexqNjH48bY1yQi9OzelUtB0XLgsItOUeMg9JUV8LO
	SN6PwjUi6YMCIhNsMpwfgjH101SHyWp6OFMMueiTBTUMFuOs+BX0TrA/xIohl2/uOoCl
	C1VF6OIboRK7nUV3Cwfr8jgtG0WEk7NBYTWDT56d5oWZSn9kZXE+NMhjrfT+MxRtrD9m
	88A0NzxKHSghArHjV3OLpWyd3210W+JzmFBfC9pUfLvGB5MI26wU3zz901os7jbX5ioC
	f+x2i5V5pPonI/NiBWH9vnO8+4PIi1Ud4JftR1AiLxW1rrlngtU/REC36FgbBByv7bBQ
	y32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=sqY/XtDZBTwYz21uN/Yu/BUxiv5T3BEnULV46cCfmK0=;
	b=rbniUON8AVWxL+vQ5Te82RHIUzadRNlFcKBTdzW4WtT8Xx9PGb3g7Vbs3NdDrVyo+I
	nUnLuhonmLr83LsSHeh0c0gA9Uw83vtnelWzMAnYJy2OeIrsEbVlY8NFwtBOGQP0jkFY
	Sy1H/PV+LuhOjwE3fT1s/lHckXGFtcNHVJ6DcLkCJqlkgoj236MbyDHLZDUviysltGCy
	ACfJLsd6pSRqlXqHhBAUolngz099BM/GIJuVqLe7+2L0G8aMAXfdUZN7Rmvh9khv0KSx
	598Q5YpxOSNw10q0fKd3qqxuCHXMhqLQPeP+bM/Xkmbp7dOcXvcANF+23sVI1y79s4WG
	4TGw==
X-Gm-Message-State: AIVw110T1UtBn6aLxRdfTAyFZz4qGNwENDtXQwgyMMQITuiI8B24xkaI
	xe9f9J/QFVJ/+n9gQg/O6AnAE65dB/ZVHBs=
X-Received: by 10.55.99.76 with SMTP id x73mr3792012qkb.219.1499689971510;
	Mon, 10 Jul 2017 05:32:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Mon, 10 Jul 2017 05:32:31 -0700 (PDT)
In-Reply-To: <1499686806.23010.9.camel@genivi.org>
References: <1499686806.23010.9.camel@genivi.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Jul 2017 13:32:31 +0100
Message-ID: <CAJTo0LaBp4rR8yn60Fg6_qf4DH3RJiK+Knynjn2P_oDeEkHKQw@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions on HOSTTOOLS and the documented host packages in the manual
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
X-List-Received-Date: Mon, 10 Jul 2017 12:32:54 -0000
Content-Type: multipart/alternative; boundary="001a11483560068fdf0553f5c8b6"

--001a11483560068fdf0553f5c8b6
Content-Type: text/plain; charset="UTF-8"

On 10 July 2017 at 12:40, Gunnar Andersson <gandersson@genivi.org> wrote:

> Sidestepping, since I anticipate this in your response:  I know there's
> continuous work on repeatability, and tried to read what I can in the
> manual
> on the new HOSTTOOL variable.  The mechanics of $PATH and softlinking the
> binaries are clear, but I think I missed the intended usage and process
> around it.   First, is it expected/recommended that each layer modifies
> this
> variable?  If so, would layers add new host dependencies, or is the
> intention to have layers further limit this with its own whitelist but
> still
> based on a predefined set coming from the Poky layer?
>

Layers can extend the variables if they have explicit host dependencies,
but I'd be surprised and concerned if this was a common occurrence.

For example I see that meta-oe adds "id" to HOSTTOOLS (for the crash
recipe), but if that was submitted to oe-core it would be rejected.  The
only reason as far as I can tell to call id is to get the current uid/gid,
and that then introduces another vector of non-determinism in builds.  We
recommend that be patched out and replaced with constants: see also the
kernel build which by default uses whoami to embed the username of the
kernel builder, but we export KBUILD_BUILD_USER=oe-user to remove that
source of non-determinism.

Please confirm, is the manual (I refer to the Mega Manual [1]) intended to
> be such a canonical list of host dependencies?
>
> But if so:  Is it intentional or a bug that gzip (and bzip2, perhaps
> others)
> is listed to be installed for Fedora, but not listed to be installed for
> Ubuntu/Debian, see [1]?   Maybe the idea was that some things are always
> there by default on those distros, but that seems brittle.  Shouldn't every
> package be listed very explicitly?
>

Yes, please file a bug for missing ones.  The lists are intended to be
packages installed over the base install, but container images being *very*
minimal are often missing dependencies so we need to be sure everything is
covered.

Ross

--001a11483560068fdf0553f5c8b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 10 July 2017 at 12:40, Gunnar Andersson <span dir=3D"lt=
r">&lt;<a href=3D"mailto:gandersson@genivi.org" target=3D"_blank">gandersso=
n@genivi.org</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:r=
gb(204,204,204);padding-left:1ex">Sidestepping, since I anticipate this in =
your response:=C2=A0 I know there&#39;s<br>
continuous work on repeatability, and tried to read what I can in the manua=
l<br>
on the new HOSTTOOL variable.=C2=A0 The mechanics of $PATH and softlinking =
the<br>
binaries are clear, but I think I missed the intended usage and process<br>
around it.=C2=A0 =C2=A0First, is it expected/recommended that each layer mo=
difies this<br>
variable?=C2=A0 If so, would layers add new host dependencies, or is the<br=
>
intention to have layers further limit this with its own whitelist but stil=
l<br>
based on a predefined set coming from the Poky layer?<br></blockquote><div>=
<br></div><div>Layers can extend the variables if they have explicit host d=
ependencies, but I&#39;d be surprised and concerned if this was a common oc=
currence.</div><div><br></div><div>For example I see that meta-oe adds &quo=
t;id&quot; to HOSTTOOLS (for the crash recipe), but if that was submitted t=
o oe-core it would be rejected.=C2=A0 The only reason as far as I can tell =
to call id is to get the current uid/gid, and that then introduces another =
vector of non-determinism in builds.=C2=A0 We recommend that be patched out=
 and replaced with constants: see also the kernel build which by default us=
es whoami to embed the username of the kernel builder, but we export=C2=A0K=
BUILD_BUILD_USER=3Doe-user to remove that source of non-determinism.</div><=
div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(=
204,204,204);padding-left:1ex">Please confirm, is the manual (I refer to th=
e Mega Manual [1]) intended to<br>
be such a canonical list of host dependencies?<br>
<br>
But if so:=C2=A0 Is it intentional or a bug that gzip (and bzip2, perhaps o=
thers)<br>
is listed to be installed for Fedora, but not listed to be installed for<br=
>
Ubuntu/Debian, see [1]?=C2=A0=C2=A0 Maybe the idea was that some things are=
 always<br>
there by default on those distros, but that seems brittle.=C2=A0 Shouldn&#3=
9;t every<br>
package be listed very explicitly?<br></blockquote><div><br></div><div>Yes,=
 please file a bug for missing ones.=C2=A0 The lists are intended to be pac=
kages installed over the base install, but container images being *very* mi=
nimal are often missing dependencies so we need to be sure everything is co=
vered.</div><div><br></div><div>Ross</div></div></div></div>

--001a11483560068fdf0553f5c8b6--
