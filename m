Return-Path: <osama.abdelkader@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6452D0EE25
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 20:26:29 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.3671.1764102381189947737
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 12:26:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AErVygGV;
 spf=pass (domain: gmail.com, ip: 209.85.221.47, mailfrom: osama.abdelkader@gmail.com)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42b39d51dcfso3611534f8f.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 12:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764102379; x=1764707179; darn=lists.yoctoproject.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lGjtrlUjs3tet43inieWPcWI1WolvyJZuYcLAUeCaho=;
        b=AErVygGVy71gtKL7JnMksyUZoOcyv9j5j0doLmhC2fRjrDHuguldpYfj1kpDQzz6Ep
         Z1bwgo9MpXY5sGrbWx38QmGHwr2anMMjP8rMgBDq8RUeooChW2/loadYa4fT+KvVcfwS
         jiBKJLlRWTBRmyCf+Sm++0urZfvW/IJiqrdxk798Cw/MpgAaSBWD1MA6+BGHqQoQLQN6
         7yGkbOJPSfU58oI+wfoTrzR96rjH+NxMC2FrH+tGjdI/fQXoqIh8lrN/qpWiQ5tTG3N6
         khejfliaZz5Plu/8kepWv7ynkSSIlCzNtzITN6yidhnzHlOPgU/uNYpxfqURhv9Z5Yz0
         8DDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764102379; x=1764707179;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lGjtrlUjs3tet43inieWPcWI1WolvyJZuYcLAUeCaho=;
        b=Vvu9XG3ibKCj29YzhpTSGXluAY5gOHfWuWw3FssEAqyZCZBOSBozNOdURvyNi7/3aB
         ItloMb/voqKYd0s/rnUl1vyrRLHd70/sLhH5t85tnqhfzDhZUR8D7aPKm4yNqGSXAFXj
         BAARinMGT7OoF3jhi/UJsyJUegVa0G3D+RqBjdwz84XaszJgjafe9sQGg1Za8KWCVZeY
         bWynu8wbtT/n7+xvEiq3UP18UYCASkATcvvP2UjURo7knvi2nFTTqtTsrxTXshwunSG0
         oqR+W9V1voPijGa9s6fY/Zwrsdavxxx7r+LVBxf0Tk2eafq0tAt8UFfvjo3vivDTwQ0H
         dTFg==
X-Gm-Message-State: AOJu0YzrxqjUbiW+1U6J1OtOcwjBUh13EdhSYpbSzfzhN1CAAbwIYsuw
	ThyNVQP/JFs4+bFx0+NaHQsadqpAOU8v+JPH4EO63qCqzfsuNNosik9t
X-Gm-Gg: ASbGnctiTDknmYENK28fobYsoeyx76+kj8BYNhofFotC67KszKII5kh0ti8XASt1Zlg
	keh1HweqaSSVH5WKcWTZ7WY5iSd4v6V2REsoUBz6PTRNv2/Mf2ntQzFW5rHd45TZz1CMw28F8ud
	9gZEJWrwbzTamByadAQol3UX88WsHVqoqr32wdeyukwtHDqvbVJpev65ya+LieiqBngWi4qR6Tc
	/G5p7PvNpn7MwqQQ9RElcR4SAOb2pFHT3xZ0KnSt175MHoF+KrGTdv0utNhpGOqQj3jNHfFrkYm
	4/8Kf+Hg6rt3a26esmyvsfO2jETiE8A7APPR+B+6wYOgxquKvQ7BcWYd/dyWIJqVYNOkHNDF9m+
	qUrk2jMr+lD1DA7ZfEbxD82nECjArg4zbihwAoPkzE4vjoMbLhUcbpLhIp1QWPvZMOUiF14i59d
	Uu4f44e+rHj04=
X-Google-Smtp-Source: AGHT+IEeh1Q6t3gaxnoYVDjokJOyDFsCxfny52VNSBp9JA1glyVs+gjSomKS2V9w13W3Dr3XarYgGw==
X-Received: by 2002:a05:6000:430e:b0:42b:2e94:5a94 with SMTP id ffacd0b85a97d-42cc1cf4540mr17263274f8f.29.1764102379421;
        Tue, 25 Nov 2025 12:26:19 -0800 (PST)
