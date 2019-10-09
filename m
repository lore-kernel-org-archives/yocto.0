Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05442E00D9B; Wed,  9 Oct 2019 07:44:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E278E00D99
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 07:44:20 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id p14so3374946wro.4
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2019 07:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=ZoRvcizqHAkDRYsND1FwYDsaxIxp6z697ZqEr4f2vTE=;
	b=CgGAMmTjl/YML1N54Ug8TsnoBSGJJyUxeSWHjENJrkaCq8V8i1zRUmeCBn26mvo8u1
	gxTjqaDLhwOpmQEuWeQuKi7dIOo2nsTC97g0jfASZqERHa/+xt2jyqdNf0Q9Zgcjy72u
	snD7xAFc4qf07Ny9uDVeNFgtG8YisjNgPzxyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=ZoRvcizqHAkDRYsND1FwYDsaxIxp6z697ZqEr4f2vTE=;
	b=UPOKQCChpT1GSKCWvNEYU/pwPvpisnSFiOcGocZqlbDjE48xdCWkmmXb5lAV5e4Aaj
	ja12GQNF8Ho8Pyk7L4lG0UUCpvW+aRojiuzEkx3KwK91DFSeMnhmwBCxgQ3oEH3uaKDk
	lVUhzeCskilZ5H8Q5dASNCs16N4w0kaIDxcLkET3ph2u+BXdexJ2qb+8z0PV6AjZdxfx
	wiBNPvkIAYc7Vu3rAG1b1uGlxchHihm34jx25EoMKGY0xbb605aLpQQU9oFUPhfNsbpC
	rfphxJxPGFqAtcWIuv9dqFoYHL8P/c80B42dhxNxb2dNnS93TobxKPzjas8gPb0KDqWA
	Y4ow==
X-Gm-Message-State: APjAAAUva4LYLO6DmkGR7Pu2W874XLefSJXYxPMlwUpcFFxFP6hoJYit
	1k5TpxAAZiEVG02tkvb4PblBnw==
X-Google-Smtp-Source: APXvYqywlM/yVlNUWU3eIUjdvpwJTNgbAdOi4zFd01W2WGiXZkSKes1bS7xmbVid1ozjiMkneulixA==
X-Received: by 2002:adf:fad1:: with SMTP id a17mr3475882wrs.148.1570632259698; 
	Wed, 09 Oct 2019 07:44:19 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	w17sm2396038wmi.30.2019.10.09.07.44.18
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 09 Oct 2019 07:44:19 -0700 (PDT)
Message-ID: <c1aaa8790d05d8e4b42a9e224dad09c35350f0b3.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Andrei Gherzan <andrei@gherzan.ro>, yocto@yoctoproject.org
Date: Wed, 09 Oct 2019 15:44:17 +0100
In-Reply-To: <a51024a0-2c3f-a584-2821-c5c8a8a786a3@gherzan.ro>
References: <a51024a0-2c3f-a584-2821-c5c8a8a786a3@gherzan.ro>
User-Agent: Evolution 3.34.0-1 
MIME-Version: 1.0
Subject: Re: Task vardeps on a variable changed externally
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
X-List-Received-Date: Wed, 09 Oct 2019 14:44:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-10-09 at 10:42 +0100, Andrei Gherzan wrote:
> I struggle to figure out an issue that I lately got into. I want to
> have a recipe which writes a manifest of all the layers part of the
> build. 
> These layers are all git repositories and I want their revision to
> be exposed at runtime. So I obviously have a a python function which 
> computes let's say, for the sake of example, a revision of one layer.
> 
> def get_rev(d):
>      # returns revision of a repository
> 
> LAYER_REVISION := "${get_rev(d)}"
> 
> The recipe also has a `do_compile` variable dependency:
> do_compile[vardeps] += "LAYER_REVISION"
> 
> Checking the task signature I see the inclusion of the expanded
> variable 
> LAYER_REVISION.
> 
> Now, if I externally change the revision of that respective layer
> the 
> task is not re-triggered even so the recipe environment reports the 
> updated variable (bitbake -e). What is even more confusing is that
> if 
> for whatever reason the do_compile task gets invalidated (or I force 
> it), the build system returns a "basehash value changed" error.
> 
> I would expect that the change of revision to trickle a task 
> invalidation and the task to be rerun but that doesn't seem to happen
> as described above.

The hashes are generated at parse time. The key question is how does
bitbake know when to reparse this recipe?

You'd need to make the recipe always reparse so it can rerun that
function.

I think BB_DONT_CACHE = "1" may do that.

Cheers,

Richard


