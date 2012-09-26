Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B76EDE0142A
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 12:27:39 -0700 (PDT)
Received: by lbcs4 with SMTP id s4so664813lbc.35
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 12:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=clIbJIXufsEPx8hNa9KUltX03LMxkNjZ1fHgnElRV8M=;
	b=KKfnKE5iXGm4p15PAx6zeoSoHfmlCFTENqb6pweKFsRUJoWcgdIgU9q56Z0t7bEVVb
	GkQJTWoB7/Pwg3ePWeHv8TCnr8FFR//Ugg/pvHz5YIFOXa0UF10T3925ziWyInwPovFU
	Cx0B/9EgSB0/e/OXl3eIosOR0mSgDivNMgqIk7ShVSwFUp6G5dPmB2fEM5puKmhvBftv
	lM3apNC3QL5SlTesADvCHpwcBWNC+dTzb+IZL4R2q7EdQK7YttAODrJxQ4EysG2ta7sp
	VDSA+QinUUo4ZGgZOBg7rO0e9Xt3y443NFR/bdRkjY5bC8rdskKb4GjeFxPbSNz6eCgz
	kwLg==
Received: by 10.152.104.145 with SMTP id ge17mr1382649lab.34.1348687656307;
	Wed, 26 Sep 2012 12:27:36 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.19.2 with HTTP; Wed, 26 Sep 2012 12:27:16 -0700 (PDT)
In-Reply-To: <20120926183647.5EA082031A9@gemini.denx.de>
References: <CAPhnLPCYC9_xvdinu9=prhUOz8FfquYK5TVrBKiHLZ4FyK267g@mail.gmail.com>
	<2428256.OTjtN2nWn5@helios> <20120926142045.901EB2031A9@gemini.denx.de>
	<224780988.1nyHnvScgz@helios>
	<20120926183647.5EA082031A9@gemini.denx.de>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 26 Sep 2012 12:27:16 -0700
X-Google-Sender-Auth: NjIyDxQGv20QJyGanrnqjQ5SyOU
Message-ID: <CABcZANmPe_D+GPWxnkVZCmE9ti011ZDSXxPix8ztW4vrdYiyZA@mail.gmail.com>
To: Wolfgang Denk <wd@denx.de>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: 1.3_M5.rc2 status.
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
X-List-Received-Date: Wed, 26 Sep 2012 19:27:40 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 26, 2012 at 11:36 AM, Wolfgang Denk <wd@denx.de> wrote:
>> By "better way to deal with these", what would you suggest? I don't see any
>> alternative that avoids the BSP components just disappearing for users who
>> have existing configurations.
>
> Well, the comment in  "meta-yocto/conf/bblayers.conf.sample"  says:
>
>         # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>         # changes incompatibly
>
> This suggests that such changes are not exactly unusual.  But any such
> change will cause the build to fail, because the sanity checker uses a
> different value.

This is wrong. A compatibility break in bblayers.conf is *extremely* rare.

> If such a change is allowed and is done intentionally, then it should
> be considered "sane", and the sanity checker should not complain.

Wrong. The user has to know that they may need to change their
bblayers.conf to match the upstream structure. If it didn't complain,
they could silently break or encounter unexpected behavior.

> The problem (and the longer I think about it the less I hesitate to
> call it a plain bug) is that we allow for meta layer specific values
> of LAYER_CONF_VERSION, while still assuming a single hard-coded
> value in  meta/conf/sanity.conf  could be used as reference.
>
> This _cannot_ work.
>
> But when I'm supposed to overwrite the setting (to match the sanity
> checker's expectations) in my local conf/bblayers.conf, then why do we
> bother to set a dieferent value in the meta layer in the first place?
> And hey, why do we check this value at all if all we can do is always
> make it match manually?

Not everyone using oe-core (meta) also uses meta-yocto. Only those
using the latter were affected by this particular upstream structure
change.

> I understand the intention, but the current implementation is just
> broken, and I don't see a way to fix it.  It would probably be better
> to remove this test than to leave it as is.

Again, that'd leave the user with a bblayers.conf that may no longer
do what they intended it to do. Better to fail than potentially build
in ways not matching the user's previous expectations.
-- 
Christopher Larson

