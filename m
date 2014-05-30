Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1338E00BC1; Fri, 30 May 2014 04:11:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3BCFE00BBC
	for <yocto@yoctoproject.org>; Fri, 30 May 2014 04:11:11 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id a108so4863459qge.11
	for <yocto@yoctoproject.org>; Fri, 30 May 2014 04:11:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YNotEbxS63l/+Yo9qbT+Lt9QXa9v7SQ8Adpb3xqQ39s=;
	b=BJ9VzeDGliFbgkqsKmuKud71aXYsTKM2v21xmy5fA5B124Ma6NKbHhBc8TFedhfnzU
	VMEngFlR+xVNgj5N6TIahTbq1FA9RvDoAqJiONzHU8KF4utPoK0X1Lnh/RKWvE6icH3S
	iZMeAVkgitc3Gv2f/JV62X4FpZrBGc7f4s/lxk5ckmBggkSd13veROAJ+XZY4+PBAcyR
	EkZrrAvv/Y1aHqdjiR6EmMyXXpqvIQ/G++3+QXlI5lbIyo70KmBBjGrB0cL15gS2pQFQ
	ljHCNFnKxj/RBN+e8Hqe1mNsadC/Vdc/5qvPF/PEYvtr2rCaVAdxyPzBW/R5ZqVTMFxv
	bUeg==
X-Gm-Message-State: ALoCoQmxgcqLMjSOK4uIEJkA0S0Mf/7JeoIXdHvbBwP8+NBltmrU5XtearYBva/6nZAhflAlQcIl
X-Received: by 10.140.91.161 with SMTP id z30mr18442279qgd.65.1401448270891;
	Fri, 30 May 2014 04:11:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Fri, 30 May 2014 04:10:50 -0700 (PDT)
In-Reply-To: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
References: <CANJXcUap4aox3bhkxzq+EqTtZHokfMX6cqaao5o0oLqqRE+4SA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 30 May 2014 12:10:50 +0100
Message-ID: <CAJTo0LaNbvwf+2yEnPorOj81N4fSJwfYOxppqHcrX-hUHabBeA@mail.gmail.com>
To: Kashyap Gada <gada.kashyap@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Command Permission Denied
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
X-List-Received-Date: Fri, 30 May 2014 11:11:17 -0000
Content-Type: text/plain; charset=UTF-8

On 30 May 2014 05:06, Kashyap Gada <gada.kashyap@gmail.com> wrote:
>> bash:
>> /media/kashyap/3E0800DC08009555/yocto/poky/scripts/oe-setup-builddir:
>> Permission denied

You appear to be running Yocto on external media and your system has
likely mounted it with the "noexec" flags to prevent malicious
programs.  You'll want to remount it with the "exec" flag, using mount
-o exec,remount /media/kashyap/3E0800DC08009555 should do the trick.

Ross

