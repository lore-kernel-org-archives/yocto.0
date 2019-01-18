Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8D6BE00D08; Fri, 18 Jan 2019 06:40:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF7B3E00CDF
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 06:40:41 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id m22so4748957wml.3
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 06:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=68TRUMHo/R2RoXNQwIJYSnGorwcNyAYqM1Quq3aC1SU=;
	b=Q75U5PN9VCNRAYj8dVYko+uqYNXsR7SxUHmQkF5WJTmud3d8RVAIV0igjjR4z+ShRL
	Z49FPPu1CiN8oyl8Yg9nrmW0/Dk7QScFj3/eGAQXClPS9kMgLOM92sii+PbWjN8NOfsa
	lBk6IML6DFPUwPzd6i/zvBsUJ4Y5Pc4DRW6S0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=68TRUMHo/R2RoXNQwIJYSnGorwcNyAYqM1Quq3aC1SU=;
	b=BzyzaZcrNusmhG8JfOrgMbEPVTfufPquq9kPPF2oXW9CxZKSgWJH/kjgbgXPwZH4oF
	KLFK2QEWQC2gQbcAHsoIklFrKQpKjAPjfmKjiIkNjPzBmqNKz7dq7sGydKbeW187l3CE
	/BBUk4s3PdcdgfEDYdWvMyggA01CScRC3E6WuHX/ZXjsDQQk1apQRaYNSJCTryJvCNdK
	/3Zr646Qt6N6VQyDuqeCsTwPGKORyqihu7ii/O2ewPdNH7h/yO9iAOPSIz+Y2y9hUe3p
	9My74osVaohEMtuTyWsGocRTrzrnLXW7NlCj/qGp/3F4G3IKjhVUwKA4yftfhLa7HUF7
	l+Eg==
X-Gm-Message-State: AJcUukdIZVUqoxtTLod4vSfuTm+3g4TQv4QOOZ9O4hQjCRSmiamyRtyg
	VxdeWuxagj1g8GHPoVyzvK81dw==
X-Google-Smtp-Source: ALg8bN59Q2beSgtj+JI0Ww02wdCEH8UylVvfUB3URcw83Dd4xjqGPnnDzcJz3b/K+8sAxGTJORHc2Q==
X-Received: by 2002:a1c:2314:: with SMTP id j20mr15693763wmj.142.1547822440668;
	Fri, 18 Jan 2019 06:40:40 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	t5sm27837079wmg.43.2019.01.18.06.40.39
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 18 Jan 2019 06:40:39 -0800 (PST)
Message-ID: <6a6bfb8cc510a344b4ef40389ba33fbfe525afbd.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Ulf Samuelsson <yocto@emagii.com>
Date: Fri, 18 Jan 2019 14:40:37 +0000
In-Reply-To: <A6212BF5-A78A-4659-B876-BDC464B41B38@emagii.com>
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
	<CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
	<C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
	<7851f1d740f3a130e4ae5a1e9eb7f9e0273ee1f4.camel@linuxfoundation.org>
	<A6212BF5-A78A-4659-B876-BDC464B41B38@emagii.com>
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
X-List-Received-Date: Fri, 18 Jan 2019 14:40:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2019-01-18 at 15:16 +0100, Ulf Samuelsson wrote:
> > 18 jan. 2019 kl. 12:29 skrev Richard Purdie <
> > richard.purdie@linuxfoundation.org>:
> > 
> > > On Fri, 2019-01-18 at 05:30 +0100, Ulf Samuelsson wrote:
> > > So if KNOWN_TASKS is defined in a configuration file in oe-core,
> > > it
> > > would be OK?
> > > It needs to be extended to check for KNOWN_TASKS == None of
> > > course.
> > 
> > No, this is too fragile. We then have to maintain two different
> > lists
> > of tasks. If we did that we may as well just remove the generic
> > tasks
> > mechanism and hardcode the tasks list in the metadata.
> > 
> Why do we need two lists?

If we change one of these "generic" tasks, we then need to remember to
also update KNOWN_TASKS. The same information is being encoded in two
places.

Maintaining the same information in two different places means one of
those places inevitably ends up out of date.

> We need to know in what order the generic tasks are executed, that is
> all.
> 
> Then we need to see if an addtask is violating that order.
> If the ”after” or ”before” is not a generic task, the check cannot
> catch that.
> 
> If the user decides to not use the generic tasks, and create new ones
> with the same name, as the generic tasks, but rearranges the order,
> there will be a problem, but I do not see any other problems.
> 
> Please enlighten me!

This has the problem that the code will find some subset of the bugs
but not all of them. We'll then get users reporting that the tests
failed and asking for the checks to be improved.

So no, we are not doing this, sorry.

Cheers,

Richard



