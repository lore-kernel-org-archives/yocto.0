Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5BE8E00848; Mon, 15 Sep 2014 01:05:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.52 listed in list.dnswl.org]
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 724C4E00746
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 01:05:40 -0700 (PDT)
Received: by mail-qa0-f52.google.com with SMTP id m5so3396980qaj.39
	for <yocto@yoctoproject.org>; Mon, 15 Sep 2014 01:05:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jC8NBpCdr7Z3jobWtKy7I6LlKc8Ja7mSNSgqCEdmNoo=;
	b=TYLyb5TNUOqYmbI+7oc9c7A2LhgQC7qRZLXFnHxpef1bsijsj4RQFHH85hzE7MJWGw
	UMq/0skxo07w66ECateCaR8/Co5ywDTCWzrMrvfc2m1EgPhGUpOv3pqnYfS/MLwcB9BT
	USYwNlmWagiY6p9APaBHdr/axWBet6guS7aFq+TcWiZOqf9rAn61Vq/cZXzsYgf/iLbN
	9cNaCCKCVJcS4S+B/LKsPcME/eZ02PcRIQV33IGTxXKzNuustxNpo2emkRI2F++3LvDt
	7GH/GZD0X879VcC/dk5qFbwZL3R74eEav/e5P+2HBbztUNlmjPU7ODhUhYDhgsZ0c5ED
	rPgw==
X-Gm-Message-State: ALoCoQlMrY1KqQx3I6Wtl6X+bjnVXcwklotU8fdPM7cK2sDT8fGZhPrFMziq4CLWxDt0XbSDI4Tn
X-Received: by 10.140.27.173 with SMTP id 42mr34264182qgx.59.1410768340129;
	Mon, 15 Sep 2014 01:05:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Mon, 15 Sep 2014 01:05:19 -0700 (PDT)
In-Reply-To: <CABG0-3yDCJo-b4Y7U8GS+cvM8ov6fo6nHH=+xgxM73rPOnj70A@mail.gmail.com>
References: <CABG0-3yDCJo-b4Y7U8GS+cvM8ov6fo6nHH=+xgxM73rPOnj70A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Sep 2014 09:05:19 +0100
Message-ID: <CAJTo0LZk-7nHXid0kf-TC2hhJ-cfFjiCgwccywJ0Ft5eaZWudA@mail.gmail.com>
To: arun kumar <arunkr.linux@gmail.com>
Cc: Yocto Mailing List <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: Basic build fails
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
X-List-Received-Date: Mon, 15 Sep 2014 08:05:45 -0000
Content-Type: text/plain; charset=UTF-8

On 15 September 2014 06:45, arun kumar <arunkr.linux@gmail.com> wrote:
>     My system has 4GB RAM and 2GB of swap space. i would also like to
> mention that the i could bake the recipe
> "core-image-minimal" sucessfully but baking "core-image-sato" still fails.

The full log that the top of the output refers to (ending in
log.do_compile) would be useful, but if you've built
core-image-minimal then gcc-cross has completed, so core-image-sato
must be failing on something else.

Ross

