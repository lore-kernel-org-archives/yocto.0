Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D09F2E00DDE; Thu,  5 May 2016 04:21:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0244E00DDA
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 04:21:18 -0700 (PDT)
Received: by mail-wm0-f49.google.com with SMTP id g17so22249548wme.1
	for <yocto@yoctoproject.org>; Thu, 05 May 2016 04:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2pxqM9lN4cV1JfDpM5WxUQovGd2mCYVhUhKSoGpzYHk=;
	b=aqJLqmZnfmzmOU/04wzuLGOHURiUY6VKmRqtVp+7KxYPnbyQXkAsCfGn+OktRPz8p+
	+ssjJOt+2RFm+Q65zyvpnkBRbCGVblPo6xlCspGX8hoklDq/yOZl0I5s9hau4IqJyL2M
	wVru8seoeL3BlcGNSzhYh73Ggp2sIa2urmbyPlp7LmNX/utYM122eRqUsSG4xlrzoZi/
	R+iD9NFAyc8Q6HDIOFbbeYrmKE+B1U3s6pLmRzQ5y29M/8sPSZ/lnfA4EGEHbXnflLOD
	Vwq5oSp9ln8n9azKQnNFJBwQXDyCJscZ8GbDZDoUMzjV1NVh8ogUTdeVHxDM5yz6u5/0
	h1fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2pxqM9lN4cV1JfDpM5WxUQovGd2mCYVhUhKSoGpzYHk=;
	b=SwyCavk5wuwcSvYLfWXrtNwriBAl0/hoiadrSpgrXLpgd4EKdqRArUeGwrh7ibLk9R
	exSSMpCkrNKF+S4GIgikvgX2WJpjkwuNy9kSjyhRq8iGTglVLs1rXKUH9vjyMlazklG2
	r9IqfzSuust+XLueCooVqMCEWZ2FWvueOe9L+f19H4WEGqhQR0OnQZvgMMkBGgzuxm3u
	pYyzA4Fx62X8TKljBf3PqCQOVw5B63s0+nLYN6ocsTAMLjnGEVVwKOhEUnPIi9vUuGWO
	+/R3L5liS2mIN3ZAX1Lajv0RMu6tX5OY5/SipTGhZSUzJJGuAQ9Au4RBLkbdkp3kWgrx
	e+Pg==
X-Gm-Message-State: AOPr4FXD3JuDtqXMCNPIellJiYJYhNmg5o+0yjqbTqNv9emu4ksfDHXqgvoqXccg6wv0Qw==
X-Received: by 10.28.54.224 with SMTP id y93mr2898219wmh.82.1462447277590;
	Thu, 05 May 2016 04:21:17 -0700 (PDT)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id gt7sm9251545wjc.1.2016.05.05.04.21.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 May 2016 04:21:17 -0700 (PDT)
Date: Thu, 5 May 2016 13:21:15 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160505112115.GD1401@resin.home>
References: <1461619754-3074-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1461619754-3074-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi_4.4.bb: Upgrade to 4.4.8
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
X-List-Received-Date: Thu, 05 May 2016 11:21:20 -0000
X-Groupsio-MsgNum: 29863
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="KdquIMZPjGJQvRdI"
Content-Disposition: inline

--KdquIMZPjGJQvRdI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 25, 2016 at 02:29:14PM -0700, Khem Raj wrote:
> Fixes for gcc6
> Drop upstreamed patch
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>

Merged to master. Thanks.

--
Andrei Gherzan

--KdquIMZPjGJQvRdI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXKyyrAAoJEHO76Gt+erfPNQoQAL4k7J16nxAOlQm2sWeH7oRd
lHJqYXUlVzcdmJ7FO/ha/RW0K9q+oWdYNdPr7Gje2Jo2cGq2pX7ZD/O0wEq25xSa
JOYDaymcBSKWVd1VFZ99sSi+SXJgAD52Hbwi35Mws2OzyJqHwXQUdwSO66m1vELx
lXtqUYxTzIPxS+xgZpT2lFB2+hMYUK8wrxE/h0iFOtltvvvCJUphrtyzzDgCDNk1
GaNg255WdX1ljyHOQNx7gAZQ3lAbp6nabjy42MAqe1itT3xKv8RO5wrJwmQKDpNk
NfN6riAuGOe4Nun2jaTXUptGi4srSFRg9b/o9LuhuFL1ju1r3C0E0QcfyRdh6CDB
T7F17+nQttGlJNx3bsMhN/QqEvtYDEwGTnDxj8xlvX2zXwSa6rzqqedq2TIUTEPf
mHrxjg8vq8LGwBKD0255Zcd6jTcjUE4PYHx6T5xnB+BmSzDShIyNqxi7amZT+buX
mfoFr9uwSR15B2yb7dHi7BLYs2KW6OvsvVIwCPM9JUeNCNmCkpWxVMLgJ5BOqhGG
V9q7IDhSZkkSYhqgT2r2dRz9i89xnvoWKGP3h7vgDKci36LpErxO546ZXiRegCp2
aI+o/IbUCB4l3MGZCVhLXOKyL6Q5+c9qq3YsX9WA2MP32WeMlZBoIsJWDYO5nAvn
TMu6CkCmiAuHCBrsLJaB
=1dws
-----END PGP SIGNATURE-----

--KdquIMZPjGJQvRdI--
