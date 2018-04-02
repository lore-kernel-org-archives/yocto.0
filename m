Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06656E008F2; Mon,  2 Apr 2018 12:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79ED0E00843
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 12:29:31 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id s10-v6so3447117plp.0
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 12:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=ugsHQjqtPHfej3cxL+0vVFMbGpBWkBVusnxahS47kcg=;
	b=rkhtYCOugCZyCnip1XNEUqR/rcBoqHQTegvFHVpTI1xIbjfQxDJvDVsbkAqz1hJwVv
	8VrX1zdr0kS0Xra2VV8TqvZ3vtFnC1D4DcPLNh432eN5qpV7IFnggUjlx8zyy7LSsIO4
	GSe0ga2D9hqsk2mQ0Yxu9oApWiXZUI8vxnv7RsQ5GzyU0aZUT7GfUPo5uwLVwIsye7dW
	F13d0+eXjvOfjbIUhX7+M+jIbP549gSdYzmMKV4dCEnF3GIKKkkkn5IPJJWw4t93n8SB
	6fzd0ToW5XVS3YzmjeCGMEH+MQjvCanxcOfkXu9MONA96IVcdp8hZsw9dyk8k0OHmoNP
	0row==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=ugsHQjqtPHfej3cxL+0vVFMbGpBWkBVusnxahS47kcg=;
	b=uYVnFomGoc620aHFZEe2816ucMgeC4Qf1CwaTj6Eraz5vl4BU2SYARulNqMUvaL2/x
	MYcBJWdk7+YJBzLp70650HvtoODEP1yMglY9mWU7yl11pwRd3Zv+ejd8DG9URR+qDWnC
	vQOFystjp45lhE5Pdu2ELgyyTsxZxHmj1cMhynw8r8p3fCcGUS5zY2KeKkf8zj3gNS1W
	JHaeGziylQBom6hfd9aA4Nu9V9yvverOv+2BOaTYAkJ0+wouHLXDVfL6UxdJfPlLwTap
	4iNKAV6qEO+zwWfrq2cW99eLvSOwv/nxR++DFt4kznPNxjfSWGa7k1vr96TTdPN3n3ic
	fR4A==
X-Gm-Message-State: AElRT7H2JH0zXMbFBesq0o+wUw9Z4hezq6qUhdLzercMHrIPkorHhN7M
	wh3sA2KEo4yoJ5JsB9lmn3ADLHh+
X-Google-Smtp-Source: AIpwx4/QnjrxKATf8SMfC4CSFntPaeblok3BaTgAN2i7BaTsIGq0Jfd8b3ag9SnuirhwDzKWjgAGVg==
X-Received: by 10.98.31.67 with SMTP id f64mr8338820pff.176.1522697371437;
	Mon, 02 Apr 2018 12:29:31 -0700 (PDT)
Received: from mail-pl0-f46.google.com (mail-pl0-f46.google.com.
	[209.85.160.46]) by smtp.gmail.com with ESMTPSA id
	s14sm1443153pgc.28.2018.04.02.12.29.30 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Apr 2018 12:29:30 -0700 (PDT)
Received: by mail-pl0-f46.google.com with SMTP id s24-v6so5419358plq.6
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 12:29:30 -0700 (PDT)
X-Received: by 10.99.65.6 with SMTP id o6mr7023075pga.57.1522697370241; Mon,
	02 Apr 2018 12:29:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.176.2 with HTTP; Mon, 2 Apr 2018 12:29:29 -0700 (PDT)
In-Reply-To: <CALw8SCXWCB3zA2Y8Aw0HZGxQ2dhEo2Mf2Dw-w+gtAMphLskv-w@mail.gmail.com>
References: <CALw8SCXWCB3zA2Y8Aw0HZGxQ2dhEo2Mf2Dw-w+gtAMphLskv-w@mail.gmail.com>
From: Mirza Krak <mirza@mkrak.org>
Date: Mon, 2 Apr 2018 21:29:29 +0200
X-Gmail-Original-Message-ID: <CALw8SCWFyOGyZAcDL-apRLpK9nKj+4+VA7_v_kSvTd+kN3w5vw@mail.gmail.com>
Message-ID: <CALw8SCWFyOGyZAcDL-apRLpK9nKj+4+VA7_v_kSvTd+kN3w5vw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom image type and CONVERSION_CMD images softlink problem
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
X-List-Received-Date: Mon, 02 Apr 2018 19:29:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 29 March 2018 at 11:20, Mirza Krak <mirza@mkrak.org> wrote:
> Hi.
>
> I am working with a project that has a custom image type, "sdimg". The
> image works fine but it is when I try to apply CONVERSION_CMDs that I
> see some interesting things.
>
> The image output is:
>
>      ${IMGDEPLOYDIR}/${IMAGE_NAME}.$suffix
>
> There is also a soft-link:
>
>     ln -sfn "${IMAGE_NAME}.$suffix"
> "${DEPLOY_DIR_IMAGE}/${IMAGE_BASENAME}-${MACHINE}.$suffix"
>
> Now the interesting part comes when I try this:
>
>      IMAGE_FSTYPES +=3D "sdimg.gz"
>
> This results in a empty gz file, but I already know why and that is
> because the "normal" image does not contain IMAGE_NAME_SUFFIX in the
> output name, on which the CONVERSION_CMDs rely on [1].
>
> So instead of changing the image name I was hoping that this should
> work (default is ".rootfs" in image_types.bbclass):
>
>     IMAGE_NAME_SUFFIX_sdimg =3D ""
>
> But above only partly works. It will generate a proper "gz" version of
> "sdimg" but it fails to create a soft-link, that is
> ${IMAGE_BASENAME}-${MACHINE}.sdimg.gz -> ${IMAGE_NAME}.sdimg.gz. And I
> have traced down on why. It is because image.bbclass still reads
> IMAGE_NAME_SUFFIX as ".rootfs" in create_symlinks[2] even though I
> have set it to something else for my specific image type (override).
>
> I have a couple of workarounds for this already but still wanted to
> report this and see what the community thinks about this. I would
> expect what I am trying to do, to work. That is to set
> IMAGE_NAME_SUFFIX to empty for the custom image.
>
> But you might be of another opinion.
>
> [1]. https://github.com/openembedded/openembedded-core/blob/master/meta/c=
lasses/image_types.bbclass#L284
> [2]. https://github.com/openembedded/openembedded-core/blob/master/meta/c=
lasses/image.bbclass#L592-L614
>

Re-send, because my initial mail got stuck for moderator approval due
to not being registered on the mailing-list with this email, I am now
and bypassing moderators :).

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: http://mkrak.org

