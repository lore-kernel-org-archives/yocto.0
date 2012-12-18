Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9A1AE0052C
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 03:36:06 -0800 (PST)
Received: from mail-ye0-f200.google.com ([209.85.213.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 18 Dec 2012 03:36:06 -0800
Received: by mail-ye0-f200.google.com with SMTP id r13so796818yen.11
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 03:36:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=wqLQSOzjfI81mPewIwCp8hL8psbWwmxxF0SaO55THGQ=;
	b=iYZVPpQmhAaQjxgS8+fUi5au7mX3BVyOfvEdebhkNsoJ4TWuGKDr99cGF/33CUfP55
	cpc4IvtKbig3G3UW2eZmweUj9tgf4dvmJpwzIgbjkQxvaZw5IObH31WVpZvuJlI7mAHx
	/bs0jEi36n8+ZAfNNwWwKewWF+iIbYPnJO56mGKw2HCig8Qb1UgY9BCVcSQuvYgeRZnQ
	GPau0AeaxMCpZvQv0BDodrXboeQ8OkGNSZqJbSip68fnxYzzZybC0/SjWO5SjfatikMA
	cEWstxp2QiottBeONXzHI5saKdXQb73GfstN5lhX0tE4fnmCYIYsJFC/8NlwrT5nBeCX
	ES5Q==
X-Received: by 10.52.37.9 with SMTP id u9mr2047884vdj.83.1355830565107;
	Tue, 18 Dec 2012 03:36:05 -0800 (PST)
Received: by 10.52.37.9 with SMTP id u9mr2047871vdj.83.1355830564865; Tue, 18
	Dec 2012 03:36:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.178.244 with HTTP; Tue, 18 Dec 2012 03:35:44 -0800 (PST)
In-Reply-To: <20121215132238.503DC201C62@gemini.denx.de>
References: <20121215132238.503DC201C62@gemini.denx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 18 Dec 2012 11:35:44 +0000
Message-ID: <CAJTo0LaEoAv6hi6D_pxGJA=uLzA=YRHE0B-nd8s9YK+hV-w48g@mail.gmail.com>
To: Wolfgang Denk <wd@denx.de>
X-Gm-Message-State: ALoCoQm92qJ1Wn6wg5R7orsm0XCdcBxtlfcKiOVKObwHTaI1fjEZR/BWJaj2cwacwxp9b083KmkRH7LImn2KZZlBBv89AdGzPv9KFBIQ91jrCyky2/TH7AF+VE915k0lOlrCSZ+hHaipuXroPwUkBTftI+0aq6PMgw==
Cc: yocto@yoctoproject.org
Subject: Re: Git tag systematics ?
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
X-List-Received-Date: Tue, 18 Dec 2012 11:36:07 -0000
Content-Type: text/plain; charset=UTF-8

On 15 December 2012 13:22, Wolfgang Denk <wd@denx.de> wrote:
> can anybody explain to me the systematics of the git tags ysed to mark
> the Yocto / Poky releases?
>
> For example, for Yocto 1.2 and before, we have release tags like
> denzil-7.0, edison-6.0, bernard-5.0, laverne-4.0, etc.
>
> Some parts of the current 1.3 Yocto release refer to it as "Poky 8.0"
> or Version "8.0 Danny", see for example here:
> https://www.yoctoproject.org/download/yocto-project-13-poky-80
>
> However, there is no such release tag as "danny-8.0".
>
> Instead, there is a tag "1.3" - but there are no similar tags as "1.1"
> or "1.2" for the earlier releases?
>
>
> What is the system in this numbering / tagging?

I think the problem is that there isn't a system - there's a mix of tag naming.

If you know the name of a release and the corresponding oe-core/Poky
versions all the tags are present, but that's not ideal.

> Releated:  is there any document which explains the branch names being
> used for development.  for example, how can I find out ("officially")
> what the branch name for Yocto 1.4 will be / is ?

The name for 1.4 is top top secret until the release.  It will be
decided by Richard and he keeps it a mystery until the release.

The names are in themes, the Inky / Clyde / Blinky series is easily
googlable, as is Laverne / Bernard / Edison.  Denzil and Danny, well,
Richard thought he told me what the theme was but I can't remember and
he won't tell me again. :(

Ross

