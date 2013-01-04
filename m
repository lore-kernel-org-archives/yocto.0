Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44913E013CE
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 03:36:20 -0800 (PST)
Received: from mail-vb0-f70.google.com ([209.85.212.70])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 04 Jan 2013 03:36:19 -0800
Received: by mail-vb0-f70.google.com with SMTP id r6so24649594vbi.9
	for <yocto@yoctoproject.org>; Fri, 04 Jan 2013 03:36:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=9J8EaeWpuy6E85/H+BSXg0vZ4Z5S3U0uFdnagGErczQ=;
	b=YQRha/Oavn9wP0yNUmkVKoBJCG8V3M4BVfzoryEWT2U+dvrEwReEb08hBpZrP41g+x
	fxVOTShfd+JvzElboN8pZ8NnA1p/XPZCwDY+r/R4tyebnksWDIHTAB2HbLbcOjhJMuFe
	DRzycymsriKde7wc0OyYO8sMuhDq6MBqDmEwt/HdgSmvz9xacRlQ9Tjha1oEoHYValpm
	el5MgRh4tVsTVa1k+BFLCnIw2sn4CbjlE5b1KotCFFCnUE44nlQPv6Xop8LzGgUytHRG
	MsLZ4vhfXDzvaO9LFuPurSSF1xp0amV4rfFDsxfAaENToZQOFXt/oVJ+B4ZQgGTy8N5k
	Cocw==
X-Received: by 10.52.72.232 with SMTP id g8mr66738905vdv.69.1357299378810;
	Fri, 04 Jan 2013 03:36:18 -0800 (PST)
Received: by 10.52.72.232 with SMTP id g8mr66738903vdv.69.1357299378754; Fri,
	04 Jan 2013 03:36:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.95.103 with HTTP; Fri, 4 Jan 2013 03:35:58 -0800 (PST)
In-Reply-To: <CAGfZjq4+JFT_HA-1SitqkWaxWgOztrd7XyQc7vBMfhTLauVGkw@mail.gmail.com>
References: <2b77c4be.fa75.13c0455c02d.Coremail.huanmateme@163.com>
	<CAGfZjq4+JFT_HA-1SitqkWaxWgOztrd7XyQc7vBMfhTLauVGkw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 4 Jan 2013 11:35:58 +0000
Message-ID: <CAJTo0LZYf60Sn6=jg6jmeGKWg2fpJywfPQkBgaCZGw+r3j=tvw@mail.gmail.com>
To: Biao <huanmateme@163.com>
X-Gm-Message-State: ALoCoQn1CegdFpeoYMUuJBwayBBoLQ7qyp3c8ZspJelbAl43yPYoGu9l4NllloBw6fFv3Ipbn/IQ+o7pUpJhY2LI7PeOP3UEZT6vhBFRTv4ybOlTJZfIGXoTLyiyG2mfW8vG5YeWg4DIIMSLoHq27WkGWpwRngrGEA==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Where does the 'PN' is set.
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
X-List-Received-Date: Fri, 04 Jan 2013 11:36:20 -0000
Content-Type: text/plain; charset=UTF-8

On 4 January 2013 11:34, Bill Traynor <wmat@alphatroop.com> wrote:
>> I would like to know where does the so-called 'gather' exactly happens?
>> For example, does it mean the bitbake core get the 'PN = u-boot' by
>> cutting of the name of 'u-boot_2011.03.bb'?

If you want to know exactly where it happens, see bitbake.conf:

PN = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[0] or
'defaultpkgname'}"
PV = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[1] or '1.0'}"
PR = "${@bb.parse.BBHandler.vars_from_file(d.getVar('FILE'),d)[2] or 'r0'}"

Ross

