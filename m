Return-Path: <raj.khem@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD341E0157A
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 22:57:13 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id g12so5172087oah.20
	for <yocto@yoctoproject.org>; Sun, 18 Aug 2013 22:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=bClYvLzULiRDkxi0p1vtgOE4zO3yHUpbUhCecnrIdsc=;
	b=R98w2GaHZ6VPmFhlrKoZmKeWCWTjwjpShVUwiZzhL42/55HlnqN7EQmeyFF3bm1+bv
	QNerzZaka9P/R19wfNSILuj3ZkliMfRzEkeCLng0Iors2MwweerZnPS97Weuok/CWTJt
	/e6Dhp2Ijo01xnSCBNoMRGLokyJI7JFtJta+gg4WKFR2581yqdYGpN11rh0sZgafgRm4
	rW2NTmnF5ffZyXTVwCb22lXPiBpC+hHmIZ4h//cgydIQrLJGRp+Mx+ymKQFaN1KAhhRX
	+rUMeGp14S2IMceOIl9voSP7YX+g7RTfiBJZIefIwctLdd97H8vwoR4FXieWnB3F7tWN
	yVog==
X-Received: by 10.50.92.74 with SMTP id ck10mr3502746igb.3.1376891832676; Sun,
	18 Aug 2013 22:57:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.216.195 with HTTP; Sun, 18 Aug 2013 22:56:41 -0700 (PDT)
In-Reply-To: <5211B27F.9070707@gna.org>
References: <5211843D.5060805@gna.org>
	<99393E6E-364E-486D-AAB3-6EB66BB9BF72@gmail.com>
	<5211B27F.9070707@gna.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 18 Aug 2013 22:56:41 -0700
Message-ID: <CAMKF1soEJjWp5o8fa9kFCMWnrFH2pw5Kv6kS1cycv4kgF3d+Aw@mail.gmail.com>
To: Christian Gagneraud <chgans@gna.org>
Cc: "meta-arago@arago-project.org" <meta-arago@arago-project.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC SVN repo too slow?
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
X-List-Received-Date: Mon, 19 Aug 2013 05:57:14 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 18, 2013 at 10:51 PM, Christian Gagneraud <chgans@gna.org> wrote:
> Right now, I'm really stuck. The only solutions I can think of are:
> - Ask kindly Arago not to use GCC code from SVN, or maybe to upload an
> archive on yocto/oe mirrors.
> - Check with GNU/GCC guys if they can do something about it (maybe it's a
> temporary issue with their server)
> - Wait and see, cross my fingers. :(

all of above. If someone has the archive. Please let us know we can
populate it on one of
the sourcemirrors.

