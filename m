Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f181.google.com (mail-ve0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A65BCE002E9
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 01:00:47 -0700 (PDT)
Received: by mail-ve0-f181.google.com with SMTP id jz10so392299veb.40
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 01:00:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=yHWnKpJfvxh1tXaKxjHLrN9lnv17KRIbJXlrqptqdic=;
	b=M6PdTmw2XS3frE3FPnFIkh1+rSIiDSXJyg/vsCVtHWswhT2K6cBcFe5/HVDu7mqNmQ
	+FB+JwV4GQqlHlf0De0L121Gre2VPy6SigRQvILTh/duZLA61s0UKoinnhv0zpL/F4Vv
	tJS6naZRYnqu7WnGxJGz6iSFX1nFpj+7Ym3UM7aWS+dIi4N1t4MuGKmulhYEPXsSR5t7
	XUfeSMsjs3ZmGFo7tluEk4i2XwJzhLtqqrCgCvEOuJ8duEuSZEty/heXMi3aphZFvYun
	VwJAPkpqFBNJCc4PdEN/8Y4sFAl9NYuhILB/i9triHndjg14Kd1ehvtOCvXsqjMbBC21
	g1Qw==
MIME-Version: 1.0
X-Received: by 10.220.82.9 with SMTP id z9mr11180057vck.0.1375257646459; Wed,
	31 Jul 2013 01:00:46 -0700 (PDT)
Received: by 10.52.73.168 with HTTP; Wed, 31 Jul 2013 01:00:46 -0700 (PDT)
Date: Wed, 31 Jul 2013 01:00:46 -0700
Message-ID: <CAPhnLPCBvA21qDdJhT-wUqEJYBvvJYo0jBe6+G3pM76g4H5qkw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmCIktTJraj6eOvek7qO5kWFSb9RZZb4qeB4/CK228YE56ZWhiUgYTfjsS/h+0fWAvot/I0
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: 1.5_M3.rc1 is being built
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
X-List-Received-Date: Wed, 31 Jul 2013 08:00:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

We should have artifacts in a few hours at
autobuilder.yoctoproject.org/pub/nightly/20130731-1

meta-fsl-arm 	fdf3fe6296790b0c0817a58c064d7da1cca7dd0a
meta-fsl-ppc 	399c1ab5e86cf6dbb7c0c48d5253ac8798d6bfe4
meta-intel 	ce8f48d28c8d6d99b860e3f6480d9d3a6fc0b301
meta-minnow 	a1cfe0e7fc59eb1e430db07840d6b6d54b8733e2
meta-qt3 	b73552fb998fd30a01dbee5a172e432a16078222
poky 	9de0ad47462c13ac4a2d73e12e92be6c1b4e0415

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

