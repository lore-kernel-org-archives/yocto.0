Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21B68E00563; Wed, 10 Sep 2014 06:37:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC2F8E0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 06:36:58 -0700 (PDT)
Received: by mail-qc0-f180.google.com with SMTP id c9so19217671qcz.39
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 06:36:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=8xjkk1RGJGA8icY3f6+aExLSpNujOh38Bznvu1rGuWs=;
	b=eMAzKXhxVFBC/cA8J7gtHBKRjJuKF47Am5Q+zIwl+dSUcq1a+yMF5Iq9ENsS8VbC2j
	psFeRKLyamJwTC6ujJL/DxMZEVilSuf8bs44+s+cSBQZyQlDNwrMopAOWgzv5+8fpYU9
	LTNHDmbV/MFoz0Wp3G2OgOptnLhTwZNxU++bTNByN590jjda0hITFqMmCWEKX5krIOYn
	JYCam0lMrPgAhYmXa4TyVgsMBqEQk1uIdaesws8WenzKUbWKo6U6WKYXzCPHWuAE8zjI
	gCkbuVirwLE7shntVyPx2kT616x/WPO550/c8YKoxL7DU5zvyvYVYvLKJjgqHl0aWUnT
	0Eug==
X-Gm-Message-State: ALoCoQmP6l8p/wP9Y9hyptCYureQQrAxjWxkaEGUNpuhHbtiobh2GcpB90x8nBPhIpaJKC/gi8Y5
X-Received: by 10.140.94.234 with SMTP id g97mr59203595qge.77.1410356217862;
	Wed, 10 Sep 2014 06:36:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Wed, 10 Sep 2014 06:36:37 -0700 (PDT)
In-Reply-To: <CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
References: <CALb2248grw7+NKWt8yfEpVR1_DYgkWEGYwhhr5N5ng_6JqU2mA@mail.gmail.com>
	<534F9598.5050003@ge.com>
	<CALb2249LccFPUKvUSbU1Nax4LQc6Nc8iXqT9Cx24YOAcf6rv2g@mail.gmail.com>
	<CAPhDKbFyPcg9+ViCw0pXzK1+MC8qEcx==dH_eOgN+f-BuPKu4A@mail.gmail.com>
	<CAPhDKbFBPuxkh_+yfFH+Q+pQ3DSpPEKRpfbVE1qyW7uEiTDoqg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Sep 2014 14:36:37 +0100
Message-ID: <CAJTo0LZJmx=j7C61vKvpZcW+OYrxPYf07Tr_7X=tjdz5PY9zEQ@mail.gmail.com>
To: Ilya Dmitrichenko <errordeveloper@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Leo Schwab <lschwab@sensity.com>
Subject: Re: Integrating Golang
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
X-List-Received-Date: Wed, 10 Sep 2014 13:37:10 -0000
Content-Type: text/plain; charset=UTF-8

On 10 September 2014 13:53, Ilya Dmitrichenko <errordeveloper@gmail.com> wrote:
> Just a quick update, thought I'd let you know that I have a basic
> working layer here:
>
> https://github.com/errordeveloper/oe-meta-go

Could you consider submitting this to the layer index, layers.openembedded.org?

Cheers,
Ross

