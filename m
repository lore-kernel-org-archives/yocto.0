Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F478E008FF; Mon, 20 Jun 2016 11:03:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,PLING_QUERY,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
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
	*      [209.85.220.174 listed in list.dnswl.org]
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB99DE00875
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 11:03:24 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id t127so50989071qkf.1
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 11:03:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=xXqDpBp/isqfYh/qhHlgR4AP1bLHfBfXgzuyaRouRFQ=;
	b=RgF4EnyAK3cHWCEclVJhYKFWYQQaaK1VIVTI43ESuc8rz8cL63XH18Y+poz1lP0QmW
	KCcC/BhIxhSslwqMKvqrWN/gCOjNAERbQDQMvpzeKY5rguT+nPyXb2X8qCv47ipservZ
	BBLR3ut8zXcMtreGkF2D7KqfNeeRYCxIeI4WcRjlQX+3d7Sc/sIzj1ki5epDrg5XJgWe
	Dpf3+R9k/RrCRSAhDA+4lXOrAIN426/l100mC5Tn+c+vtN/bKeER7O8+G5OnBX2rdhCW
	Ml9/w2nQyjrvkJ6VaMqSuF2jlGdshfQqCBtJxJzkwLCyVk3Xy8muHwsmaH1G+aJvLg/Q
	M4Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=xXqDpBp/isqfYh/qhHlgR4AP1bLHfBfXgzuyaRouRFQ=;
	b=COlItrTaLRwWVYOLXfnWJbEPj2OlTMF6G/AdrwowasNrLdX+rbkmM7EqlpDG++hSvE
	uJ7iFv/RYlb2TtV5ANwm4UuwIBOPRaLYdsZVS9G9BnHofNrJKmaYGe7L1FshGPWku5as
	XwcLDbsCRBfYHNHwrlbp+m7hEYWtfb1BAr/brJuCtZAXxEv+ymx7GWhdoi36FB1HZUKU
	49U3GNCECu3B+RNBSAdbJVdKIVl2ODFQF0IjUALYHcKNjR2bHsytLAuSvOc49d+Ag5eB
	teueVHvntnTSVuV9zOAyayKSAwoj9tCZgi/QE+VAuNuRUxUDc+7DvVh8fd/OmLxdCgER
	0PPA==
X-Gm-Message-State: ALyK8tKVOQlkDdOqd6jQiMZvAP1Og3Ak6+4fwaaePNj7XugN9hQECKg1lCauWAHd+Pd3BUw6BbvCj3YdkuO9uQ==
X-Received: by 10.55.27.202 with SMTP id m71mr23969446qkh.151.1466445803759;
	Mon, 20 Jun 2016 11:03:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.8.133 with HTTP; Mon, 20 Jun 2016 11:02:54 -0700 (PDT)
In-Reply-To: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
References: <CAF3SDA5fWG_WyHHYAFDu3ZkRmv6ba+aV_8Ph6dy5avy71SQWsg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Jun 2016 11:02:54 -0700
Message-ID: <CAMKF1sqMH+Z=7+1BTAEbiPm9kQO6NYbxY7-9OgRJ=wDYcFov0A@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Crosscompiling python extensions with yocto generated toolchains!?
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
X-List-Received-Date: Mon, 20 Jun 2016 18:03:28 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 20, 2016 at 10:44 AM, Daniel. <danielhilst@gmail.com> wrote:
> Hi everybody..
>
> I've been playing with python extensions. Now I want to compile a simple
> hello world extension
> to my Yocto's target, but I really can't find any good resource about doing
> it. So what is the teory behind it?
>
> I know that I need python headers "Python.h and others" and that I need
> distutils installed. After that everything is done by distutils and setup.py
> script, but what is done is a mistery. I found distutilscross on internet
> but no documentation about it!?
>
> How are python extensions cross-compiled by Yocto? Can somebody point me an
> example?!

take a look at meta-python.

http://cgit.openembedded.org/meta-openembedded/tree/meta-python

You might find some examples close to what you are looking for.

>
> Regards,
>
> --
> "Do or do not. There is no try"
>   Yoda Master
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

