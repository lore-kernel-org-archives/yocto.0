Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C09B9E01547
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 02:11:15 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1UoVSy-0007uv-4Q
	for yocto@yoctoproject.org; Mon, 17 Jun 2013 11:11:12 +0200
Received: from 212.50.246.123 ([212.50.246.123])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 11:11:12 +0200
Received: from jackrubby2010 by 212.50.246.123 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2013 11:11:12 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Jack <jackrubby2010@gmail.com>
Date: Mon, 17 Jun 2013 09:10:55 +0000 (UTC)
Message-ID: <loom.20130617T110444-837@post.gmane.org>
References: <loom.20130616T115549-619@post.gmane.org>
	<51BE98F8.3040903@windriver.com>
	<loom.20130617T071650-37@post.gmane.org>
	<51BE9DF5.1090200@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 212.50.246.123 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:20.0) Gecko/20100101 Firefox/20.0)
Subject: Re: Modify udev
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
X-List-Received-Date: Mon, 17 Jun 2013 09:11:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

ChenQi <Qi.Chen@...> writes:

> 
> On 06/17/2013 01:19 PM, jack wrote:
> > ChenQi <Qi.Chen <at> ...> writes:
> >
> >> On 06/16/2013 07:45 PM, Jack wrote:
> >>> Hi,
> >>>
> >>> In my imageو starting udev take a long time about 6 seconds whereas
the time
> >> If the performance is important, what about using udev-cache to speed up
> >> the boot process?
> >>
> > How should I use udev-cache ?
> >
> To add udev-cache to your image, add the following line to your local.conf.
> IMAGE_INSTALL_append += "udev-cache"

I add this line to my local.conf but starting udev take about 6 seconds in
boot process yet. What solution do you propose ?






