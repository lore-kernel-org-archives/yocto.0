Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CF1BE004D2; Wed,  8 Mar 2017 09:21:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B61E0030B
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 09:21:05 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id 187so3990436pgb.2
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 09:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bEd53SnmJG2A02anjhv7vDEeB5BVUc37snMcGEhCAok=;
	b=WaamwfbRVIq2SpcJWP+uRJTmZgQlQvO4oyklHJP43tU9qDAViDiP+0ry+aAOgk1sxB
	iZDL4qYL92/xhSubOV/dnAEBZkaAufURklUQ/WBoXVjhbc0SYEt6nftS8E6xwEXZw0sv
	A1cfcUmqRQUMNEN573Q9scghQSrr49OjtkGMKu8CmaW1SB9ol6XmZ2PhYBUyZ1sh1O+4
	KkVyXKzGprBgGY0WiWSlouMT1zY0ARz0WmyCqYi+fBTxGp3W5FLXK+qDc5SpGXAv8FCd
	AOgmRwGAkSY4uab4JTKAdDor7a8tRHK7z2qZdvFWPux7Se8w7pxB2TYYvIeAdc/3vH70
	Vxvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bEd53SnmJG2A02anjhv7vDEeB5BVUc37snMcGEhCAok=;
	b=LgPWldmI1UbLbvQql6CiCvIcxlyUYjdHDnGRUyOhon3iJvBQeCcc5H0b9R0vpi0m4J
	X8sg6HDtOZ8lmiVHZtciTtHKip1F81DMN3iJcjGUlAvO3Kvh642Y34bYiOR+Z7DkeFj7
	TOuOTUWXLhZug4er3CrsRqzFaziUVdUIkigCkIlpP1GX2smn8HSBwgk8FEOzIcZoy2/d
	3H5MhsA6Qd6JCHltZtTiJOfMHCw1Ye94tvTzfKMynap+zaxzOX9aAaJMDj7WHLKCRzuI
	GHu4uRFTmWoOeJtdO9Lv7w7iVO8Nu6Ozb6CMXvxdonkr4J3cuSh6Xgsdq6dk49jxaVBT
	A8Ag==
X-Gm-Message-State: AMke39ndQNJ6bZtMvWdxg1gaJjpFL6Rm9TIX65GE2Bma9pxJ1Zc2FwR+qRgk5GraAxfU/Q==
X-Received: by 10.99.102.135 with SMTP id a129mr8248693pgc.220.1488993665278; 
	Wed, 08 Mar 2017 09:21:05 -0800 (PST)
Received: from haswell (c-76-102-32-192.hsd1.ca.comcast.net. [76.102.32.192])
	by smtp.gmail.com with ESMTPSA id
	m29sm7389492pfi.54.2017.03.08.09.21.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Mar 2017 09:21:04 -0800 (PST)
Date: Wed, 8 Mar 2017 09:21:02 -0800
From: Khem Raj <raj.khem@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20170308172102.GD2586@haswell>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
	<CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
	<CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
	<CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
	<CAJTo0La9Oc2Yzkv2+vXmXuihgy9kO16COOmfOwqx-=Kvgsh=Eg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0La9Oc2Yzkv2+vXmXuihgy9kO16COOmfOwqx-=Kvgsh=Eg@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 17:21:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 17-03-08 15:44:08, Burton, Ross wrote:
> On 8 March 2017 at 15:38, Burton, Ross <ross.burton@intel.com> wrote:
> 
> > When 2.3 is released it won't be using the git gst-plugins-bad recipe by
> > default either.  I'll fix the recipe, but the git recipes are prone to
> > breakage as they're not that tested.
> >
> 
> In fact the git recipes are actually older than the default tarball
> releases...

I think git recipes should be removed, they are good for development
purposes and gst devs can overlay them locally if needed

> 
> Ross

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


