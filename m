Return-Path: <ross.burton@intel.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10BE9E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 07:22:35 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id fb10so104078pad.11
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2013 07:22:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=fQz2WL35sW57q3AuOucLrakp5AKDA7PA+hlsexmtHYc=;
	b=olk5PIBeAnRkWYlUO+iuUysdKgQwSRMTujGxUox3xDN5AAJstA4FaTcJ+yqfSe+S4X
	eL7DvggLweRAqeqpMKLis0KtJlhDD49mOmNB6enALjqGsSESezzQTMGVmL+TTzqWGHMF
	v2BX2qOZlOJ5F8W6gW31q3HVFJHPmAwO4fOv/3VMkY4ji2WXyn+/OTIMm2sQnb4FiEoo
	2TP0hEqqIJkDOD6VbdxhCPmL7avLBJYe+0xGOtpe//DYcr8caTqwMUKHkCWv/Wn8Ps9+
	+TxHuw8cFZQmApPbM26/LPFeJz6RQGBLSBBrjtWoEB0vIKZsELXhao2CRHTtyaeuq7Yg
	Ox5Q==
X-Received: by 10.67.3.35 with SMTP id bt3mr31077262pad.157.1366986154880;
	Fri, 26 Apr 2013 07:22:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.66.254.102 with HTTP; Fri, 26 Apr 2013 07:22:14 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Apr 2013 15:22:14 +0100
Message-ID: <CAJTo0LZ1F6YBrNiQx9-Jy5wR35_Oc1WV5UOQAS4kHLBHwy=yeQ@mail.gmail.com>
To: yocto@yoctoproject.org, 
	OE-devel <openembedded-devel@lists.openembedded.org>
X-Gm-Message-State: ALoCoQl8nFDNk8bVw6xIy+5UioJYyM0ESckGxh5x3UfBP4nd61Sg4Hi3jrC7/tadFRl3qhbXkWWz
Subject: Matchbox Panel usage
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
X-List-Received-Date: Fri, 26 Apr 2013 14:22:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

I'm currently porting the Matchbox Panel to GTK+ 3 and thinking about
cleaning up the options and panel size handling.  The current code is
rather complex and could do with some sanity.  My idea was to reduce
the options down to:

1) put the panel in the titlebar (assuming Matchbox WM and a suitable
theme), as Sato does
2) put the panel on a specified screen border, with a specified
"height", and either a specified width or expand to fill that border

I'm putting "width" and "height" in quotes as for a panel on the left
or right edge, "height" would be the physical width.  Maybe those
should be renamed "depth" and "length" to avoid confusion.

So, anyone is using the Matchbox panel, please speak up with your
usage.  As far a I know everyone either puts it in the MBWM titlebar
or full width along the top/bottom, but I want to be sure!

Cheers,
Ross

