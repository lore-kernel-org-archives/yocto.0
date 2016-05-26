Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62E6BE00D01; Thu, 26 May 2016 07:16:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	WEIRD_QUOTING autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	*  0.0 WEIRD_QUOTING BODY: Weird repeated double-quotation marks
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 383DFE00B6F
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 07:16:07 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id z189so82966461itg.0
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 07:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=U9qp/dFmO9FWN0gjk50IqZpTy24VblJFM9Z6LWcG9II=;
	b=ZxLPtM9DKq5+1c7hj6ediUzXSGX549wRev/seAizb9SKay+Kkb+40p3EKgF1TyJazC
	l2ZmC5Laan4A6W4oH4hyp1be2UkTf9kws1I9/3wzFr0UVtKZMwDjB1qnTQsDi+0EAubp
	eNCJdqTubis4npMS8fz6xL9nLgiIPU5DdwsrhbyXnF3Pr6Dm2dTZfwnwx1xXMl8dfzYe
	FxngsIhlk0M12ofSgZwujPm0n4ccVGz8I8ITqNZNCdl76kB7jNvWo+OEyvC/d9af+5yE
	8XYAXLadBS2e0gj3LRRhSj+nvgFKSCP+Fw3Rw8b79e8TBt72dVtSUj6+j3SEsoCtWORL
	PboA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=U9qp/dFmO9FWN0gjk50IqZpTy24VblJFM9Z6LWcG9II=;
	b=V9a/lhoafmqYc6laS7loZyJX7c0NtvBcjCZJr2lxX73BCpSXkJ9E+IdswwU1R+1rCd
	TS1D+7q5mLjAvvjLD76nfGPWINm/ItaJzm+3iZaNNPQK5ViebUCTx7en56+JN7/jZcOW
	cW+Y3WSuOVNZ1PkY6aiY9Bk29IO3Fff25dqRvq33j+6zVyUWHmfNh/Sn3x/6LN8nx9mZ
	L1CnOktwlyaI0e0isUXVYebwgRo2q0vkvI8TmJ5HgVKhyQSjBiXp4V4BFYfzZAAvExHQ
	4p2GJlbFkBAIs1nu7p9zujw9okMNG6na1zji3WF7rJo+WRNp/DcY78KNLKGMa+no6G2f
	CVgQ==
X-Gm-Message-State: ALyK8tISvc4rZ3vWM0Uh6rXlnEK2bJ/29cEHHvE9qdRYYq7hzTYHdK22EST5xRcEDOSpBrfpq/qCiju0uJ98z9Ef
X-Received: by 10.36.16.67 with SMTP id 64mr3375889ity.88.1464272167133; Thu,
	26 May 2016 07:16:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.48.131 with HTTP; Thu, 26 May 2016 07:15:27 -0700 (PDT)
In-Reply-To: <1464208089-6911-1-git-send-email-william.c.randle@intel.com>
References: <1464208089-6911-1-git-send-email-william.c.randle@intel.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Thu, 26 May 2016 15:15:27 +0100
Message-ID: <CAPhnLPCsOhKVc8ViPmeNZ2wLQO2DxUC4_a1YFmH6mYxg9oWtyg@mail.gmail.com>
To: Bill Randle <william.c.randle@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH] GetLayerVersion.py: set new layer version only if cmd was sucessful and not already set
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
X-List-Received-Date: Thu, 26 May 2016 14:16:11 -0000
Content-Type: text/plain; charset=UTF-8

Ok, this looks right. Let me test it and then pull.

On 25 May 2016 at 21:28, Bill Randle <william.c.randle@intel.com> wrote:
> Fixed a bug where GetLayerVersion set the layerversion to -1 when a
> meta-poky layer.conf was not found.
>
> Signed-off-by: Bill Randle <william.c.randle@intel.com>
> ---
>  .../autobuilder/buildsteps/GetLayerVersion.py             | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>
> diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
> index de5c203..3f167e8 100644
> --- a/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
> +++ b/lib/python2.7/site-packages/autobuilder/buildsteps/GetLayerVersion.py
> @@ -44,15 +44,12 @@ class GetLayerVersion(ShellCommand):
>          ShellCommand.start(self)
>
>      def commandComplete(self, cmd):
> -        result = cmd.logs['stdio'].getText()
> -        layerv= result.replace("LAYERVERSION_" + self.layerfile, "").replace("=","").replace(' ','').replace('"','').replace("'",'').strip()
> -        if cmd.didFail():
> -           layerv = "-1"
> -        if self.getProperty('layerversion_' + self.layerfile):
> -            self.finished(SUCCESS)
> -        else:
> -            self.setProperty('layerversion_' + self.layerfile, layerv, "Setting Layer Version")
> -            self.finished(SUCCESS)
> +        if not cmd.didFail():
> +            result = cmd.logs['stdio'].getText()
> +            layerv = result.replace("LAYERVERSION_" + self.layerfile, "").replace("=","").replace(' ','').replace('"','').replace("'",'').strip()
> +            if not self.getProperty('layerversion_' + self.layerfile):
> +                self.setProperty('layerversion_' + self.layerfile, layerv, "Setting Layer Version")
> +        self.finished(SUCCESS)
>
>      def getText(self, cmd, results):
>          return ShellCommand.getText(self, cmd, results)
> --
> 2.5.5
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

