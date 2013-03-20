Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADC1EE00740
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 11:53:56 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id cz10so1702649veb.7
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 11:53:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=3jINk3bp/0ryZDFGxluFJhD5rNzmduPWqAPC3sKrCjo=;
	b=I01gV2NAlbByaDDDXiQSOhpu1VakX8noAy7XREM/gj4mAgrWsPSRT/Bv+nDNahYp1R
	Jiqat0NhA0qab9NOoandbwo1/C7W6bQzUbzGQXuyiNRYFAVSJ5aR7GMHZnOZZ8M0XTlb
	6W688LW4x/Tmstff1KhDkrmCZCaJ0sXRz7r6OtDPJibgzkYgfim0QugLNAUOi4c3AJ5n
	hgH+execPKC7u+eRxl/ZJDTKc+56gzKW6D9DRHEOkRoybw39cLDBOYjwFTCOHjxRm6xp
	C254SCI9BjH7ldb138bgfv1r82QsaIlzjM9zlLZGeNXtszGMMLNF107x0qTgsKNqughq
	dW8w==
X-Received: by 10.52.155.5 with SMTP id vs5mr8030349vdb.24.1363805635844; Wed,
	20 Mar 2013 11:53:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Wed, 20 Mar 2013 11:53:35 -0700 (PDT)
In-Reply-To: <603BDC00C3D14F51BF551A28572660E3@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
	<CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
	<603BDC00C3D14F51BF551A28572660E3@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Mar 2013 18:53:35 +0000
Message-ID: <CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQkmMgWMhRucj/je7KgFBfGei3Mo8E2BrYZx8jscuVJEdbA9ohixQPjYdv2zi3LgRoD3Q0sg
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 20 Mar 2013 18:53:56 -0000
Content-Type: text/plain; charset=UTF-8

On 20 March 2013 18:11, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
>> From: Burton, Ross
>>
>> autogen-native depends on guile-native so that should have worked -
>> try doing "bitbake -ccleansstate guile-native ; bitbake guile-native"
>> to force that to be rebuilt.
>
> It complains that guile-native doesn't have a task called do_cleanstate.

Yep, so it should, I was wrong.  Try bitbake -f guile-native.  The
dependencies say that you should have guile-native already, so I don't
know why it would be failing.

Ross

