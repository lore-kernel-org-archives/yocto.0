Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 223E7E008EA; Wed,  1 Apr 2015 08:17:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE31DE0056E
	for <yocto@yoctoproject.org>; Wed,  1 Apr 2015 08:17:04 -0700 (PDT)
Received: by qgeb100 with SMTP id b100so4504700qge.3
	for <yocto@yoctoproject.org>; Wed, 01 Apr 2015 08:17:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=RklnWPCEll/sKwO2aMPt8FafY+iYi/ljhHPIfl7dyQ8=;
	b=YbNQ6RDA+bjk44Z5Pu7/uIqDcqnt4Y9oax5Vn1kFfi0n1v3ZfRSvh39tioXPU+8G+D
	TKCOXAdLoxDyBp5yHi5bl9Dg3O5Do8kwKwlKViDyqkosklSgk0LrS+F/yIXST2svhsXN
	TvOgaz+zoZDJSQx4+NwT9YRgSCCH9gzKLMnUBtW3BJaPiKB+SJvLp7v9r+HqxkjV8mQw
	33eSzl1AWxdTChdq0+9lfm+b94mFLtd3XzQkdouyvlcABn/yxbNI4LIhrE2ebfctiaZg
	1HwaPGtpPSp6ZxzPANv/vVsSphNn6RGM39Kz07R8b+ZHjqR/ppQyaYLvfTN8gGJytyux
	9hUA==
X-Gm-Message-State: ALoCoQnBvQb652jkgYkTkB9SFnquDI/MwMixUA3Pjtn4h+2N2MNEwiW4MIfJz9IAUwlBL3q87DE8
X-Received: by 10.55.31.32 with SMTP id f32mr90956815qkf.41.1427901422977;
	Wed, 01 Apr 2015 08:17:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Wed, 1 Apr 2015 08:16:42 -0700 (PDT)
In-Reply-To: <1427891938-17616-1-git-send-email-gshastri@juniper.net>
References: <1427891938-17616-1-git-send-email-gshastri@juniper.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 1 Apr 2015 16:16:42 +0100
Message-ID: <CAJTo0LbWx9PUmiowwPX3iOwjzg12k8q9nefGG1w1x9LELuUWsA@mail.gmail.com>
To: Gaurang Shastri <gshastri@juniper.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [Add xorriso recipe] Add xorriso tool support
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
X-List-Received-Date: Wed, 01 Apr 2015 15:17:09 -0000
Content-Type: multipart/alternative; boundary=001a1147b0dc17869a0512ab356d

--001a1147b0dc17869a0512ab356d
Content-Type: text/plain; charset=UTF-8

On 1 April 2015 at 13:38, Gaurang Shastri <gshastri@juniper.net> wrote:

> xorriso copies file objects from POSIX compliant filesystems into
> Rock Ridge enhanced ISO 9660 filesystems and allows session-wise
> manipulation of such filesystems.
>

Patches for openembedded-core should go to the openembedded-core list, but
also new recipes need to have a good rationale to be included in oe-core.

This doesn't seem like something that's universally useful across many
OE-based projects, so I recommend resubmitting it as a patch against
meta-oe.

Ross

--001a1147b0dc17869a0512ab356d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 April 2015 at 13:38, Gaurang Shastri <span dir=3D"ltr">&lt;<a href=3D"=
mailto:gshastri@juniper.net" target=3D"_blank">gshastri@juniper.net</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":5ij" class=3D"=
a3s" style=3D"overflow:hidden">xorriso copies file objects from POSIX compl=
iant filesystems into<br>
Rock Ridge enhanced ISO 9660 filesystems and allows session-wise<br>
manipulation of such filesystems.<br></div></blockquote></div><br>Patches f=
or openembedded-core should go to the openembedded-core list, but also new =
recipes need to have a good rationale to be included in oe-core.</div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">This doesn&#39;t=
 seem like something that&#39;s universally useful across many OE-based pro=
jects, so I recommend resubmitting it as a patch against meta-oe.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div=
>

--001a1147b0dc17869a0512ab356d--
