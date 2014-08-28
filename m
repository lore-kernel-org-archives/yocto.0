Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38398E007FE; Thu, 28 Aug 2014 00:53:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00743E0049D
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:53:47 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id e131so297364oig.2
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=nZtAJlTyEY6V5VyN8BTLEFVICY75HTaDnw9LnL9Tp+E=;
	b=u/yKDns6N+90fhO8y7TReUR3F6Hj9bExNLODXICgQgClBAtOgdgxZUakqBt9eahf77
	MjtkdNTDuQExEXeahQcMZo1Vm21LK8AMWcLqMeqSI4RsTjBvpl121L+ctmxPh4vULRTa
	oMuN2vCX3nmLmppq37h4UNyH3+GbWCreetd0omRDORrmyJdc6bamHzJilToYJHPOfmj0
	6YHRAXIib/KTji0lxqwu2bZvAUm/wtmccqW3UQOzSHQAsep3pHHdCSQX5NmYC/VWoZRY
	lqe6aoGzy3Znwk1lQ9Q2C5J8I9kS6SZG9wKVMKF+UvczgnFgM4AGc2uNOHajoFErZwWh
	xWsQ==
X-Received: by 10.182.236.65 with SMTP id us1mr2117539obc.38.1409212426430;
	Thu, 28 Aug 2014 00:53:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.95.163 with HTTP; Thu, 28 Aug 2014 00:53:26 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1408280336190.2292@localhost>
References: <alpine.LFD.2.11.1408280336190.2292@localhost>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Thu, 28 Aug 2014 09:53:26 +0200
Message-ID: <CAGiJk9dYKHaq3YTA6aAHBWkVH+gFqm+M=Rpi=80YhVZ0YNeWrA@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a list of yocto-supported dev kits somewhere?
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
X-List-Received-Date: Thu, 28 Aug 2014 07:53:58 -0000
Content-Type: text/plain; charset=UTF-8

2014-08-28 9:38 GMT+02:00 Robert P. J. Day <rpjday@crashcourse.ca>:
>
>   perhaps i just haven't noticed, but is there somewhere a list of dev
> kits that have a yocto project build for them? it would be great to
> have a reference list along the lines of, "boards for which there is a
> working YB build", with link(s) to relevant layer and instructions,
> etc.
>
> rday
>

Hi,

for the sake of completeness the layerindex [1] has a list of machines
that are eventually supported.
Although it lacks information about issues / supported features of
these machines.


[1] http://layers.openembedded.org/layerindex/branch/master/machines/?q=


-- 
Regards
Samuel

