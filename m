Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB9C3E011ED
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 20:48:15 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so8835463lah.35
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 20:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=hfYP7VA+z41NWkc079cjhDAXBNyVlQ5T3R/SslEBTOU=;
	b=UNByJ9qumMxeNujYyExhHwn3q3201V9VxFDS/q5ePo216+eu+G3x6pYoor82nJR5ki
	b++QPPtKppAHuS8JcurOOCIp9jfnt+Z0DOgcao8A2IooypELtlVW/BdRdanIuNkEIUED
	uw24ts4gYlkvwn0aqCrsp44J4Ww2E2rucGgCKT5QvvVZHA6bUClrKld1LylVqMQg8rvZ
	PXwlYymT5aV14AiTEI/5pEGv+aZ11m8d6RouTIxVht1iniA5dTiChQ7M7ZGinx0jZmt/
	5eQRoTrdo5vK81iJvzNa8TKqAFJpF6TLNPhR5CcIuAsNIY1xnjmiow9B5IJE5YRpCNmT
	wnLg==
MIME-Version: 1.0
Received: by 10.112.100.195 with SMTP id fa3mr3763940lbb.38.1354078094423;
	Tue, 27 Nov 2012 20:48:14 -0800 (PST)
Received: by 10.112.117.194 with HTTP; Tue, 27 Nov 2012 20:48:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1211271508420.28029@oneiric>
References: <CAHUNapSSawC9WwpdoNdg4vHBY6Yh3UycqYgOyX_pbTNw3S0Etg@mail.gmail.com>
	<CAHUNapSVRuxDxn9L=oHg6aO-RKso2VNF6Mczaf2zwgxHn2zzBw@mail.gmail.com>
	<20121126190407.GA69689@gmail.com>
	<CAHUNapRZ2Fg_=G5gv7SGE0__3n7PjKk0R362V_w1nST5AuQpGQ@mail.gmail.com>
	<CAHUNapSUN1iAh1ijxby6XW=DZuXA=_KCFLwfm9nYpgpKuE-V8w@mail.gmail.com>
	<20121127113952.06050a25@eb-e6520>
	<CAHUNapSULHA0kmWi9Qb61kxRJsuvGdbTjm9Wvktxc=PmGfVOSg@mail.gmail.com>
	<20121127161136.GA94097@gmail.com>
	<alpine.DEB.2.02.1211271203380.4220@oneiric>
	<CAHUNapRCGZMs-=eorNUfrjeKikyDW-O0K7GfREOHzs86B6pxEw@mail.gmail.com>
	<alpine.DEB.2.02.1211271508420.28029@oneiric>
Date: Tue, 27 Nov 2012 23:48:14 -0500
Message-ID: <CAHUNapT9qShFbDj9OYnMF2gc=gP3VLh-mFzmhd4zGATXpLfhYQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL_append workflow
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
X-List-Received-Date: Wed, 28 Nov 2012 04:48:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

This issue has been entered into the yocto bugzilla as:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3503

