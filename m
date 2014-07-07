Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07261E0053E; Mon,  7 Jul 2014 00:56:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB2F0E0030B
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 00:55:53 -0700 (PDT)
Received: by mail-oa0-f50.google.com with SMTP id n16so4167364oag.37
	for <yocto@yoctoproject.org>; Mon, 07 Jul 2014 00:55:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6ZJdVBi9gfckTvmPNcAN5JdS6tGErXJblfFuqEkYJ7g=;
	b=CvUvQN01snZ7ixHIf1HNRLIeT2oaTvn7jRfVp1Jyh/qqO9mpItEzijPKvkOdfXog0t
	6YzSVU+KaNyCE3DVw+TCL3YXHCrxrKIZz2Pbfq9jeR2H6N7AwIymw6Id8dQOJxIpsEsI
	IoMyP+v7dATM6MttXBE0sH8KtfbLhxdNt6K1ervpwEe4AlHsMkUUs0v3AEmxzWqH68oQ
	4kz04xCy00C9EM+4NjRFFvUveqdT1YWhx2dSEm9fDHmfc2DC0uiHHBpX+cm7TmoIa4QO
	CEGFExlbH65x+ljw3+MDfT0YrFJm8yJZDZqOOmceItW0H7i11q3nq1lNewy+wxxJ7LGB
	UMhg==
X-Gm-Message-State: ALoCoQnxEhuaMy5zmBIXBWPDOqxTDmFdKUVXTaVKd0W2/BvFpfZrrUuTPUvz7LYO59JCVTCADflk
X-Received: by 10.60.176.225 with SMTP id cl1mr29161590oec.36.1404719752435;
	Mon, 07 Jul 2014 00:55:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Mon, 7 Jul 2014 00:55:32 -0700 (PDT)
In-Reply-To: <EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52@ex-mbx1-8.cloud.local>
References: <EA5D4AA0E56AAB499D0E3B654C889FBFBC1D52@ex-mbx1-8.cloud.local>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 7 Jul 2014 09:55:32 +0200
Message-ID: <CAP71WjyVQ=qX42oYJ+aOojxXv-pfSTg0tCXNXBhTLtL2XkxN6w@mail.gmail.com>
To: Joshua Collins <joshua.collins@arcontia.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipe to copy precompiled binaries to root image
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
X-List-Received-Date: Mon, 07 Jul 2014 07:56:02 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 4, 2014 at 9:37 AM, Joshua Collins
<joshua.collins@arcontia.se> wrote:
> This does not copy the files to the image as I would expect. If I look at
> the bitbake log, I see my recipe is run, but I obviously have not done the
> right thing in the recipe.
>
>
>
> Can anyone tell me how I could fix this?

.so files are put by default in -dev binary package, that's probably
where they are. if you want to put the .so files in your main package,
you can add the following in your recipe:

FILES_SOLIBSDEV = ""
FILES_${PN} += "${libdir}/*.so"

