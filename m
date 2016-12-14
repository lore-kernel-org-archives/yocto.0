Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A62AFE00D2C; Wed, 14 Dec 2016 02:02:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E450DE00C65
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 02:02:09 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id x190so13923900qkb.0
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 02:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UyiC6q6n2Zio3ZMcfGxQ7aLR1gjwefE3EWVjxn5p/sI=;
	b=cAfvGtaiRlxkGFX/OApnqXXGe6bmYWKAxc70KiO1Q7YxELiUjSKhDsvVtMhAh/HYIF
	FI9w199NAycoHhr4tD5d4j8NM9KKrRMHzwh9yNu4z3MdGFAEEx2Ia+yCD3UvI2nYI6jA
	kyUw/bSHIs8X724W8dSVxBONa3/2HLkzniHdYYzoZEgYDZn6v0VQdLqil9desLIUKpwP
	qrE2RQ+yxmZEpRSfo/PUilP7q8XzSMdvHwQfAjjuXwb0i5+wtBJUEOwzn5qqBpJFKEc7
	5k/F4UDias5PhWjHNNuUkYW09epIiqpf/PJPf1pjgTRMXYh3MOuIz6oul66KM2K30aLw
	pP5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UyiC6q6n2Zio3ZMcfGxQ7aLR1gjwefE3EWVjxn5p/sI=;
	b=q3tgl0Die1MQKasbyiq/6GdS4WfUdu6DT3br9hfcpDyPlpYGWHSMeRelrNCUPmNcD4
	C+hx0NuglBhcq7emJrDqrIUUZvep48lLg3ZPYDV2Tmlp/SwtbpqSj37aN5E3rKmwba1A
	O1Ne/DCSjTLuvKqIr2PV3n+CrduZza6z55jLfdqJ8Tf1kk+Ymc7JkDavfL8V03RBEOLT
	gUbnNrwKC7HgRphWQS2FZKMAN4ZnMfEWtyjM3G6Jd93sawFk28L7p2u3a8EuN7MFcZ9H
	bh2YElRl2XPUVixAwYr3ghYDpdD9Jm2GP7Np97qxNN0xTz1pxuYWd1MUkbYFjDoJSewS
	8YSw==
X-Gm-Message-State: AKaTC01aweLM9EW0T4kaDT0OouGyrZEG0upTz590czWDyBQqrg5rnzvhlPvEl5noINd38jQyTdg2FjJdDW6OI4hy
X-Received: by 10.55.97.194 with SMTP id v185mr99079642qkb.80.1481709728980;
	Wed, 14 Dec 2016 02:02:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.34.74 with HTTP; Wed, 14 Dec 2016 02:01:38 -0800 (PST)
In-Reply-To: <CAKTo2En3PRxQ2wsANGF8k+Zt8n4tp7choWqdu8yrbct996YQdA@mail.gmail.com>
References: <CAKTo2En3PRxQ2wsANGF8k+Zt8n4tp7choWqdu8yrbct996YQdA@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 14 Dec 2016 12:01:38 +0200
Message-ID: <CAHiDW_H7h8wA2r=+QLJZGitVUidi6svV-=UZnk5HgVLeu3RZrw@mail.gmail.com>
To: Anders Oleson <anders@openpuma.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: possible bug with dpkg-native with sstate-cache
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
X-List-Received-Date: Wed, 14 Dec 2016 10:02:12 -0000
Content-Type: multipart/alternative; boundary=94eb2c05b7840e853d05439b6e34

--94eb2c05b7840e853d05439b6e34
Content-Type: text/plain; charset=UTF-8

On 14 December 2016 at 06:59, Anders Oleson <anders@openpuma.org> wrote:

> I have found what I think is a sneaky nasty bug when using package_deb with
> SSTATE_MIRRORS on RPM based build hosts. Below is a short description of
> what
> I found and our workaround. A patch that adds a patch that is applied to
> the
> packager that packages the real packager.  To avoid this sneaking failure
> mode
> when building without building when using the cache (its all so very
> meta, btw.).

Don't ask how we found this; it wasn't pretty.
>
> Note: the fix approach below actually patches dpkg on the target too,
> but I do not
> know how to easily make the patch only apply to dpkg-native and not also
> dpkg.
> But in this case it should be fine anyhow; there is no reason that dpkg on
> the
> target should not behave this way too. I have checked the upstream and the
> lines in question have never been touched - it is possible they may want to
> eventually upstream this too (???).
>

