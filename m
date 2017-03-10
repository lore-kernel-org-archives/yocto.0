Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9884E00A1E; Fri, 10 Mar 2017 10:18:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.175 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CE5FE00A0C
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:18:19 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id u30so123905059uau.0
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 10:18:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yci1Vr1Y2+YkmImHkRwNsm2fehvsvehc4YNexh5jgZw=;
	b=UCaV6/RcrbUNvFnLm9jZ2b+Dc9q5SDwJk1Qi6wFjgxsMWtgZ85MJVJjhQYW81PID+p
	9PpS4qzBB4+uKM/yv1dSPW26Ym9NrZnlq5BXKuy9XqJ+VL2D3fApFRc6eTTKMa1ObMLG
	IysUpaq5iEqUNGd8HCi8NkvZinNsEo3mlpu8Y0z6Jf/LjUOE8Mu0krXHEViLEkDiKyzq
	LTmpphp9XsQUPUNtsPS85yBHDfey87oPNwG5DJk243yj//Yxhhl+suQO1UrTq200I1q0
	o3EIW5VglpPtpT9KWm6I3plF8sIkxVd/TTprkQdQQ3DntBZOKqiR+1CcEV32YTJE8eQu
	DzIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yci1Vr1Y2+YkmImHkRwNsm2fehvsvehc4YNexh5jgZw=;
	b=DVF36c7n9kZNttG2GCP3A25wuVQGzOb8/pB3sJkn0a46kkc/JtZu3vCrEdRMy5oH/d
	bBlRtXHfL92bADH2br7zW2XGUUPKS2apkjjeTm03Yi2nl6XUZKsKATTAQgZSI5q0H/lL
	Bau/fcIWcos5C7m1K+0SkiXrac9IDgJMjCnUNK4ZkqiwuvV88udKzbq8uTYa6sVwCLH3
	Togkr8zN0Q+kWbOOj9ZGgbYX9dQOMqw5UVDlefiLHAlxb5LCuaHBU4LZdI/gz2+c7bMR
	H9JuEJjjoBgEQoa7TOE5EFpe+bRekwXqbR4re4CmNPYea9d7xHIpYDSamyiuFSgup2ob
	5ePw==
X-Gm-Message-State: AMke39n+XfZUq2IlN305gusUrT8qqZSWZlBcvbVLMkiFD6BwmX/Cdxs+6KmxKxVj4pluVQ6I9iP53009Y+xHnw==
X-Received: by 10.176.90.195 with SMTP id x3mr10054655uae.165.1489169899285;
	Fri, 10 Mar 2017 10:18:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.39.37 with HTTP; Fri, 10 Mar 2017 10:17:48 -0800 (PST)
In-Reply-To: <f8d87157-8f64-2bab-ac55-6f058c148f08@linux.intel.com>
References: <f8d87157-8f64-2bab-ac55-6f058c148f08@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 10 Mar 2017 10:17:48 -0800
Message-ID: <CAMKF1spnbVYJ3gqzgWYKJcOxqpD+h_aUvJS9NVGFqJ_-T6dCuA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Subject: Re: [Openembedded-architecture] Supporting MEAN framework in Yocto
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
X-List-Received-Date: Fri, 10 Mar 2017 18:18:21 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 10, 2017 at 5:49 AM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> Hello,
>
> I've done some research around MEAN stack and how Yocto could support it,
> and here are the findings.
>
> *What is MEAN*
>
> MEAN (http://mean.io/) is a Javascript framework for writing web
> applications with a client-server architecture. It's comprised of four major
> components:
>
> - Node.js, the standalone Javascript interpreter that does not need a
> browser to run
> - MongoDB, a C++ NoSQL database server
> - Angular.js, a javascript application framework
> - Express.js, another javascript application framework (not sure how the two
> interact - I'm not a JS specialist)
>
> The major selling point of MEAN is that it is a 'full stack'. This means
> that both client and server side code is written using the same language,
> and shares many of the libraries. This is in contrast to the traditional
> LAMP stack, where server code is written in P* (Python, Perl or PHP) and
> client code is written in javascript, and presumably hiring developers with
> the right skillset is harder in such circumstances.
>
> Starting a project in MEAN is very easy - the (slightly exaggerated) example
> from the website frontpage is:
>
> $ sudo npm install -g mean-cli
> $ mean init yourNewApp
>
> *Why does Yocto need to support this?*
>
> At the moment, it really does not. But we need to move with the times; if
> Yocto users want to put a MEAN app on their devices, Yocto should not get in
> their way, or declare that it isn't supported. There is a trend towards
> using node.js on the server side, and it will probably trickle over into
> embedded space as well.
>
> *What are the difficulties?*
>
> Placing node.js and Mongodb into images is not complicated. We have recipes
> for both (meta-oe has an outdated version of node.js, but there's also
> meta-node layer, which is totally up to date with upstream). The
> complications arise from the way javascript world handles project
> dependencies (see my previous email for a deeper look into this). It works
> like this:
>
> - after initializing the project like above, you need to change into the
> project directory and do this:
>
> $ npm install
>
> - this recursively pulls all of the dependencies (including angular.js and
> express.js) into the node_modules directory of the project tree. Developers
> don't need to know or care what they are, and where they come from (and it's
> implied that licensing is not a worry either); the resulting set of
> libraries is bundled with the application and is not shared with other
> applications. As long as npm install completes without an error, that's all
> you need to worry about.
>
> - unfortunately for us, the list of dependencies is truly enormous. The
> bare-bones MEAN app pulls in 1087 dependencies - and each of them has their
> own license, version, and upstream repository:
>
> $ ls myNewApp/node_modules/|wc -w
> 1087
>
> *What do we do with the 1087 dependencies?*
>
> There is support in bitbake/devtool for dealing with npm-based projects - I
> didn't have time to try it (and it's also at the moment broken for the
> master branch due to rss), but it would probably not handle this very well:
>
> - it reimplements 'npm install' as a custom fetcher and dependency resolver.
> I believe this is not the right way in the long run: we should let 'npm
> install' do its job, and inspect the tree after it's done to get the
> information we really need.
>
> - the license information for all of the dependencies is written into the
> recipe, which makes it unnecessarily large. It is not clear how that
> information should be updated when needed.
>
> - also, the dependencies are locked down through a separate lockdown file
> created by devtool, but it's not clear what to do when the lockdown file
> doesn't match reality, or when it otherwise needs to be updated. There
> should be a common, documented mechanism for all of this - see my previous
> email :)

seems like say LAMP stack. I would suggest a meta-mean on git.yp.org
and may be merge meta-nodejs there as well.

