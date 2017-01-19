Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C9C5E009DA; Wed, 18 Jan 2017 19:54:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7851EE009C2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 19:54:33 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id e137so3801115itc.0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 19:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=FBEUU87KvUmasYXLwuA0+0ujDrPovyFPWkzO0G6LgjI=;
	b=l8IbLb/VUogmPVR+p706fRp6b1z3hRMwAL3Qz5gY4swbxJrrV5+iW1RKii/J+yK0rd
	glS5C1nEZmi/feDi7YZ+fEwMxcKZOQYG9rPFA2ReV80J6B0taCCzusEdc5MHa35eN3Jw
	zskYqQbsPrBqvmxIlvD3+Zf9lVvBg1w5QxS+JgsFsXvqeQEvWs1+CRhspPGVslB4iKYZ
	TRjvSeSMprp4lQFzuiIkSzK5EcvXCsGZTcr628QH3zsTR5YkiFpqeB5hek0CvNKWH66E
	s/YfF4zknCPHNjpzOXj5Mcf6G263yzCLlDaRihDVCOX4V3vZztbor4QUx9fTOb9WrPNy
	mQEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=FBEUU87KvUmasYXLwuA0+0ujDrPovyFPWkzO0G6LgjI=;
	b=I20VldVfJCMDE2Nmm+MBAIhbfCarQki+Jjt/zKaZ5Yk33u38/7wySJl90zAWncIRiM
	N8nm9AWW4eUWLB6LdTqKROGEqByB6amrvcjiAyVDZx+6Kg8DnVhAllt5lJ4R2CppgAaV
	XDSY/0Y8nUQM66xtXCeuICvhC4J90V5V0t4ausA7vItAobXdAFjzQ6wK5laGDB8hr3jp
	OSJL2IR3eYXg519XMLr4+GCj0kIJD9rpkrAyHw54IW+sb7q1O896jhlEhDpIwmVNG8G6
	lagSwG2IvYUWjV/V0RmWguZ7mhmQ9yUK/nVort1aUIkbMbWR3QTlPUiOd/W+Cc2H1sPF
	669A==
X-Gm-Message-State: AIkVDXIIge3xncM/oxBgKljIS50uI45STdQ9wKFq8/iMIy2FvCGB7kEAl+00ITM3TInPew==
X-Received: by 10.36.225.195 with SMTP id n186mr28036829ith.35.1484798073442; 
	Wed, 18 Jan 2017 19:54:33 -0800 (PST)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id a99sm2197097ioj.7.2017.01.18.19.54.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 19:54:32 -0800 (PST)
Date: Wed, 18 Jan 2017 22:54:30 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20170119035430.GA24183@linux-uys3>
References: <2683342.SVnRAGIE1W@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <2683342.SVnRAGIE1W@peggleto-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, openembedded-architecture@lists.openembedded.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] Patchwork and incoming patch testing
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
X-List-Received-Date: Thu, 19 Jan 2017 03:54:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2017-01-18 @ 07:05:58 AM, Paul Eggleton wrote:
> This should give us a bit more visibility into 
> where patches are at in the process, although we are still working on a few 
> places where patch series status needs to be updated (e.g. when a patch goes 
> into testing).

Is the testing process for OE patches formalized?

I'm not referring to the Yocto Project's release testing.

