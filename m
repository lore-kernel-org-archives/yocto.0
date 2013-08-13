Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331E5E002F9
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 06:27:31 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pb11so6623274veb.39
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 06:27:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=po+8xz7dc199l8gDf52Sz0EP1846Rj/LdOgBaxjU/Yc=;
	b=mep2ZVmTswQFtEMvkPfhMlGGqk9qAT4+S+v7JFhW2ogaIseNNOngf5lGRyQSqxDm/C
	ZFJxdmkooGPvsWUZy6etYA53EaFbH8t9Qmh/F4fmgmNbQLPGRlU521v2bBe1D747VKxJ
	gQSjMK3Tw9us8h2N8Z1NL5QWWzl2muJ1TvelL3l75dHXTDuJAp7KDD77wp5FQ3uR5E93
	EnZi0+TNxhMLVZRZCq4Cbc933z8pcTKIoOGNEVzr1UBnRVde4BfTOQDw73eB/KMuyP9W
	IlxWlzMjMN8qa0P36O5HRLluXRpH/fR/L0P8RMbIJ0XTgLTEyOjFuBsE8OIu/22g97dR
	x92A==
X-Gm-Message-State: ALoCoQkkpAPxcX+RkWVEGH8MAfqhmFbNblVotMSjsO6tVbd8KkUlayDzyKxSlyXzK2BE1PF/iqJJ
X-Received: by 10.52.94.115 with SMTP id db19mr832113vdb.38.1376400449615;
	Tue, 13 Aug 2013 06:27:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 13 Aug 2013 06:27:09 -0700 (PDT)
In-Reply-To: <20130813113252.GM17945@jama>
References: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
	<20130813113252.GM17945@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Aug 2013 14:27:09 +0100
Message-ID: <CAJTo0LZNin6vVixi7G3kNsCo=WRE4JYF4VSep14vd51+Fh_apg@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using tmpfs for WORKDIR
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
X-List-Received-Date: Tue, 13 Aug 2013 13:27:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi Martin,

On 13 August 2013 12:32, Martin Jansa <martin.jansa@gmail.com> wrote:
> 1) with 64GB ram + rm_work I can do my huge world builds (with 20+ layers)
> in tmpfs (whole TMPDIR not only WORKDIR)

As I said, ungodly amounts. ;)

I expect tmpfs for $WORKDIR or $TMPDIR is incredibly useful to remove
I/O limits from CPU-heavy systems.  I've only a i7 but I expect you've
got quite a bit more CPU available for builds.

> 4) using tmpfs has 2 more advantages
>    - disks don't wear off so fast

Definitely.  I had a paragraph along these lines in my drafts but
deleted it.  Even with just WORKDIR in tmpfs I was seeing massively
reduced disk use as it was only used to read the source tarball from
downloads, reading the sysroot (likely entirely cached), and writing
the results to sysroot/sstate/deploy.

Ross

