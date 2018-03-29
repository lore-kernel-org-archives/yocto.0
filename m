Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B85AEE00994; Thu, 29 Mar 2018 02:21:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B40C7E008A2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 02:21:00 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id b9so2677639pgf.6
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 02:21:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=Ysn8x4/glTrPSSp8MPGJqI18woZippFkpzxrMhW/Pqk=;
	b=U69hZbCBjNqdVg/SSjxwswLndcCkLm4a8wxyTUwbNQGDNH0J0pdGlwk9pkdpsVXgtb
	kO9MRCnrnOyR428RP2HRKhazDeqPunBDG6WoPHfZaUHDjv2n/MH0Jpc1NOjHMtd7cgb9
	gMD4M3jLn4nZv8YFOvVdi+LaqHtpldV1zUHNtSC9uLlKIgUwYbStYoSOqGHNmL9ib9ER
	nJOZEnPs+ij4ArEokOvKTMm8BI0Y92nbeVT1zgVxNyzHj0QYJASVvXJhrQ3ckkzdrZGM
	JQ+6JifGC5bh3uI6T7KaaHqai4pQkNaSzV+vUyyj3/XSuLEXnpNy1NUI5ySi0WAoF9V+
	HkDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=Ysn8x4/glTrPSSp8MPGJqI18woZippFkpzxrMhW/Pqk=;
	b=X3i9BFjpm5Gn+EaSJ2fubUsVY8wr3vXNynBp1ioWRwsPDM4nvF6iS82YnQcjREWrrO
	ixl0+IOM/mD425E4rJNTfc49Q2dQ7SZP4XXxZRyjkoTVV02cvMq4DsmaTcg+7agrqE6Y
	ArUUryzwafY9NVhDr5Uc2achLes3MkWvH/6UnjSeHhx7vv7O9tJHkoGEXbXngt2XWF7x
	uRltc/bbt+HxNDVO3OWmRNlFHek0m3n7EJleiiJxSX2rWVfwiDc9EjEbD1k2VEg9vdvV
	Miu8if8OOVQkpNB8K4EHSCf9hADFT745Z1/7JtE6aV6HtbYKuSfzBmA8X5Oqxx4bAxG3
	iOtw==
X-Gm-Message-State: AElRT7HKqfjrsxlnhuetUyTLWOlV8tc/E55EUoHMZajgJx1ea5LeZprD
	Mf2rqmdzNRAgjH+cLNP4LlbRU1VZ
X-Google-Smtp-Source: AIpwx4/wxIrhmcMkH49XzZYuMzOnawu5lHy+zMnTlqxxLaAYHz3CXRwlbEaYPC9MkBZvy/42kuWQhw==
X-Received: by 2002:a17:902:8697:: with SMTP id
	g23-v6mr7689124plo.393.1522315259621; 
	Thu, 29 Mar 2018 02:20:59 -0700 (PDT)
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com.
	[209.85.192.169]) by smtp.gmail.com with ESMTPSA id
	x137sm11807843pfd.162.2018.03.29.02.20.58
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Mar 2018 02:20:58 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id u86so2828297pfd.2
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 02:20:58 -0700 (PDT)
X-Received: by 2002:a17:902:7e09:: with SMTP id
	b9-v6mr7486856plm.223.1522315257883; 
	Thu, 29 Mar 2018 02:20:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.176.2 with HTTP; Thu, 29 Mar 2018 02:20:57 -0700 (PDT)
From: Mirza Krak <mirza@mkrak.org>
Date: Thu, 29 Mar 2018 11:20:57 +0200
X-Gmail-Original-Message-ID: <CALw8SCXWCB3zA2Y8Aw0HZGxQ2dhEo2Mf2Dw-w+gtAMphLskv-w@mail.gmail.com>
Message-ID: <CALw8SCXWCB3zA2Y8Aw0HZGxQ2dhEo2Mf2Dw-w+gtAMphLskv-w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailman-Approved-At: Sun, 01 Apr 2018 09:37:54 -0700
Subject: Custom image type and CONVERSION_CMD images softlink problem
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
X-List-Received-Date: Thu, 29 Mar 2018 09:21:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi.

I am working with a project that has a custom image type, "sdimg". The
image works fine but it is when I try to apply CONVERSION_CMDs that I
see some interesting things.

The image output is:

     ${IMGDEPLOYDIR}/${IMAGE_NAME}.$suffix

There is also a soft-link:

    ln -sfn "${IMAGE_NAME}.$suffix"
"${DEPLOY_DIR_IMAGE}/${IMAGE_BASENAME}-${MACHINE}.$suffix"

Now the interesting part comes when I try this:

     IMAGE_FSTYPES +=3D "sdimg.gz"

This results in a empty gz file, but I already know why and that is
because the "normal" image does not contain IMAGE_NAME_SUFFIX in the
output name, on which the CONVERSION_CMDs rely on [1].

So instead of changing the image name I was hoping that this should
work (default is ".rootfs" in image_types.bbclass):

    IMAGE_NAME_SUFFIX_sdimg =3D ""

But above only partly works. It will generate a proper "gz" version of
"sdimg" but it fails to create a soft-link, that is
${IMAGE_BASENAME}-${MACHINE}.sdimg.gz -> ${IMAGE_NAME}.sdimg.gz. And I
have traced down on why. It is because image.bbclass still reads
IMAGE_NAME_SUFFIX as ".rootfs" in create_symlinks[2] even though I
have set it to something else for my specific image type (override).

I have a couple of workarounds for this already but still wanted to
report this and see what the community thinks about this. I would
expect what I am trying to do, to work. That is to set
IMAGE_NAME_SUFFIX to empty for the custom image.

But you might be of another opinion.

[1]. https://github.com/openembedded/openembedded-core/blob/master/meta/cla=
sses/image_types.bbclass#L284
[2]. https://github.com/openembedded/openembedded-core/blob/master/meta/cla=
sses/image.bbclass#L592-L614

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: http://mkrak.org

