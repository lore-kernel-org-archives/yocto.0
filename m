Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFFFBE00D08; Fri, 18 Jan 2019 03:29:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.46 listed in list.dnswl.org]
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
	[209.85.128.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABD33E00CDF
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 03:29:26 -0800 (PST)
Received: by mail-wm1-f46.google.com with SMTP id n190so4197092wmd.0
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 03:29:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=6Gi5cSqYv68m/qTvpwdl3NPrgYPy6vIlxOnv89ntNHQ=;
	b=FFDQnjDaiG8Ov9nalEuS383uRdiemuLTWIdAdyELvwxDeliOHjJxPbfzDfZYM7MdO+
	POORTVLg9Qyl1SXrAOgiMCD06/NBPGXp08NjyIiiw/KGVobCNydhTj6oisyizQc97hU+
	P4qo6lQQ4q6+WpYooDFc0z+jipfohm2lccq3U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=6Gi5cSqYv68m/qTvpwdl3NPrgYPy6vIlxOnv89ntNHQ=;
	b=Ix0lCZ50xCHlcbylgdcFJHWLf5QHHrnmRkZdpUP73wczX8gnVQpN35jcLnk8FH33A7
	kVX8z08tzSVun5jhYQTwECM+I87TgBeyKlVN/9NsVNl2AdGWn4nQxRydjSJ1KTOaDNvU
	MOz2x2uG0QTW7P41rIIWKHbd/dqGdPdoB4jW+ZQWh15eVgFJSTf5SJDOvm+GXrAQGS1U
	T+zan1brd0Q3QJu9WMe1zJSSaN0v5zYYjLGHUrXn+Ysn0kyZk6mTYSrMwQGxDYvuOIYB
	inWa9JFZ36BrYwLcbpSucCmdP6Gi7vshkjRkrwLgPJczLmzmoIoWfF14ViVwS6UikBCr
	PY8Q==
X-Gm-Message-State: AJcUukdCRVys6CM4kxcjJivDjI+pkerAcbDfwDEJkFMNBusqYP9K+G8j
	KMVTjDk3OEIPC4ZNlmdsiq3iNRov0/4=
X-Google-Smtp-Source: ALg8bN6xmS7n0KKHnpKwUEG0f59Qjz1I3TV/EJpVty/p6IiTyyOpcEBRKw+K50tOF0PR0+ZA70vrxg==
X-Received: by 2002:a1c:7c3:: with SMTP id 186mr15947797wmh.41.1547810965712; 
	Fri, 18 Jan 2019 03:29:25 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o4sm78303065wrq.66.2019.01.18.03.29.24
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 18 Jan 2019 03:29:25 -0800 (PST)
Message-ID: <7851f1d740f3a130e4ae5a1e9eb7f9e0273ee1f4.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ulf Samuelsson <yocto@emagii.com>, "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Jan 2019 11:29:23 +0000
In-Reply-To: <C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
	<CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
	<C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
User-Agent: Evolution 3.30.4-1 
Mime-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bb.build.addtask: add simple check for circular dependency
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
X-List-Received-Date: Fri, 18 Jan 2019 11:29:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-01-18 at 05:30 +0100, Ulf Samuelsson wrote:
> So if KNOWN_TASKS is defined in a configuration file in oe-core, it
> would be OK?
> It needs to be extended to check for KNOWN_TASKS == None of course.

No, this is too fragile. We then have to maintain two different lists
of tasks. If we did that we may as well just remove the generic tasks
mechanism and hardcode the tasks list in the metadata.

As I mentioned, we need to come up with something which detects the
task loops generically.

Cheers,

Richard




