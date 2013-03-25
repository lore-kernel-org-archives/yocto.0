Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B11B4E0129D
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 15:18:10 -0700 (PDT)
Received: by mail-wi0-f173.google.com with SMTP id ez12so2675699wid.6
	for <yocto@yoctoproject.org>; Mon, 25 Mar 2013 15:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=aV6AjNjL/T8kx1kor9VgPaT9Cn+4L3jj68BBRrJg9w4=;
	b=bGzf5pI4bNIna+2Quq/4/Uso3MtgCjEF513eJ3wUwkXufnnjtm6VZMNgU4J65+9A5V
	PLcsAYt9BWDzHDmT6dHqUQtNwBYOWZkv8oexbPpHQeZmVOSuK/LfB77rXNg2U8WgFMYC
	3BnMk8HnFCcFClwztft2MCJ3nU/ELiUYsFeg5t1aikJLuBjfezlr/jDSmpC+P6LvxMT8
	dFoxa8IW0Ai9UXuMRHbCVj2MJCRAxnFZ9AJ7TOGtcBG3mdr8Fa11i+q9oX4Mz/3XYrVa
	h9XMhoVcU3cZB97RzSvVWyYJ8fXSPQ+J0ZjzvJKH+uZ7ekI8AbjJg+Zi4fd4Akc9yMpF
	tM5A==
MIME-Version: 1.0
X-Received: by 10.180.73.229 with SMTP id o5mr4070674wiv.8.1364249889495; Mon,
	25 Mar 2013 15:18:09 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Mon, 25 Mar 2013 15:18:09 -0700 (PDT)
In-Reply-To: <CAPhnLPAbnxUWAQ2APO6qeDouzP=gFvOeZh3kv7=WAYHLFQrsaw@mail.gmail.com>
References: <CAPhnLPDrWsXJMUVb+HqUkHqBDiZSyOqjxtmgiuGGgPBFcc4Eww@mail.gmail.com>
	<CAHUNapR+bMqr36jwEzeZk4BEqxZ4+JaPrGJ-4Uo14OHe753s2w@mail.gmail.com>
	<CAPhnLPAbnxUWAQ2APO6qeDouzP=gFvOeZh3kv7=WAYHLFQrsaw@mail.gmail.com>
Date: Mon, 25 Mar 2013 18:18:09 -0400
Message-ID: <CAHUNapQ=i4yO7NgY+VVp+8wqf+gHp6X3BDM2qvNQ4_aeShNHpw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autobuilder migration status.
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
X-List-Received-Date: Mon, 25 Mar 2013 22:18:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks for all those answers.

On Mon, Mar 25, 2013 at 5:45 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> On Thu, Mar 21, 2013 at 8:31 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>> Not all builds, but these three seem to follow similar steps:
>> 1. prepare
>> 2. configure+build core-image-sato core-image-sato-dev
>> core-image-sato-sdk core-image-minimal core-image-minimal-dev
>> 3. configure+build core-image-sato core-image-sato-dev
>> core-image-sato-sdk core-image-minimal core-image-minimal-dev
>> 4. configure+build meta-toolchain-gmae
>> 5. configure+build meta-toolchain-gmae
>> 6. finish up

...

>> Also, for me I think it would be better if #2 and #3 split
>> out each of those build targets individually.
>
> Building them together provides a slight performance increase.

Would there be even more of a performance increase if you just simply
did a "bitbake world" instead of doing all of those targets
sequentially? (I assume "world" builds all recipes and doesn't create
images?)


It appears that all build configurations (on a given slave) use the
same location for DL_DIR and SSTATE_DIR, but the TMPDIR location is
not provided in the configuration file. This would imply each build
uses a fresh TMPDIR directory (since by default it would be set to
${TOPDIR}/tmp which comes from the local.conf)? I'm still trying to
figure out the best/optimal way to be using Yocto at home. When I
first started, I would use a separate directory for each "project"
(i.e. machine, board, architecture, etc). But lately I've realized
that most people just do all their projects in one build location.
However, when switching between different "projects", interspersed
with various "git pulls" in between, I seem to get in a state when I'm
forced to delete my entire TMPDIR location in order for anything to
build cleanly again. Is this the general consensus?

