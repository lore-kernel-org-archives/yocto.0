Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FAC6E00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 12:24:22 -0800 (PST)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 11 Dec 2012 12:24:21 -0800
Received: by mail-ia0-f200.google.com with SMTP id f6so10593272iag.11
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 12:24:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=WtJZm5sMvjR8PSOBwdau0VH//Ep0zEuqbyt2c69EP0Q=;
	b=DWZfDapfhzJWhgehaU62TY3n+QVFBtkhveuVglCRgP9Hia0Ik0yhCQP4/ZOHNozgMr
	36binS223Zkvrwf3LFGFPBRysBrWamr8R7a0TmQQhwMIg8Vph0wHYBC7N0kX6gi22uuZ
	WRvhi/7vhK0bKEbg0wAJwZwFW5ERWyDB72fQAbDlnr0whGB7NWtbSOQqFFtHDYA8uyON
	2G/IQKq9eQ3ArkfczprDNO0Mvh/jgxHNj95TIw/vRKZlIRTb9KtDK4cfVEXqiRpEzXC0
	854TtE+w6oM+If7bYZZswrZv90wTQCauj2vB7kMCNaUujg0zLwIE8hpjfMZnWfFJCuKO
	1F/w==
Received: by 10.60.169.171 with SMTP id af11mr9940231oec.92.1355257461139;
	Tue, 11 Dec 2012 12:24:21 -0800 (PST)
Received: by 10.60.169.171 with SMTP id af11mr9940223oec.92.1355257460936;
	Tue, 11 Dec 2012 12:24:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Tue, 11 Dec 2012 12:24:00 -0800 (PST)
In-Reply-To: <2119845.UNQndSV9LY@helios>
References: <CALq3SOH+1wwBgskaNO0dpoMQis1FoWVuFzWmJ=0r4vpRAjy2Sg@mail.gmail.com>
	<2119845.UNQndSV9LY@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 11 Dec 2012 20:24:00 +0000
Message-ID: <CAJTo0LbcRGxyVaf0mR66TxTY-9C7F0h3prAjsds5yJVCA3vGFA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQkx6ekoUxiXd16JJBXPAX7brRq5CsT5WuCEZ+dvHvyH7rgnhzyoInqXU+21u2jmA5OkEZ6IjQPrJp7VUD9jVZtDZLZD603alXhrqLcdkBJaoTOeeW4qecqNuM0KcCjXrMX5hgKee1CjCJyiznG1oyCdSniZXg==
Cc: yocto@yoctoproject.org
Subject: Re: Boot failure when adding the meta-oe layer
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
X-List-Received-Date: Tue, 11 Dec 2012 20:24:22 -0000
Content-Type: text/plain; charset=UTF-8

On 11 December 2012 18:11, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> This is a known issue in meta-oe unfortunately; the udev version there
> apparently does not work outside of use with systemd. I believe the plan is to
> drop udev from meta-oe fairly soon.

Oh, so that's why my recent builds are breaking...

Can I propose to the TSC that meta-oe should "do no evil" so to speak
- i.e. adding it alongside oe-core should have zero effect initially.
Along with this udev breakage (why does meta-oe have it's own udev?) I
notice that it introduces a different drop-in implementation
(resulting in build-time warnings).

Ross

