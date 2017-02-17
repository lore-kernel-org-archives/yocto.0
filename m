Return-Path: <dominig.arfoll@fridu.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A87CFE00935; Fri, 17 Feb 2017 01:58:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f180.google.com (mail-wr0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40847E00724
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 01:58:54 -0800 (PST)
Received: by mail-wr0-f180.google.com with SMTP id z61so26820045wrc.1
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 01:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fridu.net; s=google;
	h=subject:references:to:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=6YeMp3q9+idqy3dkElleq8gNZF0RooV0v6yQ8F4jygc=;
	b=c/DNYmIPS4o2LjG7GAu5DsbpkqT5EE4WWRIzUqem/EHgZXbKs4OKyGWJgjBwtlt0NP
	n4ei8rY1uRZWhd+2FnnbGBCZ5ZVY5scMoU60DPrS5spVXPA6Veh9gFdJkbGF/laimD8W
	OfCg6xeeN83IC4WpmoPCJEBVf0q/5t6er1jgI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:references:to:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=6YeMp3q9+idqy3dkElleq8gNZF0RooV0v6yQ8F4jygc=;
	b=Zow+v44d+wE75n6V6bz77hR35sWyNLZk1fFCc5N60A7cH6s5SpAu0F53o6Hdh4Ly25
	xzmtYgpSinvZigufHOAWcb7pRZeyxTySXt/Ae5sRAYOAnNcFfW8F2tzkyuyEM1+INuXu
	Jz1Hdp43+ZoE+aBECAQjNpj9NFcQYKp/+srBppzqIebbE1Am0T9yXJXuzZcR1SiwEekI
	1QggON5+b3kYscjDoQlmzlWntgF+fLyhgp+AG1nRYxPeylkiX0IgFevvas3cHHEwppzF
	CTBmAHDsrU3exFU0W+X7lUA+3HYGGS27wKHnCd2AHZNoRHYXYEkSS+/axpsdewPMgL5I
	F3rA==
X-Gm-Message-State: AMke39kPBZyzwioZPRf8xyx1EZGr6Sj947huB1OA6K5yZqbC7N9KRrsVLNKCXi5ilLC2pw==
X-Received: by 10.223.176.142 with SMTP id i14mr6544115wra.4.1487325533412;
	Fri, 17 Feb 2017 01:58:53 -0800 (PST)
Received: from [10.10.61.21] (ARennes-650-1-131-167.w86-214.abo.wanadoo.fr.
	[86.214.82.167]) by smtp.gmail.com with ESMTPSA id
	h23sm3388784wrc.48.2017.02.17.01.58.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 17 Feb 2017 01:58:51 -0800 (PST)
References: <c5a4c802-163e-6e4b-e7c2-fc2f598c11ec@fridu.net>
	<1487170678.13854.411.camel@intel.com>
To: yocto@yoctoproject.org
From: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Message-ID: <031f1c32-3eae-853b-538d-5f5c65a96fcb@fridu.net>
Date: Fri, 17 Feb 2017 10:58:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1487170678.13854.411.camel@intel.com>
Subject: Re: Changing UID GID (thaks)
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
X-List-Received-Date: Fri, 17 Feb 2017 09:58:58 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit



Le 15/02/2017 à 15:57, Patrick Ohly a écrit :
>
> Is that for partial updates with OSTree or something else?
Yes we use OSTree in AGL but the issue is very similar to the one faced
by Ostro.
Thanks to Joshua and Patrick for the pointers.

-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre


