Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82ABBE00B8A; Wed, 25 Apr 2018 05:26:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F0CE00B57
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:26:51 -0700 (PDT)
Received: by mail-io0-f169.google.com with SMTP id r22-v6so17498485ioc.12
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=Ii9+Yh4dq002yEcVeceHvhcPMwV1mNjEM3h68vJZ3jw=;
	b=kHbS8Y0MM+ZYTro3xmoGQrJ7QyCef8z8unQ9CYrH7y5+PxIHSDFR9Wpj0kGIrgrVzK
	X3NAZ8J7t/vMiUf66GDi2ddmFDo2vT6YRZ42/u5q2y5/OrR9dUX42q7M4LRTW5s1tJEk
	CZXdGMAPpPzROaTVQ+1E7PzmS8lLYy6C7tnrwzYwMdD0onPwKNpA5sLcamYOEOfXOjUl
	SEpFdRwGfGV/ofafcATIKd4wr0t//n0nu+Af4ZUEjoNFI1NjihxBw8kmT7AVQmiK7Wol
	57zOmbRRtHiFafKgJUcKBd6pihlAfqjnc0cYsr3xKmBRDn4kflnZfWit/NYG/F4j0T2C
	2VlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=Ii9+Yh4dq002yEcVeceHvhcPMwV1mNjEM3h68vJZ3jw=;
	b=rXQ5g1R/AJDBQyikxiaR+knjEVdNZ0CRkB9vebKQ0iTSUoOG0COlWMyVXn4TgyT5xm
	rxDgmlxX+RNX5F8OzgH+/D8t5/WaqVUoJf60FxGlnRv3Sqlj0IgMaArjZtJWQOoq6AzG
	7I7cDehlJR9b7xJrGWzb22Vr0Ff0klPnecJdpjk7CK5sTIbgd0U0dll6ffUVnPhYGExc
	wSDyS+CFkjeTvM7JG5tlZa9fhuVDF1yZlim0e/8oG1WtwuFbWWdiDv2/2eqW7WgXlhiN
	tRNJwbMyQnYr4ScBdx5sM3BEXRag7ssSdWRu4I/lwbR9e61h79dR6z8IMZHgKaYWiUMv
	y9EQ==
X-Gm-Message-State: ALQs6tCAreOt6VSjv4TvynQdITYQ4LVloZALvQFhfpLL80gk8B23FJsC
	mtAF6Y9CRpq1XJI1DITJJwqskUeJ
X-Google-Smtp-Source: AB8JxZqTGMi2dRg50WDC2y279XyrMumn2NcwCEorbGRLWlLA7TYSJOsNedROwTCoDu3h7gY4cLbVJw==
X-Received: by 2002:a6b:afdb:: with SMTP id
	p88-v6mr29352392ioo.257.1524659211465; 
	Wed, 25 Apr 2018 05:26:51 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	y90-v6sm8947454ioe.33.2018.04.25.05.26.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 25 Apr 2018 05:26:49 -0700 (PDT)
Date: Wed, 25 Apr 2018 08:26:47 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: =?utf-8?B?S8Opdmlu?= Carli <k.carli@overkiz.com>
Message-ID: <20180425122647.GA15779@linux-uys3>
References: <4577325c-6b93-469e-81b3-148c83c55b76@overkiz.com>
MIME-Version: 1.0
In-Reply-To: <4577325c-6b93-469e-81b3-148c83c55b76@overkiz.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: typo in tzdata_2018c.bb
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
X-List-Received-Date: Wed, 25 Apr 2018 12:26:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Kévin,

On Wed 2018-04-25 @ 10:46:28 AM, Kévin Carli wrote:
> Hi,
> 
> I would like to signal a typo in the
> meta/recipes-extended/tzdata/tzdata/tzdata_2018c.bb
> (https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/
> tzdata/tzdata_2018c.bb?h=morty) file.
>
> At this line: "${datadir}/zoneinfo/Asia/Bankok          \"
> 
> I think that Bankok should be written Bangkok instead.

Yes, that appears to be true. Also this error persists in master as well. The
best thing to do would be to prepare and submit a patch for this fix against
master. Guidelines for submitting a patch are here:

	https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

Since this recipe is in openembedded-core, this patch will need to be sent to:

	openembedded-core@lists.openembedded.org

At this point, it looks like morty is still under maintenance:

	https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Ideally this patch would be applied to all branches from morty onward.

Best regards,
	Trevor

