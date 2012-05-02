Return-Path: <kergoth@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 128AEE0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:20:32 -0700 (PDT)
Received: by wgbds11 with SMTP id ds11so711450wgb.5
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 08:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=dgINxxLWqzkyJ7L2DGw+2VKVPMf0KxAtSIeUKS7EjYo=;
	b=W5PU/YrPLmDbbZlh2s8P+okWDOYsDlAVKBupsjVjviac5T2wEcCB6HQ0ELwTPNnDDC
	iLSFCATaOpO1bm0bjq/NJdRx5ed3hfu7zVJmJUx3SO2flMQaRuoSmtuT6zTXlnjgJBh9
	WsTVKa3mKQNqpYWrDsKeygIlJq7MeA5A19NjqJlKH1Fiue4FTzMr5B/0T1y95mhNbyd2
	H+1+1FpH95FGl4DWgGoEPzMx8rJdrUYWpy/uX1Wq9AfDyVWsQyjU0oP5xaabYIePV7d/
	05xLzOye/JzMEyFFXWtVbQyiHBI2aOLMMfSabHVbFZUm/ss5CfP7g01e4lFsyGJAqVLh
	8xwA==
Received: by 10.216.134.136 with SMTP id s8mr17851374wei.6.1335972032043; Wed,
	02 May 2012 08:20:32 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.209.9 with HTTP; Wed, 2 May 2012 08:20:11 -0700 (PDT)
In-Reply-To: <CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
References: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
	<CALZ2gZXUVzF6zrMPEb=aWd9Wmmpv+i+b5-+FtzFmaWJmutSZuQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 2 May 2012 08:20:11 -0700
X-Google-Sender-Auth: nd2zFH7smiZG-OC0vDpu7idzDBI
Message-ID: <CABcZANn=sp+CEBPGu+7+isdCEY974Zmt=6V3QOKVA6MhXkK+fQ@mail.gmail.com>
To: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:20:33 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 2, 2012 at 8:18 AM, Osier-mixon, Jeffrey
<jeffrey.osier-mixon@intel.com> wrote:
> Good catch. I'm still installing 12.04 and can't check at the moment,
> but there is an easy way to tell:
>
> file /bin/sh
>
> If it points to bash you should be fine, if it points to dash then
> you'll need to reconfigure. Please let me know the results and I'll
> make sure it gets documented either way.

From discussion on IRC, folks have said /bin/sh being bash is no
longer required.
-- 
Christopher Larson

