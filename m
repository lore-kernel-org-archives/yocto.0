Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F4A9E00349; Wed, 24 May 2017 14:55:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D61E00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 14:55:39 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id h16so10160523vkd.0
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 14:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HutdRREJwnNFq6SyHpzmjlTQayGH2reubnWEcywKYmM=;
	b=Hf0YAXivpfCQ42h9W4GQe9gfDCDLpE6FiJYl/NQ1JetyXmLJjMm9a0A4uHpg4AGTfy
	UMnD/pyiv2BQhLROqquuI8T5B+e7nQWvYEVJjfAQsaCnm8pjQSUHZZ+fsNXTYLz28Yh6
	EBzXfIQoxx4b6c169YbdyeyBptqUz/NZn5uE9HprvXRbNwBIlmA5p5w78nOFzwkoWyE8
	WKTcUZEdU69WVGlQFLS1Zz6C4djCZVy9zM07QPtz2bNMHUsgm5YAjKBFOjx7hMHbNk9T
	zeA1pkEOnZeNAjEGjaYXYTNWNPTWIH1cPhaxZvpf8NpRWySargCyI9I42Y+EDFbP5tnG
	MRsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HutdRREJwnNFq6SyHpzmjlTQayGH2reubnWEcywKYmM=;
	b=e6TehvVBDFP872szUT/kKrB5rSCmQu6aFiFwdSQgWl1kqYaUigerU3sv9aL6ZAL6kA
	+RWP/VLDQQcJ89GgUXA7wLNcvTchxJfXLOVFHdWf03E+JzeT/DEMPZsqkGCyyUCrbujm
	D7SWW+4/Z3RpEsC950fhKitAmXB3qblTxTQSFrf27bhdj4IeYqchah6Hirsj7JxpdQpb
	JDBWdZZtJ4z+3Sk6hnY9ymf0sAt9PlSenj0R16pJfFIdBP8pxqVe0DnUFtnmyh7wb5OI
	Wu8JbgvIc6cwRlkY+Idyo7I3n3JU6x7RQwuKCSkX+Qxo0e4LklGDh2w2ClgroWZNSNxT
	j8gg==
X-Gm-Message-State: AODbwcDoWYunGSLaSqRCV2OPwURmsZkca1Ng7x321DlA1vcDeKpbmbx+
	g0TdYB10tHp1eIVocrkzMC42vswPoQ==
X-Received: by 10.31.94.7 with SMTP id s7mr15557813vkb.49.1495662938780; Wed,
	24 May 2017 14:55:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Wed, 24 May 2017 14:55:38 -0700 (PDT)
In-Reply-To: <2d052d0a-b9fc-f9a5-e93d-66f5046c7ee9@balister.org>
References: <20170522151716.4792-1-romain.perier@collabora.com>
	<CAHUNapT-bEsYjEd_2HeMUj3th8J2Hupho7TLHROzkHe9D0CVRA@mail.gmail.com>
	<1d897931-c8fd-756a-0c09-d45647647801@collabora.com>
	<CAHUNapTmGJPOpFJjXuH718kp40iUB1GCt07ri25OgSnULN9C6A@mail.gmail.com>
	<b5ff4065-bb87-7aa7-7928-bb48d52ebb62@collabora.com>
	<2d052d0a-b9fc-f9a5-e93d-66f5046c7ee9@balister.org>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 24 May 2017 17:55:38 -0400
Message-ID: <CAHUNapTF2q4e75=dPGNAUUK-+YYJHF9UU2SJF8ko86hkniRM5A@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH 0/3] u-boot: mainline
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
X-List-Received-Date: Wed, 24 May 2017 21:55:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 24, 2017 at 4:12 PM, Philip Balister <philip@balister.org> wrote:
> I'd check with Marex the u-boot maintainer also. He may have something
> queued up. It is entirely possible he isn't on this list.

Good point. Marek just posted a 2017.05 update to oecore :-)

