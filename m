Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1369AE00C43; Mon, 27 May 2019 04:40:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D68CDE00942
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 04:40:44 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id e13so14378733ljl.11
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 04:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kCpa70gTd/YsgonUXRDtsH/C42Ul+rQW7sQ9x7SMNiU=;
	b=EkvOvtt8V8Xeg+WD5GvxoiR2lruXNUN6CaONDa9Qh7q/JDm3Y5HM24p9XkLqceqFq6
	TRKEuo3BTl8Fm4DI+uAJ37+Z6Pgt/fbORwdlUOpcdaHVB6WzK88g7aoZ9D1SFWPNYU0f
	5dV8p5nVr52subbcVEf7OlKtfI4b4g6SbPfRXphx4s2nOfsHq/ABlFwDsCD8p/ex4fhP
	vO0d5n72L6sza5hfqrRaOb67OqktoMoKJ3Y2Uc4PlqbVSgKmuuZy+d0yVKEGytSayt4d
	3UDkmjsYfPeQMGMiz4CC8VVW8fTQgXeJOe9xVzZl3/P19lk+d9VvFMFfI//BhECuyN65
	XvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kCpa70gTd/YsgonUXRDtsH/C42Ul+rQW7sQ9x7SMNiU=;
	b=ngRGmVhD8EcI1M2btOsKya5yVQq1nXTkjNwTHvOoQ6CAZ+3lF2zPPwER1QvmSXpmMQ
	IhHtS+i/5T53c4r04P2XemvlRdXqCijEMWnAHmUddIBt10oETMv3VAYw7TndSh+Eg5a7
	9L6fN18OHw5Cua27G0XWapfDvcYzLCQ80TAOmSwIRQvmMlWCvDK9sZb0irBLjlbbIkxS
	ScUnmt3hKuisJUnFJ6ozUB2LvyOk3kuqidapz11vhajb63/4b0tiIUbCJgshcs21+EY1
	rgKEu0mV4pBJku40WTVzCgtyN+w3wmoCmRoHw1i26C4XxbKSxmQCjJvEdUS3QjyV6JIu
	Py1w==
X-Gm-Message-State: APjAAAUR8qpIfUIi3TroHn62dljLPg0WZVECfFcAWlANZW5p7J+N7jc5
	5mX+1ZjQzOM++Q7M51+TgDFgOJt664/2f91V4HeviCq1
X-Google-Smtp-Source: APXvYqxt18H+ht+1iRuZbM+k/4fEAPtNL+O9yG18tHbZf/T8SAeqw3f9URoLRNwPWuCJInbI6GajHzzATJ4RR/1+cIc=
X-Received: by 2002:a2e:9142:: with SMTP id q2mr10168752ljg.18.1558957243743; 
	Mon, 27 May 2019 04:40:43 -0700 (PDT)
MIME-Version: 1.0
References: <CA+pXca1pnxm6Y56m5oaPjkkegH-c7a6TATzWLG=B5EYppA+ncw@mail.gmail.com>
In-Reply-To: <CA+pXca1pnxm6Y56m5oaPjkkegH-c7a6TATzWLG=B5EYppA+ncw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 27 May 2019 13:40:32 +0200
Message-ID: <CAP71Wjw=AzrWVDjh0Nx1PoVrF3XQk9wV6ZsBPayrpmg6b=VcqA@mail.gmail.com>
To: praveen vattipalli <praveen.vatt@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: final image size got increased when migrated from krogoth to Sumo
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
X-List-Received-Date: Mon, 27 May 2019 11:40:46 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, May 27, 2019 at 1:29 PM praveen vattipalli
<praveen.vatt@gmail.com> wrote:
>
> Hi All,
>
> I have migrated Yocto poky version from Krogoth to Sumo, after building the final image, i observed that the size of image got increased by more than 70Mb. I have not added any new packages.
> Any suggestions, how can I reduce the image size now.

you should most likely start looking at buildhistory data which will
give you the list of installed packages and their size. that should
give you hints about what has changed.

>
> Thanks in Advance.
>
> Thanks,
> Praveen
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

