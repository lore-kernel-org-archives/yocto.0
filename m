Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65987E013A6
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 07:34:30 -0700 (PDT)
Received: by eabd1 with SMTP id d1so182373eab.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 07:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=htIyJl98CsgEXd9PTgjFvcFWduItCvKXUHGCC4T+AtM=;
	b=UOnr9C8oSPrZs5xgyr2GMsU7nk5nfE19DVnzw47auHiU8vkxclMBqyt+PVB1zMqjCn
	vLg3py0iAE7hmgGXd94ZBs64uZCV0kJOB2cvArAzXrmXVmEHGfoT7GNcQA0V8QXOZnN1
	89K2doTIXLY+SXxKTR/sXninXM+lsvEoKAHNccUrXqkC0/RtCuj96Gn76K4EUzxAbbIg
	H4KVxfwKN5M6texT/ZP0h1MFDRpKRHi7yM1NOpok6zbXdEcdUEZnBHnc53tjvUK/zw5i
	imnEh/B9f+69oAJ+OPIUVxGYWjL6QgrSTzSxOKZWaHXYx6g7XZGxCFrs7NwbQX+DTVcA
	/MHQ==
Received: by 10.14.213.137 with SMTP id a9mr5461063eep.38.1344522868426; Thu,
	09 Aug 2012 07:34:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Thu, 9 Aug 2012 07:33:58 -0700 (PDT)
In-Reply-To: <AE1E9C2D-94D8-4AF6-B652-8AC3800BBACB@gmail.com>
References: <735CD356-A6DB-4939-9C39-EDB0A15D7343@gmail.com>
	<CAMKF1sogsUv1ahoYdTBFoM8oVq0u410Wi8Ghv5WRT+uN4FgK+Q@mail.gmail.com>
	<AE1E9C2D-94D8-4AF6-B652-8AC3800BBACB@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 9 Aug 2012 07:33:58 -0700
Message-ID: <CAMKF1sqJRNm40+tyc6gnWV8RSHjZ64ZQ4aNux3ZSuUiNYY3V=Q@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: poky/bernard: gcc-4.5.1 configure: error: cannot compute suffix of object files: cannot compile
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
X-List-Received-Date: Thu, 09 Aug 2012 14:34:30 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 9, 2012 at 6:31 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Should I ensure that the version of the kernel and the linux-libc-headers match, by creating a linux-libc-headers_3.3.0.bb recipe and setting the preferred_versions accordingly? Would this mismatch cause issues?

You could.

