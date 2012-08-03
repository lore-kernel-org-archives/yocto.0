Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 444B8E0141D
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 18:24:32 -0700 (PDT)
Received: by lagz14 with SMTP id z14so95570lag.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 18:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=vvlPXHLhrBmIANBztNffvSzdeufFBBzA2n1wg3oQGl0=;
	b=qbXAQ1/FmymjfYb8eUYkQvbkyQ7pZHpVu28o1dAaQ5mhpoVioHmykzFLpX6i+h2A/X
	7IF5FHwBlS/U6ctRPXYMxXav5nFTYA1m6X0TKW43CCyMeYgGXu5PjfTfxi8xctdNvEIl
	lXD6zrsDDSb90RrX9CmepF97qID6tlLmC5hLBdpndc/hN79Eq4LEL34y+8qEcVmg8WnX
	mkh0fG+2yiVCFWZr9C2NePSanoiAmnYkJvhQE0YG/uSpn8diN8pijt9CWrWtLRx3iPNM
	LL8Yrmteg6mUinDK8tiGwAiOPaCsGfg546JI9+SBd22enn9eWseAk5YvNZDzdSa4B+Vl
	NXcA==
Received: by 10.112.11.38 with SMTP id n6mr6315lbb.82.1343957071096; Thu, 02
	Aug 2012 18:24:31 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.64.209 with HTTP; Thu, 2 Aug 2012 18:24:10 -0700 (PDT)
In-Reply-To: <CAFx4oHHgtgO20hBdmmS80kA8_SuVYDoQr7v9X8ecTsq5i_j2WQ@mail.gmail.com>
References: <CAFx4oHHgtgO20hBdmmS80kA8_SuVYDoQr7v9X8ecTsq5i_j2WQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 2 Aug 2012 18:24:10 -0700
X-Google-Sender-Auth: hmyMuMHmt0WOlJppnyE35tJhWc8
Message-ID: <CABcZANk99uZVvKuUHyi4CKi4VKw_WGbdxst7GUVbKsx+yVGA6Q@mail.gmail.com>
To: Aditya Gandhi <aditya@inforcecomputing.com>
Cc: yocto@yoctoproject.org
Subject: Re: Hey where is pythonnative.bbclass
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
X-List-Received-Date: Fri, 03 Aug 2012 01:24:32 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 2, 2012 at 5:55 PM, Aditya Gandhi
<aditya@inforcecomputing.com> wrote:
> I am adding layers from openembedded. Would anyone know here is the
> pythonnative.bbclass, some meta-oe depends on it.

oe-core.
-- 
Christopher Larson

