Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF280E00F69; Sat,  3 Oct 2015 12:00:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF0AAE00C09
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 12:00:42 -0700 (PDT)
Received: by iow1 with SMTP id 1so113805251iow.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 12:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=UugwLmWDc0Czq5Lb1zv3AQae1FA9dCsP+w22UsC0MmE=;
	b=KMy4tix+Hv6LeNn2TJtXw+mePWEjxpbmR2KsO73TmMUwHOXwkqKk5atLbM3GHqtDwI
	PqgLtLn4b+OMj/aWCiOCPfE8m/yRUlq8Maszkfjd15oBe061qwkDVo4lgY3QsRwVAwjr
	GHSw73GxOfv+0jSMxK42wOqGmH5f2LPXvXglDjkCocoJQZJXi+CHangbh9Y0WmP8BrWH
	w8q6QKWQccT8Dg81xv1ApdNWTCeml17MEpXH4+I2qaHBfvkINa02QolLtUpSQi6Ef3Eg
	3lIuIgKFSBvZV9ZW4P267x3aSwJfAFVMiewrUJarWXyiaUKhPvzWdlOYBXlGOLofE8nO
	WeMA==
X-Received: by 10.107.137.106 with SMTP id l103mr18572703iod.112.1443898842583;
	Sat, 03 Oct 2015 12:00:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.130 with HTTP; Sat, 3 Oct 2015 12:00:13 -0700 (PDT)
In-Reply-To: <20151003182433.GA23956@resin>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
	<20151003182433.GA23956@resin>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 3 Oct 2015 12:00:13 -0700
Message-ID: <CAMKF1spKaSO=k-UWitbbN8=KV-PEri6i5AwFn47EoRn1-Eqkqw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V4 1/5] userland: Fix install prefix and generate pkgconfigs
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
X-List-Received-Date: Sat, 03 Oct 2015 19:00:56 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 3, 2015 at 11:24 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Do you happen to have this patchset in a branch somewhere remote? Something
> doesn't apply the way it should.

yes
https://github.com/kraj/meta-raspberrypi/commits/kraj/master

