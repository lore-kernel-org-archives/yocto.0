Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0806E00790; Thu, 25 Sep 2014 15:41:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A81E3E0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 15:40:59 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id w7so2987239qcr.12
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 15:40:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=hkcNM4IsMVfn5HpPlHC63Yi0OCbGZVcnA/oxHgU5XCU=;
	b=djRQPovnNgYyN6M8uf2gnYkiIst8AZayQ+RQ5yqDtZj/0PDiwB6GV26jb8TxQS0yAM
	UXR7cyVeNgNWOICJC0d3zBF/F8I46ZhcICSB+T8s7rhytPhpKPBlTUHbQsRHiyAVy0EW
	XOrgoi18k6mh3woGZzCQAL91lsXD4X6Wtunc/f9/88/yl6yb8aFH9Yc3dAoA7/u/9oSM
	6S5uMj5AikwGbNPrp3J0mNNvCCtzWhVWXxWo8NxcuiJNKp9HHvauUmkY77tP0GGr/MKq
	woofZU86XuFxyKEmHWvhgCU9ixzb9bNxaISKi9txU4Vy/ZzIzWorv5deT+FJW97rZBz7
	/2Ig==
X-Gm-Message-State: ALoCoQmlW8lsb8IVoFBjaymvlsP9jiofZCmYL+tAT9bxEfe3Doz8nl4k9ofC+Km/iWDZLcsLD/HJ
X-Received: by 10.140.27.139 with SMTP id 11mr20342666qgx.59.1411684859136;
	Thu, 25 Sep 2014 15:40:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Thu, 25 Sep 2014 15:40:39 -0700 (PDT)
In-Reply-To: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>
References: <1411641352-19058-1-git-send-email-f.deldegan@endian.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Sep 2014 23:40:39 +0100
Message-ID: <CAJTo0LYf-qWXia8EuKSnck5=yYLGspckqm27y3kxMDESSdL5Og@mail.gmail.com>
To: Francesco Del Degan <f.deldegan@endian.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] bash: update to latest (025) patchset (fixes CVE-2014-6271)
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
X-List-Received-Date: Thu, 25 Sep 2014 22:41:03 -0000
Content-Type: text/plain; charset=UTF-8

Hu Francesco,

On 25 September 2014 11:35, Francesco Del Degan <f.deldegan@endian.com> wrote:
> Updated to reflect the latest patchset in bash 4.3.
> Fixes the CVE-2014-6271.

I'm hearing that this isn't a complete fix, so lets wait for more patches.

Is it possible to cherry-pick just the security fixes, instead of
every patch they've released?

Finally, patches for oe-core should go to openembedded-core@, not yocto@.

Ross

