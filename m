Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2532E011AF
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:45:39 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id cz10so3161806veb.35
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 22:45:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=CLvPya8KiGteKZzcy9jJ/LtyFE0DJMpp0V67Na8DHK4=;
	b=e6URi2dZVyG1EEOZ6xNzmNZhqre6yXUlgHxtG6DwBv2oljuQ1iht+8WKWs7TZzbt/c
	Rc7S+9EdReA559fi1tSwKUOfU9B6FTNiq1xjiGbMgR1SkBov8ueBsieK8nCyeLa2oVe8
	ZKi5AZd+P/MDXAu8V5JDqatw0e0brh5zQkQtILLWuD94DCu88ot74bXAuVkGaxPGskOL
	fjLSY0dtN44fDRlFeucs0c31Q+5/zaGEd62O5pzZpluGviHKCJKeZgOQAQWy1mokSerA
	LViv3hGX/H/17Kz/hdI3mwpBnceVkCe75Q64wRydTel5y5gcLvtKdUKcwUmdNF6Ya15/
	ECVw==
X-Received: by 10.52.230.197 with SMTP id ta5mr8939996vdc.103.1363412738530;
	Fri, 15 Mar 2013 22:45:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Fri, 15 Mar 2013 22:45:17 -0700 (PDT)
In-Reply-To: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
References: <CACzyEJ_Xuu8P+sFsahsFECHe1bo2NGn=1HdJjASnE4GOdRES4w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 15 Mar 2013 22:45:17 -0700
Message-ID: <CAJTo0LY52qE3QMO_FffY3GOkt2VDd+bNbYkX130y3wv34zu5iA@mail.gmail.com>
To: Insop Song <insop.song@gmail.com>
X-Gm-Message-State: ALoCoQnAwoS6LTH+l1fx7UpGAt8N7751KTtz+YcExFlCtg9h/lDeyhYN6f+En6r+QLTxQpEoM2R4
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [question] "icecc: improve interaction with sstate"
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
X-List-Received-Date: Sat, 16 Mar 2013 05:45:40 -0000
Content-Type: text/plain; charset=UTF-8

On 15 March 2013 22:37, Insop Song <insop.song@gmail.com> wrote:
> I am using HEAD of master, and I have this error after I use commit
>
> "
> commit 1ceb13dda11645229053fc4840954333f8910ba4
> Author: Martin Jansa <martin.jansa@gmail.com>
> Date:   Wed Mar 13 20:04:51 2013 +0100
> "
>
> Could anyone know about this?

Are you sure you're using head?  This should have been fixed with this commit:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4022

Ross

