Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2687E00D51; Tue, 25 Jun 2019 23:56:07 -0700 (PDT)
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
	*      [209.85.221.66 listed in list.dnswl.org]
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
	[209.85.221.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72386E00CBA
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 23:56:07 -0700 (PDT)
Received: by mail-wr1-f66.google.com with SMTP id x4so1316742wrt.6
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 23:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=tmawcEsZ/vZdBzhlSeaPB5wDFKalRlimrvvFeWJeQ2M=;
	b=Mwv7HKj6i7OeJYERXzuooyBiJw4k0fHUse9Sw05iVfE5GyO6/zk/qTmZpSKQdWFN9B
	6vgFat5vhp6Ee3fs2ZIeWyvo6foK5MUvTCurLOTNsJfY+gVBcQE+lhSNJIAassCX03tA
	RwKx9wdivsfa1rQa31+oXQKufpPbV8UzhNjO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=tmawcEsZ/vZdBzhlSeaPB5wDFKalRlimrvvFeWJeQ2M=;
	b=Cm/BybeERWhbocK8vOf4AeKouRU0qnsmQtN8PVs3VVNBKZNg7n17/iYRj+ZJrAS76h
	6OEGZbWuTuAW2uccxv2y/a3vUyWGHt90Pn9GQoWdVajeX4Oiba2jtfoeU0SsniQtrMzN
	x1j+DfpXvpbNPmj+U2Q4bTYQQrE62sx72ridr+TJaW4OC98yQdOOsfAtNCh9KGrecxau
	lb8Tl7oETd0OBwR8Z/3dUohxJ4Js+ey6VqKM4snoQaRJ/0NuK0pm/UU+67nV6C3aWsdT
	vNkVCn/oLWliH0/5WN8NU5haZQnYIdCUs8EOEz6iHm/sfvZDjMAQPw1VpiK5xiXAFdfI
	ATyQ==
X-Gm-Message-State: APjAAAWSdO0eCUyFw+Lwa0IebWY3vKZtMlRVtHjnY1ar6YF/GX5ccnht
	LOuDgNYeofm/uJP8rDi3bHqiqg==
X-Google-Smtp-Source: APXvYqz5cdbaxOgda5mw0qSBc6BbONddZkIkeWmSEbCwBYeJQSgBH1q9Ng4DkZCnx13QIGlPu/HTDg==
X-Received: by 2002:a5d:5112:: with SMTP id s18mr2000539wrt.111.1561532166576; 
	Tue, 25 Jun 2019 23:56:06 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	d201sm880071wmd.19.2019.06.25.23.56.04
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 25 Jun 2019 23:56:05 -0700 (PDT)
Message-ID: <7fb8cc8572391fce34212e6b9b3eef112ebf107c.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Anibal Limon <anibal.limon@linaro.org>, Randy MacLeod
	<randy.macleod@windriver.com>
Date: Wed, 26 Jun 2019 07:56:03 +0100
In-Reply-To: <CA+_AqisMBmPaNy7xyt1+9c73RnMcChugCcxz6Bb4cBOCHG=-kQ@mail.gmail.com>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-5-Randy.MacLeod@windriver.com>
	<98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
	<CA+_AqisMBmPaNy7xyt1+9c73RnMcChugCcxz6Bb4cBOCHG=-kQ@mail.gmail.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner][PATCH v2 4/4] utils: ensure child can be session leader
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
X-List-Received-Date: Wed, 26 Jun 2019 06:56:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-06-25 at 20:51 -0500, Anibal Limon wrote:
> I plan to take the Richard patches, He added in the recipe to have
> real testing and looks like
> there aren't problems related to, Richard can you confirm it?,

We've been running the patches for a while in the recipe (since we last
discussed them) and we haven't seen any problems with them.

Thanks for looking at this, its a good one to get sorted out.

Cheers,

Richard


