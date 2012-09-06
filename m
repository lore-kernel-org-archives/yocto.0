Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F967E0150C
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 14:41:36 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1712757lag.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 14:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WunMRHad5fM/cL4JbQTjpX07ejqQdTVXM2DfqEGcK+g=;
	b=klIork3FOnAWVj1pnY1O4LEtvZTTKyzm/mwBLI0SXlXtYppwlBMt2a63/F/lCqj9pr
	Hfiwh7AKhi1Dp3owni4kqjzIYV6J4kK9c+cglBzJzZqovUi29CwsQM5GEKSbwsbveSuc
	SCo5xvtm/upARQTL6Si+3iZbhZnhcKsNnX5gkGxkSh+se3pOZWmNmOYQ1QZCbueQUjW4
	nFfmjX4/AfJDHQL7tsH8HJQse6IpUfSwc+GAHO5WqocK1K8PP3N8qjFeOEVd4EMuCfhp
	t9O89HUY2RvHxNTOpwPz6MzFQvgn604JlJVOapFZnyjw2v6/W7CwOldE1FNZhcN1efb4
	E8WQ==
MIME-Version: 1.0
Received: by 10.112.82.170 with SMTP id j10mr1405020lby.8.1346967695544; Thu,
	06 Sep 2012 14:41:35 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Thu, 6 Sep 2012 14:41:35 -0700 (PDT)
In-Reply-To: <50491060.5030300@balister.org>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
	<12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
	<CAHUNapQs-i9hAjxz9vj5kR17CiT4y3VRZiEejjef_9ga+ZwOOg@mail.gmail.com>
	<50491060.5030300@balister.org>
Date: Thu, 6 Sep 2012 17:41:35 -0400
Message-ID: <CAHUNapTtdmGV4M6-G1MDKaUGJQBLUBXA8hbwW5fGyG9s8BomSg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
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
X-List-Received-Date: Thu, 06 Sep 2012 21:41:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Philip,

On Thu, Sep 6, 2012 at 5:06 PM, Philip Balister <philip@balister.org> wrote:
> Speaking of zynq, I have a simple BSP here for the zc702 board:
> https://github.com/balister/meta-zynq

Thanks. I found your layer from the layer index page:
http://www.openembedded.org/wiki/LayerIndex

although I haven't tried it yet. It's good that the layer page is
updated regularly.

