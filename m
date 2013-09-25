Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5028EE015EE
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 03:42:45 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id c14so4415606vea.38
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 03:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AXlp7L7/9QlYTw4jQeND9F0BsGu0Sv3AYn7sL2QycHI=;
	b=b3eMMeGFKQbpEbbK4GCEuHICZCcd/2oQWOokbksyxY0/jYcsaBD9jh7lArbtUeWzEd
	+GUFv5rFk8Ob00VggpJwRjXJEJdHjdUjtghQtCclsRnAQUnyQWvFtIGJnup0hcqG/FiP
	pBZi81DjNyA0xO7pSugx67+Oz46B2IENA5r9ozIt+8vYg3itJQ3gIlu2KBdt3FbJnhEi
	dmSFC9x5rNeVyfu9MhUzL94P+4YKFoFCR1TlaeZy5Dh/eYpQ3wnEf5/lZj1cQl7IoyvF
	koZImbO5ArXkkdGzh9Ijiue0sZlQAUR7PlDE5zusT5MNlx3AsaQi9CVt95WD66pjH7uY
	bHNg==
X-Gm-Message-State: ALoCoQn6zhPbGjej3GwjCUuZve0tKv6IOPAaftjU87J6c/z8w2bZFULzO87NoaayL4toL72hRaVj
X-Received: by 10.58.73.202 with SMTP id n10mr32681970vev.7.1380105765267;
	Wed, 25 Sep 2013 03:42:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 25 Sep 2013 03:42:25 -0700 (PDT)
In-Reply-To: <CABHD4K_EEiR4UPOcJM=vXWud+uk44=hZW38-D-RL+T6auiBJDg@mail.gmail.com>
References: <CABHD4K_EEiR4UPOcJM=vXWud+uk44=hZW38-D-RL+T6auiBJDg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Sep 2013 11:42:25 +0100
Message-ID: <CAJTo0LZOZdOrKkSDvaS62f358m-5ghGfFvw+v4hrNf6rX81Q9A@mail.gmail.com>
To: Amit Tomer <amittomer25@gmail.com>
Cc: yocto-request@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How env.sh sets up the build environment path
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
X-List-Received-Date: Wed, 25 Sep 2013 10:42:46 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2013 11:36, Amit Tomer <amittomer25@gmail.com> wrote:
> Now when I do ./env.sh build-xyz-abd

You need to use ". ./env.sh build xyz-abd".  Not the leading fullstop.
 If you're using bash, you can use the "source" alias: "source
./env.sh xyz-abd".  You need to do this as otherwise the script can't
set variables in your environment.

Ross

