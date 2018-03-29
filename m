Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F566E0091A; Thu, 29 Mar 2018 07:24:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFD14E008D3
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 07:24:28 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id u9so3736703ual.13
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 07:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=SvpkSWKJfjBkuF+Gi8HEJo7djFXnl/UavPOh+9vM+eQ=;
	b=Eev1SgzXkF0lMiZa5nAnxzVP8liQeoukCgnrr/H0OK4ffMZt0g9e+tWRQOEk9Jv/EW
	PaiQcN6bl7RWRD9I/I3vOi2Fxx4iwVLDKClApgV10IkmnuqGg2IP5RPFzk93/XzCs4ri
	JjF7Nrn0Qq0J8ZQJMbPSnSEPvCgBmhbkWyruuVNQYPncZPNQ+yR5hQNpE4ZeUTWQZgse
	pvT7sNGrumeYoMm4rb2bwSB6qKv80pvZEc88ACtPnsuHv5gZmq2FZSykTCYkx74Qoima
	dnrU6goY3UcG3/J+p3Q9lZLVrZwoeRkQkR5l54MvF7zdV99QYcG9cqaXHWLnzdiaEvva
	rMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=SvpkSWKJfjBkuF+Gi8HEJo7djFXnl/UavPOh+9vM+eQ=;
	b=ayjGox4bCdvdNNpwQ4l90Da8nw5eXJIcYiPjK+qo768wGqNIhh8Sy/Lp6w9myUawI0
	NUnfeT0UmMKV8Y9oyboSoM8jyuEQFgNrdhNijVySkIYry3trSjBlH220ksG8EMWpVCVV
	94WhABivPLxZ/g3qBUr6z6UH2gYsZNlB9KPR/v6PGEtmSi/Ri5mKAZCseZJVfmZldoax
	qFoPxMXW0I5hxwTvBV27dDWWIyOJkQDv+JCyT83q27XGbaoizbeW4JY/EgLhrSDGDvqM
	eUYXhsA+dnBJpmwlGnTlriXSML0TRG8iZIWz9PKkysSTHN+4O+7bkqKB8SFg0HTKqxNs
	AdVg==
X-Gm-Message-State: AElRT7HihYncZ3lXow1qsNVyMcy3dKmp8Uy+AMkoSAAuIvtiCX/LQMYe
	rYR/H1tYKoe8OUflbuC1K/L5DWj1tbVyGJuMw8oMzw==
X-Google-Smtp-Source: AIpwx4/L+G3Z829BvhEaPPJiDmtbacanXrv4DmKHGLRhJcvE+bQL3fzsQIq/e7cBvIpueFNv8909+geVmS2PXWsdho0=
X-Received: by 10.176.24.215 with SMTP id d23mr5484435uah.29.1522333467329;
	Thu, 29 Mar 2018 07:24:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.50.3 with HTTP; Thu, 29 Mar 2018 07:24:26 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
Date: Thu, 29 Mar 2018 16:24:26 +0200
Message-ID: <CAC+thW3X+Nhc3VZyq-1R2Mqg0xKGKjOFM76SBW2nOjDc5fNfhg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: selectively enabling/disabling multiple systemd services in recipes
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
X-List-Received-Date: Thu, 29 Mar 2018 14:24:30 -0000
Content-Type: text/plain; charset="UTF-8"

Hi!
I know a recipe can list more than one service in SYSTEMD_SERVICE
variable. Then, is there a way to selectively enable/disable each of
them? To me, it looks like SYSTEMD_AUTO_ENABLE acts globally on every
service in the above list.

I have a recipe which provides a single executable (/usr/bin/foo), a
template service file (foo@.service) and two service instances which
runs the executable with different configuration arguments
(foo@bar.service and foo@baz.service).

I'm considering splitting into separate packages then allowing
configuration to optionally override SYSTEMD_AUTO_ENABLE package-wise.
Is that the preferred way to achieve this goal?

