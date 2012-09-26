Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E45ACE0049F
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 02:53:48 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 26 Sep 2012 02:53:48 -0700
Received: by obhx4 with SMTP id x4so464167obh.35
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 02:53:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=URW+ntWIixRaTZijYUOM/Qhu+GTYl1Pils2IFcOS7To=;
	b=DkY/nBR+psppu+w4az8+3s+425tQF+yiJtWVT2AQQvqeQNms/yhRrGQx7KDzAdXqkI
	ebdQnDCh3fCvYCSGBBKkm5DKX6fuXGO5kDW5GMuHAJQeingUgUGJxyCwdwdCnoVdnJcP
	s/msjfiQGfQNGDa3Pl2xSVxaaf46cbtwacwXwrDmvArcQhhUCUvUP+45LWwgZHCwVgBf
	F8/H9/W0DGtRCKz4A0cHzAx2RYXMTKnaUyx32/XyjquAGFcmMiBBhyutsOOKMRwWU+Ny
	bA2MPbjAGJLuQKndkyMwo1L6hH4oaSl+ZiMxhfMcEVde6BIBvq+3PGGG8KXmQgiteo+q
	ExqA==
Received: by 10.182.43.40 with SMTP id t8mr14840370obl.93.1348653226439; Wed,
	26 Sep 2012 02:53:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Wed, 26 Sep 2012 02:53:26 -0700 (PDT)
In-Reply-To: <5BB2B8A2-CD8B-4F0C-B7AE-FBED8ED8077B@keylevel.com>
References: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
	<34F347852CDC4B699F8565643D33E53B@intel.com>
	<5BB2B8A2-CD8B-4F0C-B7AE-FBED8ED8077B@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Sep 2012 10:53:26 +0100
Message-ID: <CAJTo0LaXE6j5_Yf4srkrfbGpi0Ca2c5NsbKzgjqF8=-RYFse0w@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkU7x/p66Rcq45Z2IVD0N/knaYXgmWoQmXKyI0bOcx2mcCAXrkxAOSbNqXqgqDx/ZGhgZuD
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: How can I build gstreamer and its plugins without x11?
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
X-List-Received-Date: Wed, 26 Sep 2012 09:53:49 -0000
Content-Type: text/plain; charset=UTF-8

On 26 September 2012 08:32, Chris Tapp <opensource@keylevel.com> wrote:
> Thanks Ross. Is the reference to librsvg in gst-plugins-bad similar? This pulls in gtk+ (which will not build for my DirectFB distro), but it still builds if I remove it.

librsvg has gtk+ as a build dependency but the librsvg library itself
won't depend on GTK+.

Ross

