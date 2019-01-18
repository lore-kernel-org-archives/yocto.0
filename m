Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D51E4E00CDF; Fri, 18 Jan 2019 07:35:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C661AE00C8B
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:35:00 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id c9so6310341itj.1
	for <yocto@yoctoproject.org>; Fri, 18 Jan 2019 07:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=aKwgetmLZlMIpu4+Hr6pRGdHJnuOlUM+cCYN2Mygi9w=;
	b=Cnx2kdiLOlJwjYZRp9DbDVgn6ywcvZgr5zzo+S+aaxW2YnTSy7tly6V9jJCZnMDMg2
	o0LCtis3uRX2rwi4DXJoiu1Tt/BXiPZMD6k8jl8A29dbk+87JUprtWjil79UbS1ntZfQ
	0dd06qt/PnQgR4KtvmszOF3qH+JA7JePCKRdouER+EKucwy8n5S+Cc/XyUtAen/0VPJX
	VrAU00eO77Br5+RtR9z84V5CSziBJt49yu7IR36g8TPe6Zwvj/3nqR4EfGR+qgD+zSQQ
	SiYluGMSfY7ImFYBoT/dVH3hX2sZd75arYmlgG9J7A15cqp1eLigtjwdGOqOXvNNob1/
	Zq+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=aKwgetmLZlMIpu4+Hr6pRGdHJnuOlUM+cCYN2Mygi9w=;
	b=brV//nd0vQYwzwCcm2j1M27fRIM7DRZS+SRR5gsmEozn5xJJ7AbjxY7vMlM9wkhXRh
	6/kju+pVoZtr85RHZo9aOaXiMRp7JLKLmpEL6LU+wYhp0gtULRNZJfOfKjdybhHWP8il
	lKZkTHEl6GLudHxfeFZZFo+EwO878GiUOPsX+E7q+1MTdxOOIApIlf78Q66WpLAo57qa
	lR4F17S+SEj8qEwyZ3U1B3mmX8f9/fK/G3PpoL3OTGbEZraV7sm4wWw7/C6qq15y0Wc3
	m0chq/uZhm9lIBIZau6nbF5y/wGmoSbeI674Sof89Mh9D00TxD6wtABtEI8cySxERf2k
	AFDw==
X-Gm-Message-State: AJcUukeK7Og8mNKqbnZseJ5GhCpXtn1+/fbF8Otr3vDSUC6tJxvenN8P
	yRiVYnNRQDbH5gFPeWc7eEmcEF5F8dzRlN6cVB+WeawE
X-Google-Smtp-Source: ALg8bN5Bu3Pgt4OU2x5VEYVRV/6Cj/wK1QJA/rxmhqwRfqqS68GPD6y4E3ROqHWvFtdOiq/ONlHv+cSlCb1Wp4TUquI=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr11265501jal.31.1547825700272; 
	Fri, 18 Jan 2019 07:35:00 -0800 (PST)
MIME-Version: 1.0
References: <d278856c-cba2-e63f-d50a-8f4b40365c88@emagii.com>
	<a778dc9409e589ee19f122db4069857513e3fe52.camel@linuxfoundation.org>
	<1DB4D7BE-E62D-4F13-8F8A-A5103ED5F767@emagii.com>
	<CAJTo0LZ6waQMNE_et9gJk+KOnHeriTw6u0xxFR8LROjMxjhUBQ@mail.gmail.com>
	<C23DECFB-A3E9-404F-BF7D-EEAD4BA23CE3@emagii.com>
	<7851f1d740f3a130e4ae5a1e9eb7f9e0273ee1f4.camel@linuxfoundation.org>
	<A6212BF5-A78A-4659-B876-BDC464B41B38@emagii.com>
	<6a6bfb8cc510a344b4ef40389ba33fbfe525afbd.camel@linuxfoundation.org>
	<54452C1F-B1CB-4916-9CFA-C8FB2191C583@emagii.com>
In-Reply-To: <54452C1F-B1CB-4916-9CFA-C8FB2191C583@emagii.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 18 Jan 2019 15:34:49 +0000
Message-ID: <CAJTo0LYQg9BOTEMyE-PyUQrayoZLcDgbijiFZpY5_h6jRnAbHQ@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
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
X-List-Received-Date: Fri, 18 Jan 2019 15:35:01 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 18 Jan 2019 at 15:08, Ulf Samuelsson <yocto@emagii.com> wrote:
> We could insert a check if the KNOWN_TASKS is valid in a verification test.
> When building core-image-minimal, the task order within core-image-minimal is analyzed, (dependencies on all other recipes is filtered away).
> Then you find out if there are tasks added, missing, and/or in the wrong order.

What about people who add new tasks?  Do they now need to go and
extend KNOWN_TASKS correctly too?

