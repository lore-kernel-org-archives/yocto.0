Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 440DEE0059A
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 07:36:39 -0800 (PST)
Received: by bkat8 with SMTP id t8so3118287bka.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 07:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CDhlGOlbn7cCmpbvQTEq5VknPVxDcSlc2De467IhDrs=;
	b=jdNd9SQ6b+jcp1ZfJBJJaR1MvMqJzf6XoU1HGflOaSzq4pG1Cj6JqRDEimKGE1/vNi
	FP+kl3iQnVBA9k9rht7lReHGDe+dkYkhtE3ItyUjZsIB4MjWW8OzMEVr9U83yblUXEx9
	wgezbwUy2OM3sx4CXiaJquGSmt+VcV7lvvNVs=
MIME-Version: 1.0
Received: by 10.204.154.211 with SMTP id p19mr7345301bkw.130.1327505797868;
	Wed, 25 Jan 2012 07:36:37 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 25 Jan 2012 07:36:37 -0800 (PST)
In-Reply-To: <4F201635.7090505@communistcode.co.uk>
References: <CAFZh4h_X5Ub+et3R68K1z3wvYpcZxdAv2mf2tQV6HtiWp7xNqw@mail.gmail.com>
	<4F201635.7090505@communistcode.co.uk>
Date: Wed, 25 Jan 2012 10:36:37 -0500
Message-ID: <CAFZh4h8nrZMK7mQeMBZOv8Y2+VkqsbE1EV0fVM3_G_MTKVyojQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 25 Jan 2012 15:36:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 25, 2012 at 9:48 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> Hi Brian,
>
> Your best bet is to adapt the one from meta-oe here:
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-support/evtest

Hi Jack,

I'm still trying to get up-to-speed on how to work with Yocto ....
would adding this layer be just like adding say poky extras?

Regards,

Brian

