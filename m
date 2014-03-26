Return-Path: <otavio.salvador@gmail.com>
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDC69E00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:22:01 -0700 (PDT)
Received: by mail-yh0-f49.google.com with SMTP id z6so2711082yhz.22
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=Ndcm84fD0PqDVemWYw+iwUO++R7MemN+PF3a1tY5wdU=;
	b=RbZYSgZK2uFwfYAgs7htx610lPfNRZ86k5hlOoWw/Mxxjvw5oCl0Cg+M8SwspAen8f
	PJS4yjmxZQMlibzBRny20GQwS8Z0qVHRBJt68kkEcBARD/4B/FUAH9XUIx2uGMmOilpJ
	FJhWh7ZM8UxwQ80GxZu0ICVR7s1uBC4vjR9qGCD6hVIhefNn1fvRbdhNo6rdFNal1QRz
	9ZXAzBNN++5D3TWY10qKQJWoObM1ohSWOi7JXbSL7+2jfGlVaQXmx3+VTr6zAYBYjM1f
	9ZvXZiUCLqZ0UpnDZT3gInK4vS0M/V9J9OW0ADMFlmoeJmBPZfwg/97yw6i8+ohtxka6
	wjRg==
MIME-Version: 1.0
X-Received: by 10.236.91.67 with SMTP id g43mr4130632yhf.146.1395868920624;
	Wed, 26 Mar 2014 14:22:00 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.170.124.72 with HTTP; Wed, 26 Mar 2014 14:22:00 -0700 (PDT)
In-Reply-To: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
Date: Wed, 26 Mar 2014 18:22:00 -0300
X-Google-Sender-Auth: wvN_6NrXNWX_PKxf_mBrahKO5vw
Message-ID: <CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Wed, 26 Mar 2014 21:22:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Beth,

On Wed, Mar 26, 2014 at 6:14 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> I'd like to start looking at reducing the number of artifacts we're
> releasing both for our nightly builds (which is at 250,000 artifacts
> and .25 TB!) and releases.
>
> What I'm thinking is this:
>
> Reduce nightly:
> - Reduce ADT-REPO to just qemu* arches for all builds
> - If every QA team could provide me a list of what files they actually
> need I could reduce the published artifacts to *just* what is needed.
>
> Reduce releases:
> - Reduce ADT-REPO to just qemu
> - Don't release ipk/rpm/debs. Continue to release ipks through ADT
> - Don't release machines outside of BSP tarball /binary directory
>
> If folks who do QA could get me a list of all the files they use, we
> can start removing excess artifacts. I know this is a balance, but I'd
> really like us to start targeting our release artifacts to just the
> things we need.

I fully agree on that.

Is there anything you need specifically from me?

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

