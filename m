Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A835CE014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:21:47 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id x13so705309vbb.23
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 04:21:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=SVaVpOp94LyrU/NwUbAl6FtQLTvtPDOtvnTSE+fXu+M=;
	b=IXoednaiKGnKcug+pUlhV+TvEmp6sLeE8SZWFvZyc4GFAAK4N+6aY6Kg2vFOV7nfKS
	JcQM28CauekVzlYwxRIdUmNMxSe9q6N540tTTuxlu6azH+4+kRm+kpv48gB4TEBT3H1z
	25oMFji5hvq39W4Ku6yWcRGhmT7Ddw69FuDMnRQx9b0pyB4CVOk1tlA+6M6c1iQeldeW
	7/sWJd8Jwhc31gibI+EtF6RqtGRzRciKTZ9Qu/ywm/eQvPIJ1YWi0Wxk62GsiTzOdcF6
	U1b8IxXriGev4AZJ4sqLIvKKzVb4EBTzWUaeE2DN/MegQvgXduRc6hTi28IlORTn3ehB
	MNLg==
X-Received: by 10.58.154.34 with SMTP id vl2mr20384132veb.35.1374837706506;
	Fri, 26 Jul 2013 04:21:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Fri, 26 Jul 2013 04:21:26 -0700 (PDT)
In-Reply-To: <CAOMwXhOdKmzX6aaM3H-FmD73CGXN45tMtZebbgzTfHGNU1Tpcw@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
	<CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
	<CAOMwXhO_G0zO9bkYM8zHwo-P7MmOBgz1U0Z_uj08i_AV3z+2gA@mail.gmail.com>
	<CAJTo0Lb4bhnj5cwySn145dosZnGxubNS5B9P_LbOqrEii5ks1Q@mail.gmail.com>
	<CAOMwXhOdKmzX6aaM3H-FmD73CGXN45tMtZebbgzTfHGNU1Tpcw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jul 2013 12:21:26 +0100
Message-ID: <CAJTo0Lb2+bJpJf2O9Rzo51u=TzZ9-JMkBsKU5x-z3ot79F6VrQ@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
X-Gm-Message-State: ALoCoQl4O8psYnAhSGhNusdxP501lYzBBEIblC/63YU2g5Pwq3pm4If8lx9xEc8O/IWcaRSwFBEn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 11:21:47 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2013 12:10, Laszlo Papp <lpapp@kde.org> wrote:
> As far as I can tell, the reference documentation does not write that
> anywhere what you are claiming here. So you are either incorrect, or I need
> to file a bugreport to fix the documentation.

I'd say it's a fair assumption that when the documentation says
"supported on FooLinux" we mean "supported on a typical and working
installation of FooLinux".

> No doubt a common "normal" could be found for Arch as well, which is what I
> have been referring to, in several emails of this thread now. I do not see
> Arch exclusive, respectively.

All Arch needs to be in the supported list is a long-term stable
release, and someone willing to do the testing.  You're clearly
interested in being the latter, so when the former exists please say.
Via Google I see there's been at least two attempts but nothing has
actually stuck around.

Ross

