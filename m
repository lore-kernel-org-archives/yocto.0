Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5BA9E00E84; Fri, 25 Sep 2015 14:01:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CA4EE00474
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 14:01:16 -0700 (PDT)
Received: by ioiz6 with SMTP id z6so123277512ioi.2
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 14:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=popbOWFt4OwVQ3cZcMzvdmfOoJPOCq0JJjqGGp5X630=;
	b=uNZ/e0MR66jOa8bt18VXbZxSkPmSQDGBDKIJID+mPSVjCes7zjNRrikW1F9coZ60or
	0v/umpyVb0VBd78fiRqH4WKUwkbKAmdhHqkvGtzdUpTvzyDrXWp/lp5/v0JjwMibESCI
	SU5ajrV3Os0B+vNwADJRLJlbBJjLyIg2u+eYvLJtgyvMprmFTt3efzyRt6gd6Jqnkd/4
	se/JIvy2EPYOEBp/cdyPw/0tN5cyTTHNp1XAtbRa3C++Ah9MqHUtLJ3+W0EgohwrL7LS
	2UMzgXf3nZJgnqpSKBxqMMIGB4diXuuM4VcDjU5GMxebBLWQCX6eChyUq/N+EMRTGwxi
	sHKQ==
X-Received: by 10.107.41.194 with SMTP id p185mr9975961iop.109.1443214876383; 
	Fri, 25 Sep 2015 14:01:16 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	g198sm2371604ioe.6.2015.09.25.14.01.15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 25 Sep 2015 14:01:15 -0700 (PDT)
To: Mark O'Donovan <shiftee@eircom.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAJv4cO0rD_wNZDYAMxJdD2wJRUs6omi99j26FSj=+fzgJyWGbw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5605B618.7010700@gmail.com>
Date: Fri, 25 Sep 2015 17:01:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAJv4cO0rD_wNZDYAMxJdD2wJRUs6omi99j26FSj=+fzgJyWGbw@mail.gmail.com>
Subject: Re: Webkit2gtk opengl issue
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
X-List-Received-Date: Fri, 25 Sep 2015 21:01:24 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/23/15 07:53, Mark O'Donovan wrote:
> I am working on an am335x based project, with a webkitgtk
> program on the screen, displaying a simple webpage.
>
> I want to use a standard yocto kernel, which I believe
> means I must do without the SGX hardware acceleration
> until an open-source driver is available.

You need to use whatever kernel the accelerated drivers were written
against. Sometimes that can be fairly recent, other times: not so much.

> Thus in fido I had added opengl to DISTRO_FEATURES_remove
> This worked with webkitgtk 1.x
>
> The webkitgtk 2.x recipe  also specifies opengl as optional.
> However it depends on gtk+3 which depends on libepoxy
> which requires virtual/egl.

For ARM SoCs/boards that have mali (which isn't your case, but is mine),
the user-space binary-only mali drivers PROVIDE egl, so it is possible
for me to build libepoxy with DISTRO_FEATURES_remove = "opengl" and the
mali test app and x11 server both build and run correctly.

> Is this an oversight??
>
> Is it possible to build webkit 2.x without opengl??

I don't know. But in the mali case it is possible to have mali provide
egl/gles1/gles2 and have mesa-gl provide an opengl-only solution as a
fall-back for any non-egl/gles1/2 apps (or at least theoretically it is).

Hope this helps.

