Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57299E013A2
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 04:52:21 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id q10so883865eaj.31
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 04:52:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=kqIP8BBddOncFnIGzIee8WRDN+P8UXpKcLlOCTuscoM=;
	b=gi0koXLQWfyzpuLGL2yg/f0I4EU8oTyo/a42v7+Pr8EhW6VgheJ/a/NGMZxZKKH7e/
	56TOcfmrLjcp8YIGoQyF5PQZNmR92lxj2VANsR5vKKzlpHgzd/Ce209mbnUQc+MARkAD
	LvvwcxUnH5X2qUL6lg+qF5JVf0kEIwVZycdoKzwOLejy2XuZK9jLx8pspxbroIVtF1Av
	0u2/XIVUD2hUW6+ReWRgjJsjJeap4V9yNxZICLrGmdAQAxen78OvLi0PjHoIkURbSp6P
	zkkIjSOBNQimUQPylPMd6cHhz5YnRlJR4W9r1eVPaljTeN74U8u5zdnyAraBkqblWa9u
	4G/w==
MIME-Version: 1.0
X-Received: by 10.14.173.70 with SMTP id u46mr41771501eel.92.1374753130178;
	Thu, 25 Jul 2013 04:52:10 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Thu, 25 Jul 2013 04:52:10 -0700 (PDT)
In-Reply-To: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
References: <CADM5y7v6DT9Ls=UZNRc_uYPdrgh2AtrY_HMRPbEss=CYxOWxoQ@mail.gmail.com>
Date: Thu, 25 Jul 2013 07:52:10 -0400
Message-ID: <CALmOhg=b9JaHpH9+bRsebAoE+pq9K0QYziwT7Ji7uYjsCfOtCQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: mulhern <mulhern@gmail.com>
X-Gm-Message-State: ALoCoQlCvT2TbCo8zFqFKQd8RyVztdKgJOuGpcXgvG05/EAgRHVtVGE/35jKLeomtwqFoS/P2LyN
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Discovering available Perl modules OR writing recipes for your own
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
X-List-Received-Date: Thu, 25 Jul 2013 11:52:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 24 July 2013 11:30, mulhern <mulhern@gmail.com> wrote:
> pulledpork tries to use the module Crypt::SSLeay and in my current
> configuration it can't find it.

It looks like this module has a recipe in the meta-security layer:
http://layers.openembedded.org/layerindex/recipes/?q=perl

