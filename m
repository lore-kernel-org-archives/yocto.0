Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE00E0034C
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:46:47 -0800 (PST)
Received: from mail-ie0-f200.google.com ([209.85.223.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 14 Dec 2012 11:45:56 -0800
Received: by mail-ie0-f200.google.com with SMTP id k13so16079017iea.11
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:46:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=c+stXcH4EAhcYbqBAoi4SDWyhakdurIVbtQKLa+MZNs=;
	b=IS//p/6PdHTGjiGCq+CfYw/WOR8+d5JV64LfM5lfudR3LSOYY0Hg0KA2NHOfV00HYN
	ucCNB336YBbI4uJv5zWrRKmL6obqR/IQ9BD0JV7clgyCgpY0cm0Zz8kdeQ3+i6Gve/MD
	Zgdgz9gj8XvMwVrQv6DEoMTA7jtCg9van8dH8hF/SeEcyE5VQj6kjtpFagzYgz/2Szn3
	c/iJlP6YGdXRM0aZi6LiUpvVNKzRTdu8tGXQbfTngeGahU/8LkMA6HHkWWW3g+FaZrQA
	hw90LyTUAd2f4SjVRnIyQ1Uavw7U80rsS9KVUm8pDkJU+IfoqeeVw0mpQ0RgOA3VgEfI
	gFvg==
Received: by 10.182.89.103 with SMTP id bn7mr5706247obb.35.1355514406027;
	Fri, 14 Dec 2012 11:46:46 -0800 (PST)
Received: by 10.182.89.103 with SMTP id bn7mr5706226obb.35.1355514405716; Fri,
	14 Dec 2012 11:46:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Fri, 14 Dec 2012 11:46:25 -0800 (PST)
In-Reply-To: <50CB8173.4030801@am.sony.com>
References: <50CB8173.4030801@am.sony.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Dec 2012 19:46:25 +0000
Message-ID: <CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
To: Tim Bird <tim.bird@am.sony.com>
X-Gm-Message-State: ALoCoQnRlnVB00pd5+G5GZweL9/XCdVjuZ27Ec6cm8DQsuAsB11QGqlGdWBRccd5r5F3I8yzvXds+eGlg04JvGCcueaUSwJm7dLD6Sdc5a4lBaRSC4V4V7IvQwqW4BUKaidZH3Lm9NqppPt02S5xklWjD9wUA6CrHQ==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is GMAE?
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
X-List-Received-Date: Fri, 14 Dec 2012 19:46:47 -0000
Content-Type: text/plain; charset=UTF-8

On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
> "If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
> can generate the toolchain installer using bitbake meta-toolchain."
>
> After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.
>
> It might be good to put this acronym somewhere in the manual.
> (I'm still not sure if I need GMAE or not...)

Basically, GMAE means GTK+ 2 and bits of the GNOME stack.

A stealth plan of mine is to remove every trace of GMAE from Yocto.
It was an initiative Poky was involved with back in the OpenedHand
days that didn't really take off, and we're still carrying pieces of
it.

Ross

