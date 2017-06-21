Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B04CE00B49; Tue, 20 Jun 2017 20:05:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD728E00B31
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 20:05:48 -0700 (PDT)
Received: by mail-wr0-f179.google.com with SMTP id c11so60241671wrc.3
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 20:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZeLGywqu/1tjaTy9P42mF5eMgvIGAAv4gBCrem6RvKU=;
	b=j9+bRrdDUFlraJth/HUXCBfXnP4U6kn9IJKcyDP8ay4BTJFpGZGqycpKCz/O1+ZvLp
	EsgWGekjNQNTHZpbxBHIxD+SWLa3lAiBP2W5GlEAr+mbfx1gl+wey0PTmMes+d33ipV2
	eKPigIDeUJvmI/bRRSrEKJ+etBu+W/nXWTJS0eVPKg76vZXOhyBfPX0YWiIoxpsXilHU
	p6A2N/gEh5z4l9DAbMK2flRp8B2hJMMYy6g93BkwG+W2OkJv2wO4b7PXtnvI3S6UfodT
	wWyUnaekgGks5DntRAYjKjSNBT5ph56RFDvKMuXk8jrFKiK6eGYss8K+QCgKIVAvzoWh
	FjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZeLGywqu/1tjaTy9P42mF5eMgvIGAAv4gBCrem6RvKU=;
	b=ouEpmyZhApbiDFx00NX39mUrMkSa8zJknFjXP1gNe4ZUCEsS4EOJnVtsMxLfQXlX6s
	0tehvM7wjvdKn4B8u3d7fR4Rj9gn1aLgTa1Jy/yY9TA1x/n1W3CTnPGgDyprthNPh712
	m9p7PWJzsiYWBxe+0CCcyFCxH84kz0zyeroKxXMVBAtK5xazkLNsckCXl/nte+BD97h4
	POMs/Z2hI7LGH/ku4oWielH39Yi4zRr1gkmvocMB9VltTf48dIk2CJTHdgQyN7mkKKbK
	ybWBI0hq/1pVFmD6BpjuL6aT0SKEouJFeURSAcQhMQN4c8cXBsvyvajbiNZ8v1HqjL/2
	sK4w==
X-Gm-Message-State: AKS2vOxPKe2ZWeHarupbmc4W3am0Rs3jbCLc3s2Y5Njrpg5QhgApjtFl
	Ya48lixBMvPiM3iJT5X4FHI6IEhINA==
X-Received: by 10.80.171.197 with SMTP id u63mr23052446edc.127.1498014347445; 
	Tue, 20 Jun 2017 20:05:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.165.198 with HTTP; Tue, 20 Jun 2017 20:05:16 -0700 (PDT)
In-Reply-To: <cec5c937-bfba-416f-b9bb-acb58d29ea2d@yadro.com>
References: <cec5c937-bfba-416f-b9bb-acb58d29ea2d@yadro.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 20 Jun 2017 23:05:16 -0400
Message-ID: <CAMKF1sp3SnGKG7OGuNJAwXZiSUBLDykr8Ds982WdXwJxZ5sNfQ@mail.gmail.com>
To: Anton Novikov <a.novikov@yadro.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some Arch Linux build fixes
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
X-List-Received-Date: Wed, 21 Jun 2017 03:05:50 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 20, 2017 at 10:09 AM, Anton Novikov <a.novikov@yadro.com> wrote:
> Hi, and all have a nice day.
>
>
> My company contributes to OpenBMC project, whose code has an
> 'import-layers/yocto-poky'
>
> git subtree. I'm trying to build it on Arch Linux, which is a rolling
> release distribution, and
>
> has pretty recent package versions, which triggers some bugs, which I'm
> fixing.
>
>
> Patrick, an OpenBMC maintainer, sent me here, as the code in this folder
> seems to be
>
> synchronized with Yocto code. So somebody, please look at
> https://github.com/openbmc/openbmc/pull/1817

this are good fixes. Please send them to openembedded-core@ mailing list
for review and inclusion in branches they are required. Please be aware
that rolling releases are hard to use for a time based release like Yocto
since over period of time things will change unless you keep using master
of yocto. I would suggest to consider this fact.

>
> and comment on it here. I want to either re-contribute the changes to Yocto,
> or just maintain arch-fixes
>
> branch of github.com/an146/openbmc and have someone else to adapt the fixes
> to Yocto.
>
>
> Thanks,
>
> Anton
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

