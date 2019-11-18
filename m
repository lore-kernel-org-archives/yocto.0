Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 676B2E00E07; Mon, 18 Nov 2019 15:31:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
	[209.85.222.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F177DE007AE
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 15:30:55 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id d13so16154334qko.3
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2019 15:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=x2K8jqj2cS/kBsjYzzFbJIEI2N9m/LOqSlKWoaxasdg=;
	b=duicMux6gAJnPqsEwvahXI8+DrkfSuUTnSiv4u2u20KlxTS8mr3MDefBhjpSVurhtc
	YWx9ChMJlz9/eLr6PI0ntVqlNEi1TTOEzWAW9Tvs4LXy3Jmj5e8gzXFH6y1rMw3JEAvG
	/uOZOHNQ9MARaTl5M/iYzX+WPfw2Q6I6HnxKsPmnU/Pq/V9MxMHexMFVhO5p6/AmMPAx
	wvm9kqjWxvazZunX2sYVx9wzeCiJXP09r+NQbt0Xx2w/v6DmxM9eq48+Opad3cMG1ZQo
	4zC8e0kS5y+OXlSMtX70LsoLIvt7J1nwdJgZF/JL0MsTt82HsoaVxW7BKUxX02AdP27C
	YmQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=x2K8jqj2cS/kBsjYzzFbJIEI2N9m/LOqSlKWoaxasdg=;
	b=dKx+onWHnSD3rU58jW7X7jfDNTaR4RvMpUNzipF+PEww3+ObNX4612Y64Xd/d2W8Fg
	3yLSwskAzgKMlQfNdyloEtxOzr358ScSbNgLJwu7jBW0zg6eCp4E6ZgV3Iy2Avh30Du0
	Gi3KT6uTJAkPNvluYdsJyqKMoTmUuktRlz50Vg9vRKIGDyBY3+OS7aUG3l4iRQpXLUvl
	ds/pZdAxqhQbolG9ZMwFg4PLLl+beCXMm89DJg49LfsiO41bCRiUQZBnLV+15rHRUz+8
	+dKt6IMDo4blAbn763XYolv6+66tjbwxZCe83/0zZKMgPr0tTvkSt7ksQt+n+NR/U+YJ
	aMig==
X-Gm-Message-State: APjAAAUTtVEqU7fhKhKLBxOrl1xt20TTKVIlJcEgqZbFr9CNtwlVMYDY
	3nSR30lp9hXpEze2tFr1RV7QXD/n9dHN11LJoAktMUYISUg=
X-Google-Smtp-Source: APXvYqzb3VuKkpDPvILNUXt/OFxuBEFc3/zVrALkXplrVCgKM56wFMlIrEIh/Gz63+EEAorvD3A927Rk6QHOYiU/Lec=
X-Received: by 2002:a37:6554:: with SMTP id z81mr27501339qkb.9.1574119854996; 
	Mon, 18 Nov 2019 15:30:54 -0800 (PST)
MIME-Version: 1.0
References: <dc5da77587ca49fbba4b37f2e6b28028@sakuraus.com>
In-Reply-To: <dc5da77587ca49fbba4b37f2e6b28028@sakuraus.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Nov 2019 15:30:27 -0800
Message-ID: <CAMKF1srKGbsT_AJgymqBq4fdRcwNDObSNpQK5YvS-8Q1o8ryjw@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [qemu] can't find qemu-native recipe
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
X-List-Received-Date: Mon, 18 Nov 2019 23:31:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 18, 2019 at 3:27 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm building thud for the raspberry pi3 for boot2qt on Ubuntu 18.04.
> I've got a patch that I need to apply to to fix an include file problem a=
nd I can't find the qemu-native recipe. I can find a number of recipes that=
 depend in one way or another on 'qemu-native', but I can't find a recipe, =
class for it or anything that provides it. I can see it being built, and I =
get an error that indicates that the patch that I have needs to be applied.=
 I can find tmp/work/x86_64-linux/qemu-native/.
>
> In the cooker log I see:
> task qemu_3.0.0
> recipe qemu-native-3.0.0
>
> But I can't find a qemu-native.bb file,or bbclass.
>
> I'm rather confused at this point, can someone shed a bit of light on wha=
t I'm missing?
>

there must be BBCLASSEXTEND =3D "native" in qemu recipe which
essentially automatically extends the recipe for native case

see
https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBC=
LASSEXTEND

> Regards,
> Greg Wilson-Lindberg
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

