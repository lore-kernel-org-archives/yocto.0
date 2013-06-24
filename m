Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 871C6E01408
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 07:57:49 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id c13so8713549vea.21
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 07:57:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=UbHHXEUUylurHN+Jgky9LQPbWZlsuSXYWMn+Yjf4bt8=;
	b=EiAwwFjiUl6SMINMhWde318RYMUt58Q8651+KpmQUYx30Bdkqlvr32bE1qVVfbbbn7
	uI6IEGTq9nX0r1qLjDvFoDwBJgGQL3TnH3Insu1foUnGfWX1+K4BAhwBqTFXli4OI8wj
	P1hbWG7gJKoW+Ufato96wZRrBa0dWxxLBx0fTAVU/ffWjqd2Zu383SQvS1bI+OkcqlkB
	9MchVlPaZqmbgtMOdlie80AdymA29JNN3ZEwAUEbOEnAHtMwsDtg5BV6yyWoaHQJCFI+
	W/LC2izfexRk1X21mQDHYVG5l1PKm+fOCPz91DCOR8I6/kKBX5aAxW4nTDlEQedXnA4t
	bUKA==
X-Received: by 10.52.163.46 with SMTP id yf14mr9805034vdb.58.1372085869181;
	Mon, 24 Jun 2013 07:57:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 24 Jun 2013 07:57:29 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1306241046210.24762@oneiric>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 24 Jun 2013 15:57:29 +0100
Message-ID: <CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQnVsWnRBkUXFQ6MOSuj/xmniy7VUS12T116mzXJfpTjxUHVnlt+QkNZgc7dv7KS+3xmNFlm
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Mon, 24 Jun 2013 14:57:50 -0000
Content-Type: text/plain; charset=UTF-8

On 24 June 2013 15:47, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> On Mon, 24 Jun 2013, Rifenbark, Scott M wrote:
>
>> What I was trying to convey here is that oe-init-build-env draws on
>> some files in the meta-yocto layer.  The script oe-init-build-env is
>> in the poky repository (or refered to as "Source Directory" in the
>> documentation).  The sample files are in the meta-yocto layer.  I
>> thought the meta-yocto layer was needed... maybe I am wrong.  Can I
>> get more clarification on this?
>
>   i regularly build images without any "*yocto*"-named layer, unless
> i'm misunderstanding the issue here.

meta-yocto is what makes Poky Poky, otherwise it would be just oe-core
+ bitbake.  oe-init-build-env looks for sample files in $TEMPLATECONF,
which is one of the things that get munged as
bitbake+oe-core+meta-yocto becomes poky.

Ross

