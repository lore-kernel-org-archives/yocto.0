Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81955E008F6; Thu,  9 Apr 2015 09:06:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 626ACE0049A
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 09:06:01 -0700 (PDT)
Received: by igbqf9 with SMTP id qf9so68650828igb.1
	for <yocto@yoctoproject.org>; Thu, 09 Apr 2015 09:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=alzt+zvHRUHxve5xHeMcfVJy6XkE3NoxKUx6sdRcxdU=;
	b=CNiyLH0DsKNYSZcl/Y9wN78V1ALI7+VofR5nmRsv5lNNI9MTR0f5bzWcNv9/725wI4
	Qfexxh+dJW+YI90G8iEDD2PmtaU7HZRGStfEQqhru97if5kySIXg/aZ63HNTOHTCODFQ
	3rtld4J3VmjBbK8kuxzIObYdF7kvCgToJPRcDnjJpJfb6PsmhlIbsLigOdC2SM8z0GkS
	XUCNjjg5IXuaUf4uQFGtQTuRFJ6yOV7O+93MhwzI4JdsiK58WSdOKVONHu473bzjLGX8
	+1YlboMYvMIBJ46Yf/pgzyCfCXzsBPieFtBg8TXrGvMTNa1T9wWOUiTHVfgl0rF0IRpl
	BgTw==
X-Received: by 10.42.198.143 with SMTP id eo15mr41514270icb.8.1428595561518;
	Thu, 09 Apr 2015 09:06:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.144 with HTTP; Thu, 9 Apr 2015 09:05:31 -0700 (PDT)
In-Reply-To: <31362591-246B-4224-BA78-9A65EBA53317@gmail.com>
References: <CAK8F28=tmVPsTSr24Ccv634cOx5UQkikFjasWDajygJg0P-_UQ@mail.gmail.com>
	<31362591-246B-4224-BA78-9A65EBA53317@gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 9 Apr 2015 09:05:31 -0700
Message-ID: <CAK8F28=b3pyVkEhESyJx2Nta_78cMS6sM9pyxDNDB9koEXkS-w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: False dependency on non-existent libgettextlib-dev
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
X-List-Received-Date: Thu, 09 Apr 2015 16:06:05 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 8, 2015 at 11:54 PM, Khem Raj <raj.khem@gmail.com> wrote:
> its probably due to solib name renaming, which is debian thing.
> you just might kill this -dev package completely and just have gettext-dev
> have everything development related.
Hi Khem,

Thanks for your response.  How would I go about killing this '-dev' package?

With a little more digging, I found that the package_depchains
function of package.bbclass is generating the dependency from
gettext-dev to the non-exisitant libgettextlib-dev package---a "if A
depends on B, then A-dev depends on B-dev" rule.

I was able to suppress this behaviour with:
RRECOMMENDS_gettext-dev[nodeprrecs] = "1"

This 'nodeprrecs' technique seems rarely used and a bit heavy-handed
(I don't want to get rid of all dependencies, just ones that don't
exist).

How else might I tackle this?

--Ash

