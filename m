Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.7589.1586166636872462767
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2020 02:50:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=nPU+w0Na;
 spf=softfail (domain: burtonini.com, ip: 140.211.169.56, mailfrom: ross@burtonini.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D188E01966; Mon,  6 Apr 2020 02:50:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22224E01927
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2020 02:50:33 -0700 (PDT)
Received: by mail-lj1-f174.google.com with SMTP id p14so13926432lji.11
        for <yocto@yoctoproject.org>; Mon, 06 Apr 2020 02:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oXpt8Zbzwy2T4RLY2029xk3vWqCE/hS2/+Yw9G54aM8=;
        b=nPU+w0NaC4HSsEyph9lXSTi4lSp4af7HqWNxRUfameDVSWIPp7QIJJSsECXFCBKwtB
         PlZBDRnyR3ZFNi0KHk/14HT07HJRjEylmt3KrjH3/6aTHqaOQtHadaPUSbqqDBHkA4PU
         mTFCQ4GHivM5rEUOsq6TImbSRMyF3wmzALTr+AYfCYu+CoWyOae1UwQWBb0WlkJgpKnD
         ZKapgco3Gd85VWKMMrSk7Guo52xUT/ErD6yHtAZ0j5GZp2nPiQ/PBlgUv0a/vj/dHfZ2
         xDrtNuflkslXolDBQRt6C/wZaPKVDBxtaSLkLacxTZ/8d6vT5QPsAsG8u9G8hb13zytG
         3q7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oXpt8Zbzwy2T4RLY2029xk3vWqCE/hS2/+Yw9G54aM8=;
        b=r53sPX7fCPnlmMVG6uGZH1GnYW78XN0+XQzA4iYkD/xu7DBt8A0Rw29sp1cB344KLE
         sJg7okbnNTSakjReK6//Mz5vt4dfQ9KtdvlYIoeuwEV/zE3FDudnulD0uaCde5BbweMi
         5oHAbG31VQUQmc96X3NEFgP1ZG9zUG+1ZUvw01e8vnCiwSReoZZ6Hp0DZ8K3AmXIGztl
         Jn6+5uTG9sZPHnMFLf3xEZvUQC/rxmY5Fk+9gHwN2pzw77sbtmbVbVl+yWV+QnBbC9Jo
         6JDghWSildPBHhANZuE8YcDGcyf2bkJoWOWulvn8qBWUsgNsbK0WYdwAwk/353DG48rZ
         DEhQ==
X-Gm-Message-State: AGi0Puapgv/kGV5sdEEQcKn3yvctneF5J42Wu+UYa/+s6PwfoKibCMVw
	GCmlreUv8sE74cvOJwzaUB2s/J+XEzlF8iXW9SsiqULLToJeqQ6T
X-Google-Smtp-Source: APiQypJs9QxCGyA6N0maYBMSVx8IOaLfEZVFsHuCj7qZA00F+IWr9HuVFdqrKN7T8dcIoW2L8W0rNsy8nn2Nu7Hkng8=
X-Received: by 2002:a2e:9789:: with SMTP id y9mr11197094lji.207.1586166632821;
 Mon, 06 Apr 2020 02:50:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAFSZm+gPARCC4ki+7XtYCSYgVsO87EzB=x60p8rXX+QXGh6YHA@mail.gmail.com>
In-Reply-To: <CAFSZm+gPARCC4ki+7XtYCSYgVsO87EzB=x60p8rXX+QXGh6YHA@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 6 Apr 2020 10:50:22 +0100
Message-ID: <CAAnfSTv58typ3h7ebGYhPGO718KTNgkQESmKYdwCaYmB6AVRmQ@mail.gmail.com>
Subject: Re: [yocto] Any way to enable automatic package-index if rpms are changed?
To: Joel A Cohen <aaron@assonance.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, 6 Apr 2020 at 04:09, Joel A Cohen <aaron@assonance.org> wrote:
> One of my most frequent annoying mistakes is to forget to run package index.
>
> It would be nice if I could INHERIT += "auto-package-index" or something like that.
>
> Is there a hook that such a class would easily be able to hook into?

I did start implementing this:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=ross/index

I think it mostly worked but wasn't quite finished.  If you're
interested please do grab those top three patches and give it a go
(INHERIT += "package-index").

Ross
