Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E900FE0030B
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 08:48:29 -0800 (PST)
Received: by lagw12 with SMTP id w12so376434lag.35
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 08:48:28 -0800 (PST)
Received-SPF: pass (google.com: domain of raj.khem@gmail.com designates
	10.152.110.102 as permitted sender) client-ip=10.152.110.102; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of raj.khem@gmail.com
	designates 10.152.110.102 as permitted sender)
	smtp.mail=raj.khem@gmail.com;
	dkim=pass header.i=raj.khem@gmail.com
Received: from mr.google.com ([10.152.110.102])
	by 10.152.110.102 with SMTP id hz6mr25796210lab.21.1329929308569
	(num_hops = 1); Wed, 22 Feb 2012 08:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Im/qEs+Ry/7+2JAd5YXrJ6MDnYL20SplQkKD8Zn6ol4=;
	b=dJBAZqVbWrpEW1oAF1XcOlyYHryKUe2aqDDJgWJ5iL5spa1BNVGTbE6VepbVuV48+x
	/T2KhWdYHDgQ9mCfqI0f7YX3fHEg/K7KBq9vpmtdxrKgiBGqsIdYfu+7e6uPYGt1WmvA
	LkqEE6gnwxw5/izXEeCKYlxO82Jp50jh55W3A=
Received: by 10.152.110.102 with SMTP id hz6mr21618585lab.21.1329929308450;
	Wed, 22 Feb 2012 08:48:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Wed, 22 Feb 2012 08:47:58 -0800 (PST)
In-Reply-To: <4F450E82.4070006@mindchasers.com>
References: <1329746626.2728.10.camel@babel.joshhome>
	<4F428FC8.5080806@intel.com> <4F450E82.4070006@mindchasers.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Feb 2012 08:47:58 -0800
Message-ID: <CAMKF1sptbyeg+NFsN7eL+fPnt4rDTYfLFWOp-E-cP6RVJgm41A@mail.gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: yocto@yoctoproject.org
Subject: Re: how do I contribute to yocto
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
X-List-Received-Date: Wed, 22 Feb 2012 16:48:30 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 22, 2012 at 7:49 AM, Bob Cochran <yocto@mindchasers.com> wrote:
>
> Doesn't this project accept new community driven / supplied recipes?

Certainly it does. Layers are part of project.

