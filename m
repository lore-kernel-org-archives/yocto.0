Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B607E0090C; Thu,  9 Aug 2018 05:57:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4844E0084E
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 05:57:03 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id 8-v6so9666067oip.0
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2018 05:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=ZWNvMNK3p4fwlgZ/4Q1jaUg8l/0X0Cd5O7V0hFj2UGk=;
	b=W+0Y3P9O/M+KgVVAJcUyQgyg0KOy4ZyyjQuFwgpeupbMVao/nKTsT28IFQoXDZuUib
	QWyaxeCtNgvaDD812oX+aSSJ8xvTvW5wIFt3++ivrBDhfafloanKVgFQUG3tlwzK3/hF
	b3kUCQ/XHPWAyzk0jnjUuBR91G2Wt0LPqtNcwcqMcAr3eDfjXPKZgHEG6xWH4hVvbtNa
	8iNALA5yxCVFwdkaFA7ZIlOOoyDn+9eegEUak3J1ftbWtRfIjSDpS+abJLWiFUPSRF2S
	IJfAPDL2nofAjOWp0eDXF0iw03H7eU4CDd/WbyMgNujsRcaYOY2j/wawp9NXGFEpsNxs
	8wCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=ZWNvMNK3p4fwlgZ/4Q1jaUg8l/0X0Cd5O7V0hFj2UGk=;
	b=FtS2ftTK7X8DNTxLmSNf4XOnTY2/7K9gl5VskScxIN+2t/QC41itJxWJIYEebZYExT
	yW4WWZKY5wMuX8PhO2PtthZUDRzTiLI8CKnLyTukaRDZO5mNN1hkwn7LqvFNMai3xRxc
	pdZnbcphCvhVK7/52Xf3uP6ZbCNJAdJtiqyIxYm3Q0c3hPfV9uDweu/A6XUYFU+Od89K
	WkemJ/a7e5sPJcTfptgnHgbFqDgYGn+5tJxH+agmZmhnYBSy8nF7JKdVnolkse6Q5Vww
	IRb5D49TBWQN6EtQkjeYt/QJGgPObadVY//oQZUW4pNMFFDcU9on2fuTAtvsI8YQhbGz
	VCfQ==
X-Gm-Message-State: AOUpUlE4dKTxJFRgYRJ7mnXfN0XxtOkhS7reqK9mGLP/Bfb011k/saHJ
	83NvEliErB8Sk/OmKjYRxl0Xi/6vwbOxv8Y4iJI=
X-Google-Smtp-Source: AA+uWPyCTTQJ0yfcrkrzglQPaDchY01j/P0AMTHA8gOZH82toUrgZbR8jHPUoorwTg/L8oJZwmwHzVyqpxqKP65Z9CI=
X-Received: by 2002:aca:3d4:: with SMTP id
	203-v6mr1815393oid.321.1533819423252; 
	Thu, 09 Aug 2018 05:57:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Thu, 9 Aug 2018 05:57:02 -0700 (PDT)
In-Reply-To: <CAKPYHZ7FmcJ=5iXNRjMLLU84vVW=bOQU25Y_rCHn+AQiH0eRSg@mail.gmail.com>
References: <CAKPYHZ7FmcJ=5iXNRjMLLU84vVW=bOQU25Y_rCHn+AQiH0eRSg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 9 Aug 2018 14:57:02 +0200
Message-ID: <CANNYZj-atWgPJnw4vQNQyc2rL91sZqm_-Zm_r5599rV6O8iyiQ@mail.gmail.com>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: HELP!
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
X-List-Received-Date: Thu, 09 Aug 2018 12:57:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You don't need to check out a specific tag. Just switch to the latest
commit in the branch you want (e.g. sumo).

Alex

2018-08-09 14:39 GMT+02:00 Dhanush K.S <dhanush.ks@gmail.com>:
> Hello,
>
> I am currently trying to migrate from Yocto 1.8 Poky Fido 13.0.0 to Yocto
> 2.5.
>
> After cloning the Poky repository, I was confused with which tag to check=
out
> with.
>
> Could you please help me understand the difference between the tags
> "sumo-19.0.0" and "yocto-2.5"
>
> As far as I understand, both mean the same since "2.5" is the DISTRO_VERS=
ION
> and "sumo" is the DISTRO_CODENAME.
>
> But is still the same with the checkout tags as well?
>
> Many thanks in advance!
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush Keshava Reddy Soppahalli
> Mob: +4915216144064
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

