Return-Path: <stefano.cappa.ks89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B4C4E00B81; Wed, 17 Oct 2018 23:14:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (stefano.cappa.ks89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
	[209.85.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E279E00AB3
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 23:14:50 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id w194so22343281vsc.11
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 23:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=34dup9PsV5Ae0WNgONsVHgqvqZV1EJ6dfvvwbKbdI0w=;
	b=VjmsuScMQimmAV2A3oMv82LLjW2zzpM+Qd6VXjgcdelncj9wZJtoPUHlo1SJfQh78A
	/JB8AnygjYUS3A5H1uUbouwzLg121zwRBFl/niWgy7jmg4gcjdjMHAcrXQMtSZuSAgRQ
	mroR2qWz1GTh8ReUOk6bkTiKYaNI/v+Pd0szyt8Xh9PEivKHaEQFfIJDDYYNyaIDFbPK
	Xz96DsCBYvPTdPjX23k9fhhlI4NWCibGNwDBbHnEsDpW9YZxAUoLrOJgTjv/ibysBZEv
	imKQf3D9BLzAN+fb8npIVprYuqSHiQ9RF+EJ3DUUWwrrKJoPQs6/lqNWiTf4lLvRLeja
	WW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=34dup9PsV5Ae0WNgONsVHgqvqZV1EJ6dfvvwbKbdI0w=;
	b=ogE2nmFApn1rQyw0JWRIGUhrbmM6xeq0T+H0ui7riY016920N7RkV3z9HWL/Pwryor
	BU8p4bRts1cZuLY1iak/QcPb8flUOwzktgvSXFBMUZDRuphc5kChYsEiOC5bosMiPHtx
	bwzuSOnJ9VmE2KFrMN8fDlD869TRzNCql4C1AENOGBM7IU7qX7tHoghqOJlHf1O7JO0f
	l/GRlBqtOUQQyp2FubFF/fBGLjTw9RzYD2OavAcWrWoBw4OQoGOrMACJORPTYApjAYaD
	oCGXco+wXiagcW/fTUAIuyb/qfSdD/JBOyFlLCMZVU1XEWXVXvc513nQ0cr2VBbQUgoK
	NGUQ==
X-Gm-Message-State: ABuFfohKU8hf+2ytegD025e82mSAWSLIIhjaV+UNwrOnE1qkkUvqtjPP
	bsJbli6bmICxmrU27FQK90UxSzAhTNuo4v5yAFM=
X-Google-Smtp-Source: ACcGV63KqsevlFVm4DllIxI1r/sL+5nJn228hFziV4H96H2ti035sEBTnWlousIbMWn3eTqFynKiZe9dS6sJt9LMqHE=
X-Received: by 2002:a67:1f4d:: with SMTP id f74mr11781768vsf.222.1539843289424;
	Wed, 17 Oct 2018 23:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
In-Reply-To: <20181017232705.HQN68.75473.root@cdptpa-web09>
From: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Date: Thu, 18 Oct 2018 08:14:37 +0200
Message-ID: <CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
To: sscott@san.rr.com
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Thu, 18 Oct 2018 06:14:53 -0000
Content-Type: multipart/alternative; boundary="00000000000046a86b05787ab49e"

--00000000000046a86b05787ab49e
Content-Type: text/plain; charset="UTF-8"

Exactly the same issue since September.

Here is my discussion
https://lists.yoctoproject.org/pipermail/yocto/2018-September/042711.html.
With that trick did you find a solution also on sumo?


Il gio 18 ott 2018, 01:42 <sscott@san.rr.com> ha scritto:

>
> It was broken in rocko too. I added this to local.conf to workaround the
> problem:
>
> PREFERRED_VERSION_refpolicy-standard = "2.20170204"
>
> -steve
>
> ---- Sinan Kaya <okaya@kernel.org> wrote:
> > Hi,
> >
> > We realized today that SELinux does not compile on sumo branch.
> >
> > Is it possible for someone to branch the last working version to a sumo
> branch?
> >
> > http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
> >
> > NOTE: Running task 352 of 2707
> > (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/
> e2fsprogs_1.43.8.bb:do_patch)
> > NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
> > NOTE: Running task 1413 of 2707
> > (/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:
> do_patch)
> > NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
> > ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt
> --quiltrc
> > Applying patch misc_create_inode.c-label_rootfs.patch
> > patching file misc/create_inode.c
> > Hunk #1 FAILED at 979.
> > Hunk #2 FAILED at 987.
> >
> > Sinan
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000046a86b05787ab49e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Exactly the same issue since September.=C2=A0<div><br></div><div>Here is my=
 discussion <a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2018-=
September/042711.html">https://lists.yoctoproject.org/pipermail/yocto/2018-=
September/042711.html</a>. With that trick did you find a solution also on =
sumo?=C2=A0</div><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">I=
l gio 18 ott 2018, 01:42  &lt;<a href=3D"mailto:sscott@san.rr.com">sscott@s=
an.rr.com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
It was broken in rocko too. I added this to local.conf to workaround the pr=
oblem:<br>
<br>
PREFERRED_VERSION_refpolicy-standard =3D &quot;2.20170204&quot;<br>
<br>
-steve<br>
<br>
---- Sinan Kaya &lt;<a href=3D"mailto:okaya@kernel.org" target=3D"_blank">o=
kaya@kernel.org</a>&gt; wrote: <br>
&gt; Hi,<br>
&gt; <br>
&gt; We realized today that SELinux does not compile on sumo branch.<br>
&gt; <br>
&gt; Is it possible for someone to branch the last working version to a sum=
o branch?<br>
&gt; <br>
&gt; <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs=
/" rel=3D"noreferrer" target=3D"_blank">http://git.yoctoproject.org/cgit/cg=
it.cgi/meta-selinux/refs/</a><br>
&gt; <br>
&gt; NOTE: Running task 352 of 2707 <br>
&gt; (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/<a href=
=3D"http://e2fsprogs_1.43.8.bb" target=3D"_blank">e2fsprogs_1.43.8.bb</a>:d=
o_patch)<br>
&gt; NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started<br>
&gt; NOTE: Running task 1413 of 2707 <br>
&gt; (/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:do_=
patch)<br>
&gt; NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started<br>
&gt; ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: &#39;quilt =
--quiltrc<br>
&gt; Applying patch misc_create_inode.c-label_rootfs.patch<br>
&gt; patching file misc/create_inode.c<br>
&gt; Hunk #1 FAILED at 979.<br>
&gt; Hunk #2 FAILED at 987.<br>
&gt; <br>
&gt; Sinan<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--00000000000046a86b05787ab49e--
