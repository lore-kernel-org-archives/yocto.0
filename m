Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96D0FE016E4
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:16:00 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id va2so3075636obc.13
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PDbOOHTSN2Jlk5sarv9Aqim1sUBl4uqUd0It+wDUfoc=;
	b=Gykg436b5nPqF1XCFppabbfNF94A8ssA6hlp35JZGKa4EaFj1EUqLRqGzr02NQ2XCc
	TLfoIvMt6g6yfbTxgR7BV8+QfdSBjxtTAwIDtK06HSLfHFGoVfMIunhnoe/mvzjmELCU
	8XKGEjsOy4BNASDIVKa2v2N8F6sjoPdEsCZGY4jBwfLhSfjPQ2oZkJw8fpxF4/eIrHDy
	y9yyOaLvHh8KNDYAPBiAVTT7bHgknndbv5C6UINT//a334T1c+glwt+Cd0rSh07s38Yq
	i88F2T5uYxI8tmUrEgpK09V/pYiWt9O47qGwWSEoxs78AyVyRGymbVrrct2XLFveVGgC
	OkOQ==
X-Gm-Message-State: ALoCoQkRMLkypwe/bPeZO00Le6E7+qjxXYjL9oPKXkBZ3QAtM/V/sdeJSV4E0oL+j39+wonlZEYq
X-Received: by 10.182.246.39 with SMTP id xt7mr4691574obc.16.1382102160050;
	Fri, 18 Oct 2013 06:16:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.156.40 with HTTP; Fri, 18 Oct 2013 06:15:39 -0700 (PDT)
In-Reply-To: <526132FB.3090202@mlbassoc.com>
References: <525FEB23.6050907@mlbassoc.com>
	<CAP71WjwidN0f1K6m1SfQqCbObqRKD7f4_RbmftrWkE9iOF7_OA@mail.gmail.com>
	<526132FB.3090202@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 18 Oct 2013 15:15:39 +0200
Message-ID: <CAP71WjyFCLaNa18OF26GYMu_oT1FQUH7nEBn0hjRcaS=SXC5CA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Busybox configuration example?
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
X-List-Received-Date: Fri, 18 Oct 2013 13:16:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 18, 2013 at 3:09 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> Thanks for the example.  I added this simple config fragment and it works
> fine.
>
>   # Force 'ifup' to wait longer for really slow links...
>   CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"
> Of course, the comment is stripped in the final configuration file, but it
> documents the purpose of the fragment.

thanks for the follow up!

