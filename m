Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 464D7E011D1
	for <yocto@yoctoproject.org>; Mon,  6 Feb 2012 20:42:20 -0800 (PST)
Received: by dadp13 with SMTP id p13so6672298dad.35
	for <yocto@yoctoproject.org>; Mon, 06 Feb 2012 20:42:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=/eQbQj5DuQDioRdyMWKlVUmD66MWGoUF6NYcnFcEZCg=;
	b=Ko1JUhHlR8z64NpR4R7ha6PSUka2IdiBtBrAJ1XHHkVfEwJAuZpMW6OE9QYwlkqHfZ
	ZyEq9zbyZRjaEQHgpTADhYLLx9vVoZOHjJIQ0CA2EJbExFklA9JYYc1wp3oHlHslB0OU
	lSXmxfKGh1Ta4R5EWVhwDH9ePYE+O7l+/Ifbg=
Received: by 10.68.240.135 with SMTP id wa7mr54026384pbc.7.1328589740085;
	Mon, 06 Feb 2012 20:42:20 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-142-235.lightspeed.sntcca.sbcglobal.net. [99.57.142.235])
	by mx.google.com with ESMTPS id q8sm20530439pbi.1.2012.02.06.20.42.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 06 Feb 2012 20:42:18 -0800 (PST)
Date: Mon, 6 Feb 2012 20:42:11 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Ni Qingliang <niqingliang@insigma.com.cn>
Message-ID: <20120207044211.GA7746@sakrah.homelinux.org>
Mail-Followup-To: Ni Qingliang <niqingliang@insigma.com.cn>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1328589016.1065.18.camel@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <1328589016.1065.18.camel@localhost.localdomain>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: does udev must depends glib-2.0?
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
X-List-Received-Date: Tue, 07 Feb 2012 04:42:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (07/02/12 12:30), Ni Qingliang wrote:
> hello, All:
> 
> I'm trying to build my own image-lsb-core, and making LFS as reference.
> 
> In LFS, there is not glib-2.0, in other words, udev can be used without
> glib-2.0.
> 
> What can I do if I want use udev without glib2?

its udev-acl and udev-consolekit which needs it. You can avoid that in your image
dependencies

