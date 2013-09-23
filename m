Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6234E015C6
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 01:51:30 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id jy13so2014809veb.5
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 01:51:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8xabDU2ssAtLR6OMl2Jv2zctu3is2bwaTY7y+2QV3nY=;
	b=VT0hfPRJMR1cAoNPH2nse3H4tlFxBCTShbvYHhPFMHmPSEWD5+QDTdYjEjopi2RS6m
	VVWCYfVelSql6q4lrVx1CNp4hKvyaF+0uvN4YfzlHAhT9J7N9ELgk0QI16BgzeFJdM+v
	Mb3XZF5/s/w6ZMt32Uz1Qe2JRcNhd3t+rRzwUnJfxMWfBlBEgPBgXVq8UchoZRa8Yif2
	aArBMZjwsYIUAfyjlx5p3RCmsbT7UCtE5J8/Q49ymu0S+QgZqXJ+/SA9OAIgsIheH6SG
	8sBnC50ZnjVlNYHk1MtpQ0CIE8zUazsSMB3t0JSaVpIGxcTHkV/QeWlV3kYsO5TXN6k8
	Y0oQ==
X-Gm-Message-State: ALoCoQlWchnYa0ffnpUZeVdNZH7YPdsuwtofaWN9/TYrRiGJk7Q2rk02jC5wwJDifYViVhIvNuzs
X-Received: by 10.220.46.72 with SMTP id i8mr21491490vcf.10.1379926289409;
	Mon, 23 Sep 2013 01:51:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 23 Sep 2013 01:51:09 -0700 (PDT)
In-Reply-To: <20130923042418.GA17195@longhaul.twobit.us>
References: <20130923042418.GA17195@longhaul.twobit.us>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Sep 2013 09:51:09 +0100
Message-ID: <CAJTo0LaKEQW3NGJLguns72Y2Vic48edxN9MjOoTe_L4izJsE4w@mail.gmail.com>
To: Philip Tricca <flihp@twobit.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] Add sysvinit to DISTRO_FEATURES in oe-selinux distro.
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
X-List-Received-Date: Mon, 23 Sep 2013 08:51:33 -0000
Content-Type: text/plain; charset=UTF-8

On 23 September 2013 05:24, Philip Tricca <flihp@twobit.us> wrote:
> -DISTRO_FEATURES_append = "pam selinux"
> +DISTRO_FEATURES_append = "pam selinux sysvinit"

sysvinit is a backfilled distro feature so you shouldn't need this.  I
can see two cases where you may need it: either you're setting
DISTRO_FEATURES_BACKFILL_CONSIDERED to sysvinit (in which case don't),
or you're cherry-picking pieces from different releases (in which case
this probably isn't the fix you're after).

Ross