I have to point out that the upstream developers are usually not going to
come to us looking for patches :) If we want patches upstreamed we have to
go to them and in fact there is a bit of process to to track this, see
below.

For future knowledge, is there an easy way to have a SRC_URI list that is
> different for dpkg-native than for dpkg?
>

I think this is actually already used in dpkg recipe:
    SRC_URI_append_class-native = "..."
but as you said this doesn't seem required in this case.

Also, this is my first post to the group, so apologies if this is not the
> right place or way to upload a potential patch; set me straight if so.
>

Thanks and no problem: openembedded-core@lists.openembedded.org would be
the correct place for meta/ patches. Please take a look at

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#how-to-submit-a-change
    http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

Some specific things you may want to look at:
* Send the commit as part of an email, not as attachment (git "send-email"
  and/or "create-pull-request/send-pull-request" script are good tools)
* Signed-off-by tag on both the commit and in any patch files in it
* Upstream-Status tag in any patch files in the commit

Thanks,
 Jussi

--94eb2c05b7840e853d05439b6e34
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
4 December 2016 at 06:59, Anders Oleson <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:anders@openpuma.org" target=3D"_blank">anders@openpuma.org</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I have foun=
d what I think is a sneaky nasty bug when using package_deb with<br>
SSTATE_MIRRORS on RPM based build hosts. Below is a short description of wh=
at<br>
I found and our workaround. A patch that adds a patch that is applied to th=
e<br>
packager that packages the real packager.=C2=A0 To avoid this sneaking fail=
ure mode<br>
when building without building when using the cache (its all so very<br>
meta, btw.).=C2=A0</blockquote><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">Don&#39;t ask how we found this; it wasn&#39;t pretty.<br>
<br>
Note: the fix approach below actually patches dpkg on the target too,<br>
but I do not<br>
know how to easily make the patch only apply to dpkg-native and not also dp=
kg.<br>
But in this case it should be fine anyhow; there is no reason that dpkg on =
the<br>
target should not behave this way too. I have checked the upstream and the<=
br>
lines in question have never been touched - it is possible they may want to=
<br>
eventually upstream this too (???).<br></blockquote><div><br></div><div>I h=
ave to point out that the upstream developers are usually not going to come=
 to us looking for patches :) If we want patches upstreamed we have to go t=
o them and in fact there is a bit of process to to track this, see below.</=
div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
For future knowledge, is there an easy way to have a SRC_URI list that is<b=
r>
different for dpkg-native than for dpkg?<br></blockquote><div><br></div><di=
v>I think this is actually already used in dpkg recipe:</div><div>=C2=A0 =
=C2=A0 SRC_URI_append_class-native =3D &quot;...&quot;</div><div>but as you=
 said this doesn&#39;t seem required in this case.</div><div><br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
Also, this is my first post to the group, so apologies if this is not the<b=
r>
right place or way to upload a potential patch; set me straight if so.<br><=
/blockquote><div><br></div><div>Thanks and no problem:=C2=A0<span style=3D"=
color:rgb(0,0,0);font-family:sans-serif;font-size:12.8px"><a href=3D"mailto=
:openembedded-core@lists.openembedded.org">openembedded-core@lists.openembe=
dded.org</a> would be the correct place for meta/ patches. Please t</span>a=
ke a look at</div><div>=C2=A0 =C2=A0 <a href=3D"http://www.yoctoproject.org=
/docs/current/dev-manual/dev-manual.html#how-to-submit-a-change">http://www=
.yoctoproject.org/docs/current/dev-manual/dev-manual.html#how-to-submit-a-c=
hange</a></div><div>=C2=A0 =C2=A0 <a href=3D"http://www.openembedded.org/wi=
ki/Commit_Patch_Message_Guidelines">http://www.openembedded.org/wiki/Commit=
_Patch_Message_Guidelines</a><br></div><div><br></div><div>Some specific th=
ings you may want to look at:</div><div>* Send the commit as part of an ema=
il, not as attachment (git &quot;send-email&quot;</div><div>=C2=A0 and/or &=
quot;create-pull-request/send-pull-request&quot; script are good tools)</di=
v><div>* Signed-off-by tag on both the commit and in any patch files in it<=
/div><div>* Upstream-Status tag in any patch files in the commit</div><div>=
<br></div><div>Thanks,</div><div>=C2=A0Jussi</div></div></div></div>

--94eb2c05b7840e853d05439b6e34--
