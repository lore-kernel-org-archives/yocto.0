Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90DF0E00857; Wed,  1 Oct 2014 15:12:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E38AEE0074B
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 15:12:26 -0700 (PDT)
Received: by mail-qc0-f174.google.com with SMTP id m20so1211084qcx.19
	for <yocto@yoctoproject.org>; Wed, 01 Oct 2014 15:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=isSkz/T3dERP5CmssJ06w1lP9TkeXnUpavh/RHzlPzU=;
	b=JWx16YbZCpfsBZ81/qmyupd9kfBbxhjsXgsnor8IqxuMVG4X/QU6caxMnGDQSIiaPP
	azBmD7Wk0FF9BWMcw1GKPFY90/QYU0X0Xe9iSeAxc+OUWky3BYT0FE6fNCxKp0LqAMkM
	I+E7N6Y2e5OQOjPZTGKwsZH9LrMjL3wygSIXjvYHi4hmbIGf1gdFB6BXVH5jxIoj1kWD
	LwSkjXfKYwufMYtlEVBwArlGTp+fmbGx4jIP5aDSqr5IdSPhkWPZz7+KcDMd4/YuzCqK
	3cd30gZHyl0n2d5JwDzY9U57dL2JP3oYGSnPskMdySPwYUQlE2JsLqlJRRVGpB6FJqXP
	Z1UQ==
X-Gm-Message-State: ALoCoQnD6EX7ermKj72yMade9eKZjg8gVwG9Nk5TlolDgamnQfx/+cyTn8QCpuCnWmhuQhYT+Z0d
X-Received: by 10.224.103.194 with SMTP id l2mr30627873qao.93.1412201545318;
	Wed, 01 Oct 2014 15:12:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 1 Oct 2014 15:12:04 -0700 (PDT)
In-Reply-To: <20141001150034.8c4e4b9406b77e1e78d5069819454ed7.98d894cedc.wbe@email14.secureserver.net>
References: <20141001150034.8c4e4b9406b77e1e78d5069819454ed7.98d894cedc.wbe@email14.secureserver.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 1 Oct 2014 23:12:04 +0100
Message-ID: <CAJTo0LbY+PEQsbKrjs1gdRWjjJ62eYABRiN9FkvgGAx-ctozBg@mail.gmail.com>
To: Ezekiel Sanborndeasis <ezekiel@sanborndeasis.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetch task not run after SRCREV updated
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
X-List-Received-Date: Wed, 01 Oct 2014 22:12:27 -0000
Content-Type: text/plain; charset=UTF-8

On 1 October 2014 23:00,  <ezekiel@sanborndeasis.net> wrote:
> Is this the fix
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=202ae5af74f546a9788290a96b0f3c370ee047b2

Yes, that's it.

Ross

