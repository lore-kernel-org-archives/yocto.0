Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6563E008B3; Fri, 31 Oct 2014 03:28:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qc0-f179.google.com (mail-qc0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E3F3E007BA
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 03:28:01 -0700 (PDT)
Received: by mail-qc0-f179.google.com with SMTP id o8so5519361qcw.24
	for <yocto@yoctoproject.org>; Fri, 31 Oct 2014 03:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=5CrCCrMCgajYnIgjMboBmPacPR3q8EnDZQkfGCZpHBI=;
	b=Odknd5y4Pv6VxCRsYwMArxiizpbHLKZkwmuGgpPkye7Pp0XJLeTy5QAoJwFZ/cOsF5
	LSsXxvf3vUYqbYrRZDewlmK6z1c+sqPEaYn4NUV2v7Nb3tZgCawzcZJjR5CD/tB39sJJ
	yClu3DbSRfkBcp5JyaBhdWxmnG5JYtu+on8SfX19IZKMFVWf9x/ooANgCoOgQuRenEaY
	Boms5lhNKY28suJw7XQI4y+h9yaTIlUufBxgK82yIoxXKsrKdaTxBSKfMA2wdRJCyJcH
	NUwYtG+e6paV3ZTi0xkA+AEvgnWtWOPmxtz52D6v9hppinOghYQQ538mgdlEVW2KbkHR
	X7vQ==
X-Received: by 10.224.97.72 with SMTP id k8mr35273708qan.25.1414751280493;
	Fri, 31 Oct 2014 03:28:00 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.142.78 with HTTP; Fri, 31 Oct 2014 03:27:20 -0700 (PDT)
In-Reply-To: <5452E48D.50505@windriver.com>
References: <5451CF50.9060501@windriver.com> <5452E48D.50505@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 31 Oct 2014 10:27:20 +0000
X-Google-Sender-Auth: j2OknuNK4D8fo24PZi2AG6aOWmo
Message-ID: <CANyK_8dZHUQqc=hhP=EFuWGY7rgd7wL9XMPtwQ0NAw=JzhYKFg@mail.gmail.com>
To: opkg-devel <opkg-devel@googlegroups.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [opkg-devel] Re: [opkg-utils PATCH] update-alternatives: Installing fails for "["
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
X-List-Received-Date: Fri, 31 Oct 2014 10:28:11 -0000
Content-Type: text/plain; charset=UTF-8

On 31 October 2014 01:23, Liu Jian <jian.liu@windriver.com> wrote:
> Insalling packages using update-alternatives will give the following
> error lines:
> sed: -e expression #1, char 41: unterminated address regex
> sed: -e expression #1, char 42: unterminated address regex
> This is caused by the script update-alternatives.
> "[" can not be used directly in sed expression, which should be escaped
> in sed expression.
>
> Signed-off-by: Jian Liu <jian.liu@windriver.com>
> ---
> update-alternatives | 6 +++++-
> 1 files changed, 5 insertions(+), 1 deletions(-)

I've merged this to opkg-utils, many thanks!

I'm about to send a patch for openembedded-core which updates the
opkg-utils SRCREV to use this new commit.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

