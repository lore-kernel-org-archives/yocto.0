Return-Path: <ndec13@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5616E014AD
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 08:01:28 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id ef5so2606942obb.41
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2013 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=CyRfn7mKRsiQV9HksXWNWFf+bRRR6JiBVu0588bnMuQ=;
	b=UlqhbqQthXd/z8huXU3Cm6AOXWO+xBDsN6MGjUeJmfwb+m8Tg5yBl26oQCDnsfR/E4
	T60Rv+ZrawdSpdCzNdxV8HRIr61GozZfGiyVcUJYPh3nCaSETneGLcy9DWuADSNdwKiH
	9O2kgB0KUkWxsAQQRyjzeNi4QKFNz8Q7J40Y5qqMPvN9ndpamWlcpQcY23y4kS9PT5I8
	ObvR642E56RS1yitwYI+PBXT5DT0sk16hDBGByw/gJO51OngWpQejHhncvdYSSgGQT34
	TvhmXtkccavT61sJFvxijh1gHpnxHLP5hYbasGAxFCHzZFBhO8GioOjRGXiaMxp8wyiM
	vrzQ==
X-Received: by 10.60.142.164 with SMTP id rx4mr4621122oeb.83.1365087687854;
	Thu, 04 Apr 2013 08:01:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.34.39 with HTTP; Thu, 4 Apr 2013 08:01:07 -0700 (PDT)
In-Reply-To: <3982011.Guen6pOcoq@helios>
References: <3982011.Guen6pOcoq@helios>
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Thu, 4 Apr 2013 17:01:07 +0200
Message-ID: <CAOT3miKi62MtFGjiNYeykNKAsFQ+srtwqSbsSyge3ZzGHD4DOw@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto <yocto@yoctoproject.org>, openembedded-devel@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] New OE layer index now available
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
X-List-Received-Date: Thu, 04 Apr 2013 15:01:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

hi,

this is a really useful addition! thanks!

On Fri, Mar 29, 2013 at 10:34 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> The index also supports multiple branches, but for the moment there is only a
> master branch configured as I'd like to have people check the layer data before
> adding the additional stable branches (danny and denzil).
>

i was thinking it might be useful (in fact at least it would be very
useful for me right now) to get version 'history' for each supported
branch. if i understand the design correctly, i first need to set the
branch I want to search, then search. but what about an 'all branch
search' that displays recipes version *and* layer for multiple
branches, so that we can easily see version change and recipe move
in-between layers between all branches.

does that make any sense to anyone?

nicolas

