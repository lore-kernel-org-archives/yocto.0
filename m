Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4481CE0053F; Tue, 28 Aug 2018 07:48:17 -0700 (PDT)
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
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3BE1E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 07:48:16 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id b15-v6so3273405oib.10
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 07:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L1wFHRs6AK/tWdOcnyro1C6zAKVMbBgGTMOcg17Zkkk=;
	b=ubS/B4CLE6JghzzJGHY/ULmc6OVfdxHykR3xEG3BopqgJ1efw1QB65xU32XDO+jvgT
	ucpfJJbymZKhlo2zPQ9RbJS3Qm9VhoQrZ7EEi+ot88KGK3j6WvhKWEBMSn+1mpX1+BbQ
	X/OAiaMuW35XifeUgl3kKRF5gnQpnL3nJc0x1xnWx3Jae/1PMQQTGflbznqzYvvT/2kX
	NVbkHEfxlIrpTUp5xbxrKo0XZPWLUyjMhhZjBAlWa9ink1guEm1PAKIb4aq0Bg6fW5pL
	IgBCialrTNdRwJ0gjnXEkTSsARwi3rijVKb8dOSnJ81zd3hi/BHs9gCbHZhH8P0oS/HG
	xJtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L1wFHRs6AK/tWdOcnyro1C6zAKVMbBgGTMOcg17Zkkk=;
	b=hmJ3y/lm/TI2PVDoIIH0T0v76SbQFGDASBxg3xNtu1u4trWrc8bCVyCeZ8MjQhuZ/i
	iLPw6ZsDWDXDvdy416l1yit/ySZdg4TZddvZYfFrNk+ppw48VfniGP1DsFYJohTRVK6l
	yRMU4bU/RmvoeRvwUssesVmRrG2I6XfiLg33VhDsEH2wWFBkS2x+xGMB6+g7w37XA/a0
	NE1uc9jpMxZtAa+oR+mmoWHlt9ESaETvcEEuzALUL76JzmggGSeL2nL/O53Qz2hon+Bl
	Z+iLvWeYXaBctqiNN5K6CQ+KOgqr4bP0+/Ehw0+OUS+RKiytI2NK91fhwSS3p3IDkcKp
	aOGg==
X-Gm-Message-State: APzg51C99tzbalFwjwdK/Wcsabc6BX+C8UuZQGOpQi22GUNw9soZt2iz
	jSQqmavw8CgzEb8jI7r9S9jot/CYHtkOqNJiNC4=
X-Google-Smtp-Source: ANB0VdarZ3nMfGqHVpFdihgNKnL6kPTphFkEUsrYVCM06H9u+6G1jm92SxSKZYJ9bOZZnXjr7OGX9fJpoapdQGEPIs8=
X-Received: by 2002:aca:4455:: with SMTP id
	r82-v6mr1656945oia.260.1535467696062; 
	Tue, 28 Aug 2018 07:48:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 07:48:15
	-0700 (PDT)
In-Reply-To: <CABF_=yjbBOpjSYyObgs091fRcxTyBj0gw0SOPi4hhKS-3PxV_A@mail.gmail.com>
References: <CABF_=yjbBOpjSYyObgs091fRcxTyBj0gw0SOPi4hhKS-3PxV_A@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 28 Aug 2018 16:48:15 +0200
Message-ID: <CANNYZj-xqhJkgtQ0mYKQERcM0hPSC8t=kYwkFnsMJHAF8MxS5w@mail.gmail.com>
To: jan vermaete <jan.vermaete@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: do_rootfs fails at master with something about glibc-binary-localedata-...
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
X-List-Received-Date: Tue, 28 Aug 2018 14:48:17 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-28 16:34 GMT+02:00 jan vermaete <jan.vermaete@gmail.com>:
> I have a perfect working project at the latest state of Sumo.
> However, building the image when having all meta layers at the latest
> state at master fails.
>
> The step 'do_rootfs' gives:
> --
> The following packages have unmet dependencies:
>  locale-base-en-gb : Depends: glibc-binary-localedata-en-gb but it is
> not going to be installed
>  locale-base-en-us : Depends: glibc-binary-localedata-en-us but it is
> not going to be installed
> E: Unmet dependencies. Try 'apt-get -f install' with no packages (or
> specify a solution).

We don't really test deb packaging, and especially making images from
debs is not tested on the autobuilder at all I believe. Your options
are to debug the dependencies in .deb, or switch to rpm or ipk
formats.

Alex

