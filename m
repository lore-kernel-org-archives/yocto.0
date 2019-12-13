Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2050.1576270387660219430
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 12:53:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=gaUoq30R;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: mhalstead@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BD2FE01126; Fri, 13 Dec 2019 12:53:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B87E010A4
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 12:53:05 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id a15so648757otf.1
        for <yocto@yoctoproject.org>; Fri, 13 Dec 2019 12:53:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uJTu64lYAcM0t+TubR3JGXmA4oPu4449QLjDUEx4TFY=;
        b=gaUoq30ROf68lkY0N0gTXoXJt8cBgIrvmwBw3N3VPLPjMAobmzuztWatzNha/h4DnH
         DYq2AxQgEqt+qXPk4DsEsPd0K81U8eSvuHZgAJR3TFX8Os/dKw/zQRG2selGzmddbmiy
         +2UlC6RvtA0WjCAekaFLe0G6ji9NTFm+lKFoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uJTu64lYAcM0t+TubR3JGXmA4oPu4449QLjDUEx4TFY=;
        b=C+E9ICsIps5QA/0aL209mhJjqjRo1gewJ0hfl2AGVbpPIyspmfZevVqSsluNoiuhJg
         WS8ik56VFr5u0tIgIdywspHMH1bJyCAY+jnaxIr1dTFwOcRUpANz85ni+bd7JBvf1niW
         P3ddDmL06AMILXqXHwiEMDhm8XxjIdmjfnC0XhuvCf/hwc/SrdyJVtKZZXKEEPk5I75a
         wOkoVsQLe3A332nY4lfPj3Cco5a2LjER7WBZ70koo5YZZGiEvX4EtdtGw+iAHe/gS+dY
         WBuKfiNrQWW2wAK/5JTskg3ck/+PmxWnhsvLaeicXwWHyFWmz6aNfh+NVid4/ONvIY/l
         VnNA==
X-Gm-Message-State: APjAAAXaRys4je1sITky/Bsd5VUeV9Q3sx0J9mI4Nv/fp6Wb59fsd7SK
	Fu56aLPAUpKQ7uoQLwnNxavwdzyal8T3QOi3wz4FqA==
X-Google-Smtp-Source: APXvYqzWjdJS6DdLO5wk6ZR8oGvjHAYr2elRVZcGJ3Yo4x5mSf+5c6wSb7joUW6FbWJ9orBDZpz7dt5gEAq8Kzm1l2k=
X-Received: by 2002:a05:6830:1e8a:: with SMTP id n10mr15922403otr.228.1576270385066;
 Fri, 13 Dec 2019 12:53:05 -0800 (PST)
MIME-Version: 1.0
References: <CADfgfoaRizwCAC6GadRLfFcaGQ-uGzyEqwTB_mdD2SeHCC07Tw@mail.gmail.com>
 <5f35c463-1c98-f2b1-38c9-5b4b5401a7fc@gmail.com>
In-Reply-To: <5f35c463-1c98-f2b1-38c9-5b4b5401a7fc@gmail.com>
From: "Michael Halstead" <mhalstead@linuxfoundation.org>
Date: Fri, 13 Dec 2019 12:52:52 -0800
Message-ID: <CADfgfoYTRYZ+P94WAEA8d3phPDUyE3p8Cg4fyVijMg=vixHdTQ@mail.gmail.com>
Subject: Re: [yocto-infrastructure] Data center routing issue affecting downloads.yoctoproject.org and Autobuilder
To: yocto-infrastructure@yoctoproject.org, 
	Yocto Project Discussion <yocto@yoctoproject.org>
Cc: akuster808 <akuster808@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Networking is restored in the Portland Oregon data center.

Down 2019-12-13  03:07 PST
Up at  2019-12-13  12:37 PST

We are currently online using a spare router. We will remove this
single point of failure when we transition off of this spare
equipment. We will announce the planned downtime for the move in the
coming weeks.

--

Michael Halstead
Linux Foundation / Yocto Project
Systems Operations Engineer
