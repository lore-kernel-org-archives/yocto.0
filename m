Return-Path: <evadeflow@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9244FE0045E
	for <yocto@yoctoproject.org>; Sat,  6 Oct 2012 11:46:29 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id x4so3408139obh.35
	for <yocto@yoctoproject.org>; Sat, 06 Oct 2012 11:46:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=z1UiOb6BBMTOmNF5SloO96+Q6fUFqY2xYF8UyTNouoU=;
	b=LkyiTPdnfjsF9g7ciPjHs7DXpELo+ywKr6VFA9fssq192jlNdtPb0peZX+uUKMN2YB
	FdCyr7kJ3iWIWw0eCGPzx2l8zCb3M3Zifg0vFXoC/sjRSKgNS6Ozy3SnVZHpQ3PdFJHX
	ADYU010kG9e5oR1O3qItpIr+wyLyTaxl6/BRuQAtu/Q5Mu6RaTm4SDurRsktFqM0Vg/2
	weXxaB9FIJjJidxE9hvAVFaeHE2XNy626paFx2hhUx72ENoq5AWCtvoC/2mO2M5EN8U8
	blpeC0s8URXtvgnDv8N8jMMQZaLBzsiLxzIxw+hdAtYs1NzzhAb1K5J47ScESN7iaRqD
	u3oA==
MIME-Version: 1.0
Received: by 10.60.14.5 with SMTP id l5mr9932887oec.39.1349549186631; Sat, 06
	Oct 2012 11:46:26 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Sat, 6 Oct 2012 11:46:26 -0700 (PDT)
In-Reply-To: <CAMAb8ZPFz+Q72TVbKrqO+0Nu9a5ZJyJLLV9cdtw87YgC-mm6iQ@mail.gmail.com>
References: <CAMAb8ZPFz+Q72TVbKrqO+0Nu9a5ZJyJLLV9cdtw87YgC-mm6iQ@mail.gmail.com>
Date: Sat, 6 Oct 2012 14:46:26 -0400
Message-ID: <CAMAb8ZN6pEUaXsqWqRZ=O=AKjpVrf8gow=3rmPCiCjntLfUKkw@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: HTTP-accessible poky repo?
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
X-List-Received-Date: Sat, 06 Oct 2012 18:46:29 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 5, 2012 at 10:51 AM, Evade Flow <evadeflow@gmail.com> wrote:
> I'd like to track yocto development more closely, but I'm stuck behind a
> restrictive HTTP-only firewall all day at work.  Is there an official
> (or unofficial-but-up-to-date), HTTP-accessible mirror of
> git://git.yoctoproject.org/poky.git I can clone from?
>
> I can create a clone on github and run some cron scripts at home to sync
> it, but I'd rather not bother if there's already something like this out
> there...

It seems no one is particularly interested in this. Oh, well. FWIW, I put
a couple mirrors here:

  - http://github.com/yoctoproject-mirrors

I figured this would make it easier for me to track upstream development
from behind the firewall at work. (*Now* I'm sure people will chime in
and tell me there's already a complete set of HTTP-accessible mirrors
somewhere... :-})

