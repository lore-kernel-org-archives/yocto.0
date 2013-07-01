Return-Path: <ross.burton@intel.com>
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E95E5E0153F
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 02:17:12 -0700 (PDT)
Received: by mail-wi0-f171.google.com with SMTP id hj3so2817540wib.4
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 02:17:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:content-type:x-mailer:mime-version:content-transfer-encoding
	:x-gm-message-state;
	bh=zcW1Vbot7ZRmQjqr+BBszAZkEU0h3Yw3zU9KiAs5xd8=;
	b=EorFWWRkz/gOaBsfQ5xYT8ttpsFthNe8JPAskLmFDNum110J56bvoyWMaRr9sAR7tD
	EVy5d3YpcqAiIPOI4ctoxkwDv/tm0unpmGPlr/3eQz5wBCQxsDfBKPU7e3zmimeljzde
	V7lXfWLwwAec9ctfK5XTOc/KSjVea4fpMM++kojWVFesOg6ag8EcoOq/16pAw4iiOxdS
	Ybcbnf1g9/bMVbTugNygDy6wfNyd+P/EQ5B+Lp6ACtBkVrvJAF5LQwd05wVsAK3o/X68
	zZ1jgcCUwYBhBNz/cPz6qGpaIoDLRMMop+KijNT0tgcrGLb3ap0GiUCZfJMGc2otYt2U
	DEaw==
X-Received: by 10.180.38.45 with SMTP id d13mr11323466wik.62.1372670231295;
	Mon, 01 Jul 2013 02:17:11 -0700 (PDT)
Received: from [192.168.1.9] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPSA id b20sm14958341wiw.4.2013.07.01.02.17.09
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 01 Jul 2013 02:17:10 -0700 (PDT)
Message-ID: <1372670218.7808.4.camel@flashheart.burtonini.com>
From: Ross Burton <ross.burton@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 01 Jul 2013 10:16:58 +0100
In-Reply-To: <51CE03D9.6070202@mlbassoc.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<51CE03D9.6070202@mlbassoc.com>
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlnZNu4rPo3kxfGDO3Mfz4T2Xv5f4tGWJIkY8/gjAlKH6RA69Hv1WLAZxSTjNxaFu7riLUL
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Mon, 01 Jul 2013 09:17:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-06-28 at 15:44 -0600, Gary Thomas wrote:
> On 2013-06-27 04:06, Ross Burton wrote:
> > The meta-toolchain* recipes are deprecated, so when building meta-toolchain-gmae
> > also build the SDK for core-image-sato.
> >
> > Signed-off-by: Ross Burton <ross.burton@intel.com>
> 
> If/when the meta-toolchain recipes go away, how do I create a stand-alone toolchain
> derived from Poky/Yocto (which I use all the time!)?

The idiom is to pick an image to base the SDK on, and use the
"populate_sdk" task:

$ bitbake core-image-sato -c populate_sdk

If you want just the compiler and no userspace, then I'm not sure what
the best solution going forwards is.

Ross


