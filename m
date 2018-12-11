Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB9E8E00C4D; Tue, 11 Dec 2018 04:09:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.boto[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A345E0090E
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 04:09:00 -0800 (PST)
Received: by mail-pl1-f177.google.com with SMTP id w4so6852617plz.1
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 04:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=X+QKpgqc82X8uw+fa3ix09RNPKaCim8o7HvfWpTQU7g=;
	b=dmPzbkE3Qj60SAygNohDQAwqsmZQDQOOQU7GhKAFdKqeG/p3tQ3Gcqapb7k/x7hi+o
	Bdp31CyxV1Zvr4GcnWe5kOfUO4OxSjkFULKJr1ACBhCRI7EPbOAo6H/Nojpc/uZWIBZS
	dIowN2eq2A3Bpa8NFGarUI+ZbET6jxyxz22DPaU63ALkDNZrAXElLEwW9t6hmvPW3DCM
	7+FFeUV/om2lw4YXKCwWKfbU4O0C/DZZ2bkZty2ycbsFGgrHua8P+TnE8g53w/05Aokq
	alnS+/qVca1U9xNLi7teaf7aaRfjWwv24VH1tzb6aaHU4x+umRUpjhrFxW1x2paUf8Ij
	6bwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=X+QKpgqc82X8uw+fa3ix09RNPKaCim8o7HvfWpTQU7g=;
	b=e7PyOMe1YAYmABFpwwctMKK0QT2w1lcnlym6NCKvRP8tYolqpt3ryqYfBulJHi4eXD
	aWMsn1/RKGpyQw/oihjL3HHeG+M3NiDTHS1cppPvh2Run10wvZLaIOrdY6hAIr95ijQv
	SA2F0u15cdwIrGCEi8+bBics/5vWmmSmjAKkMjdGKIc97fxczJA++dQYByk3eqjxMXvr
	x8wKadxI4V3W/yf+JWo5mYPmgSA/KnZNHpYJ0A5aao1OWrJ/dISnJxVcd6rPh2Kig33o
	EmcpMuQ7W1uvPDkGAhWPBz4tp1B3oVUCzUdfxDlE8AJcSHVOF5JWndpeNvpKB9o/34/z
	+EWA==
X-Gm-Message-State: AA+aEWbAZsNBVj+i3rl6JUofemZRFapfCTnhQjB1wcZJjCy5AERYr+dv
	Xuu74M+p51c9ruSNZy2gGuf9Zt97PGIfqdZojco=
X-Google-Smtp-Source: AFSGD/VifvEUNmIjBidmhq4xmsxTMS7/vi1yXiRq6Ky5ciwBnIg8J9CUrQafrYb+yxLm39p33FMMQKfNn9X8S4MC4hg=
X-Received: by 2002:a17:902:76cb:: with SMTP id
	j11mr8428157plt.179.1544530139795; 
	Tue, 11 Dec 2018 04:08:59 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
In-Reply-To: <CAOT_U5YDEXHTHtbeb1Hhxvk5=7AufdpyT2u7L1TEpjYL8D0BAw@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Tue, 11 Dec 2018 13:08:48 +0100
Message-ID: <CALNvYWPWFE-egwTGvqiO36H9fi=YapkHZR+k9wKMsBYVff5vew@mail.gmail.com>
To: alan.martinovic@senic.com
Cc: yocto@yoctoproject.org
Subject: Re: Best practices for tokens/passwords that can't be versioned
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
X-List-Received-Date: Tue, 11 Dec 2018 12:09:00 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 11, 2018 at 12:55 PM Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Seems like conf/local.conf could also offer a solution given that it's
> a temporary
> thing (per build setup), but didn't yet figure out a good mechanism.

You could have a variable in the recipe and override that value in local.conf.

Let's say your recipe is called myexample_git.bb in which you add
something like this:
MYSECRETKEY ?= ""

Then this could be assigned from local.conf using something like:
MYSECRETKEY_pn-myexample = "super secret"

Cheers,
Erik

