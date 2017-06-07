Return-Path: <dev@codyps.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11A05E00B3D; Wed,  7 Jun 2017 08:47:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9A85E00B01
	for <yocto@yoctoproject.org>; Wed,  7 Jun 2017 08:47:34 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id u19so10500002qta.3
	for <yocto@yoctoproject.org>; Wed, 07 Jun 2017 08:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codyps.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=lZYOF6ejAeFFC0WOS7+bHV40G44fsjlN/DdCaeYBjkU=;
	b=QlzVT0YxVV/bdu2d7+qmhmThBASDxF0TxjzIs7Ln6XcfAkljkC5fs0iBhKNj0j10oe
	+NQEGLYJblue4Jq0rLmZE/1HlUu9lq9ItB+6IZcmnAaVv6lgBNJpH28Lz25qJCcc83yl
	gvUe6zpTlsYabD8mdigswf6zb0MZgUKLXYzqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=lZYOF6ejAeFFC0WOS7+bHV40G44fsjlN/DdCaeYBjkU=;
	b=VF1fzVx7DLWMTgGSlKkhsTj6eKP5Moxq6LeiprqSH29LuhjWJuyV7gg7edqs9yPG5C
	3kGb/ZQHpgbP5jIZssndiqdeAwO/wJCF1xKvAaCxqI6PpGr3BD+l/8FY+jJfXlcfhtks
	ZPVQNwuAVRNv50kpSutg4CztULlbo1sv45ynGAmxArLiQCcWNROAA8GMaL5Mckz2xcyO
	58bizrtN4Cf2n3oD7gIpp6bKCgGIdcNqLDAIytmEDmdNNl2eaqNAC80X9jnV1uWfFwcz
	dyaHCusywPue0z3HBJ6TyQ09Q1NwOqW0DQkY1gcGoUymDGUGewwEXyXsrjsSNxZwR8wg
	5MFg==
X-Gm-Message-State: AODbwcC1Y1SbMCgpgp2EpUrRUfYfbOj5fG+5eMXY1Uv4z2are84hWFr/
	jj5j4eWdLs816PK4KLVB787WXVLewQjZ
X-Received: by 10.237.47.130 with SMTP id m2mr34966083qtd.31.1496850453310;
	Wed, 07 Jun 2017 08:47:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.188.135 with HTTP; Wed, 7 Jun 2017 08:47:32 -0700 (PDT)
X-Originating-IP: [72.74.84.52]
In-Reply-To: <979760b7-4dfe-3775-ab96-c14fbca076ad@linux.intel.com>
References: <20170607041904.29447-1-dev@codyps.com>
	<979760b7-4dfe-3775-ab96-c14fbca076ad@linux.intel.com>
From: Cody P Schafer <dev@codyps.com>
Date: Wed, 7 Jun 2017 11:47:32 -0400
Message-ID: <CAPoQQ-0KR5wf1Uk31TB-DM-9n3pfXYYQdK-3T=PrMik88drzWA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] qt4-native: depend on icu-native to fix build on systems with icu >=59
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
X-List-Received-Date: Wed, 07 Jun 2017 15:47:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yep, for `master` that is certainly true.

For `morty` & `pyro` though, meta-qt4 could keep working by using icu-nativ=
e.

The source of this issue being qt4's general incompatibility with C++
11 (we build with c++98 because of build errors with the newer std)
makes me wonder if it will even be possible to continue supporting qt4
going forward.

This may turn out like the openssl conflicts in that we'll need to
disable qt4's use of icu entirely.


On Wed, Jun 7, 2017 at 8:24 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 06/07/2017 07:19 AM, Cody P Schafer wrote:
>>
>> Previously, qt4-native would use the system icu to build.
>>
>> Trying to build against a system ICU 59, however, fails with this root
>> error:
>>
>> | In file included from /usr/include/unicode/uversion.h:30:0,
>> |                  from tools/qlocale_icu.cpp:46:
>> | /usr/include/unicode/umachine.h:347:13: error: =E2=80=98char16_t=E2=80=
=99 does not name
>> a type; did you mean =E2=80=98wchar_t=E2=80=99?
>> |      typedef char16_t UChar;
>> |              ^~~~~~~~
>> |              wchar_t
>>
>
> We will introduce icu 59 to oe-core at some point (in fact, I have a patc=
h
> queued), and then this fix will no longer work.
>
> You need to fix Qt4 itself.
>
> Alex
>

