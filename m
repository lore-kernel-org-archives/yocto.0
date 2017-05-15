Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21C01E00911; Mon, 15 May 2017 02:14:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C0BAE003E1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 02:14:50 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id a72so88374238qkj.2
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 02:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=Yf6pbR3UEspVW5kQK0Yc8NF8XdAaamuxmFlQ6pIxTpg=;
	b=NgHX7YpzZFFYa/6BRUKFP6ifSSD//S5PHECYDSgQgLPf8hMr2AUJeavW7+WT/LPHP4
	S8wIMXCjkZ2F13SB+FEAqJy5xF9ia1xSntI9yWfrrh62nre0nI1D+b77+jmYMvuuAoLS
	4H+0uc3tb1JaJ0H9d6hfbxQWnW9nxh04Y6fdj9+CrKM4+I32B8fcXTnWYl1ID1HNyU5v
	Bw9GzguHwSROXFBIA569To0FHMDndJ0UP+kfBGBOs7eRPn51b81mpy9+A0Y1+4JSTeHY
	46PNzmrpxEwXAaGLjodfSVnpElPPw0OcLydbksho/wh7XYA7I4au9/Lwy9vYjJl1D6Nz
	zUsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=Yf6pbR3UEspVW5kQK0Yc8NF8XdAaamuxmFlQ6pIxTpg=;
	b=f2iCEf5NtxBXK1c1btfa2/sCnKsTF62lOTmdeSJh0jHmB68YMBcPHet+RMPKIeOAon
	xuAq02QziXamS5MM69q/P5EOorTeLdIdnaZY3Mp4HbnFB6i61+bjMkr3zJYDBmBq0m+a
	LbkdkcZllGBMK7cV3+CjjTTbVBaYw9fMLO2XCeKVnWgQqnlMlftcLqdX6pYtaDchLYZo
	/Fsa1hCtx7AKVGoMiz6pttFq59m9M+F89nfqGOEq/mXq/MeITIUMm2XrC/8SXsmmaXIv
	nPApzTsBVzbBm4ruHioBguCGF3bcfsRMtD8JYuQ91SGJ2cB4t9FO4dGItgGMJl0+sXGV
	zq8w==
X-Gm-Message-State: AODbwcANAK5T4wOhLAVDz0d9NEIA1qklM4qq7VUY0hLSqY2IzJST8BuE
	BPs56SQePBWKvl2vy2S0oI7DrvnZI3wR
X-Received: by 10.55.15.96 with SMTP id z93mr4533621qkg.288.1494839690023;
	Mon, 15 May 2017 02:14:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.167 with HTTP; Mon, 15 May 2017 02:14:49 -0700 (PDT)
From: Paul Barker <pbarker@toganlabs.com>
Date: Mon, 15 May 2017 10:14:49 +0100
Message-ID: <CAPyrkgxZjwcX0h9KgWDi-uxRbp2k-bGpox00YP66soQz4mSiAg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] Pyro branch
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
X-List-Received-Date: Mon, 15 May 2017 09:14:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Yocto Project 2.3 has now been released so I think it's time to create
a pyro branch for meta-raspberrypi.

I've briefly discussed stable branch maintainership with Andrei and
I'd like to volunteer as maintainer of the pyro branch. That should
spread the workload out a little bit. Does anyone have any thoughts or
objections to that?

Cheers,

--=20
Paul Barker
Co-Founder & Principal Engineer
Tog=C3=A1n Labs Ltd

