Return-Path: <andrei@gherzan.ro>
Received: from mail-ee0-f42.google.com (mail-ee0-f42.google.com [74.125.83.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB27E00743
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 05:31:48 -0800 (PST)
Received: by mail-ee0-f42.google.com with SMTP id b47so917284eek.29
	for <yocto@yoctoproject.org>; Sun, 27 Jan 2013 05:31:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=gZo0MME4/EKtMns2R+/HqFSEwwv/RyMOevgNJxl7pBk=;
	b=ZozUwnwNh+SoVfU2xFsqUMY5VQvgkl1k3ZDS/V/ikoJG9NaJZbBPDI85dRIzrYURfe
	CHFSpwIu5nWTR+VYCP1W7bHihwBRT+6utzYlUX5f3MgOOeQYIOLoanf1N+W3ARbhxOD9
	wijAfJ0oTAmcEgWcfA2BCw3Mw+YtfLgAbwzjgxb0niO9C/LQtKZFG393H+WQJ4R5U/Pa
	ln6PWBhQjRNYDGwqC73K1i5KqkxEtyBY8nwtT7IvXRDe/ikkl//Jx39bv02MvDwaUKXX
	C4fgUr5EUrB9VbWQKgqgxHioKOJD4au8yqmrn/tdSS7IUt8taG6qW6aCTdmVY7bajBbO
	VvZg==
X-Received: by 10.14.203.3 with SMTP id e3mr41233300eeo.9.1359293507937;
	Sun, 27 Jan 2013 05:31:47 -0800 (PST)
Received: from gmail.com (5-13-203-15.residential.rdsnet.ro. [5.13.203.15])
	by mx.google.com with ESMTPS id 6sm11346380eea.3.2013.01.27.05.31.46
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sun, 27 Jan 2013 05:31:47 -0800 (PST)
Date: Sun, 27 Jan 2013 15:31:52 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jan Schmidt <thaytan@noraisin.net>
Message-ID: <20130127133152.GB5781@gmail.com>
References: <1359120805-25408-1-git-send-email-thaytan@noraisin.net>
	<1359120805-25408-2-git-send-email-thaytan@noraisin.net>
MIME-Version: 1.0
In-Reply-To: <1359120805-25408-2-git-send-email-thaytan@noraisin.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQlB10OEBPymo9kskDGBY02FnXOm/jkLoehgj/fQ4FbntcXatfp4yRArOnhQXKspJUCYNOu/
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/3] bcm2835-bootfiles: Bump the firmware revision
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
X-List-Received-Date: Sun, 27 Jan 2013 13:31:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Jan 26, 2013 at 12:33:24AM +1100, Jan Schmidt wrote:
> * Pull in a newer firmware revision (0ac68c 7th Jan 2013) from
>   https://github.com/raspberrypi/firmware for various fixes and
>   improvements
>
> Signed-off-by: Jan Schmidt <thaytan@noraisin.net>
> ---
>  recipes-bcm/common/firmware.inc |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Merged.

Thank you,

--
Andrei Gherzan
m: +40.744.478.414 | f: +40.31.816.28.12


