Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B532E00A44; Mon,  5 May 2014 09:34:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A5EEE003C7
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 09:34:44 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id rd18so8347553iec.15
	for <yocto@yoctoproject.org>; Mon, 05 May 2014 09:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=aXd4d/n6t9XP7kxapJkD8p1euaeOUP646ICm5kgq71M=;
	b=j7BAoNpozBSp21ic7y969n/CgFHozE4h+0nJCRcPVrKevQDJMiOioGSQvku8T4uWJW
	piI1eNbz5Y19lxCWhobQURlG0OBiQwiXvIDIIv0Xlzq5+CYwO+IUU86kIwD0nYLg1DEf
	V4V3+/YZreF1zXUxkDCLVZKG3zNKj/GNreL5Lu4WKR77iV+SjaxwAa8ocvQVBdszmmwF
	QUDetZr4DXBVVIpy4hs80wTtIIY13LFzUAsedxucMv4/L94FajYr+teCauSuYXKtfXJS
	svwP1g4qtusHjxv/u1K3OfYWD1iKT0kWcyBFRjSAmrDjUQnpqLBs5n+J6snN4ScUVhm9
	4GUw==
X-Received: by 10.42.136.130 with SMTP id u2mr8504981ict.51.1399307683740;
	Mon, 05 May 2014 09:34:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Mon, 5 May 2014 09:34:13 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE65219103779820B845A8@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779820B845A8@AZ-US1EXMB03.global.avaya.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 May 2014 09:34:13 -0700
Message-ID: <CAMKF1sqYj4=8O3zZMGTdn3111-kRx3jb-oHp2Q9ODfUxjRC2-Q@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Migrating LDAT fs_final.sh to Yocto
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
X-List-Received-Date: Mon, 05 May 2014 16:34:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2014 at 6:34 AM, Vuille, Martin (Martin)
<vmartin@avaya.com> wrote:
> Migrating from LDAT to Yocto, and wondering whether
>
> there is an equivalent to LDAT=E2=80=99s fs_final.sh script?
>

Don't know what that is but you can use image post processing hooks in yoct=
o
to do tweaks to images. see IMAGE_POSTPROCESS_COMMAND

>
>
> The objective is to do some post-processing on the
>
> rootfs =E2=80=9Ctree=E2=80=9D before it is packaged into the UBIFS image.
>
>
>
> MV
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

