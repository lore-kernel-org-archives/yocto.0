Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB3E1E0090C; Mon, 20 Aug 2018 06:16:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DEEEE00848
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:16:28 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id 93-v6so9428757qks.3
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=OSI7BXEunFjnWop4Uh8ihd8or/wi59FpGpn2K0I4cvE=;
	b=EHem8qTyocAfa6yLE+svfQkkfbUNNKLhVDx47LOU6+hNf5KosQM6fBf7ypBy3joo4N
	2PegC1ItMGZrCtCqOw5LFLxpOB9hq4QZpChqkRmS5axsTZrNlabdfjL4Mtw0MSRM/GZc
	RiNNY+N60NWI+q8JfQybpfUqlT10M2s2IQuziX+exlXsupH1Cutwg+iis+hHxQOlWnwS
	+TrzLgNJmMOofoxcSypwGMNmjOxY+qJgidPu5GmaSHr6gq/r84Wl35E5w8bKQIqSN3YE
	dyA4urqUpTL+jlUoq+hmx8uDCVfBWMBqd78z8+wsTEtQ4UHwnpUbrrNW+Rkz3eEaZSB2
	XvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=OSI7BXEunFjnWop4Uh8ihd8or/wi59FpGpn2K0I4cvE=;
	b=WipOqoXWU6d2OY2T50QHMAnH9uDnV9jCdHj5PY3kpSH+KV07YebcvdQPVKxr/5+END
	sIFSJt8tCno01v2h0cB0XxgntHidLRoLE3jrnu7OmgslJ7NxNYY5T4U72O5umT4+uYFX
	aIEbndh8mNAvKAdobeqZZBSi2zY8EThibELwCOm7grJCrp6B0TS/18+LkVvtohlSbFbX
	WA+j4mnoatF12qfaUZKAq9qPWAMY1Em7JiLhOoQpv9SQGyx0yVgjklQkiLOfBK+DbI4Y
	M9B4aYMDagMCAeuTX/wnphLhlK1utqwEBUFb5Z0Sm1MSV4+q4Z3JbD9uIoWe5XC361pT
	U2mg==
X-Gm-Message-State: AOUpUlFsYd5A9cr/vBok4WNAMk62JQN2uxJuihynDLjbmB/OFvHJHh/S
	gRKwWGwEsRtxLRCXj/6gGe3hHYJbnsP5Jd0Mz1SQBo59
X-Google-Smtp-Source: AA+uWPwfMWl2DTUdGVqMzWI2QXiSmecINh57aU2U1lsrIIZrSY5+KN7hAkW/0wsLip1G4B/HVrxiJ+5Y5xL3/L8Y8ZQ=
X-Received: by 2002:ae9:dd45:: with SMTP id
	r66-v6mr39723425qkf.106.1534770987498; 
	Mon, 20 Aug 2018 06:16:27 -0700 (PDT)
MIME-Version: 1.0
From: Seth Bollinger <seth.boll@gmail.com>
Date: Mon, 20 Aug 2018 08:16:15 -0500
Message-ID: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: coreutils postinstall warning
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
X-List-Received-Date: Mon, 20 Aug 2018 13:16:28 -0000
Content-Type: multipart/alternative; boundary="0000000000008584060573ddb72e"

--0000000000008584060573ddb72e
Content-Type: text/plain; charset="UTF-8"

Hello All,

We've been seeing the following warning for a while now.  Is this expected?

WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally failing postinstall
scriptlets of ['coreutils'] to defer them to first boot is deprecated.
Please place them into pkg_postinst_ontarget_${PN} ().

From what I can see, it's being caused by update-alternatives.  Is there a
workaround for this?

Thanks,

Seth

--0000000000008584060573ddb72e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>We&#39;ve been se=
eing the following warning for a while now.=C2=A0 Is this expected?</div><d=
iv><br></div><div>WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally fail=
ing postinstall scriptlets of [&#39;coreutils&#39;] to defer them to first =
boot is deprecated. Please place them into pkg_postinst_ontarget_${PN} ().<=
/div><div><br></div><div>From what I can see, it&#39;s being caused by upda=
te-alternatives.=C2=A0 Is there a workaround for this?<br></div><div><br></=
div><div>Thanks,</div><div><br></div><div>Seth<br></div></div>

--0000000000008584060573ddb72e--
