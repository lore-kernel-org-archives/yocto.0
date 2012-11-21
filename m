Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDEBFE01423
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 00:41:44 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 21 Nov 2012 00:40:46 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so31115930oag.11
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 00:41:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=IqA0iwZgmpLhKorxxctNNU+cFDsXMg2nHOYlhi+T3yc=;
	b=IkXDO18vauGJSO3tYpTu5ZGdl7yBYXbTPwT8pq4hh2XbeJpu8VKLMq/AAa0pPeEwlP
	uEHBzEBzzjbeFznWjFKd7COdc156hy+sYxu6xxx3qmpKXUNkQRBy8PbC7bx12aaMJN6J
	o59a1fLnsu3KNBjI09PQ2RycEH9nssiP3u65QgOMRcqNBDh5wONaxDBX5hQJFnbW90v8
	nmVWGGw+PeVgTOT4PSb55ap+vZOGFHMgVg9LWfGnAxc79BRO29+b6CkUwBc50PrXjJya
	SjvE9Gt0jzBQOeiTZ4uCJVOMLdT/p0LjzIF4FKkM1Psl41r9FOW0EIj3swneltT0rO4I
	ZReg==
Received: by 10.60.24.10 with SMTP id q10mr15303079oef.120.1353487285857;
	Wed, 21 Nov 2012 00:41:25 -0800 (PST)
Received: by 10.60.24.10 with SMTP id q10mr15303073oef.120.1353487285718; Wed,
	21 Nov 2012 00:41:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.154.37 with HTTP; Wed, 21 Nov 2012 00:41:05 -0800 (PST)
In-Reply-To: <CAOT3miKZaw+s=0QSp+nh8-VnL+-ez=Lz6M849=o3UVLJfXwjhQ@mail.gmail.com>
References: <CAOT3miKZaw+s=0QSp+nh8-VnL+-ez=Lz6M849=o3UVLJfXwjhQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Nov 2012 08:41:05 +0000
Message-ID: <CAJTo0LamS=ZF-o3MH-RHpE1THz2+Nr_KUaEEJ2Ff=9wKxii62w@mail.gmail.com>
To: Nicolas Dechesne <ndec13@gmail.com>
X-Gm-Message-State: ALoCoQmoVqL6q9V3yQ3f8k/rRNMerkj0S2ry88ercOC6aTG9PXizGCpQDsauibfspeB63ScrkwWrBqW39i88Fik2Jy5f/oIiVtK7636RnEnR8rvLTeiRQxMJxc3auBKFc+1i1irMkDGoeIQ0FK2jNvk9qrtMmIA3Vw==
Cc: yocto@yoctoproject.org
Subject: Re: build error since commit: gcc: Use FILESPATH instead of FILESDIR and cleanup/simplify
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
X-List-Received-Date: Wed, 21 Nov 2012 08:41:44 -0000
Content-Type: text/plain; charset=UTF-8

On 21 November 2012 00:44, Nicolas Dechesne <ndec13@gmail.com> wrote:
> i was attempting a rebuild from scratch with today's master of poky, and i
> was facing issues such as:
>
> WARNING: Failed to fetch URL file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch,
> attempting MIRRORS if available

That bug was only briefly in the tree, so do another pull.

You'll then get image generation failures with libgl, which I'll be
fixing today. :(

Ross

