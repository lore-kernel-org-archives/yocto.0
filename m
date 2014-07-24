Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C59CE0078E; Thu, 24 Jul 2014 06:36:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C575BE006B7
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 06:36:29 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id a108so3184211qge.2
	for <yocto@yoctoproject.org>; Thu, 24 Jul 2014 06:36:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ROOLMZCuPPweEjMY0AW3S9bIR1fjyVSA7Yl6t/b7Ooc=;
	b=cQb8p+aMIJovjBijL4Pqe9Lwk0Bb5HRf29vp2Sok8SEvXIkgFO4eegSMsT4DaylzZ0
	b/BsoPFuHCpiTYP5NuN+KvdTSZkx/Xm9Yx24Meramcq0y1J80dTsstyuuKXc+JTnkt3t
	hNjcTOXCaD6GQ8Z1u+Jz8rPcMCWYfV7Mh8dFnuD9gKcNLnYXyaPTF4X22rDn2LoAgKlR
	BfcSq63L7fEVvZeCexAa285sm0VAT4CDCk87vy8hWpgRvd30liEZ1X+rszSGybPBGJCs
	lm+KyBpT9P76AmHiImz1XKVXnCic3v6B4kdI3Bj/Frm4bu5dAdVdNdlQESq0lU5BsqZq
	YnWQ==
X-Gm-Message-State: ALoCoQl6pYexpSr4JmB/wtpXZg6/lBnnOx5gKF2xDv+OjvqdNcUl7G0S6OXknwG7m22GsUT82I1V
X-Received: by 10.224.167.136 with SMTP id q8mr14879465qay.35.1406208988148;
	Thu, 24 Jul 2014 06:36:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Thu, 24 Jul 2014 06:36:07 -0700 (PDT)
In-Reply-To: <loom.20140724T152609-283@post.gmane.org>
References: <loom.20140724T152609-283@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 24 Jul 2014 14:36:08 +0100
Message-ID: <CAJTo0LYSeA7veq+3ROTU6zUh02Cn3M_7io=d6PxzTSvXj7KowA@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake error for rpm-native -- do compile failed
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
X-List-Received-Date: Thu, 24 Jul 2014 13:36:35 -0000
Content-Type: text/plain; charset=UTF-8

On 24 July 2014 14:29, Anoop <babu.anoop@gmail.com> wrote:
> + export CCFLAGS+= -fPIC
> /home/sfm/yocto_temp/build/tmp/work/i686-linux/rpm-native/git-
> r0/temp/run.do_compile.26826: 120: export: CCFLAGS+: bad variable name

+= is a bash extension and those scripts are not running under bash.

This has been fixed in meta-tizen.  *Please* fetch the latest revisions.

Also, this isn't the best list for problems with meta-tizen as
meta-tizen isn't part of the Yocto project - you'll be better off
contacting the maintainers directly or filing bugs in their issue
tracker.

Ross

