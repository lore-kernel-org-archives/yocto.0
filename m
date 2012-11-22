Return-Path: <ndec13@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F4C3E002AB
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 00:59:22 -0800 (PST)
Received: by mail-vc0-f176.google.com with SMTP id fl13so9887871vcb.35
	for <yocto@yoctoproject.org>; Thu, 22 Nov 2012 00:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=oQvZkgiqvlVMWOh4ZuDlrAfbyLcZA6AFLhRiY8vombU=;
	b=aMWkeCnNrHa6OJ0WClQ7rV6WCw4nklPsX0aDk/w8pjSy0hedhYmypgaqwE+jk6mN3g
	Fbhpe599Qh1LYofjwDCOKUr8x8ESynCwycv18bS4FenFq/62ryDLFVKzYV9DoTPKm2lF
	+O+97wjuUM2xayTAOBeHP5K5t/D0v7EcclV0r9WC/KoafTUvUJm724mJqbWgPBQKYy9M
	injjrkSJ/FjKEPgr9Jd7i9iEm23lndOjwvx0iHevoTNQLCHKNS+VURgk3jk91Cg2z2QQ
	vbv3T6/VDL1rt44nOS+XnXdB0o6kUS3gRsiY6gd0nmkJM27H1p7auXTckgkzWUFXUF7C
	kx4A==
Received: by 10.52.95.34 with SMTP id dh2mr28776569vdb.69.1353574761527; Thu,
	22 Nov 2012 00:59:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.248.74 with HTTP; Thu, 22 Nov 2012 00:59:01 -0800 (PST)
In-Reply-To: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
References: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Thu, 22 Nov 2012 09:59:01 +0100
Message-ID: <CAOT3miJSFR2sJbHnhnnpDy0wmvjmRzvwnx=6AsFRyk5HCpCuZA@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Best way to support multiple versions of Poky?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Nov 2012 08:59:22 -0000
Content-Type: multipart/alternative; boundary=20cf307cfef4d6781f04cf11ae69

--20cf307cfef4d6781f04cf11ae69
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 22, 2012 at 9:35 AM, Chris Tapp <opensource@keylevel.com> wrote:

> I'm just getting round to moving from 'denzil' to 'danny'. I've got a
> layer that makes some changes to a few recipes through bbappend files.
>
> However, 'danny' has bumped a few of these to a new version (which is
> good) which means I now have bbappend files that get a 'there is no
> matching bb file' errors when I try to build. This is easy to fix
> (generally just rename the bbappend to match the new version), but I would
> like the layer to be able to work with older versions of Poky - mainly in
> case I need to make changes to an existing project that hasn't be verified
> under 'danny'.
>
> What's the best way to do this? All I can think of is to have another set
> of layers to use when building against a specific poky version:
>
> meta-mystuff
> |
> +--poky-versions
>    |
>    +--denzil-specific
>    +--danny-specific
>    +--etc
>
> Is there a more elegant solution?
>

i suspect you might have thought about that already... and might have
discarded the idea... but for meta-ti layer, we use a branching scheme.
each version is maintained in its separate branch. you will find 'denzil',
'danny', and master branch here
http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/, for each OE version.
one drawback with that is that you need multiple copy of the layer 'tree'
to work on multiple versions... but that can be managed.

--20cf307cfef4d6781f04cf11ae69
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Nov 2=
2, 2012 at 9:35 AM, Chris Tapp <span dir=3D"ltr">&lt;<a href=3D"mailto:open=
source@keylevel.com" target=3D"_blank">opensource@keylevel.com</a>&gt;</spa=
n> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div>I&#39;m just getting round to moving from &#39;denzil=
&#39; to &#39;danny&#39;. I&#39;ve got a layer that makes some changes to a=
 few recipes through bbappend files.<br>



<br>
However, &#39;danny&#39; has bumped a few of these to a new version (which =
is good) which means I now have bbappend files that get a &#39;there is no =
matching bb file&#39; errors when I try to build. This is easy to fix (gene=
rally just rename the bbappend to match the new version), but I would like =
the layer to be able to work with older versions of Poky - mainly in case I=
 need to make changes to an existing project that hasn&#39;t be verified un=
der &#39;danny&#39;.<br>



<br>
What&#39;s the best way to do this? All I can think of is to have another s=
et of layers to use when building against a specific poky version:<br>
<br>
meta-mystuff<br>
|<br>
+--poky-versions<br>
=A0 =A0|<br>
=A0 =A0+--denzil-specific<br>
=A0 =A0+--danny-specific<br>
=A0 =A0+--etc<br>
<br>
Is there a more elegant solution?<br></div></blockquote><div><br></div><div=
>i suspect you might have thought about that already... and might have disc=
arded the idea... but for meta-ti layer, we use a branching scheme. each ve=
rsion is maintained in its separate branch. you will find &#39;denzil&#39;,=
 &#39;danny&#39;, and master branch here=A0<a href=3D"http://git.yoctoproje=
ct.org/cgit/cgit.cgi/meta-ti/">http://git.yoctoproject.org/cgit/cgit.cgi/me=
ta-ti/</a>, for each OE version. one drawback with that is that you need mu=
ltiple copy of the layer &#39;tree&#39; to work on multiple versions... but=
 that can be managed.=A0</div>

<div><br></div><div><br></div></div><br></div>

--20cf307cfef4d6781f04cf11ae69--
