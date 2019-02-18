Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 267B7E00A1A; Mon, 18 Feb 2019 10:50:13 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12141E0095C
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 10:50:11 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id z19so30041700otm.2
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 10:50:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wy4o8s9KPqhm4108yE+IID+TFrV7R44T1s+DRyTSCBs=;
	b=FWF/dw72npBcn3zRkQbG7Iwadg0Bn/cBw7F7qa62jSn+TOft9Ffju7DbMoAAWu+Xly
	LE4RaRqw8ScdS7oXty7b1aFAGlc2HfL5DalriZmrdNS4TNa2G6UqNBxZCnyufUbD55zT
	X1c/Aly5lBqZwfmTL32uY9SbpLIGo0OdYrOReyMmg4WG7bqtMuXnJwLAyKoC2vwa/IuM
	+LSQJTI8MwstETlOpPhmOYc+42RRX0PmNnkNWIkI+dcN+sen2a8NyowUcRe++2pmOR61
	7/qBd+x3D5ehGENbVuAzfuyZ9SBA7qHG7ZNxNRAifb7iLB8DupcS30t4T4ruOZcBAWAj
	SA8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wy4o8s9KPqhm4108yE+IID+TFrV7R44T1s+DRyTSCBs=;
	b=ln9hlB47Njl9oDohKz1cW4tz/w4nBhgDP5PKPDgg8C48qmiopeXgdExygAi2LwwNc5
	ehXyxI8y1DGbBUyMdqqeNRxhetjRru/cqyY12lxh5NvTJycZEEVlLxBmryikVjb9bD33
	jp9C7Duq29vZ8lMM5U1DydUkt1njYlRvjsodUkOXGA+t7Q4msa7hPVgtlZZb2s0a6Aci
	oJA1U2oqJybr/wegQYWNpReVXXA3SHG4BWCTDNdiDcrtYINeLKSlsqNAinIAVLtnpx7q
	ywTP/24srfL6BCcI1Ov2wQw0/FoIxG1ryu9Aatoax+gsQS1Zar+oygQQZimECRCokCLm
	RsAg==
X-Gm-Message-State: AHQUAuZRQnzwdiacAVkCcVw86M/plhjBkJekl45m2Es4EU1QyYxvs9ua
	h2FcsXnMO1N5qvmOK4GrTaOZXT3Su2/Vd8pxBejLbA==
X-Google-Smtp-Source: AHgI3IZcLuTU8X99eHpU2AHALwTV5h/mkOeMnBQ1J5lmCjFV0+POASBZn7jeMwQstMrO/0JXRdec1YGHbq6Ur+O3DDM=
X-Received: by 2002:a9d:7544:: with SMTP id b4mr14623682otl.326.1550515811521; 
	Mon, 18 Feb 2019 10:50:11 -0800 (PST)
MIME-Version: 1.0
References: <1c32bcd3-02bd-465f-90bd-37d00ed06a6b@innodelec.ch>
In-Reply-To: <1c32bcd3-02bd-465f-90bd-37d00ed06a6b@innodelec.ch>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 18 Feb 2019 19:50:00 +0100
Message-ID: <CANNYZj8yzSD7v_ig3ApAcoNoG6rWyT9_f+opmyQreVUnFxWsrA@mail.gmail.com>
To: Jean-Christian de Rivaz <jean-christian.derivaz@innodelec.ch>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: QEMU Raspberry Pi 2 machine
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
X-List-Received-Date: Mon, 18 Feb 2019 18:50:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can just use a qemux86-64 target, which is much faster because it
executes directly on the hardware. What's the need to emulate
specifically arm?

Alex

On Mon, 18 Feb 2019 at 19:34, Jean-Christian de Rivaz
<jean-christian.derivaz@innodelec.ch> wrote:
>
> Hi,
>
> The chromium-x11 browser can't be compiled for the qemuarm machine becaus=
e it use the old ARM926 processor. I have modified the qemuarm.conf file  i=
nside poky/meta/conf/machine/ to add
> DEFAULTTUNE ?=3D "cortexa7thf-neon-vfpv4"
> require conf/machine/include/tune-cortexa7.inc
> But I want to avoid patching files of the poky project. Is there a proper=
 way to add a QEMU Raspberry Pi 2 target like qemuraspi2 for example ? It l=
ook like many recipe files contains specific part for qemuarm so I wonder i=
f adding a new QEMU machine it a simple enough task.
>
> Best Regards,
> Jean-Christian de Rivaz
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

