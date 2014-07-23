Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD6C4E00576; Wed, 23 Jul 2014 01:51:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.42 listed in list.dnswl.org]
Received: from mail-qa0-f42.google.com (mail-qa0-f42.google.com
	[209.85.216.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E01E00524
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 01:51:48 -0700 (PDT)
Received: by mail-qa0-f42.google.com with SMTP id j15so953327qaq.1
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 01:51:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=XePzSiRWVLyMUDEel2k2CcbiOnHa5Z+FpIC9VyRVJgA=;
	b=GGi5fb3iu+ZS0CQ6ZrDMUB59tSVLscQ6nU+JOeE2CX0CBxScUYF0XZgLUZ07txba/7
	QlPq/vXzja0XZkgwwYah5u9/HU1HpZSI58wSrJF4QRYuX2z9m6IPEIITJBw3ghydcjau
	L9VdNT+TIP3qB53fAdFvYTdlDKCpUTi3vMp+RSi/kQUtffNShYlSuprTAH59rSGfJM9I
	919/Kc91IWuhqM0GafMerjcJjo1Ixchcz5pK8OksZkCEEl6v/uwbhChatOOFdwOTC/Ss
	qz4BiBpUVHXUJsqYWv2T8RSGslnHyXX0p469MR9fAsegNEp4at0zsKH4SecAC5j2WwMj
	bAbg==
X-Gm-Message-State: ALoCoQmA+mBrFk5exnYn0RGXl4gwJdqhT37o4I5mXyocGc03otE7/Bq1ioPBTyEDAIjxT+ltqQNA
X-Received: by 10.224.43.77 with SMTP id v13mr66005559qae.34.1406105506873;
	Wed, 23 Jul 2014 01:51:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Wed, 23 Jul 2014 01:51:26 -0700 (PDT)
In-Reply-To: <loom.20140723T084046-919@post.gmane.org>
References: <loom.20140723T084046-919@post.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Jul 2014 09:51:26 +0100
Message-ID: <CAJTo0La-UMGQ=-+StwSQkfhwRXGHQc5eZ7T1Uez7pVBYGL79Dg@mail.gmail.com>
To: Anoop <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Bitbake Error - rmp-native task failure
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
X-List-Received-Date: Wed, 23 Jul 2014 08:51:53 -0000
Content-Type: text/plain; charset=UTF-8

On 23 July 2014 07:51, Anoop <babu.anoop@gmail.com> wrote:
> patch: **** Can't create file /tmp/tmpT3pUSD/poMZnbmM : No such file or
> directory

This is a bug in the meta-tizen rpm package.  Until they fix it you'll
have to do bitbake rpm-native -cclean and then re-run bitbake
tizen-common-core-image-minimal-dev.

Ross

