Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2BDE00A5B; Fri, 26 Jun 2015 01:31:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D06BE00A4F
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 01:31:34 -0700 (PDT)
Received: by qkbp125 with SMTP id p125so51758100qkb.2
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 01:31:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SLgM9zvyVIc0vO8OQHOwkF1ykTVdI0i4yfLmFf8tH3E=;
	b=YsTHX07ibaRnI6mjGo7yUfmkH+b4tp5zzrpkWznYKfA7est1uuEwheOTmVYZe+TYuz
	rDQsoNdBD7ZgbQnZWpa5aVyiI0TlOIacJJLOqa+wuKiel2sDuGM5F7pjceypYN26n4Fq
	9YqMZe6AExGNU5jU7x2Y688W2z7YSFim5otUBS8j4XMUPWRwncRDXBMHndiDWBtC4v5D
	qYP2i/S6VYiHf7g9cg7blLGfeLwQSlrdHpvvl+AfmXzwlPuGql/b2STDtPs0yW/NfqBr
	WeXnUZ5eu/OXCRGoKUOTpHUBMMhaYgvyQdIZBHFHK5889LYXmQs6MB1Nufg1/xYTPRNO
	52Hg==
X-Gm-Message-State: ALoCoQnCz9aV2jZ5z1409RO7pNmrFlKzVaMETaSV2BHbTiYg41QWptXSSi/34avQAI//UiVmZOAb
X-Received: by 10.140.43.100 with SMTP id d91mr535456qga.77.1435307493684;
	Fri, 26 Jun 2015 01:31:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 26 Jun 2015 01:31:14 -0700 (PDT)
In-Reply-To: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jun 2015 09:31:14 +0100
Message-ID: <CAJTo0LaKZsvvC4hKZrJiX6r2=Q+JL48+i3fBVQauDDYNtPn+og@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Fri, 26 Jun 2015 08:31:38 -0000
Content-Type: multipart/alternative; boundary=001a113a989c4e0d950519679179

--001a113a989c4e0d950519679179
Content-Type: text/plain; charset=UTF-8

On 26 June 2015 at 05:16, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:

> GitHub provides this ability to download repository contents at
> a specified changeset as a zip file. This is generally *much* quicker
> than fetching the entire git repository.
>

Github also can and will regenerate these tarballs whenever it feels like
it, so you'll need to periodically update the checksums.  Obviously as
existing developers will tend to have the tarballs cached locally, it can
be a while before this failure is reported back.

A better solution might be to add support for "depth" to the git fetcher,
so you can grab just the commit you are interested in instead of the entire
repository.

Ross

--001a113a989c4e0d950519679179
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 June 2015 at 05:16, Jon Szymaniak <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:jon.szymaniak@gmail.com" target=3D"_blank">jon.szymaniak@gmail.com</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":w6" class=
=3D"a3s" style=3D"overflow:hidden">GitHub provides this ability to download=
 repository contents at<br>
a specified changeset as a zip file. This is generally *much* quicker<br>
than fetching the entire git repository.</div></blockquote></div><br>Github=
 also can and will regenerate these tarballs whenever it feels like it, so =
you&#39;ll need to periodically update the checksums.=C2=A0 Obviously as ex=
isting developers will tend to have the tarballs cached locally, it can be =
a while before this failure is reported back.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">A better solution might be to add s=
upport for &quot;depth&quot; to the git fetcher, so you can grab just the c=
ommit you are interested in instead of the entire repository.=C2=A0</div><d=
iv class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></d=
iv>

--001a113a989c4e0d950519679179--
