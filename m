Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C89FAE00754; Mon, 23 Mar 2015 09:01:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-yh0-f43.google.com (mail-yh0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D40DE006DA
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 09:01:07 -0700 (PDT)
Received: by yhjf44 with SMTP id f44so70815084yhj.3
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2015 09:01:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=4Kvuoi4G0a0RZFvhL048zeR/Q5Zn2o0DzaCOmKfz/qI=;
	b=hclgQUPOmsvQLoB3agloDPD+e0cH8DRz3EuXfuqo6TABWiTa9Ty5/HSz1aosMbjHx9
	v+odTD15vYSxkOJWfFXBmIDSQIM0hqAgYjncWVZOupWBNWfuacksUoJ3gNu/uVp1OgyS
	SKAx/d/3UzfKQ6E/brUBkcmvMxy5/+hih6N91X9loJLGKseQ0DZIIb5WrgCrSnkuhkTL
	rLYMiWgx2Xd5O3M/PdwWG2kjUV0njO81uQbHWYbLyl7Iq69Ks66hR9L16GdV7CcUmkd7
	OmhL9Ojt0dBwgId5ZkySlT5t++VYUlQmGYi3NWnsXszCNoD2ni/JTqsDVh60BgZDfIwS
	RTBQ==
X-Gm-Message-State: ALoCoQkPZ5Tnc1vgkQfwD2SDpF6hIrf9waYnQvTrPTs9RRGFS5WOS8IdiC6uZFwGs0mJ43gCwiY5
MIME-Version: 1.0
X-Received: by 10.52.118.9 with SMTP id ki9mr99543421vdb.11.1427126467103;
	Mon, 23 Mar 2015 09:01:07 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Mon, 23 Mar 2015 09:01:07 -0700 (PDT)
In-Reply-To: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
References: <1426860894-13604-1-git-send-email-joshua.lock@collabora.co.uk>
Date: Mon, 23 Mar 2015 16:01:07 +0000
Message-ID: <CAPhnLPDXV=N1iPZ2RvXGhFH5NRfgQvRprTQOC=C8Z+T422+ptg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Joshua Lock <joshua.lock@collabora.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2][autobuilder] Some fixes for PublishArtifacts
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
X-List-Received-Date: Mon, 23 Mar 2015 16:01:11 -0000
Content-Type: text/plain; charset=UTF-8

I'm ok with both. Honestly, I've been hating on PublishArtifacts since
I wrote it, so it's not like this makes it worse. So I'll pull both
patches, however they won't hit production until after the next
release.

-b

On 20 March 2015 at 14:14, Joshua Lock <joshua.lock@collabora.co.uk> wrote:
> When deploying an autobuilder today I had to make a couple of changes to
> for variables I'd set in config/autobuilder.conf to work.
>
> The first patch for TMP_DIR seems good enough but the second for publishing
> sstate I'm more than a little wary of, mainly because you have to enable
> sharing sstate in two places (which is twice as many chances it'll be
> misconfigured)...
>
> Joshua Lock (2):
>   PublishArtifacts.py: respect TMP_DIR if it's set
>   PublishArtifacts: enable publishing of sstate
>
>  .../autobuilder/buildsteps/PublishArtifacts.py     | 51 ++++++++++++++--------
>  1 file changed, 33 insertions(+), 18 deletions(-)
>
> --
> 2.1.0
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

