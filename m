Return-Path: <marekslomiany@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85E3CE00E40; Mon,  5 Feb 2018 00:26:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marekslomiany[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f44.google.com (mail-pg0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C40F3E007D1
	for <yocto@yoctoproject.org>; Mon,  5 Feb 2018 00:26:38 -0800 (PST)
Received: by mail-pg0-f44.google.com with SMTP id 141so7266178pgd.8
	for <yocto@yoctoproject.org>; Mon, 05 Feb 2018 00:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6RVhb0rxg3T6XuEGQXyIa8IzYbbHLk+g0+UGyb3hKmo=;
	b=VwqJoQQJOpxfuEp/bf7pErsZJ7dK7x3pDF4+WY6ea6s81sIr3569F74tUjr1v0F0vA
	ZLrMWu1u0hrUEyXKTQzncFAafTjPuMzfBWxI4/yoO4C4hm5elou6703mUzEBjrwiALzn
	zvCJ48HXQ4JGDGKzFteNiAWu1bmeOZMoOdfpmYMo/lZuRNM/cGbvNAXBnGzXMKdoN+LQ
	XIiqqvl8abRBlyK2AGew/Xh8K3QwokNaBwJ9uw8EuY1zsXm1d8odLpBQUWYFDuY4duwH
	oHlEA/OzsANqTvxkBwoh56igluIy+HJCRN3UVkaxJbZ3Uste7RcWfO+ECNaK0txKE5xZ
	rqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6RVhb0rxg3T6XuEGQXyIa8IzYbbHLk+g0+UGyb3hKmo=;
	b=MEFpo/u3oIJ7kevX8LbmJS7jSgTQSxU7EN3qmMFNn7mQ1WfQTBOUfj6ykct9jqsXIl
	UK9mlsmF3y1udTzMoyk1K5hUFq7lasEofyFtpHnlUAouTljoarYGRrhzQBWc0LkOeap3
	afYSUbFV/PhU3pr5/rEGNGGKYnfqoNPoXi5WENfoxvOd/zL0WopEdQLeusr4Y0PqXNba
	X/FqKYI+r2N8Hkjl/hvBdT0ITZWE7M8dx5QWCHtxPt70Nf3A5YxLGVPmzZWR/IUCfF28
	BRlyZAdllqnIKMb+tAJtSIpPPxdbFov9GgoeES0+MQ7nsGHieN+Ldt7/xXo6pnbnFbPJ
	3W/A==
X-Gm-Message-State: AKwxyteYm9xrymuUHarUnDurM3Qhl6lRsz0QkF8yOO49YKUyoohyYrpg
	5Zcu/Q+jpBZapDLFnsMO/tNiBCLSVec9gHE/8fY=
X-Google-Smtp-Source: AH8x2255w+l+6LXjF+v4HsMmoekavSnU8K18wjtNeMcPza2RDj9OOjTELe8lxAMcIAYZaJ3M6EfnWqjqF0UZEKJIlOY=
X-Received: by 10.101.86.201 with SMTP id w9mr14466439pgs.434.1517819197961;
	Mon, 05 Feb 2018 00:26:37 -0800 (PST)
MIME-Version: 1.0
References: <CAJCDnYZcUuLvG-70Tg_m_Rr968hH0A2OizkCcYOO014jkvK=1A@mail.gmail.com>
	<5f8210bc-278f-078b-0fee-2424dc21c4d9@linux.intel.com>
In-Reply-To: <5f8210bc-278f-078b-0fee-2424dc21c4d9@linux.intel.com>
From: =?UTF-8?Q?Marek_S=C5=82omiany?= <marekslomiany@gmail.com>
Date: Mon, 05 Feb 2018 08:26:27 +0000
Message-ID: <CAJCDnYazZouE=0=TrHQYRNPzU_+uXBeTrP+29upq3bGKKvi-dw@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove nfs packages from image
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
X-List-Received-Date: Mon, 05 Feb 2018 08:26:39 -0000
Content-Type: multipart/alternative; boundary="089e08264dd820bb9a056472d2dd"

--089e08264dd820bb9a056472d2dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have managed to track down what was including nfs-utils.
What I have done is, I think, worth to mention for future:
I have added BBMASK in my conf/local.conf to mask nfs-utils.bb recipe, than
tried to build my image.
As expected, build failed because nfs-utils recipe was required but not
found.
In the failure log the chain of includes/inherits was shown and the thing
that required nfs-utils was packagegroup-core-full-cmdline.
Thanks for your help.

Kind regards,
Marek

pt., 2 lut 2018 o 14:43 u=C5=BCytkownik Alexander Kanavin <
alexander.kanavin@linux.intel.com> napisa=C5=82:

> On 02/02/2018 03:23 PM, Marek S=C5=82omiany wrote:
>
> > It's still on target:
> > root@target# opkg list |grep nfs
> > libnfsidmap0 - 0.25-r0
> > nfs-utils - 2.1.1-r0
> > nfs-utils-client - 2.1.1-r0
> > nfs-utils-mount - 2.1.1-r0
> >
> > While checking for any nfs-things using "bitbake <image> -e |grep -v ^#
> > |grep -i nfs" the only interesting thing I got is this:
> > EXCLUDE_FROM_WORLD_pn-unfs3_libc-musl=3D"1"
> > FEATURE_PACKAGES_nfs-client=3D"packagegroup-core-nfs-client"
> > FEATURE_PACKAGES_nfs-server=3D"packagegroup-core-nfs-server"
> >
> > from which first one is not the thing, and two following are
> > from /meta/classes/core-image.bbclass and if I'm correct it's just
> > defining what will happen when I add nfs-client or nfs-server to
> > IMAGE_FEATURES.
> > Maybe I should delete manually some sstate or something?
>
> I'd say first inspect log.do_rootfs for your image, and maybe there are
> clues in it as to why these packages get pulled in. You might have a
> depdendency on them somewhere else.
>
> Alex
>

--089e08264dd820bb9a056472d2dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have managed to track down what was including nfs-utils.=
<div>What I have done is, I think, worth to mention for future:</div><div>I=
 have added BBMASK in my conf/local.conf to mask <a href=3D"http://nfs-util=
s.bb">nfs-utils.bb</a> recipe, than tried to build my image.</div><div>As e=
xpected, build failed because nfs-utils recipe was required but not found.=
=C2=A0</div><div>In the failure log the chain of includes/inherits was show=
n and the thing that required nfs-utils was=C2=A0packagegroup-core-full-cmd=
line.</div><div>Thanks for your help.</div><div><br></div><div>Kind regards=
,</div><div>Marek</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">pt., 2 lut 2018 o 14:43=C2=A0u=C5=BCytkownik Alexander Kanavin &lt;<a hre=
f=3D"mailto:alexander.kanavin@linux.intel.com">alexander.kanavin@linux.inte=
l.com</a>&gt; napisa=C5=82:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On 02/0=
2/2018 03:23 PM, Marek S=C5=82omiany wrote:<br>
<br>
&gt; It&#39;s still on target:<br>
&gt; root@target# opkg list |grep nfs<br>
&gt; libnfsidmap0 - 0.25-r0<br>
&gt; nfs-utils - 2.1.1-r0<br>
&gt; nfs-utils-client - 2.1.1-r0<br>
&gt; nfs-utils-mount - 2.1.1-r0<br>
&gt;<br>
&gt; While checking for any nfs-things using &quot;bitbake &lt;image&gt; -e=
 |grep -v ^#<br>
&gt; |grep -i nfs&quot; the only interesting thing I got is this:<br>
&gt; EXCLUDE_FROM_WORLD_pn-unfs3_libc-musl=3D&quot;1&quot;<br>
&gt; FEATURE_PACKAGES_nfs-client=3D&quot;packagegroup-core-nfs-client&quot;=
<br>
&gt; FEATURE_PACKAGES_nfs-server=3D&quot;packagegroup-core-nfs-server&quot;=
<br>
&gt;<br>
&gt; from which first one is not the thing, and two following are<br>
&gt; from=C2=A0/meta/classes/core-image.bbclass and if I&#39;m correct it&#=
39;s just<br>
&gt; defining what will happen when I add nfs-client or nfs-server to<br>
&gt; IMAGE_FEATURES.<br>
&gt; Maybe I should delete manually some sstate or something?<br>
<br>
I&#39;d say first inspect log.do_rootfs for your image, and maybe there are=
<br>
clues in it as to why these packages get pulled in. You might have a<br>
depdendency on them somewhere else.<br>
<br>
Alex<br>
</blockquote></div>

--089e08264dd820bb9a056472d2dd--
