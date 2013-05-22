Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f173.google.com (mail-vc0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59D78E0129D
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:18:13 -0700 (PDT)
Received: by mail-vc0-f173.google.com with SMTP id ht10so1483254vcb.32
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 10:18:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Kd0J3esUO3IiwbBjoxOrA+JG3xwcJTXlfK1bsxlgSzk=;
	b=XZs1HJktZGJidcrB8rFRr8l768EXtl52EudWbZLc5bEdg9PRj4BCYl4DdqhmogjaD4
	jGYX7bsOuzH+rVwJdsEvjtSFZKeBDXtfXkL+P0KXWUn5twjTT9YZPLjpSOmaWWE27/eH
	u9KCEKM9ylHc6NZi+j9N0gaCStiY799occaHwtK2IyjqP92ZhuZuylXqa5tI1iPeAjjk
	Uy6ssnDv3KhRoewJR8FtM25DL2cTDHCjePBtDqLjiFPz5yyLJRoH6ii9kjoln42OaSC4
	Ce4sQ63YKBw0kYaPWL3KPi6naGcuCTwYQ5BtKGC/9Vy1cjlivP7v5s24IdOZriYsQtcC
	IxwA==
X-Received: by 10.52.69.200 with SMTP id g8mr2648758vdu.4.1369243092863; Wed,
	22 May 2013 10:18:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 22 May 2013 10:17:52 -0700 (PDT)
In-Reply-To: <CAHyyKNmFiF6K63543Ya4sQn9z8RwTyfykNGq-NKP7jwnsvwRGQ@mail.gmail.com>
References: <CAHyyKNmFiF6K63543Ya4sQn9z8RwTyfykNGq-NKP7jwnsvwRGQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 May 2013 18:17:52 +0100
Message-ID: <CAJTo0LYN1u+m-0cdrmUtRbz_m8QNeF3RC97E4RT4TMYTgHXoXQ@mail.gmail.com>
To: Alex M <0xf777@gmail.com>
X-Gm-Message-State: ALoCoQlg4pK15ZGQPwij5xK2LAS6X64MLddUa7lGZ7C1PZa9oFKaU5Q/zsNh846cxsVazd/682dU
Cc: yocto@yoctoproject.org
Subject: Re: remove --build option in configure
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
X-List-Received-Date: Wed, 22 May 2013 17:18:13 -0000
Content-Type: text/plain; charset=UTF-8

On 22 May 2013 18:14, Alex M <0xf777@gmail.com> wrote:
> I'm writing recipe for ffmpeg and it fails at do_configure stage because

I'll stop you here, because there's a libav recipe in
meta-oe/meta-multimedia you can probably use.

Ross

