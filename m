Return-Path: <erik.boto@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 170FFE00C90; Tue, 11 Dec 2018 04:02:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.boto[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1AB4E00C1E
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 04:02:30 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id p8so6841621plo.2
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2018 04:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fXUb1b0iqRdbAuwmQRVbh+ZrB6uAsDA8lmicbumvpI4=;
	b=T3WzE7sgz8+a9Xmu94gw/x7qh3SVNcCSFLccFj70VvGGXUQ7/frQQwGLVvb6jHG5bO
	me0zF1TvAvkbeq71sF5COVdb25m8EM7FH80t5fIm45hB9/IHYbUSSviPQtpjLiRDaFUT
	GJbYlSFxsuD7Ebd+dm2zX7nNDgu1XcMqLB27dPlwruJVdUAovM+CYSaQpjNe29qxwRrP
	iTS7ZMQ8hg51tmCiixV6JD2D1mq0Xx1Q2mciC8g+EofUogzFoqqCEkNZDNofis53J7GV
	+gjzCReu1f8UJnPOFc4yEqPnkPk+xV2MJrMMcAZ4S7Pzj/bZ+tzx4/4G2z2dsJJjqrQs
	54MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fXUb1b0iqRdbAuwmQRVbh+ZrB6uAsDA8lmicbumvpI4=;
	b=eG4NBtrMIiETfcE7/senqp/YANzquGJPvSPwMZ5UKhhD8dDmqfObR9csd8Idw9tfRS
	eiDd5FLsPPohQHqgPU+wOdMv8FSuI6A7y69d1pj/sSVC+a9qyY6fN7D5/7TPrFTVTOOZ
	yICpmL9OXtJJXdPItkasBBJ0l/7cPb1tQ4fV4mAtOxSnMRMZK/qHQqplJz9B6jeI6JcC
	kh7RcXqgd0w4ZyhCDwGDE8XXi170QQlzmjtQZqjrnWXgmaO7/8Pvly/JkBNa4v70K7V6
	9PgwB+6v2KRGMCzbs6oSdj954AivP/Eqf9rqqCwvJjf+4/aF7im2NQO71d1xgzn9qm5n
	Bshw==
X-Gm-Message-State: AA+aEWZ89DoPQiTw2g0nEdQC8xXdyJH0xs3yj6sZOa3SsQD2UUmwBYB4
	Wi3TaQVCXHyNcPjjv/RSpbWBIasg0v+WSrWHGd8=
X-Google-Smtp-Source: AFSGD/UrsVqslRBZnuoZdcFIsgAJl3sEwAr3ix8qJyqFGyDvSkwniIa5siLoEJX2ohn+WIqYeZBJ6nawRvRB6Uve8pc=
X-Received: by 2002:a17:902:6f09:: with SMTP id
	w9mr16154762plk.309.1544529750027; 
	Tue, 11 Dec 2018 04:02:30 -0800 (PST)
MIME-Version: 1.0
References: <CALYZMn=_AhWPbX1Hx=7o=mhoGEU==jnCBJhiQ0v5Y6gL4f0H9A@mail.gmail.com>
In-Reply-To: <CALYZMn=_AhWPbX1Hx=7o=mhoGEU==jnCBJhiQ0v5Y6gL4f0H9A@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@gmail.com>
Date: Tue, 11 Dec 2018 13:02:18 +0100
Message-ID: <CALNvYWMMCbP+1+Kq9QL8X0gyi1MKHMm3G5973P52f4bxhgbAcQ@mail.gmail.com>
To: akash12bhardwaj@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry pi with Yocto os sd card is not working with Raspbian os sd card
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
X-List-Received-Date: Tue, 11 Dec 2018 12:02:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 11, 2018 at 3:28 AM AKASH BHARDWAJ
<akash12bhardwaj@gmail.com> wrote:
>
> Few months ago,I built an custom image for Raspberrypi using Yocto Projec=
t,flashed it in a sd card and was able to boot raspberrypi.Presently,I am t=
rying to use  a different sd card with raspbian os in same Raspberrypi.But =
it is not able to boot Raspberrypi.How can I rectify this problem?This is m=
y code which I used few years back to generate yocto image.
>

Your current issue booting the sd-card with Raspbian shouldn't be
related to that you previously booted an image built using Yocto.

Cheers,
Erik

