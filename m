Return-Path: <koen@dominion.thruhere.net>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9D3BE013DD
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 06:09:00 -0700 (PDT)
Received: by werc1 with SMTP id c1so5661262wer.35
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 06:08:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer
	:x-gm-message-state;
	bh=KVSgbq7kwvg2qDEjg3IMnNcczZFiTpwvAh4UXnmjwds=;
	b=H7cFWNwBsukqkCkX8r+3dVGdWR3CEClGCrVDkzy/5fcoTSqBz/Fm2zSkYM1+KeMlEX
	s7PQSqFsBDlV9vHqPYnyj2sJnLJjvuIBwx3d8nAbMrfmlDPwdTLIHxPwsc2Fk1alT1pk
	660Ab+33Tj6JW2nCMYIhF4Vv8SywC+oBAuO6kKahAbJLbnv2oGJj/hmusSSDP208a4TF
	pquYnG+EYk8kP+UG4Q/+L6Yi87zL1NcBsmLoz9krv8rDo5r1/2+9HIXa/dfW6KhZBv8/
	AT7K2goqp9xpYXhBDlGJXVZwFYwWcJfJkyX7Vs+esAT/sOFdHypa/LRZla4RtjB26rp/
	Cqrg==
Received: by 10.216.135.97 with SMTP id t75mr12198592wei.60.1332767339376;
	Mon, 26 Mar 2012 06:08:59 -0700 (PDT)
Received: from [172.20.3.200] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id ff9sm40826450wib.2.2012.03.26.06.08.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 26 Mar 2012 06:08:58 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
Date: Mon, 26 Mar 2012 08:08:55 -0500
Message-Id: <6C848C81-E184-45D9-8CB4-D8671CB08B6A@dominion.thruhere.net>
References: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQlqpaCqvHab9BnsfwFbH048dd2nBN3J9ZJ3Fi4e81lW0WzTzsCtkADvOxsBC8RaKd3o3WpE
Cc: yocto@yoctoproject.org
Subject: Re: Support of meta-kde for Poky
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
X-List-Received-Date: Mon, 26 Mar 2012 13:09:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 26 mrt. 2012, om 07:55 heeft Samuel Stirtzel het volgende geschreven:

> Hi,
> the development of meta-kde has come to a point where kde-applications
> can be tested (and maybe used).
>=20
> Status of meta-kde:
> Most common applications work, for example:
> Calligra (not all of the toolkit), Kate, KCalc, Konqueror, Kwin &
> Kwin_gles (KDE window manager), Okular and the applications from
> KDE-baseapps.
>=20
> Plasma Active (and Desktop) do not work correctly, but I'm working on =
it.
> Plasma Netbook seems to work, but it needs more testing.
>=20
>=20
> Involving the community:
> As the development of meta-kde advanced to a point where developers
> can use the layer to port KDE applications.
> I'd like to invite others to test the layer, port their favorite KDE
> applications and express their opinions about the current status.
> Feel free to ask questions and suggest applications to be ported.
>=20
> meta-kde has no mailing list, so I'm looking for a list to host the
> discussion, any suggestions?
>=20
>=20
>=20
> Current issues with Poky:
> The giflib recipe is not contained in Poky.
> Is this based on a design decision, or just because no one needs it?
>=20
> As a meta-kde developer I don't want to limit the testing of meta-kde.
> Would it be feasible to add giflib to Poky?
> In this case I'm welcoming your suggestions.

Just add meta-oe to the poky stack. This is how the layer model is =
supposed to work.=

