Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 450C1E00D30; Thu,  1 Aug 2019 07:32:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4090AE00B31
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 07:32:52 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id d1so1502096pgp.4
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 07:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=QqQ8ZQBsETevYyesf6Iiy3orjVlkmAT8jBONy0NeyBQ=;
	b=hTcj+FNPcFU4vgAVy+NYh5MlCyp7nYdFeRAXUSOte6RDJwUJAC13DZ3Hc2yn2k7C0C
	XNbI2osn7JSdIS/PagwTCuDaA9Zyvkfx7lWCgs7lt/LAJrjdS//JlN8/lI5asaFqjGor
	mJzD7N9VaXUyL8xW2h0SJ9M86M8lYJa+PcQ+r7pmZZ6Luxa8sKLCX4pWgTr7VwMJ3wMh
	AbTe53kVHZGUob0yGiE0pPTns1Z58LzGtsi8mLvoil8xUVxVSS3azf6kaSouRfpfaiqz
	7X0ZB2t7qASdhLGVBTl5q4sFTQPjs64Obj/O2Pnz7KI+WOp/ypRCNPOoEO+Wqdvfys4i
	djMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=QqQ8ZQBsETevYyesf6Iiy3orjVlkmAT8jBONy0NeyBQ=;
	b=QFK5vBXoPZKuUKdBDpFhzmmrYOhA+sHGgFm5eZkaimP9bxBh6mH89zpG69SyPI7MMB
	ymUs5jfSm3cVhT2Vgr8a64xIhD9PPn7x96/7uiFrbgAijt0+tSyc4kR8eXU2XsmSmUK0
	H+yqi44j8L40kabDbJ2iz6u1b3Oq5DKrNcmiax+tRnHlVCLofSBAhCdfgEu8XSaZY664
	/UfG4T75qLNBUaY/cczvWiHgOJtt33aB1/qnEiLg4INiFCy6YcMa4mSkMlkAnMtcQY7Q
	KyfchN8anmIXHatDCHHoiB6ZLTbxezVTMwKx4X6Ruu8Vmri4JXYWo9/VLZQcVOljiND6
	p8eQ==
X-Gm-Message-State: APjAAAXf2Eeie5tCrC7fiaNsYe5NfHXAU5BJdwhCtXNrm4RWkh0NEarJ
	s3Qdq62Idc0AQEZMBdBLVeXRrX3/wtRa5MK6MxE=
X-Google-Smtp-Source: APXvYqy+aYGm0qZiobmUwvVPDCOBkbqaqupOLejYucpB2ZPkSB42n2AiSGjWTnFqM4AGmwYd1ovkE/yy66eTV/UGVe8=
X-Received: by 2002:aa7:8a99:: with SMTP id a25mr54254066pfc.127.1564669971669;
	Thu, 01 Aug 2019 07:32:51 -0700 (PDT)
MIME-Version: 1.0
References: <20190731202451.845-1-dbaryshkov@gmail.com>
	<7fa67ea5-9ec5-ee8e-5ba1-45f8a4345fc7@gmail.com>
In-Reply-To: <7fa67ea5-9ec5-ee8e-5ba1-45f8a4345fc7@gmail.com>
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
Date: Thu, 1 Aug 2019 17:32:39 +0300
Message-ID: <CALT56yO_pvNCF7cwErSoMnNCONVmPqROHx7OmUfvqqTpZVgW6A@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-integrity][PATCH] ima-evm-utils: bump to release 1.2.1
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
X-List-Received-Date: Thu, 01 Aug 2019 14:32:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D1=87=D1=82, 1 =D0=B0=D0=B2=D0=B3. 2019 =D0=B3. =D0=B2 14:43, akuster808 <=
akuster808@gmail.com>:
>
> Dmitry,
>
>
> On 7/31/19 1:24 PM, dbaryshkov@gmail.com wrote:
> > From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
> >
> > Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.=
com>
> > ---
> >  ...link-to-libcrypto-instead-of-OpenSSL.patch | 65 -------------------
> >  ...ls-replace-INCLUDES-with-AM_CPPFLAGS.patch | 43 ------------
> >  ...clude-hash-info.gen-into-distributio.patch | 31 ---------
> >  ...ma-evm-utils-update-.gitignore-files.patch | 34 ----------
> >  .../ima-evm-utils/ima-evm-utils_git.bb        | 12 +---
> >  5 files changed, 3 insertions(+), 182 deletions(-)
> >  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-e=
vm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
> >  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-e=
vm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
> >  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-e=
vm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
> >  delete mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-e=
vm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
> I am evaluation all your updates to this layer. I am traveling (PTO) and
> have limited access to test system. I will either merge them or send
> feedback in the next few days.

Thank you for the update. I'll wait for the feedback.

--=20
With best wishes
Dmitry

