Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5266EE0086E; Mon, 22 Sep 2014 02:33:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
Received: from mail-qg0-f51.google.com (mail-qg0-f51.google.com
	[209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93E8BE00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 02:33:15 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id a108so2468276qge.24
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 02:33:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Zlbofhe/Eh6vCwP/gelJgqYAG1h5ewir6N4GpigRRZk=;
	b=EM6Vt+13KzwUxMEvOVARHp/RxLzvVzZgRyNtFEcOSq090JPjj9emyXhJeEid6gUoZr
	YK7lDuBdypYvUbH1MoyRNIl591HvKaZNe85yeQIgxnoXZs0wUIlEtL17MRHb7smqfcvo
	D45lj7WDtCb+qNLzgxU3SWtayfnDktWy5MUPbeo/y01BjIK0ErHYGn5FO6DvOlh1yKA2
	i2PzNnXbrJ3ged/+jGfnuwqZ28KAWGEokWNVtidNq5bahX2s9nfKiRpB4YtmiuqnlxEF
	cRbSQHVo+hwEs7lB30qxMtgOmtS6edloOfSibaP0uOnM7oeaS3BNOzZWD95nfjMjh4qQ
	ThDw==
X-Gm-Message-State: ALoCoQklZUXpKEiQMZ8R0QnXmybdwzNJkqKpKhO6VFVgq+yOntbVEOIeNWzYpwjsbV5cfa7SwJ8F
X-Received: by 10.140.27.139 with SMTP id 11mr19392934qgx.59.1411378395382;
	Mon, 22 Sep 2014 02:33:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 02:32:55 -0700 (PDT)
In-Reply-To: <CAKuL1XSVfXkZN2ybCo=iv1m-FZMxV7_vP4eNBO2T5dfkGZs5bA@mail.gmail.com>
References: <CAKuL1XTwmyTHTOZxwxCh31F3aB0M=PWExkO-SVLwXhGGD1vveA@mail.gmail.com>
	<CAJTo0LaojbZbjz-io_L3W3tQUPzL0ZMYFA11vjnW8NY6GVemzQ@mail.gmail.com>
	<CAKuL1XQegnpVr2neK-z+sgBbQjNEb-S0ZF2=owBg11VgXSRMRA@mail.gmail.com>
	<CAKuL1XSVfXkZN2ybCo=iv1m-FZMxV7_vP4eNBO2T5dfkGZs5bA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 10:32:55 +0100
Message-ID: <CAJTo0LY9yQ6Em=_qBmJ8Q9dqGpX48SrXPYTDKM_QDg0K4kC44w@mail.gmail.com>
To: harsh jain <harshjain32@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Update recipe file to avoid conflict with other dependant packages
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
X-List-Received-Date: Mon, 22 Sep 2014 09:33:19 -0000
Content-Type: text/plain; charset=UTF-8

On 22 September 2014 07:52, harsh jain <harshjain32@gmail.com> wrote:
> Given below logs message when I tried with python 2.7.4
>
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 2.7.3 of python not available (for item python-core)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item python-2to3)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item python-audio)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item python-bsddb)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item python-codecs)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item python-compile)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item python-compiler)
> NOTE: versions of python available: 2.7.4
> NOTE: preferred version 2.7.3 of python not available (for item
> plython-compression)
> NOTE: versions of python available: 2.7.4

Your distro configuration has a preferred provider for Python, and
it's set to 2.7.3.  I can't seem to see anything in oe-core that sets
this, so it's possibly your own distribution (or another layer).  Grep
your layers or use bitbake -e python to find out where the
PREFERRED_PROVIDER is being set, and change it.

Ross

