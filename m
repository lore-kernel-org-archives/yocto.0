Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59489E0045D
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 02:02:55 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 18 Oct 2012 02:02:54 -0700
Received: by mail-oa0-f48.google.com with SMTP id h2so10307815oag.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 02:02:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=hLFEEXmds5rZLoi7/Os2ADQnj4wOo+Re9lXGQ/B3T4s=;
	b=JD2Itm0dYrPTxwUs8uyQIjD7+6cRab2E2jE90X4fatZr2wL2yw5TMrYV9Umo9zIPnL
	wgK9bFQPVpLJwGCQtH1JYfc3gM0oXyt56FqJoguQczvo55dTFUjCfTsGRGw3c/I34Zoa
	PtdZefXkwu6K25EyAZxWBqtDQuS2BLoesRjdYfv6ZU/WuFP/4+lT0BdhaLNbG29ljY5J
	D5QjRNBooUxW3XvV8067QHdyN4yp17YTMOx1zCyFlzzG6ybOMgS0ISXhzhjgDoV7VVKa
	0v6u2rp3NYq8L6UWDW3Dz8TrxacQYqC+3WNix8b6oZvSsco2RLifP8RkdmjMNu3INAby
	FWNg==
Received: by 10.60.171.134 with SMTP id au6mr18118908oec.69.1350550970566;
	Thu, 18 Oct 2012 02:02:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Thu, 18 Oct 2012 02:02:30 -0700 (PDT)
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE233E6BAA2@ORSMSX105.amr.corp.intel.com>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
	<D956029D25CF204F948EA0FB515E1EE233E6BAA2@ORSMSX105.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Oct 2012 10:02:30 +0100
Message-ID: <CAJTo0LbF58oB2WakLgjQs9t1mtMesaahJwZ7PKr8_U3qqO+z8A@mail.gmail.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
X-Gm-Message-State: ALoCoQnRG5aNSn92Mo3rTDacxaVZkj+xMRmfdgwoMSwPSBoia3eBadC3nQSeQ0OYmsbcCz7lPPy6
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Subject: Re: Cedar Trail and gst-vaapi fixes
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
X-List-Received-Date: Thu, 18 Oct 2012 09:02:55 -0000
Content-Type: text/plain; charset=UTF-8

On 17 October 2012 22:58, Bodke, Kishore K <kishore.k.bodke@intel.com> wrote:
> Wanted to check if you had a chance to look into the cpu uitilization?
> We had less than 15% cpu uitilization, with the acceleration while playing the video.

With sintel_trailer-720p.mp4 (and ffmpeg codecs so the audio is also
being decoded), 4% according to top.

Ross

