Return-Path: <bewithsathish@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2A74E00307
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2012 00:51:24 -0800 (PST)
Received: by pbcc11 with SMTP id c11so3505073pbc.35
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2012 00:51:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=iRg39SLbo4Bt2h9ALnLqxLpNaBG03eY9+FlEQu0FKVc=;
	b=EQRs37ggjNlVgKs4gzIHsx2HtD0TVzksCKvXpy6BQetKQoQdhiWUxfb5Y8/x/F7d/a
	X3thuJtFMCiZ7SPKH5+i8YB7Fm/QxSxudb0iVXiKLOVjRDLMmcpDPPQIMdp3YUFVTQeq
	u/a2tqZc9IINHyFAr+POha2O0FIK7cmp+vZoM=
MIME-Version: 1.0
Received: by 10.68.74.4 with SMTP id p4mr15689432pbv.123.1328259083976; Fri,
	03 Feb 2012 00:51:23 -0800 (PST)
Received: by 10.68.232.5 with HTTP; Fri, 3 Feb 2012 00:51:23 -0800 (PST)
In-Reply-To: <1328256282.2658.23.camel@babel.joshhome>
References: <1327993829.2696.18.camel@babel.joshhome>
	<CANJvwR_Zk8YwH6EyyoM8siMPxYgZFbyiFa04tVh4ubGXSETQnA@mail.gmail.com>
	<1328096562.2628.16.camel@babel.joshhome>
	<1328256282.2658.23.camel@babel.joshhome>
Date: Fri, 3 Feb 2012 14:21:23 +0530
Message-ID: <CANJvwR99LRR99Ro_VtrZcyyOMQbbcyj2+h3SFA-oYyKw01gfRg@mail.gmail.com>
From: Sathishkumar Duraisamy <bewithsathish@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: forcing a task to run while building an image
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
X-List-Received-Date: Fri, 03 Feb 2012 08:51:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

The following is the scenario, you are in. If I wrong, please correct me.
" You have your development program/application in some place. You
want to build and include it in your rootfs. And you don't want to
edit the recipe/other things for each build of rootfs."

The scenario is very common. What we actually do is, for development
we usually test by downloading the specific application binary to rfs
by compiling with the sdk (created from oe). And usually our
application will be in some version control say hg or git. Once the
apps is ready, modify the recipe to include the particular version of
apps.


-- 
Regards,
Sathishkumar D
http://flowersopenlab.weebly.com/

