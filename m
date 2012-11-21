Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4339E0141C
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:07:41 -0800 (PST)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 21 Nov 2012 15:07:41 -0800
Received: by mail-ia0-f200.google.com with SMTP id x26so16207309iak.11
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:07:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=vktykzcWUxYxSTJnw+QqiR5RBJiVImZebd9Cyph72/A=;
	b=mwUxTPCGGuCiPivCHb4u+QZQhzIi0cOq968pl6IkYowyH6jqzBKsK9LEaFbLR+HzGb
	JL9bWlXabmCQIFQmfMAtgl7XN9/IphyHpG7YPtzWh+JeW4wlU3gpKZfX9Qj10Gho0yaF
	bobkGEMLaua3sOlwb1Gx9d61eagb0CbLU3L2/YmgQUBn7jo1YNpifQuORO5Z0JhAI49Z
	kLBqLqcxyZCE9F285FWIag9M+jHgiNnWn2m5Ft/wYs1Oqk/5A0QPu+yuGpHgRDwgV6ia
	YWpaN+7BPetWcMwLqUG8BBhYo6GQE8/BFTDJlcy5nYIfgfbhJYCti0Ue6rM0q765AksQ
	U2nQ==
Received: by 10.60.169.243 with SMTP id ah19mr17629150oec.127.1353539260386;
	Wed, 21 Nov 2012 15:07:40 -0800 (PST)
Received: by 10.60.169.243 with SMTP id ah19mr17629142oec.127.1353539260177;
	Wed, 21 Nov 2012 15:07:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.154.37 with HTTP; Wed, 21 Nov 2012 15:07:19 -0800 (PST)
In-Reply-To: <CAOT3miJ73uAvR0Qij3+-q3B6K46=J5ZoFZDzW79YCSUfPbLeAA@mail.gmail.com>
References: <CAOT3miJ73uAvR0Qij3+-q3B6K46=J5ZoFZDzW79YCSUfPbLeAA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 Nov 2012 23:07:19 +0000
Message-ID: <CAJTo0LYLf=296eEZznK7vnFTJZhAS_u1opuXdyJ=MUvRYF1Asw@mail.gmail.com>
To: Nicolas Dechesne <ndec13@gmail.com>
X-Gm-Message-State: ALoCoQmc9fctprlR8ZJ8SZ64Kpcq71ob989yfRmVuUkCmHubsugWnmhL2AOX37YCRCyxeJR5dnx0z0NXnaQZEHwS+IHlvhnaQFokyOfinl0wLL26LDC+j6WvifRrNOwzbuPuxDRC7a8yoMlUTQ31mwtNqGUZorTy6w==
Cc: "meta-ti@yoctoproject.org" <meta-ti@yoctoproject.org>,
	yocto <yocto@yoctoproject.org>
Subject: Re: build failure with xf86-video-omap
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
X-List-Received-Date: Wed, 21 Nov 2012 23:07:42 -0000
Content-Type: text/plain; charset=UTF-8

On 21 November 2012 22:52, Nicolas Dechesne <ndec13@gmail.com> wrote:
> since xf86-video-omap was recently merged in oe-core and poky, i am trying
> to remove the recipes we had staged in meta-ti trees for some weeks
> (http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/commit/?id=410dc026f2ee24a2346e7563a83f0181c79809cf).
> so i was trying to build  poky/master with meta-ti/master, for pandaboard,
> and I get build failures in xf86-video-omap [1] and [2].
>
> so [1] is actually trivial, as we are missing a DEPENDS in the recipe, i can
> send a patch in oe-core for that.

Please do.

> [2] is a bit more cryptic to me.. so I quickly tried to build with danny ( i
> just cherry picked the commit that introduced xf86-video-omap from master)
> and this time it built fine.
>
> has anyone actually tested this recipe? if so I must be doing something
> wrong, any hint would be helpful.

This was discussed a few hours ago.  It's caused by a) the
configure.ac being broken and b) the workaround for this being removed
by me in e828faf027540bc5def8b7371a959884caad9557 (which is in master
only).  Presumably this code was test built before that patch landed.

As this is a genuine upstream bug (ARM-specific driver that doesn't
cross-compile?!) I've just filed fdo #57386.

Ross

