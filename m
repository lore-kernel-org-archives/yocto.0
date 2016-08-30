Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA457E00DC2; Tue, 30 Aug 2016 14:32:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C0C0E00CE9
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:32:32 -0700 (PDT)
Received: by mail-ua0-f178.google.com with SMTP id l94so56391851ual.0
	for <yocto@yoctoproject.org>; Tue, 30 Aug 2016 14:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J5LK6Ah5uikM2Bg3srEJ5vHZ0JWKBo9kudXrZX1v4CU=;
	b=Z1Li7UKBtphh4Sp30iwEPksSlhcMgpZuGEXQmUIv9ixKOUvPbOfo6G/NDAs9KZRWAe
	xf+plWmfIxgpG+NDyqz+I4vsKJLxOt0jQnykf1I8FA6phM/Xu9a2cE66a7HbZtHxbYNE
	c9WXOJN7uGj7WQqTVCep1oTjMiNWjdWniFGf8M9RwR9Mq5OMRnOIIrN8egswJDBSFzf0
	MWwI0R21ZF+zgO5fWfQF38Ht2TqsNzwNihwllSyQ+8eDUn/BSpOtr5gEXrCawEeT+owS
	6F69TAJwFC6E58sfiacyDKTMAV9GYNHc8M5pztOx/YnOc24SqzsF4Vr9HCp5RH2k9ILA
	tNCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J5LK6Ah5uikM2Bg3srEJ5vHZ0JWKBo9kudXrZX1v4CU=;
	b=FYnTW3mkMHu2J8w65WIYOQKyPWulSQJ/rnJrSHzivcsDVqiYc2gdnpdwqoWETxYSg/
	uJh5xAAR+GXgyTq3e7dk7mVpD+ulrucNR3R78feDmt3XmAruciBEmAo7gs2BL/ucRjJp
	5A9NEilrkjnj/UjzT272S3ESQSopxTzfsHw6ZMkPr2eqJMS4KEtA04IF0j4FP731pz9c
	8i4c41UYJHzamRxNwumPW9SsPe2kMLvoTzyitOx74iMTsV8VdHLQV3QnN9fgYbE1XUhA
	t6TAcd+6ZZRM/ckJu1XcBXSALrSpbcChJ4cv7vWISE1IEkwoFddFFVByrG4I57rBkE7f
	AL7g==
X-Gm-Message-State: AE9vXwNMaZUJOAPjXtma7M4RIhVLMho2GD3+m7xjFXfBVAX3fxSEnEh/tLK1KIpONFc0jzb/d4sKgsvDhkJoHg==
X-Received: by 10.31.95.137 with SMTP id t131mr3191151vkb.67.1472592751703;
	Tue, 30 Aug 2016 14:32:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.65.130 with HTTP; Tue, 30 Aug 2016 14:32:31 -0700 (PDT)
In-Reply-To: <cover.1472590929.git.paul.eggleton@linux.intel.com>
References: <cover.1472590929.git.paul.eggleton@linux.intel.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Tue, 30 Aug 2016 23:32:31 +0200
Message-ID: <CALbNGRTd1CfSJvGWQxkpp7sg3mG4dW5x3q3mJP4QJ2qQuy-uJQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [layerindex-web][PATCH 0/3] Layer index fixes
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
X-List-Received-Date: Tue, 30 Aug 2016 21:32:34 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 30, 2016 at 11:03 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Some minor fixes for the recent python3 work in the layer index, but more
> importantly fix parsing in master for the multiconfig changes that recently
> went into bitbake.
>
> NOTE: this depends on the bitbake patchset I just sent in order to work.
>
>
> The following changes since commit 1d76228675e93add50dd5216c43e00f977e1aaa8:
>
Thanks

Andreas

