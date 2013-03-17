Return-Path: <insop.song@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD863E003DB;
	Sun, 17 Mar 2013 00:36:26 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id s43so3916083wey.21
	for <multiple recipients>; Sun, 17 Mar 2013 00:36:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=UEp3+3b1e5fwQrgr9ej3LpCOb+2uhGzJrLbwRv3ee20=;
	b=yQ4ehq9LbdWERtnZ9g41xgtHQ1QhSvJbWNXIbw7QXMmfGBVV5bMU+dcroBxcmdEhmJ
	vX6yiklbRk4KBB4kOk1OIAy804LcWJWEkUpAsz2BSRoyS6g3Mzsl67HRDH4OY1r+wlc3
	8Ut0bNCuytiHDJMzvYMKZDCuP2XjJ44fvmbec4mkl8CVjNN1CDWXFyHU9yTZFXIPSkTb
	x0KsST0hV9HMxpj2jxlVM1/wfvVZ+xZeu7AKOBYvoXWpb8KAqohNM6WHz5XGmB/qPEQl
	/je99VxbujhT/kpBtWG8vJLe8/ukgE0sgQeKKDTPtIWZziJoUZkguROVqEVguQshB4zW
	Nfcw==
X-Received: by 10.180.77.9 with SMTP id o9mr10612457wiw.16.1363505785520; Sun,
	17 Mar 2013 00:36:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sun, 17 Mar 2013 00:36:05 -0700 (PDT)
In-Reply-To: <514540B6.2090307@windriver.com>
References: <insop.song@gmail.com> <cover.1363428594.git.insop.song@gmail.com>
	<514540B6.2090307@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Sun, 17 Mar 2013 00:36:05 -0700
Message-ID: <CACzyEJ-Fe8iGEHH8ddG18Op_1sfkNBhVtWTsJcRhf4cxaVw6kw@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH 0/1] [meta-realtime] Add rt-app, schedtool, define core-image-realtime, and append recipies-kernel
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
X-List-Received-Date: Sun, 17 Mar 2013 07:36:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Mar 16, 2013 at 9:04 PM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:

>
> This looks good to me now, I still think we'll have some confusion
> between the core "rt" images and core-image-realtime that we are
> introducing here.
>
> I may rename it core-image-realtime-extended as part of the merge,
> if that's acceptable to you ? I think it will be something that
> we'll need to revisit at some point, but that's not a good reason
> to hold this back anymore.
>
> I'll merge, do a quick test and push this out on Monday.

"core-image-realtime-extended" or "core-image-rt-extended (to be
aligned with existing core-image-rt)" or something along this line
sounds fine to me.

I was thinking of updating my patch, but it would be better if you
decide the final name, so I won't update the patch for now.
Or if you know which name is the best, then just let me know, I will
update the patch and send it to you.

Thank you,

Insop

