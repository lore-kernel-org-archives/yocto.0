Return-Path: <lschwab@xeralux.com>
Received: from mail-ee0-f46.google.com (mail-ee0-f46.google.com [74.125.83.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6D10E017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 17:54:03 -0700 (PDT)
Received: by mail-ee0-f46.google.com with SMTP id c1so1703696eek.19
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 17:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=y+wDeOwRZ1SiHo/zZNN5qkO33S+ui8g/lqfToIav56M=;
	b=NFp9R/pyvzYEYeHjL85GQ5wulyd8+ofRmmVCfNnDh+TTPx2ncPoj5bWZpf0OuJjxqm
	824ilcxtbmmuB+P+rbqIubSWplWPtRDepU2crrtEsv+nLdo8J7RP9l1jLjWl1JIwq2+L
	IKZ/SmTI1AP8Tq+BPL+SNGCylV2SsB65ba/0c83HhqjEeJo2RG9sVt6BHdleTbxgpU+o
	Q7xjnitEi+Kt0hRizqQekvcszm8Pip4ebuqgnjRs6Q2QIdK+xS94geCRJMkAgugzWx29
	E2wcJYgQt9SHndyjjlBWmfQhZ4KkJoFE7Mq0x9VDm1dKBi6AR4o/WyfdfYcx0+/MMCmh
	CC8g==
X-Gm-Message-State: ALoCoQnZ55YJtSxTMFY74Wev1ByCvFpWDmRqE0z1AEahp72AP6y77q4EIGP5qS7D9Zbb7stoQYHQ
MIME-Version: 1.0
X-Received: by 10.15.110.75 with SMTP id cg51mr343873eeb.42.1383267242303;
	Thu, 31 Oct 2013 17:54:02 -0700 (PDT)
Received: by 10.14.104.8 with HTTP; Thu, 31 Oct 2013 17:54:02 -0700 (PDT)
In-Reply-To: <20131031203257.GK32015@jama>
References: <CALb2248JBMiWJJ8ppDBhV+D15rArsg5VxTnW7OAjwUi76U9VgA@mail.gmail.com>
	<20131031203257.GK32015@jama>
Date: Thu, 31 Oct 2013 17:54:02 -0700
Message-ID: <CALb224_fmjANwkRRfQEU9gF9diuuAVcXiLpqzvgfy01NCnXrXg@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Adding Custom Files to Build
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
X-List-Received-Date: Fri, 01 Nov 2013 00:54:05 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 31, 2013 at 1:32 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> Creating .bbappends is the right direction, you just need to read a bit
> more docs (hint: FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:")
>
That helped!  I've got my customized files injected into the build now.

Thank you very kindly.

Schwab

