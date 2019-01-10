Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EB46E00C94; Thu, 10 Jan 2019 03:00:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950E5E00C71
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 03:00:05 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id a77so8909028oii.5
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2019 03:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UbefJhu7PeSIyY/PvFfkpMKzLeGTZAuY1kwjo7xsUQI=;
	b=XK/vKbUjQ8wwpLJvwBzHscJSv3XQjYCIxSvqdzRwSrfmLw7fiaP2OO3bY/hHSpFf0j
	FNuuBQGm3rtEYx31EKiFqPCj6fXmE8oniLW0jzdKgXqEGLtxH2XkT2O05pZl4pmGckiT
	j9GWdKOpQzr6RoYDgthb0e7e287rIDvy+/Oi0NKyis1ygT+mTjHgfxkUZbdEzaBYgLpO
	vnrT/6c3RB26jEcj4L27ZwWFGmh5P52ZI6EyiIxJnzogyO2gmshGkLzlg9/q6RA432IE
	zrppWkPNUZgjF8gHRzknFfVvUIR7+90st8Qubb3PCP+Gc/3HAOUED+26Gff96l77rXGJ
	JV9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UbefJhu7PeSIyY/PvFfkpMKzLeGTZAuY1kwjo7xsUQI=;
	b=iXlNUKsMqtEJ8oV6Y6l+WNl4EC3+EUFweKgUPJV2OH0lOrw09ZS8ODnoTGkgWeHj15
	HT61X54gf2kmdWBlqtlOKDraOlDDwieRY6Rw1EUBSmpV3Sbv2btsz8gx+QWkUEbr+0C0
	bs+nkGMarSWuIiIyfRgwQ1oq8xV9qRdzY8NfA5UVFCMCKAlcRjhqpPD+khiW3/Wb8z3A
	seNPodaVaFd5f6/K6+5pYicHvG6G4PeycN1v4KLprORiAC+JQCLdBewRFiyaoed5pd97
	meMlzLRpiiZdh5pNn3SJkXr+/Cgug6b7zdQHeiN/CanJuJFxQLcRwrR4dQLGXvPdClI+
	oXMg==
X-Gm-Message-State: AJcUukfpFMwq0lDcgFkEYyD0q8xqG9Tkbc3nzWsDr7CNeeMvE8iYSBKq
	mmG2j/I6QZtz5qgLYfpkanOn96rhrjiNy391zJA=
X-Google-Smtp-Source: ALg8bN4G1PPW4vIu9yelk7wt+zXn8hfFRKHd3U4Fv/xqitSfIjgYXDw1AgkA7/z3+07UBQvx/Z5pLIHclLPiTGvXcD4=
X-Received: by 2002:aca:4b8f:: with SMTP id y137mr6406938oia.132.1547118004919;
	Thu, 10 Jan 2019 03:00:04 -0800 (PST)
MIME-Version: 1.0
References: <CAKRytNzSRPTnjXMO8Gajv5b20XtY++=jskWFWLTdMULSh++53w@mail.gmail.com>
In-Reply-To: <CAKRytNzSRPTnjXMO8Gajv5b20XtY++=jskWFWLTdMULSh++53w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 10 Jan 2019 11:59:53 +0100
Message-ID: <CANNYZj_Oec5gWm=RuKnbU1yrEO67AFjv3bzpgTwidgTS=tMe2w@mail.gmail.com>
To: Stefano Cappa <stefano.cappa.ks89@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to upgrade Nodejs from 8 to 10 LTS?
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
X-List-Received-Date: Thu, 10 Jan 2019 11:00:07 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 9 Jan 2019 at 22:34, Stefano Cappa <stefano.cappa.ks89@gmail.com> wrote:
> As explained here https://github.com/nodejs/Release, NodeJS 10 is the current active LTS and NodeJS 8 is right now in "Maintenance" (from January 2019).
>
> I saw that in master branch, Node has been updated from 8.12 to 8.14. Is there an official scheduling to release NodeJS 10 in open-embedded, for instance with yocto 2.7?

In Yocto there is generally no official scheduling for version
updates. That work is basically all volunteer-driven, so you are
welcome to prepare the patches and send them for review and testing.

Alex

