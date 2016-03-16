Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 411E9E00BB9; Wed, 16 Mar 2016 09:13:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDB4E00B8C
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:13:34 -0700 (PDT)
Received: by mail-ig0-f182.google.com with SMTP id nk17so99073663igb.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S0hPtLdm/WUgYZ6TQE0DhXmWqWrhZWSY6VDIbN2HDEc=;
	b=1GJ+HEQuM312IlyW7VKlzBozT9/mwFjnMEeuKIczSuyxhsrgiwSgA+yfnwBvL2z8e0
	vycyBW1z8liltDAXFGgWHtlwNF0wcxwKWr1ISai1jwbxog2peDfeSYR+tImAVXviZ+q5
	Y+4YXBAV4Gnn+acHfgW81mq+kZaOuIURrcVWZAEb0TxdHZtjt+vxIeu6L1d69xjdDd9e
	TPpGTuHTlpSUaW7E61kMm6gkG1Lz1K13+E7ieNvffKjR7BPsdFVhOD4P9RbPmGO8FBS7
	1I/GBjpUYRBjRKjhFUS6GfxTvYQTh9QBqLhssCvAxmWKdPTQdxrRPCpaqDBxjqGLaXgw
	Q3Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S0hPtLdm/WUgYZ6TQE0DhXmWqWrhZWSY6VDIbN2HDEc=;
	b=MIcR5clZdXhsz+tlGxXK3G8bcLRQ19Q3IqyokXn2LV/VpqfAp6hQDjJ3UkaPoTBGpW
	2L7EM2sKwNA7B038fW8jKn+TsXvbzTHyIrFKbHFry9h6zi+i9PflW0MxRIjDd4FbYwsR
	+92owfizKiEIAQyhC8DgUbV2CI/C7tAS2CrmnvNJC1J1HXUxP77z7L1ZxMGy00HIqSCR
	MKQEh8tmRqezOL7S9KnC60jUudWDm5Ae5v6L3lq/EZHR3EdtVaq5Np4mU5XKxV+uRxrF
	W3suHzp8GnYxstY4XDDzzC+miJvC39N0Knl5Qau0BURzJVMNPgMH0Ph0MkIToc0aoUVB
	UK6Q==
X-Gm-Message-State: AD7BkJIynCjQp1GW5BnZqYqAiASp3gJTWlygkJwC6r+rF0TG5phbLf0X9LjnfJ1ffBd32VW80CISudcoodlR6k3I
X-Received: by 10.50.155.72 with SMTP id vu8mr6497201igb.64.1458144814070;
	Wed, 16 Mar 2016 09:13:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 16 Mar 2016 09:13:14 -0700 (PDT)
In-Reply-To: <20160316161308.GB2557@jama>
References: <1458140066928.8568@axis.com> <20160316161308.GB2557@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 16 Mar 2016 16:13:14 +0000
Message-ID: <CAJTo0LZkPO+Lq22s1=3u-WUnZJD7+b37de1syEQw8NjsBmvMnA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Ashish Shrivastava <ashish.shrivastava@axis.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Not able to disable introspection in gstreamer
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
X-List-Received-Date: Wed, 16 Mar 2016 16:13:36 -0000
Content-Type: multipart/alternative; boundary=001a1134bb18ace7a1052e2ccbae

--001a1134bb18ace7a1052e2ccbae
Content-Type: text/plain; charset=UTF-8

On 16 March 2016 at 16:13, Martin Jansa <martin.jansa@gmail.com> wrote:

> I think it's because COMBINED_FEATURES conditional is used only to add
> --enable-introspection in EXTRA_OECONF, but other changes like
> introspection.m4 changes are done in all builds.
>

Then the class should be passing --disable-introspection. Is the problem
also that your recipes are not inheriting this class, so they're
auto-detecting pieces of the GIR framework?

Ross

--001a1134bb18ace7a1052e2ccbae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 16 March 2016 at 16:13, Martin Jansa <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3pi" class=
=3D"a3s" style=3D"overflow:hidden">I think it&#39;s because COMBINED_FEATUR=
ES conditional is used only to add<br>
--enable-introspection in EXTRA_OECONF, but other changes like<br>
introspection.m4 changes are done in all builds.</div></blockquote></div><b=
r>Then the class should be passing --disable-introspection. Is the problem =
also that your recipes are not inheriting this class, so they&#39;re auto-d=
etecting pieces of the GIR framework?</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--001a1134bb18ace7a1052e2ccbae--
