Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2B8AE00C49; Wed, 10 Apr 2019 02:41:25 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.47 listed in list.dnswl.org]
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC77AE00C14
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 02:41:24 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id y7so2069127wrn.11
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2019 02:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=BS1dxAymN4xVQI5RL/sOe8PTS5ZD9ACKNEhWAi0SeK8=;
	b=cxxHhnCeocdyD//TLUlap45R6aGq9/+cWxodU75b6/D8kQHC8oyrVGRPhiEEZFWM4N
	IomO4owc+zOivShsK+6hxEIjsRg/DAcjIIbprmV85bwlRdZasUuzKjLX3ZPjaFiKNWcP
	4089P/Fk7D1caiRSRbUiJAH60GoPBId+DA560=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=BS1dxAymN4xVQI5RL/sOe8PTS5ZD9ACKNEhWAi0SeK8=;
	b=cXKMvZvcCvfCzAZhnFM1lReM5lpld9rAOucVk52JzlIs3UqjgBCpz2Rd6KwFiKOUVR
	D0pb7c8WCjBChdapw8X96NBtPuNG7ZIbUbT8nTXrWBd6DSDvMNWii+XcIntI1QQQVdBU
	TaKZdLlJ9vkOA9wnfxXMrgMEjYisOZHVJTaIMCxz4HmritDePhMqmk3eVNwIKAHaq5q5
	d2KBAuZTz1m4ef10oL1CjBI66jabi78mrsSuS/UMomumOqkWwVB1QL4T3pUdKB8o6XC0
	gQAJKXnptB0N6IQ+zsKuL0Gi5UYGBjXSB96Cxwtk/1/MMT4wVlHlRA8xXkCxcXcw9Yr9
	mtqQ==
X-Gm-Message-State: APjAAAXGtvjAdUv+SmxeDXUGHl8+0REvE/pl+islaHZHSNH+2zeBF58s
	gKJP/GGrCbQtgi0AnTp5BC/CIg==
X-Google-Smtp-Source: APXvYqznGkSR+WAWRzOROV6ERrdL4O2joWiQu6qLt7edT05q4Oh0uSf4g6vo4ysQYqEq035ZBLesYw==
X-Received: by 2002:a5d:52cc:: with SMTP id r12mr6888111wrv.163.1554889283812; 
	Wed, 10 Apr 2019 02:41:23 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c10sm40684639wrt.65.2019.04.10.02.41.22
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Wed, 10 Apr 2019 02:41:22 -0700 (PDT)
Message-ID: <680dff761ebd04f8f240d12339b31569c70c48da.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: akuster808 <akuster808@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>, openembedded-architecture
	<openembedded-architecture@lists.openembedded.org>
Date: Wed, 10 Apr 2019 10:41:21 +0100
In-Reply-To: <f8b3661d-a6cc-494e-de49-e462ba935535@gmail.com>
References: <90d55754e9381759c8b70ebca0b880e6013f17f0.camel@linuxfoundation.org>
	<f8b3661d-a6cc-494e-de49-e462ba935535@gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Subject: Re: [OE-core] Eclipse support dropped with immediate effect
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
X-List-Received-Date: Wed, 10 Apr 2019 09:41:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-04-10 at 05:56 +0530, akuster808 wrote:
> 
> On 4/9/19 8:52 PM, Richard Purdie wrote:
> > I'm sorry to have to say this but the project is terminating its
> > official eclipse plugin support with immediate effect.
> 
> Does this affect the stable branches as well?

Yes, I think we'll just be removing the target from the autobuilder
entirely.

Cheers,

Richard


