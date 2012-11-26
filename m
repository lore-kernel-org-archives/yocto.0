Return-Path: <peachj@lexmark.com>
Received: from exprod8og110.obsmtp.com (exprod8og110.obsmtp.com [64.18.3.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB506E011AC
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:55:03 -0800 (PST)
Received: from mail-qa0-f72.google.com ([209.85.216.72]) (using TLSv1) by
	exprod8ob110.postini.com ([64.18.7.12]) with SMTP
	ID DSNKULN0t6eSQinK15W3t+p+k444oYVQib+9@postini.com;
	Mon, 26 Nov 2012 05:55:04 PST
Received: by mail-qa0-f72.google.com with SMTP id t11so8126276qaa.11
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2012 05:55:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=L8t+EzYoii8GxzXNjZXXNx8E4uUq3MxvtC1fQhweQjg=;
	b=Q2WRprvRuNIDxuAb8mxVq7a0eowN4956wazsnjwAOnXslWzS3VZgTun5xpH0EofBay
	UQhoNg2zHCP5P8C14thvLZui5zqdFFtmZa2x7lEM4BjtlGrFzmkdTkY+lTMAaciBVA68
	2OqyKj1bA3fkIVErLm7RYbOxGInpKAZIiOEpBs6T1ZJLPLut8nTLSI3YZ7raOwe8CggQ
	jxdCZtYt1hMRvAuU+W6qx5/YgWIIEZKo+sVodMwX9FY87uy03GfkyS3Oz36V3r520cuD
	9Ffm+5DH2osUQdHCUQtY1oBM3rgy/nEDfJSbo7jaxHRJ+rExZsKQk5q9b593YKuo2C8S
	UhcA==
Received: by 10.49.82.98 with SMTP id h2mr13570466qey.14.1353938102611;
	Mon, 26 Nov 2012 05:55:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.82.98 with SMTP id h2mr13570445qey.14.1353938102316; Mon,
	26 Nov 2012 05:55:02 -0800 (PST)
Received: by 10.49.48.196 with HTTP; Mon, 26 Nov 2012 05:55:02 -0800 (PST)
In-Reply-To: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
References: <8754B3FC-739C-4344-8D24-B31A5D86D48F@keylevel.com>
Date: Mon, 26 Nov 2012 08:55:02 -0500
Message-ID: <CA+QkY1DG+xEOrsJ_Xx8BEOB2RYsNnCdU3raSnuLHnt+mw2bPBA@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQnYnbTRR49Dc7Z+zBiUheehjEqiRYE4YS24r3x27y06ZR+cW4NTix3/cuznbSxIQIow3wrSM0src5GC7FRjceE8yOscjC2JhRqvoZJd3CDG7kDNft/BvE4ZKY+GO2fWV3bTubLYBKYrXLgse3bVENdFgx9fxA==
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
X-List-Received-Date: Mon, 26 Nov 2012 13:55:04 -0000
Content-Type: multipart/alternative; boundary=047d7b6220dea2ed4e04cf664799

--047d7b6220dea2ed4e04cf664799
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 22, 2012 at 3:35 AM, Chris Tapp <opensource@keylevel.com> wrote:

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
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

I don't know what sort of version control (if any) you're using around
"meta-mystuff", so what I'm about to suggest may not be directly applicable
to you.  Also, note that we have not actually deployed the scheme we've
developed at our company yet (so there may be some reason it doesn't work
that we haven't thought of yet), but here's the directory/repo structure we
think will work for our code:

build-bundle (git repo with our layers + tools)
|
+-- meta-ourstuff (git submodule, i.e. separate repo locked to a specific
version within build-bundle)
+-- poky (another submodule)
   |
   +-- poky BB files (i.e. within meta, meta-yocto, etc.)

When we release code, we'll create a tag in build-bundle.  If the released
code needs to diverge from the state of our master, we'll branch, then tag.
 Either way, if you want to build old code, you check out the tag and build
it.  That should "just work" because what we see as the tools (i.e.
everything in the poky directory) are being version-controlled along-side
everything we've added, including .bbappend files in our layers that modify
.bb files in the poky layer.  Of course, if you need to modify an old
release, you'd branch off the release you wanted to modify.  So, if
"denzil" is the current version and you need to modify a release created
with "danny", you simply branch from that release, and all your .bbappend
files and tools will be correct for the "danny" version of the Yocto tools.

--047d7b6220dea2ed4e04cf664799
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 22, 2012 at 3:35 AM, Chris Tapp <span dir=3D"ltr">&lt;<a href=
=3D"mailto:opensource@keylevel.com" target=3D"_blank">opensource@keylevel.c=
om</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
I&#39;m just getting round to moving from &#39;denzil&#39; to &#39;danny&#3=
9;. I&#39;ve got a layer that makes some changes to a few recipes through b=
bappend files.<br>
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
Is there a more elegant solution?<br>
<br>
Chris Tapp<br>
<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" target=3D"_blank">www.keylevel.com</a><=
br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><div>I don&#39;t know what sort of version control (=
if any) you&#39;re using around &quot;meta-mystuff&quot;, so what I&#39;m a=
bout to suggest may not be directly applicable to you. =A0Also, note that w=
e have not actually deployed the scheme we&#39;ve developed at our company =
yet (so there may be some reason it doesn&#39;t work that we haven&#39;t th=
ought of yet), but here&#39;s the directory/repo structure we think will wo=
rk for our code:</div>
<div><br></div><div>build-bundle (git repo with our layers + tools)</div><d=
iv>|</div><div>+-- meta-ourstuff (git submodule, i.e. separate repo locked =
to a specific version within build-bundle)</div><div>+-- poky (another subm=
odule)</div>
<div>=A0 =A0|</div><div>=A0 =A0+-- poky BB files (i.e. within meta, meta-yo=
cto, etc.)</div><div><br></div><div>When we release code, we&#39;ll create =
a tag in build-bundle. =A0If the released code needs to diverge from the st=
ate of our master, we&#39;ll branch, then tag. =A0Either way, if you want t=
o build old code, you check out the tag and build it. =A0That should &quot;=
just work&quot; because what we see as the tools (i.e. everything in the po=
ky directory) are being version-controlled along-side everything we&#39;ve =
added, including .bbappend files in our layers that modify .bb files in the=
 poky layer. =A0Of course, if you need to modify an old release, you&#39;d =
branch off the release you wanted to modify. =A0So, if &quot;denzil&quot; i=
s the current version and you need to modify a release created with &quot;d=
anny&quot;, you simply branch from that release, and all your .bbappend fil=
es and tools will be correct for the &quot;danny&quot; version of the Yocto=
 tools.</div>

--047d7b6220dea2ed4e04cf664799--
