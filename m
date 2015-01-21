Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 972C1E008CD; Wed, 21 Jan 2015 00:03:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39966E00873
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 00:03:41 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id nt9so7393151obb.12
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 00:03:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wNmeQm9cK2Ue5zOPlf4GWLdDTkw9pLk/ZweRDb7lBrE=;
	b=R+JSUvjqTmGJ0lMNbduxEmdL9de+xWhM5e2YktMzLY/MTgBayDKkc9yVcEByrXBhvn
	sbBsesBoxwBpDR34HnUUytoLQ9UiLx5AMe2oHWMXfcq+IwwBbrE5efMS5BN+GZJ1S7il
	RmoKTlg+CTSzPT9d49nX44kf13Zrs1TYZ8jE1fsA8udaxyYIUF0Nf44IBq2f51gHCtLv
	kFXle3onxT2G0PT8ulAqLMH9k6b5hC7pnGpaPAQxDj7KVwEnXzebgDzrPv5oPPjkmEk/
	vnj2gPhp2W5BkjXGvTdt12Q7tsgFnNXaia/+FGbMwWnW/hBNNxcLbtGKvAv8xa5ym/Jx
	MRbw==
X-Gm-Message-State: ALoCoQkHthPvSwYdyuToyIfG5c+FppWWOjmpVr0tM3y2AUvHvzuX31/KUVh+9V6XrWmel9Nk8aar
X-Received: by 10.202.213.144 with SMTP id m138mr22501405oig.87.1421827421396; 
	Wed, 21 Jan 2015 00:03:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.79.1 with HTTP; Wed, 21 Jan 2015 00:03:20 -0800 (PST)
In-Reply-To: <CADO9-pdVciMmmOJda=YE75JLzBOSrJ8ZjmSggEZcAp7a5ye6AQ@mail.gmail.com>
References: <CADO9-pdVciMmmOJda=YE75JLzBOSrJ8ZjmSggEZcAp7a5ye6AQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 21 Jan 2015 09:03:20 +0100
Message-ID: <CAP71Wjyy6Zs3mEB2bVNj4uuCFssnQ_+dV2MqAQQpLkq9qJr3zA@mail.gmail.com>
To: Yong Li <sdliyong@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot build the core-image-directfb for
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
X-List-Received-Date: Wed, 21 Jan 2015 08:03:45 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 21, 2015 at 8:51 AM, Yong Li <sdliyong@gmail.com> wrote:
> DISTRO_FEATURES_append = "directfb sysvinit"
> DISTRO_FEATURES_remove = "x11 wayland"

i think you are missing a leading space char, it's needed with
_append, or _remove. as such directfb gets concatenated with the
previous word in the variable.

