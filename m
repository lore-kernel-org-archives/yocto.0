Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B298E01206
	for <yocto@yoctoproject.org>; Tue,  8 May 2012 23:06:11 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so74860pbb.35
	for <yocto@yoctoproject.org>; Tue, 08 May 2012 23:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=lH4K/KtycV68/QJu4Pp8ccKW8pTMpJVYGHdTFdVouCg=;
	b=UEL+9l4G73UbazZYNIkGodcB8riRvmkgqkx79Gfw1//xzURWobU31OFGlxfUgd9OSb
	it1tRq3phpnIP6m+gyN1SUAVICcX8vUm75KNx7GjEw6H6fNSRB9tusBq/AUd0K2w3kZ9
	ahPshERftpNHF/qjRXDHHqaVP9hvgxICHn+8lsnrDHL8POBPWwXj4rrxqcnPmAybReQf
	Rt06Hr0GNW6qp5Lr4dpDzA3T9llid748DsQQ5d07a4O1c1hnrFpwTBkBVG2mrS1c+3G+
	uHA3Er95ftxknprVnVaSrGzVWarl0v9y563fS31i7dgzSs4vAAFQWgsmWp+yHgjKiDij
	THAg==
MIME-Version: 1.0
Received: by 10.68.202.130 with SMTP id ki2mr5569786pbc.52.1336543570964; Tue,
	08 May 2012 23:06:10 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 8 May 2012 23:06:10 -0700 (PDT)
In-Reply-To: <CAPhnLPD1hXOUa_Zyi=OHM8a5B1CwdOCAxfuH=T1qqhTmchgi7Q@mail.gmail.com>
References: <CACW_hTaV80O+vVw+hweKZxDWgNFOjgDU4mHemivEFudiA9PLvg@mail.gmail.com>
	<CAPhnLPD1hXOUa_Zyi=OHM8a5B1CwdOCAxfuH=T1qqhTmchgi7Q@mail.gmail.com>
Date: Wed, 9 May 2012 08:06:10 +0200
Message-ID: <CACW_hTZkHqiJn_h8q0kVVtqDzFcxxDiJLY34cbM+wkqDu=5X4g@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [denzil] Licenses, source distribution etc
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
X-List-Received-Date: Wed, 09 May 2012 06:06:11 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/8 Flanagan, Elizabeth <elizabeth.flanagan@intel.com>:

>>
>> Something missing?
>> And what is the best way to find out what licenses are used?
>
> tmp/deploy/${IMAGE}/license.manifest
>
> I have a bug open to document the license infrastructure.

Elizabeth, thanks for your reply.
I peeked in my tree, actually it seems to be something like
tmp/deploy/licenses/${IMAGE}/license.manifest

It would be nice if there would also be a file per license (so you can
see quickly what e.g. GPLv2 licensed software you have).
Also it would be nice if the license.manifest file contained the
version number of the package (especially nice if the license has
changed over time)
I'll file feature requests for this.

Frans

