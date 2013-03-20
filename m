Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6323EE00741
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 12:51:09 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id m17so1656178vca.39
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 12:51:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=Xhf6J2dfl1bRPQ4QYWbNMIR0GO3KuS/tyGs4pJTFZcY=;
	b=f7371xeqeWtCw9EhZDjVQGEquSzzIW4A3CHWocVqr2bHYZJ3WHFfGj/X07yAshg4hq
	Hr7XfRanUhON3za7sWE9BDfNHSarC70f8XvBc6MmY01qgIhF5dufVqZRpIi56dbvt30H
	V7XTk2NBENntJL/GPg0tlwiglzXFuRNstb6lKavebaHgladZlOTlRnFDCXbUCW5Uer5I
	iM8tqJUaAEyvG5xoHJ2IGl8Ww4t0FLClmRZM6Zy9xcCEpwzwaKbkb4Fo62D7GLabTQ84
	+p1/iztwbxJzDSYdg8N4bwUTLZAQ6BTkLjQsPoQyocVvZFET/AI1KFtST+72/4fijZHt
	MPgA==
X-Received: by 10.52.230.197 with SMTP id ta5mr8279911vdc.103.1363809068620;
	Wed, 20 Mar 2013 12:51:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Wed, 20 Mar 2013 12:50:48 -0700 (PDT)
In-Reply-To: <B85484ED80754E0D8F82ECCA688762AF@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
	<CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
	<603BDC00C3D14F51BF551A28572660E3@PAULD>
	<CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
	<B85484ED80754E0D8F82ECCA688762AF@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Mar 2013 19:50:48 +0000
Message-ID: <CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQn2Vhdnu2/SioFh4RdFnov/V4RJsVFCYfFf2GqaDRAHjvBWJDP8qlU19vNpFlN80p4VXaM5
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
X-List-Received-Date: Wed, 20 Mar 2013 19:51:09 -0000
Content-Type: text/plain; charset=UTF-8

On 20 March 2013 19:43, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> That "worked", in the sense of claiming to have executed the do_build task,
> but it happened so fast that I think all it did was run a null make. When I
> then did a bitbake of the entire image, I got the same error I got before,
> about not being able to find guile-2.0. Is there some manual surgery I can
> perform on the tree to get rid of the guile that it thinks exists, and
> really force it to be remade?

Okay, try doing "bitbake -c devshell autogen-native", and then running
"pkg-config --cflags --libs guile-2.0".  That should produce errors,
which may be more useful.  Debugging over email is quite difficult. :(

Ross

