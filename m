Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46C0BE00AB6; Sat, 24 Aug 2019 10:34:12 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.173 listed in list.dnswl.org]
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8C26E009D8
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 10:34:11 -0700 (PDT)
Received: by mail-qk1-f173.google.com with SMTP id s14so11034401qkm.4
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2019 10:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=qV71f7LTwYS8qh1dTB+3tyUyF9G7qnB+iKCVwxpTqqg=;
	b=Jrcy1+19El8b2s9S2ub5ozFmzapkdak7ObABmakhrS42tfv8gvhtI4K94rkBD45fta
	SC1ppUXHf+CeBL2FcvxahOHg3GVGkJnyXHIOQm1ZbqRE6DRecmAPF64LnspVqNRLzWO7
	3EoPYjE9spb5JT40Jj89FyKDUDBST/fX/xje2/VWDNkiQ3GA7kNt2vIj6Ik60ybb2Hdl
	AV7G+h1K58cS7vGpzrdBQyZeUNQCNEFoX3Sa5SEtuvtXBtfSCA9UhQLzAZoptLy7rUCV
	WYQrpd6BoHg48HsP4LCN4cGwSrQhvSbiBzwEPQOwx5AlAcI3bsuGDsZAVuP8Y5foklIy
	VMdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=qV71f7LTwYS8qh1dTB+3tyUyF9G7qnB+iKCVwxpTqqg=;
	b=kn6Wcx0ksuys/TiiGqq1KmrEzUEqmkFdDXHCnabF7v7ffQVgxJOBXb3c+E+1NX7MPu
	eGrRaKncOVIhQACoG3hJuZFtRwdYkaTYXBWI6FQDJE0WozN65/mLD1ejDR4o0O4VczHp
	KawaANlc8AJ5lULxHZcOaZPBLUapYGV4J3WwsiIVrFK9lG5fb7COvIVXcSUz9AiUwk6c
	LoSLoPDZ3ZSTJdnZk7dSHFvPld2BSmYFhMTdngS2MwcYM13y9BDIMP48MkoyiXKyiUH9
	9eoevSuckh0+rgxWMk55ypYw4Zl2qVv9FUhwUxoBXLzCKdJ9TlNyraNuAdM6zZ+cTHa9
	nbtg==
X-Gm-Message-State: APjAAAUoHX271OtYWmK+UB35bw/gAS/5ryWlghr0BH2QgSskE2QBe8WQ
	4lSDkT06QQ3BmmW0LYwNin2dfn8AKBor/7WhdYY=
X-Google-Smtp-Source: APXvYqzoLL70Dzmdxyk/GT6tyqaWGiFY8gvEZnM39pljZdXyK4eERzMX1nX2yUySblSMOACJT9F8zOCEAUVLOBxvTTE=
X-Received: by 2002:a37:b481:: with SMTP id d123mr9388726qkf.71.1566668050681; 
	Sat, 24 Aug 2019 10:34:10 -0700 (PDT)
MIME-Version: 1.0
References: <CANtEDzQ3y45AjX-uFbPCU2vBBn-pNhcgsUmJD7AJNdbtfd2VgA@mail.gmail.com>
In-Reply-To: <CANtEDzQ3y45AjX-uFbPCU2vBBn-pNhcgsUmJD7AJNdbtfd2VgA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 24 Aug 2019 10:33:44 -0700
Message-ID: <CAMKF1soP2p+gVjtQt8WSKVpFixqeh4egBknkohXg15BzDrVTPQ@mail.gmail.com>
To: Benjamin Crawford <crawford.benjamin15@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Different package versions between host SDK and target image
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
X-List-Received-Date: Sat, 24 Aug 2019 17:34:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2019 at 7:35 AM Benjamin Crawford
<crawford.benjamin15@gmail.com> wrote:
>
> Hi,
>
> I've been happily building images for the Renesas R-Car platform using th=
e Yocto project until recently. After clearing the sstate-cache and rebuild=
ing, I'm now suddenly encountering an issue where the version of OpenCV bei=
ng installed into the host SDK and the one being installed into the target =
rootfs are different (OpenCV 3.3.x vs 3.4.x). Obviously, I now can't develo=
p applications as the binaries try to link to the wrong version of the libr=
ary. Can anyone tell what might have happened?

what operations did you do on your workspace? which release are you on?
basically, SDKs are image specific, so when you rebuild an image
especially cleaning everything up and updating layers, its better to
respin SDK as well
having said this, we do not upgrade versions on release branches, so
would like to know more on which branch of the meta-openembedded repo
are you on

>
> Kind regards,
> Ben
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

