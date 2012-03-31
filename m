Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E912E01206
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 03:00:10 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so1378396vbj.35
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 03:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=V5WaxLRjH7/3ehsN7atgOzRphfSGpJOkJVlijvBm3lQ=;
	b=chxxkTkdhFPPkJFwP17HJdjwKzuhffvJRL54jTjjsS+7Dh1qXCww5k6QnJz49NsmoK
	68AGaFD2ZEQZeL6l2SbiXnNEq5Pj6M066S5EkSRRKzTdNAiQgoUG42/ZOXRhc/DR7NiR
	ZfCHWYPdCmF+zXxILbSUUtf5nBIrLocD3CjewkuTzJE7MmJ03oIyvZMK6KmdSrLwj5pO
	51CSTCl06Y55wQ+J51mE5ysivvqVA9cCbVo/Hgo+do/AKGPkznL22MaSYB3NZCk7WVg5
	J1vShv03H6zQ3hlPtxjfZSmeBHJSl4aRGhyaeP33UUbVpFckprQA2uqcyx962g7OmsMA
	GY6w==
MIME-Version: 1.0
Received: by 10.220.116.68 with SMTP id l4mr810078vcq.4.1333188010312; Sat, 31
	Mar 2012 03:00:10 -0700 (PDT)
Received: by 10.52.88.228 with HTTP; Sat, 31 Mar 2012 03:00:10 -0700 (PDT)
In-Reply-To: <1333177590.18082.160.camel@ted>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
	<4F7608DC.1000402@windriver.com>
	<26C6B15B-4A12-453A-A146-C884A5040178@dominion.thruhere.net>
	<4F7614FE.5000107@windriver.com> <1333141865.18082.120.camel@ted>
	<4F764759.1070801@linux.intel.com>
	<1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<CABcZANm3gPp3zG0WHkgAgX_jC9uqfU46ieoRn_aYk99=6nYVkA@mail.gmail.com>
	<1333177590.18082.160.camel@ted>
Date: Sat, 31 Mar 2012 12:00:10 +0200
Message-ID: <CACW_hTYMCf5RXmieSMZKMmLJDki8qfcgJvTXdsNvsmr6qBYkZg@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Sat, 31 Mar 2012 10:00:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

Reading the discussion, I was wondering whether something under the
yocto umbrella should be self-contained layerwise.
E.g. would it be ok to depend on an external meta-whatsoever?

If so, this does have some quality implications, especially if the
external repo has higher prio and contains alternatives to recipes
that also exist in oe-core.

I can also imagine that any project brought under the yocto umbrella
would have to commit themselves to the yocto/oe-core guidelines.

My two cents.
Frans