Received: from osama ([197.46.139.116])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42cb7fb9022sm36254857f8f.36.2025.11.25.12.26.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 12:26:18 -0800 (PST)
Date: Tue, 25 Nov 2025 22:26:16 +0200
From: Osama Abdelkader <osama.abdelkader@gmail.com>
To: Ross Burton <Ross.Burton@arm.com>
Cc: yocto@lists.yoctoproject.org, bitbake-devel@lists.openembedded.org
Subject: Re: [yocto] [RFC] Proposal: New tool to display recipe dependency
 trees
Message-ID: <aSYQ6IxFgosukd2B@osama>
References: <aSSUtHYFQlychNQk@osama>
 <74C05E37-CEB7-49C9-AA53-CCA988FC7E7B@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <74C05E37-CEB7-49C9-AA53-CCA988FC7E7B@arm.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 20:26:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66067

On Mon, Nov 24, 2025 at 08:49:31PM +0000, Ross Burton wrote:
> On 24 Nov 2025, at 17:24, Osama Abdelkader via lists.yoctoproject.org <osama.abdelkader=gmail.com@lists.yoctoproject.org> wrote:
> > 
> > Hi All,
> > 
> > I would like to propose adding a new command-line tool (or BitBake subcommand) that generates
> > dependency trees, including:
> > 
> > DEPENDS (build-time)
> > RDEPENDS (runtime)
> > Optional graph output (text, JSON)
> > 
> > Motivation
> > 
> > Currently, BitBake provides:
> > 
> > bitbake -g produces task-depends.dot (task-level, not recipe-level, must use graphviz)
> > oe-pkgdata-util runtime dependency only
> > bitbake -e <recipe> view variables, but manually
> > Errors from the dependency resolver (if a recipe is missing)
> > 
> > But there is no built-in CLI tool to display a recipe dependency tree, e.g.:
> > 
> > bitbake-deptree dnf
> > 
> > dnf
> > ├── libdnf
> > │    ├── libsolv
> > │    └── json-c
> > └── sqlite3
> > 
> Note that the build-time and run-time dependency trees will be a _lot_ deeper than that.
> 
> The ability to mark some dependencies as “soft roots” (eg gcc-cross, glibc) and optionally stop at them would be useful.
> 
> > Is this functionality valuable upstream? Would BitBake benefit from such a tool?
> 
> Yes
> 
> > Where should it live?
> > Options I see:
> > 
> > new BitBake subcommand (e.g. bitbake-deptree)
> > extension to oe-pkgdata-util
> > standalone Python tool under scripts/
> > part of devtool?
> 
> I’d say this is a question for later, the question for now is “make it work”.
> 
> > Preferred output format(s)?
> > Plain ASCII tree (default)
> > JSON
> 
> And HTML/SVG graphs.
> 
> > Should the tool:
> > 
> > cover only DEPENDS (build-time)?
> > include RDEPENDS with pkgdata?
> > resolve virtual/ providers?
> 
> Yes to all.
> 
> > Any prior work I may have missed?
> 
> bitbake’s own taskexp (bitbake -g taskexp) is basically this with more granularity (because it’s task dependencies, not recipe) and without the drawing of an actual tree (partly because I just implemented it as a three pane window for convenience.
> 
> oe-pkgdata-browser (oe-core/scripts) and pkgexp (https://gitlab.com/rossburton/pkgexp) let you dig around the pkgdata interactively.
> 
> bitbake-whatdepends does basic processing on the dot file output from bitbake to let you see _why_ recipe A depends on recipe B.
> 
> Many people ask for this tool, so I hope you manage to implement something that works well.  I’ve started a few times, but never finished…
> 
> Ross

Thanks Ross, this is very helpful, I'm going to look at that and start the implementation soon.
Will need your feedback for sure, but as you said, let's make it work first then we discuss further details in the patchset thread.

BR,
Osama 

