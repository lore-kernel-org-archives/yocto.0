Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 986CAE00852; Wed,  2 Mar 2016 11:27:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 677F2E0079A
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 11:27:30 -0800 (PST)
Received: by mail-pf0-f170.google.com with SMTP id 63so9704290pfe.3
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 11:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Kg5csqy4R8gh3WLRgMXxWMWHrZlMX0RcZThh+dksAeI=;
	b=zRbc5lBvOcBJxBzmhGaSTvn7cuqsXHF3zbbjlkAgWHzTxewKSHJ7LbiUl+MT/m5CQJ
	4KIiAUp3YO6aIqVIKNOdFWJmDHR9FStLoSv+V98b7gV4/2fn9Vq5bFKoUffggve9Fh7+
	JoWFIrJTQ5QxwwzibvhHHZ6Uf87PJgnmpaf3zv+nCE6GAIG5nWViffCQYTbcHaG/f03w
	4BkddOSga6pnTfSH8nZTica2N/WSTv6LxDkXSJthC29bZ+YjkRryrLRFcXZzcsCZoKvf
	CBdXxzVf60kR4kUAletvb//RR54arvZHqAU6F2tynQDdc8u1qODzcTnjEA3nFOkbjMEH
	JM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=Kg5csqy4R8gh3WLRgMXxWMWHrZlMX0RcZThh+dksAeI=;
	b=Pt5GyCyTsiUw8LQk/D3OPjYUuRJbg4oRvu+DLpZxm9f5UaVNeDKOUAVNo6ST5RKO14
	qZKqIpCG0nv5QAW5l0uzBBbD+Njp0R3aUyS+nbZXxbr7vWv8niNRjmi2FJ103ONo7iRH
	jkLIyfZRJDV8OQlTgy0t95aH/BKHD6BpGkA0U5fToWl6kGpCp6zXUJbq5HRQFymxbsPA
	czASWomCLM2Jfdl0X/UFeLBICDJPRutctfixlxt4LWt5iXmMuDj18ENQzkzW2Egi0SYl
	mmlEqPY0JRbEXtLf9LVEyLBk3b/yoa6LXCWIVZ/AN1XHsLSDuJ3a/9QNpgdLqNyFSIRP
	mBDA==
X-Gm-Message-State: AD7BkJIbL1EFxMGWhoXPGmDed/4ei5Wu1lUklf8phr6C6t2TCLYx97vMBI87wBkG/OxY2A==
X-Received: by 10.98.15.67 with SMTP id x64mr10093662pfi.60.1456946849677;
	Wed, 02 Mar 2016 11:27:29 -0800 (PST)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id 3sm54765031pfn.59.2016.03.02.11.27.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Mar 2016 11:27:29 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: ed.bartosh@linux.intel.com
Date: Wed, 02 Mar 2016 11:27:27 -0800
Message-ID: <2278237.L7q9SH0zBY@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.3.5-200.fc22.x86_64+debug; KDE/4.14.14;
	x86_64; ; )
In-Reply-To: <20160302064735.GA21419@linux.intel.com>
References: <5285202.8PW0mz0glJ@rjs-zotac.streifs.net>
	<20160302064735.GA21419@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [wic] Creating sdimage-bootpart
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
X-List-Received-Date: Wed, 02 Mar 2016 19:27:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ed,

> 
> Interesting. I thought that this commit shoud fix the issue:
> http://cgit.openembedded.org/openembedded-core/commit/?id=264c03e854f77c3b62acb710384f66716ccbf469

Thanks. I was not aware of that patch.

> 
> Which branch do you use?
> 
Jethro. Master seems to be broken right now. It does not compile gdb-7.10.1 (at least not for ARM), which is what I need.

:rjs


