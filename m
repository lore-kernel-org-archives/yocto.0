Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2FDDE00DE3; Wed,  4 Sep 2019 00:26:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.50 listed in list.dnswl.org]
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50735E00DD3
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 00:26:28 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id v38so15547612edm.7
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 00:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tz295gZDT4m8JqxifRaUIBcKuidev13If5uAByoJPEk=;
	b=hOhVRne/NkHdWF9bGf5ScwGsGENwNDG8mQ+0r2FhMiYJWykF2I2buNhWhzN2RqzVMC
	pIildCa8hT24XTyF/oUEXxq1GO2El/5gicKXfDL81PmpCY/loTphwH2icgjhcSjfcJZf
	zg35Tnvq3QX/Je2e5hE0otoWKZwLLkOpLw8rzIfDGhPVrYociOvxKt4+qC99fUqnEqBb
	nsw2dHSK68OpkZkgiTLRia/KUNpnUjD45FFjr9Yw7BZFPpI8Wk9NyK7925H4Q4XX4DB8
	KKmMkwXUujd5v3ylYS/eZIDrsQMkCJfmkmkWabdqUtGWPimikPAxmgjUMTf3idLfInuj
	Qbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tz295gZDT4m8JqxifRaUIBcKuidev13If5uAByoJPEk=;
	b=INTZsd522Sb5lkEK9YOSi9zXAUkIIU9674sj5nAVHaSgEZM5XKqqwPIgitCVLl+4P8
	bwKGJ9UcjwhUVJLSUbBwGr6IDNK+11hwFjVY+YYBLBotiIk+io5m6n25X1LJNcdFl+Cx
	6TP5vvVtrTMlNlL99nmUHYe+1mhOFl6JuOYuNFdBglL8USrqKdEcD5B8ao7WKDSz8IXU
	LkVPsUyTMLS/2SyVr3ce4AERg8Ew8qIttFMQ7fbYVZx/ulRITXmVQMg6CZbUAem/z29Z
	FMuvpSlCn1HtngIuyyIr/23DHAgWLRVRKm643htxpwy4Gn5RwVqKIRuZxIKIcBqgMXEM
	U1Xw==
X-Gm-Message-State: APjAAAVdGGLtii6d4fu2M2CMoL8OEiRWrzpXLLJiYe1ouH6U2zfxUjvz
	cCit1cBWhHMhlX2q+8POlJjmeF/FX9kVaBuLdDDu9/CU
X-Google-Smtp-Source: APXvYqzaTCBp/nl0jEH7hONZZhu5hVyFfN/x88lWEKYYVVdEQy+8SCP2miUjhnou7JrapD0KuZU2pJh7tZqRv5DTSpI=
X-Received: by 2002:a50:ba0e:: with SMTP id g14mr4217527edc.241.1567581987390; 
	Wed, 04 Sep 2019 00:26:27 -0700 (PDT)
MIME-Version: 1.0
References: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
In-Reply-To: <34a03f07554c4c9bae2d15dc9e4f4fb9@sakuraus.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 4 Sep 2019 09:26:16 +0200
Message-ID: <CAAfyv35FU92Gutqb--0vmBoojqtJkL=G+_QW1OzPh=869nfZ7A@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Confusion about U-Boot setup
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
X-List-Received-Date: Wed, 04 Sep 2019 07:26:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Sep 3, 2019 at 8:58 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I've configured a sumo build, by way of QT's boot2qt to use u-boot and I =
am seeing a u-boot prompt for keypress to drop out of automatic booting on =
startup, but I don't see any configuration scripts for u-boot (uEnv.txt or =
a script) on the image or in the build tmp/ dir.
>
> For the raspberry pi, how is u-boot configured on startup?
there is u-boot variable called bootdelay which can be set to e.g. 2
to wait until autoboot for 2 secs. I think this is the case. Thanks.
>
> Regards,
> Greg Wilson-Lindberg
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

