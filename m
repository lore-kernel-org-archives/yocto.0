Return-Path: <davidsmoot@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71721E006B5
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 19:30:28 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so141754wgb.11
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 19:30:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=0fdX5CyzzFfh8uvQs09TAaUWF8gFqhbfRDVQ9Lv7ncE=;
	b=iba4BHAKdqMes+9Ht196mWHAHqnfSBl0MRrxoyu+lvz2JjlJsLtMmqJaHhlMepFNE7
	JWh+FaeqwAtPFt3PKP9bN62/eUomfthF5XMP+KQ4Qt2qQyjFUtmw+Fo1OEPQzdOgVqzG
	0FLvYQQg5ZvZm4b/jO5+730vadkPtOoPcjJdc=
MIME-Version: 1.0
Received: by 10.180.80.98 with SMTP id q2mr6926131wix.53.1322796627147; Thu,
	01 Dec 2011 19:30:27 -0800 (PST)
Received: by 10.216.154.81 with HTTP; Thu, 1 Dec 2011 19:30:27 -0800 (PST)
In-Reply-To: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
References: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
Date: Thu, 1 Dec 2011 21:30:27 -0600
Message-ID: <CA+5N1gzpSU1vj5HkUUPisj9_wWUrmg_ReunPmmxj_ER8AgvoJQ@mail.gmail.com>
From: David Smoot <davidsmoot@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: building the examples from "meta-demo"
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
X-List-Received-Date: Fri, 02 Dec 2011 03:30:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Dec 1, 2011 at 8:18 PM, David Smoot <davidsmoot@gmail.com> wrote:
<snip background>
>
> Obviously I have missed a step to tell poky how to find that image but
> so far I have not been able to google the answer to my mistake.
>
> Thanks in advance for any answers and thanks for such a cool tool.
>
> David Smoot

I think I solved my original question but ran into another problem:

In my build directory, I edited conf/bblayer.conf to add the path to
the "meta-demo" folder to the BBLAYERS variable.

That got me further but it appears now that the meta-demo recipes
reference things I do not have in my poky tree.  I am guessing that
the demo was coded for the yocto 1.0 release and is broken by the
yocto 1.1 structure.

I got an error "ERROR: Could not include required file
recipes-core/images/core-image-live.inc".  I did not need a live image
for what I was working on so I simply removed the -live recipes and
that got me past that error but to a new error:
ERROR: No recipes available for:
/opt/yocto/poky/meta-demo/recipes-kernel/linux/linux-wrs_git.bbappend
/opt/yocto/poky/meta-demo/recipes-kernel/linux/linux-yocto_git.bbappend"

So two questions:
Is my assumption about 1.0 vs 1.1 appear to be correct or is there
another source of error (I am very new at Yocto)?
Has anyone ported the upnp demo apps to 1.1 yet?

thanks again,
David

