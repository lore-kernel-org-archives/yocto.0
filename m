Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92EA3E0127C
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 03:07:37 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 14 Dec 2012 03:07:37 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so14072153oag.11
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 03:07:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=s52JqwoPt9CQ2NquRIxXp9CN4UUC0FuCQ1166F9shhc=;
	b=Guaxi+gaV+2ST9Vz8pWTzap33Df+gOg6rLQLsnX/0Dwr5sZ+T1HQqJhCuwGZaMDkyM
	wr56+M9kf3QS1gdM+UkVlbf33T0IXW0NQNhXLKvJb1s5eUZMNGJNB23ojidYX3XWPOui
	GLozfCCLSCI2D87IxeTOF0lk7ULsrRQf8DTjgS0jXOW6WNxGxUsrUBYS0BY3EU0FIoM6
	lLAabz5IFzrUkUSPNumFt+AzPzd962aJB5CGrkvhmgYNASVaNzFtDqF9IMdfcDbCSRC9
	qY+3nttZQMmi+YxA3BItwVV5m1VZ2mmQQVngbKaRUkksGdUv7ZVz0H8uWnZZnQWveigT
	nwLw==
Received: by 10.182.164.103 with SMTP id yp7mr4223399obb.74.1355483256221;
	Fri, 14 Dec 2012 03:07:36 -0800 (PST)
Received: by 10.182.164.103 with SMTP id yp7mr4223388obb.74.1355483256079;
	Fri, 14 Dec 2012 03:07:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Fri, 14 Dec 2012 03:07:15 -0800 (PST)
In-Reply-To: <1355451995-29313-1-git-send-email-andrei.gherzan@windriver.com>
References: <1355451995-29313-1-git-send-email-andrei.gherzan@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Dec 2012 11:07:15 +0000
Message-ID: <CAJTo0LYSNbPTLQMKg6REuiW64Sc2TbLLow8VEVOPPAbdXXeSBw@mail.gmail.com>
To: Andrei Gherzan <andrei.gherzan@windriver.com>
X-Gm-Message-State: ALoCoQnJQgjpTyDLiH362d/6mnSKWeIgPxBpLoE4SZjiPSLNRLoAUY8Iz95Imw78Ai0cT3VQ16FTexurFQIkC4mq28BmJOw5X5iX/O2BigFo/eJDNHaB715BeiHLumZIbKcjsavuCY2RgeIGORvj/06nNbtD2XvseA==
Cc: florin.sarbu@windriver.com, yocto@yoctoproject.org
Subject: Re: [meta-ivi][PATCH 1/2] mesa-dri: Sync bbappend version with oe-core
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Dec 2012 11:07:37 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

That append just does:

PACKAGECONFIG_append_vexpressa9 = " gles egl"

But 8.0.5 (and actually some of the 8.0.4 releases) have:

PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'x11', 'x11',
'', d)} egl gles"

So you can drop the bbappend entirely on your master branch.

Ross

