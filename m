Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8861E00991
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 07:48:16 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id ec20so839758lab.1
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 07:48:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=zriUSezIvB8dkSKt5paIxe2+sQXUo9AeU0PL36S40Ko=;
	b=WFjpj5APnBD3agoWVqp8OOa1kMsKY8mJfq5ENtAIij5wgRJVhfdwMT9h7WjzArVfdY
	FdDiQeKFu+nkoWQeHazh7SpvR9lpyjqoiFfWHs5L8f3b5jIbaI7to3jixylpl4HZQgTJ
	R5gAuZOqnGaXtJRGoKsTXBjixVmV7RXFETSDxMNFDlNiuWl5oiVIVXaRx+8b52PX+naf
	scr5T1Sob1hHGIBKNLSJtwzhBj32RTspAabf62hCZat70go4Mib031hK12y5YqGB8yq3
	yq1tx9X5y8mJICgORgeon0AuPNLqQPyKgpwRNTDLMsHVm+7zpDrBxRYRVBKqXhNc/NUz
	Y/aQ==
X-Received: by 10.152.3.72 with SMTP id a8mr2691493laa.33.1394034494927; Wed,
	05 Mar 2014 07:48:14 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.200 with HTTP; Wed, 5 Mar 2014 07:47:54 -0800 (PST)
In-Reply-To: <CAA7h+Eo4YT9Wq9sG827u1sX23eE5asfzv3kEkQ_5d+7B-cMTWA@mail.gmail.com>
References: <CAA7h+EreYR9drptegiSJmnk9b3asLHdemDNLyPeSF4pyUE9ukw@mail.gmail.com>
	<CABcZANnoOxT2x1ZQ_wbmJrjuWMbZOCYOA7U2qfygES09qkd7MQ@mail.gmail.com>
	<CAA7h+Eo4YT9Wq9sG827u1sX23eE5asfzv3kEkQ_5d+7B-cMTWA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 5 Mar 2014 08:47:54 -0700
X-Google-Sender-Auth: NoHJYFQBupTXXPZiSxrw-UTcUgQ
Message-ID: <CABcZAN=JMEKMO_Ht=i9BJ-qduMgyzV=ju+z53CgAQsUE7ay9VA@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GLIB-2.0 target compile issue
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
X-List-Received-Date: Wed, 05 Mar 2014 15:48:17 -0000
Content-Type: multipart/alternative; boundary=089e01419f34dffb2604f3ddf21b

--089e01419f34dffb2604f3ddf21b
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 5, 2014 at 8:47 AM, Rick Bianchi <bianchirickkutta@gmail.com>wrote:

> Can I just add the dev-pkgs to my local.conf?


EXTRA_IMAGE_FEATURES += "dev-pkgs"
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e01419f34dffb2604f3ddf21b
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><div class="gmail_extra"><br><div class="gmail_quote">On Wed, Mar 5, 2014 at 8:47 AM, Rick Bianchi <span dir="ltr">&lt;<a href="mailto:bianchirickkutta@gmail.com" target="_blank">bianchirickkutta@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Can I just add the dev-pkgs to my local.conf?</blockquote></div><br></div><div class="gmail_extra">EXTRA_IMAGE_FEATURES += &quot;dev-pkgs&quot;<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics
</div></div>

--089e01419f34dffb2604f3ddf21b--
