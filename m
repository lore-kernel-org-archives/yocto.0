Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6279E004E5; Wed, 30 Nov 2016 09:08:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wj0-f193.google.com (mail-wj0-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E96C1E00498
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 09:08:43 -0800 (PST)
Received: by mail-wj0-f193.google.com with SMTP id jb2so23189652wjb.3
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 09:08:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=iAIDMvknvLxc4l89G5PmAxId7WmiqB3PwPgLzHdQ8T8=;
	b=kX/NF27X8eL6LkSIFQWUBHRtoTaV7ALg6agylXRbaCZvI2LMAO6uyjKFpeKbqKTESg
	dElnykRaHKJOObsymiDS7K9Z5y2rPP58YI+m9+z4CzJ+4XTZEOOQIQBRvtOUK6JJBK80
	3rkmcJM5DYXAqBS+nGTqf3ZbT87ayJfdp1ZSmp9YUdRRnyKbbz1bhfb/wEQyLkeqc6b7
	YOq9b3GCRzMelvYnW8Xsz6Bk5+rJV7/DIsuUoXLQjT4/wn8MemMg4RALaTKNfxN4QGLg
	QO6DVeRZq5oCHQXg5FcapSWyMROgCxq21F1pCFzkgWTokjFCM6IqOnLkQjVlMbUCkVdJ
	wXPw==
X-Gm-Message-State: AKaTC009l+Z4VD4GSym54J51E4GQFYneHWSIlvQ7cC5crUFID4MMK5vkJuX7+4IFIitKHQ==
X-Received: by 10.194.91.148 with SMTP id ce20mr34257192wjb.59.1480525722840; 
	Wed, 30 Nov 2016 09:08:42 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id l67sm9266765wmf.0.2016.11.30.09.08.42
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 30 Nov 2016 09:08:42 -0800 (PST)
Message-ID: <1480525721.13682.5.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Wed, 30 Nov 2016 17:08:41 +0000
In-Reply-To: <1480510545.6873.285.camel@intel.com>
References: <20161121154247.14845-1-git@andred.net>
	<1480510545.6873.285.camel@intel.com>
X-Mailer: Evolution 3.22.2-1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] swupd-client: do out-of-tree builds
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
X-List-Received-Date: Wed, 30 Nov 2016 17:08:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-11-30 at 13:55 +0100, Patrick Ohly wrote:
> change would just lead to conflicts with my development branch. Is it
> okay to wait for this version update?

Sure, no worries.

A.


