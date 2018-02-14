Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC7C7E00E1F; Wed, 14 Feb 2018 11:10:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f51.google.com (mail-vk0-f51.google.com
	[209.85.213.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FB4AE007E1
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 11:10:14 -0800 (PST)
Received: by mail-vk0-f51.google.com with SMTP id b132so6597390vke.9
	for <yocto@yoctoproject.org>; Wed, 14 Feb 2018 11:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+sH474RbinAWAr9BeNSazE9+D6U6TUTAYu7VCfwlAzQ=;
	b=deCRZD7vGvFsIfeQ13oLoGegqjoMp77qcVwL4qSXpPhgPRjaFYvh2d7SPz7AThAxK5
	ocMGS5/fRZ/ED8RNjW4W1Wh/xSVZK/4IraGfkTf93+AFRxK+VF2ueErow6flJIDjuqSP
	4iFmOziER555LkPVRsnus5unmyok6Eb9njZzutHuZAB2TFtxlfuhaPKvKwUdgDABSQb7
	AZwTn5CEKDylEXMRDMai7Btqclt33XWCU7Kt8i7FXtuX01Z2gC16TWyfA0YaCRyseBaQ
	Ls+9VzE9RFTKVVDlPOMy6g9dhDYkMuf+99fi9HIwB/r0WZP3/rzTOI/Y9Gdg0z42VNHj
	Hj5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+sH474RbinAWAr9BeNSazE9+D6U6TUTAYu7VCfwlAzQ=;
	b=YNp0aVBV6j4T5c6iE517CA8SIJ1VUafd2xhY6LqvmIHQ+Ofdgi3JvpKkSBi0cq1Xt5
	s7deXJE+HN0JcFYiJhjsnLl5NI+oWGQRwAQqY35knSfjF0xaHapk6xwcNhhJ2GimLT5a
	ZTx5E0nb0LkC6/n+ZjmRROnFispWh1EA5O7MygM2gubZEkq6NNAZyAsyn/wOBMpolk2b
	mhWW5qKEmsmT0oPF2DJJWFQlo+csc9KxW+vNvoFrRh5MK6UHWFJvVDkNa5ixD3Oucmg5
	P/cMdGShpqrBxBdfROQuq5KC0je8kvlnOaVyBOoTOH2LZLTIkknKGgYalrk/YkXWn84O
	T6tQ==
X-Gm-Message-State: APf1xPDdlAH9+ITiWj6vxU0qr5+DoxtsN0zKIOdqBNniV7lTQKTn8hFD
	pJzELES0kXM+dyOBymiyc23Ez3ZXoc3eNSdxQFhZF4Uk
X-Google-Smtp-Source: AH8x225N2Jqz5QYmZdkxPgnFaaONJJJuWwMsqB8e2rx4uHto2T+0mqqKS8e0CIuWem3JDD6U5VV5/znmtYNNk5xfZyM=
X-Received: by 10.31.204.131 with SMTP id c125mr235758vkg.127.1518635414252;
	Wed, 14 Feb 2018 11:10:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.89.240 with HTTP; Wed, 14 Feb 2018 11:10:13 -0800 (PST)
In-Reply-To: <CAOT_U5anf1LNGxrY6SGTV4Up8vUzanggHjL3_B3FkthmNiJM9A@mail.gmail.com>
References: <CAOT_U5anf1LNGxrY6SGTV4Up8vUzanggHjL3_B3FkthmNiJM9A@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 14 Feb 2018 19:10:13 +0000
Message-ID: <CAO5Uq5Sn8pQ2hTgjKnhi3ETjhSmLyd-bETDqkgUjJ4tgCvt0-A@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: How did you separate release and development builds?
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
X-List-Received-Date: Wed, 14 Feb 2018 19:10:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Feb 14, 2018 at 9:04 AM, Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Hi,
> I'm assuming separating development and release builds
> is a fairly common use case.
> The release build would be something like:
>
> - has all the funcions for production
> - attack surface is limited (no ssh, only the required apps)
> - config files set with real endpoints (logging or crash servers etc.)
>
> But that's not an image you can really develop on given all the constrains.
> So there is also a need for a development image:
>
> - inherits the funcions available on production image
> - developer convinence over security (debuggers, ssh access etc.)
> - configs set not to depend on payed cloud services
>
>
> Our curent approach is to solve this by having two different
> image recipes.
>
> Pros:
>     * Simple to implement (dev inherits production and just adds packages)
>     * You can build both at the same time with the same version
>
> Cons:
>     * They have the same runtime name (cause they are the same distro)
>     * Separating config files is not yet clear
>       (one way to have two versions of recipes, which was a lot of
> duplication.
>        Now we're chacking how to solve it by introducing external templating
> (jinja))
>
> How did you apprach it?
> Would like to hear you ideas and from the field experiences.
>

The image-mode bbclass from Intel:

https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/classes/image-mode.bbclass

Then just add additional packages in your image recipe based on the
variant you're building.

-- 
Alex Kiernan

