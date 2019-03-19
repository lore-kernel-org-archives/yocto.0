Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67725E00D21; Tue, 19 Mar 2019 01:23:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D583E00C4D
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:23:22 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id y62so5612417lfc.13
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:23:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TIVzQUG1rY4Olpn6Zg2wpx/yEqa6RABmB6LPNUp1FXw=;
	b=foFPcsc5pMCxq8V/JKLmVlP/zp0y9GPaNDmKEltZo0JyiPvtP4YoiVPl6N+qU/mtMe
	wTspILsIGkI05Z6w30e30y+tq2nsazJml/8uUaD5U7WVVKSTXlM9rR9V+SuL9lKEy5wL
	O120yw0teKSO3fqiaMbPzgCGjfbmCt1ZHvXSo/S82lSaruqMM6GPcbhVsCm0dWlceA7r
	s01EkkJyluIyekiYFIBY48z9HAb3aHhY8F9Idg8pzv3Sr60U2aTpFdX0A/esfhSDtXRE
	+v1IDQFNJ6LsrL+fjkIjCqctKw1k7AJqXSnK18aPonVoYEIptiXPywoAWZ0kP0J9m33f
	P5MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=TIVzQUG1rY4Olpn6Zg2wpx/yEqa6RABmB6LPNUp1FXw=;
	b=uEmLml1DAiFVVusew+BLTZ5jfAQvxhNua8beetR6LPWPemPMGqqgDjsXQ5VKzGG0I7
	VrVgWpPwR35KMbmxsiNcEtKLtgIKH3+YoHqvxqzSA2LVOYcV6977TNnt4EHwx+DV0/CL
	PHDkOqX8YT9QBus15gU46mpXu2QCnmQkOLYbOgHHk3w/snHL2b/aC1CqMQd3PE0lwhBu
	qFngwDzVrlMhvcwIDqOAfWPQ7iP+PgO6xc7oDN+j5f6V1daHqFMGu0/I7F1sBeoDZwNJ
	I4oQ1S8SfmCGeVRCMtldMXxrq1v+hb73X5FCzerDMAH5JO48SKaC9LMz37D957lOlLhB
	nZ5w==
X-Gm-Message-State: APjAAAVOCc0sBmS1Ms1vWYHE2bOv8EVlBGRnexJ2d8Iq8UDNHYxUuZW0
	dn2st+69MbC+2UO3f/LI8BHn3zG3jgdqkJPfRVg=
X-Google-Smtp-Source: APXvYqz1z6h9Pmc8alHss5AoW9xG37ASl53ZO3JKTHrA6XDDVybCWA6AmA5mDaZLtdSJPjR8ndGMQXKuwd4vjdi6LUY=
X-Received: by 2002:ac2:4191:: with SMTP id z17mr12325754lfh.78.1552983801100; 
	Tue, 19 Mar 2019 01:23:21 -0700 (PDT)
MIME-Version: 1.0
References: <a742a786-22c4-2eab-0d10-71291249d4fc@faresoftware.it>
	<CANNYZj_S6vbVvuKriC7fx3bHUNUGv8ZNqNVbeBx5xDuuWPS7Kg@mail.gmail.com>
In-Reply-To: <CANNYZj_S6vbVvuKriC7fx3bHUNUGv8ZNqNVbeBx5xDuuWPS7Kg@mail.gmail.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Tue, 19 Mar 2019 09:23:04 +0100
Message-ID: <CAPybu_3-wKxSk8hSEx5GAc0o+WTZ-_df=dGVoD1gc4LO3ft4OQ@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to produce Release.gpg
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
X-List-Received-Date: Tue, 19 Mar 2019 08:23:24 -0000
Content-Type: text/plain; charset="UTF-8"

Hi

We do that on our build server with this script:


for a in $(find build/tmp/deploy/deb -name Release); do
 rm -f $a.gpg
 gpg -abs -o $a.gpg $a
done

Standard measures apply: signature on a yubikey that require press to
sign, but if you are less paranoid, you can just create a key with no
protection


On Mon, Mar 18, 2019 at 9:55 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> On Mon, 18 Mar 2019 at 08:14, Mauro Ziliani <mauro@faresoftware.it> wrote:
> > Is it possible to sign Release automatically from bitbake?
>
> At the moment signing deb repositories is not supported (but it is
> supported for rpm and opkg).
> You are welcome to add the missing support,
> meta/lib/oe/package_manager.py is where it happens.
>
> Alex
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Ricardo Ribalda

