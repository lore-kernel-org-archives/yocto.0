Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E227AE00B74; Wed,  4 Jun 2014 11:59:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.45 listed in list.dnswl.org]
Received: from mail-oa0-f45.google.com (mail-oa0-f45.google.com
	[209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77639E00B6A
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 11:59:43 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id l6so8449473oag.32
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 11:59:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QU4KP1ZkVebtsTLdHNVdD5IGxqsJZ+HOfxYxo530RA0=;
	b=gtgkmcl1mwZqZxQvRjD5QRmlkCAPkYDjFDoWwrATK+STGeX4v66cmoO2rvi6taiTGU
	d/BIwJA4DpUrUYjzI7BmcGFr6Vgi824F7PpCTXQDrcYe47++fuq5CybxrO+otVBoOwPN
	KEv0/n06QTB9yvF/FXAQgmloVpCK153y+FyB3dgkG9M91mTUmpqItABjGFe7o9WSVTei
	MO2BQn5v/Y5v82Oisc82SfCV3t63zWDhPLqgVlzXHdAFzSA8TuvHzH14V5IPQUUg3+4M
	LraHhyZrUpGay8NC0shmHa8dddfXYwEVErWCaFnXxyZVdCj/+vHTwtHZZtoeS+sJLl/s
	ZJTQ==
X-Gm-Message-State: ALoCoQkYmZk/j6eNGlGlmWZV8K6UqgKmaQU0NjxZ0HsAgYM/yOCttlkviAeh4m1mLJjIfKn689vD
X-Received: by 10.182.250.196 with SMTP id ze4mr53769552obc.46.1401908382681; 
	Wed, 04 Jun 2014 11:59:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.115.164 with HTTP; Wed, 4 Jun 2014 11:59:22 -0700 (PDT)
In-Reply-To: <CAGM0ZdSD2D0gTOXbvmtZJuK5Am0XY+5jDADYQEZg2psLnNmoOQ@mail.gmail.com>
References: <CAGM0ZdSD2D0gTOXbvmtZJuK5Am0XY+5jDADYQEZg2psLnNmoOQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 4 Jun 2014 20:59:22 +0200
Message-ID: <CAP71WjxesgvZNOMiUYG15wNce1BQ=0sJhVH--74FuqHsM3-93Q@mail.gmail.com>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Build History Folder
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
X-List-Received-Date: Wed, 04 Jun 2014 18:59:47 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 4, 2014 at 8:35 PM, Bharath Chandra
<ellurubharath29@gmail.com> wrote:
>
> I want to capture build history while building an image and I have done the
> following settings in conf/local.conf file.
>
>      INHERIT += "buildhistory"
>      BUILDHISTORY_COMMIT = "1"
>
> as suggested in
> http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#maintaining-build-output-quality
>
>
> But, the problem is buildhistory/images folder is being created but
> buildhistory/packages
>
> folder is not being created. Any kind of suggestions on this issue would be
> helpful.

maybe a dumb question... but have you actually built any package? if a
package is re-used from sstate, then it's not built, and no statistics
are generated.

