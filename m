Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EE85E0049D
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 14:39:51 -0700 (PDT)
Received: from mail-iy0-f176.google.com ([209.85.210.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 14 Sep 2012 14:39:41 -0700
Received: by iagt4 with SMTP id t4so4490562iag.35
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 14:39:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=cdadyRP05yjDap/yt/gDAEm1NAfJJ0VNa53jJGJqHOw=;
	b=G9bCnvoN8UjbeXHhJnRJNEjfGB5rI4kYBV53iIjFlYc2KrKR9cIEoRJRfiM4F07MVn
	CzLlWbtUKS5wZQZ8GjHydWDgEJPiI34Bygs1Cpra90xzlMuQFzOaOTUZyj37+6vQ+5e5
	eQpLrqBUrL+CRDSewVuZ87XHRccaKz1bzArpHx8KqUJBKnp/5I2JCBIe1MMyG/3cs8Ye
	ZJe75NdkxuZL2nTMt+KJfkRsgQPjNZvqK7zCx98qECI1LlqE+fMB7QlWQeQY+KklLRjT
	AAm5jYVS0oYDyuPzyHYFlGtQGBzrTSxcp+MDKYcy61me/oiEnWG76HrLeqQUAoWfXgon
	4qfw==
Received: by 10.50.180.169 with SMTP id dp9mr143105igc.8.1347658789903; Fri,
	14 Sep 2012 14:39:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Fri, 14 Sep 2012 14:39:29 -0700 (PDT)
In-Reply-To: <1347657906.6185.17.camel@empanada>
References: <cover.1347650435.git.tom.zanussi@intel.com>
	<e5aa858a33392e0a7569c50d308049f88cd802a4.1347650435.git.tom.zanussi@intel.com>
	<CAJTo0LbgWdoX8GnMsKYa-y176X1YiTEd7Ucw7CNLLi6OBqaB2g@mail.gmail.com>
	<1347657906.6185.17.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Sep 2012 22:39:29 +0100
Message-ID: <CAJTo0LbVU6u5GwZkn2pGzzG=2bem5QUY=76B40ic2ygqQqP+iQ@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQlQPCz+b0OPRWEmWJU+lBoTw/XoPTN9chxwViUah47kPGJ7qggXINnupjPlkoB/uLYeSx0s
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] meta-intel: make video acceleration choice dependent on LICENSE_FLAGS
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
X-List-Received-Date: Fri, 14 Sep 2012 21:39:51 -0000
Content-Type: text/plain; charset=UTF-8

On 14 September 2012 22:25, Tom Zanussi <tom.zanussi@intel.com> wrote:
> From the gstreamer-vaapi README:
>
> "vaapidecoder currently relies on FFmpeg"

Ha, fair enough.

> Anyway, it would be nice if someone who had a better understanding of
> this 'stack' could suggest better ways of doing things - at this point
> it works for 3 different video acceleration implementations (emgd, pvr
> and standard intel va) and I'm not looking forward to going through that
> exercise again - for now I'll just be trying to fix the build problems
> introduced by the new licensing restrictions.

I'm off to the London office on Monday, there's bound to be a few
Cedar Trail netbooks hanging around there still.  I know they play
h264 through vaapi (albeit fluendo-va) in MeeGo because that was the
most frustrating/rewarding week I've had for along time, so I'll build
an image with meta-intel and see what I can do.

I'd also like to see anything MIX related in meta-intel die, that's an
abomination now that gst-va actually works.

Ross

