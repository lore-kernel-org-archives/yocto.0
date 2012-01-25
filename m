Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 858A3E01374
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 07:59:34 -0800 (PST)
Received: by bkat8 with SMTP id t8so3156237bka.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 07:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MJ1AS6fb3mnZKGGewxa8uAyYt86HNPW+KLk8sWvkTd4=;
	b=AH1M9Wk4iJzcUSz6HYVxZsNQnFPtV921CpPgUyJDl7o/xkzEahkqddZWxlZy1zStiU
	SuDDQujcHRU442tOwoXBUvOOlC+Y+vydkCjrpzOZBssjUMiqxDxPiHq0M8HIXxBMjmAi
	LshwFcG9S0W5QN+UWVuzXm5bxVAFebf0cT31Y=
MIME-Version: 1.0
Received: by 10.205.133.133 with SMTP id hy5mr7425977bkc.94.1327507171514;
	Wed, 25 Jan 2012 07:59:31 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 25 Jan 2012 07:59:31 -0800 (PST)
In-Reply-To: <4F20239F.2010407@communistcode.co.uk>
References: <CAFZh4h_X5Ub+et3R68K1z3wvYpcZxdAv2mf2tQV6HtiWp7xNqw@mail.gmail.com>
	<4F201635.7090505@communistcode.co.uk>
	<CAFZh4h8nrZMK7mQeMBZOv8Y2+VkqsbE1EV0fVM3_G_MTKVyojQ@mail.gmail.com>
	<4F20239F.2010407@communistcode.co.uk>
Date: Wed, 25 Jan 2012 10:59:31 -0500
Message-ID: <CAFZh4h-M7hEcprauGTjTBHbxdL_PwBwUQk4U_Q3U0Ee=mfZyDQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: Is there a recipe for evtest package?
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
X-List-Received-Date: Wed, 25 Jan 2012 15:59:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 25, 2012 at 10:45 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> The way I tend to tackle this is to copy the recipe from meta-oe into my own
> custom layer. The recipes in meta-oe aren't explicitly compatible with the
> recipes in Yocto so I tend to only transfer over the ones that I
> specifically need to avoid complications.

Thanks!,  I'll look into that.

I had an OE based checkout so I just bitbaked the linux-input recipe
for speed.  I do want to figure out how to do this in Yocto though so
thank for pointing me in the right direction.  I didn't want to
reinvent the wheel if there was already some established way of doing
it that I just wasn't seeing.

Regards,

Brian

