Return-Path: <mirza@mkrak.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B54CE00BAD; Fri, 18 May 2018 04:44:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f41.google.com (mail-pl0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82459E009B9
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 04:44:21 -0700 (PDT)
Received: by mail-pl0-f41.google.com with SMTP id c19-v6so4454290pls.6
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 04:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mkrak-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=sJXdUr5/wZM/Xmhexb6965WAD1pb8i7TRhRSmhoddfU=;
	b=K9KH+g48IRMel8nvQbcM6UuxYzU4cHUJKCwAc9gIR+Emf/qYEyv8SjloE/7B2bllv6
	cQ+CtyEIBbTSQutUezgcWAQyw4zEDiTBKZaMq7QCL/sEIfDbmCl+Utag5r4/XKYTOSfN
	Pjl5iIPUtxcArQNPzkjEZIGDVntIMfszRUIc1J9efBps5WWunVUw6DBgq2G2t2h4UuDH
	aLQQR/fx3exn+UpKdExh15rMlYW1uLJSvoMuiLhxc/kfDTV56M6ktnt0N4QhPW6WSc4f
	yDKklHRYiXfqEZIk7OLKRSn3oKLdygJ88CbIf9yhSY+nhhE3m4Y7ugaaAYaHTfwMwS+X
	7oxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
	:content-transfer-encoding;
	bh=sJXdUr5/wZM/Xmhexb6965WAD1pb8i7TRhRSmhoddfU=;
	b=qytvdcaoaSNcPf/7CgwB3AxCm+CVH6CaOIEMLLIeMDXuI6raBrX28DyfwCaujvTPdo
	Lp/e8R4LBCO3HsnrIMH8pmAmUW2m85qvixy4l13uZjnXhNm4uv9y9q20rE92V9GuGRbI
	JsA1Xz3gRVf5tiP8ldYW1yL6D2uotNewHe1z3py5BqDNOk5kH7GGtxy88BpVpcaT2MYz
	1/hsA9E5io9A9Lg9hWRDaquC2wNCvIRGXOdmPtURzo4Dj4aN6BsnH4iyEg+tRel4X453
	un7dkKRfWQKdCeqiLl3g9/L70xyi1s5JvSK2fc1Dfn/Ly1oaVecEn3xo9cB4laczmBbE
	qKng==
X-Gm-Message-State: ALKqPwdryN73qy3/7sv5I3D6XY5/pfZ4tnW58Nj5JMi9lSKuxKIIOJgE
	QH4m52FA4+wj1uyHotOTj6DnqBiv
X-Google-Smtp-Source: AB8JxZrCG/7PCS6KVkVhyLcTu8xM5UUuQOnR9Z8nG2zOfE+c8sRHoHbVnyP1g2LGTn5C2+QyaEBgFg==
X-Received: by 2002:a17:902:758d:: with SMTP id
	j13-v6mr1325209pll.188.1526643860524; 
	Fri, 18 May 2018 04:44:20 -0700 (PDT)
Received: from mail-pl0-f41.google.com (mail-pl0-f41.google.com.
	[209.85.160.41]) by smtp.gmail.com with ESMTPSA id
	o84-v6sm16643346pfi.27.2018.05.18.04.44.19
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 May 2018 04:44:19 -0700 (PDT)
Received: by mail-pl0-f41.google.com with SMTP id 30-v6so4432680pld.13
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 04:44:19 -0700 (PDT)
X-Received: by 2002:a17:902:8e8b:: with SMTP id
	bg11-v6mr9009293plb.95.1526643858991; 
	Fri, 18 May 2018 04:44:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a17:90a:950c:0:0:0:0 with HTTP; Fri, 18 May 2018 04:44:18
	-0700 (PDT)
From: Mirza Krak <mirza@mkrak.org>
Date: Fri, 18 May 2018 13:44:18 +0200
X-Gmail-Original-Message-ID: <CALw8SCUFX-ARtpWRxf4bUBHnV0BFT6jHs5JTErGeCf+=evcn7w@mail.gmail.com>
Message-ID: <CALw8SCUFX-ARtpWRxf4bUBHnV0BFT6jHs5JTErGeCf+=evcn7w@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: gandersson@genivi.org
Subject: TEST_IMAGE issues
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
X-List-Received-Date: Fri, 18 May 2018 11:44:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all!

Found something interesting (perhaps).

So we where thinking about enabling some of the OE QA tests that that
are part of poky.

Seemed pretty straight forward. Added following to local.conf:

    INHERIT +=3D "testimage"

Build my image and then tried to run:

    bitbake -c testimage <image name>

To my despair it did not work and instead produced an error. Tried
both on "pyro" and "rocko" branches. The error was:

    | runqemu started, pid is 45087
    | NOTE: runqemu started, pid is 45087
    | waiting at most 60 seconds for qemu pid
    | NOTE: waiting at most 60 seconds for qemu pid
    | runqemu exited with code 1
    | NOTE: runqemu exited with code 1
    | Output from runqemu:
    | runqemu - ERROR - Unknown path arg
<masked>/tmp/deploy/images/qemux86-64/genivi-dev-platform-qemux86-64.ext4
    | runqemu - ERROR - Try 'runqemu help' on how to use it

Some (a lot) digging later, I finally figured out that error occurs
because the image name does not contain "-image" or "image-". runqemu
is not able to parse it and throws a "unknown" argument error (not
that obvious from the print).

I realize that this is a "problem" in runqemu and not much to do about
it with a large refactoring job on the runqemu application.

But I am looking for suggesting for an appropriate workaround, other
then renaming the image which I have verified works.

Does it say somewhere in the docs that all image files must contain
"-image" or "image-" in their name? If that is the case it makes sense
to rename it, but trying to avoid that.

--=20
Med V=C3=A4nliga H=C3=A4lsningar / Best Regards

Mirza Krak
email: mirza@mkrak.org
web: https://mkrak.org

