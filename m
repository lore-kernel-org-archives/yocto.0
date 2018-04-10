Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72921E00944; Tue, 10 Apr 2018 09:18:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C5DAE007E1
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 09:18:41 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id w23so13889216qtn.3
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 09:18:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IVw+fiP+iF3dRkI2yMqxH9ayAUOTVNKeS4dxA+R8t8I=;
	b=Yyuddv8RcX5TayEtQ4KdhI2ytpSFjMaClVD0TW+Hh2jbl2OeheuhVLbDa782ZM3Axf
	xc6fWkiYrBXKVuGhbbkECllA2OWaebSzyDCSYBm8YhfPT2lh7Kf7Txdu5ZIqsB2da1yu
	oVZOKAEb04nlA2hwjZl3s/siyl9gfAJcUNYT/PysKrYSdY8dpbLAZerZun3fr1Fx2Msx
	xV9k8Rt96Ahu0HNV26u2Shkt3WqssBSwbcBQZgE42IXBGTXcLg8GuWj35T3fbp4b244d
	0zsCVF/WK73U1a7fblxRlv+nLAdOH9YOPxUoA7wuq3bMjZP2X1ZN3lMx1EZRjLtCwgu3
	sfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IVw+fiP+iF3dRkI2yMqxH9ayAUOTVNKeS4dxA+R8t8I=;
	b=stltVLt3jUjz7kxSqRSQElPhe+KUKHkug3KvU1riR89J+oXo9yZGvp2GdQDNt4z0jG
	1RgkLZA26XgIeiT8q5mjRLjl59q4bY/Ssxi5Icef0rHGq2MGXpIfYwI24Git896RpnO3
	3vXGQ/1dWF7qNcvjFXgeCsIgHcPOFstEiq/5kz9j5aL26/pXtFNqyWNStJvBtkcjkUGo
	9qIKAOIGbxh74lY728tPNgX4xwAsh2cfi5NOcpoAixTVPgRggJ04ctt7pBya68wYgZzA
	cvTxsQC3Eas8FwANI8PPTlMagV+OKS5hVw3EeYIY9qRhZ0G/kPId7DR76rB+wBHrh1yj
	ZoVA==
X-Gm-Message-State: ALQs6tDlu37s39cBNwqDhNhS7zG+VsAOXQMo7VU2abXB1KRrAtQ/RuOO
	U8XJW2vFWqmhLs6EJurJNiKpoUZ9roGR3Rlr/Zs=
X-Google-Smtp-Source: AIpwx486nZVxB2EyJbLvrFuL1c2PeWLKV5HEUKppNMLZDZo3E4IeqO79tjRatw/Zi0QdCaDon/MDPuaZAztDdVTK93Q=
X-Received: by 10.200.82.86 with SMTP id y22mr1591081qtn.167.1523377120766;
	Tue, 10 Apr 2018 09:18:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.247.141 with HTTP; Tue, 10 Apr 2018 09:18:40 -0700 (PDT)
In-Reply-To: <CACAZDOnEWYdBmWqRjG75YXy_-QRrMbH7xVY957B8oF-F6Uj09A@mail.gmail.com>
References: <CACAZDOnEWYdBmWqRjG75YXy_-QRrMbH7xVY957B8oF-F6Uj09A@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 10 Apr 2018 18:18:40 +0200
Message-ID: <CAGAf8LxCLt-wJTpXrumtP-UxwZ_HWk5DKryYHKu0rbK9yFPAdw@mail.gmail.com>
To: Viacheslav Salnikov <slavasalnikovv@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: : Add sources to rootfs of image
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
X-List-Received-Date: Tue, 10 Apr 2018 16:18:43 -0000
Content-Type: text/plain; charset="UTF-8"

> In the end of all tasks this recipe adds all sources to the rootfs.

Why (what is the important/critical reason behind this request)?

Zoran
_______

On Tue, Apr 10, 2018 at 5:36 PM, Viacheslav Salnikov
<slavasalnikovv@gmail.com> wrote:
> Hello guys,
>
> I have a question: is it possible to easily add source code of package(s) to
> rootfs?
>
> For example: there is a recipe which gets sources from git, unpacks,
> compiles etc. In the end of all tasks this recipe adds all sources to the
> rootfs.
>
> Looking forward to your reply!
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

