Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D6D3E00DD0; Thu, 27 Oct 2016 19:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A999CE00DC8
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:36:30 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id s8so28266703pfj.2
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=SPCCABymEFsHrvQx7oPgtvmEOHLkcmBHBtOTbVw3vuk=;
	b=XxthoRi9fDB28VRJf5Xso09gPuNwASoR2iJAb6ACAI/kd+Q6GlHIUCtK6VHXm5lunK
	x9YvhdCZ5dZlYjwHklQdlwqdMyryfhBSemFJ4MgG1l/RVUbgOp7yhHAY4cjPn7RMc1D9
	i+B59mcAj9mUwJRvgXz+Inf6HCO5Y+WSvSvobIcVeBsBqNrWg+erjxijtvxBhxJEm3bB
	b9b7Ai9N7cL2E6zjg3uaOssOe5ryysaZnxk7jf8b+a7RNDaeqHSEqDVOuB4MDBn1RNfC
	TAMVgTCQWFsLJHPogfnYfOH9793HHRvhr9rB/GNAHyEMCKCEqGTW4U8sFN+0q4QBkW4e
	dzdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=SPCCABymEFsHrvQx7oPgtvmEOHLkcmBHBtOTbVw3vuk=;
	b=YqcuxYVb2NCPJDPBzOB7r7WQO76Mko2hKR59e0b7RHHorao18sCiakB89I5ydU1ulx
	4R8tx1znxCJhXwYC0vfflzJzrtlcoz6qxI5sNItKC7QhviCdRvmnxqYh60vM+f/eM5M8
	XJ/EHxGuJrPkyNF6wzEsQrmTL7vmMxMF2FEzfkakM4EM7TXmN8kXh6dexEtYAQiaVGFZ
	HPku8jgqHm7n3Z472AZHb6gj7j0XI4Sp86Xd99jj0C4jKKsQurUUDvPJo4XjuXkqLBHH
	kF6JAg16ianjg6rv5IoyyLVq6+M/GdlYlTXI03iOokrsFRIQxjQVWMkzXtT5ZkfaWvMZ
	oC9w==
X-Gm-Message-State: ABUngveliSpT0SsrpxVFEW6Z14OHilM0Ww/sg4YwyNds366EUjXDjHmRikkWfq/dtp2sMA==
X-Received: by 10.98.5.195 with SMTP id 186mr20233240pff.117.1477622189813;
	Thu, 27 Oct 2016 19:36:29 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:98cf:ea9b:f72:6b74?
	([2601:646:8882:b8c:98cf:ea9b:f72:6b74])
	by smtp.gmail.com with ESMTPSA id
	z87sm14561784pfk.67.2016.10.27.19.36.28
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 19:36:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <a9ccf644-5373-cf83-e955-d26b2ae28740@google.com>
Date: Thu, 27 Oct 2016 19:36:28 -0700
Message-Id: <BDFD6FC6-3513-4C7E-8421-3F3392E52752@gmail.com>
References: <a9ccf644-5373-cf83-e955-d26b2ae28740@google.com>
To: Rick Altherr <raltherr@google.com>,
 Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: How to proceed with kernel-fitimage and INITRAMFS_IMAGE
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
X-List-Received-Date: Fri, 28 Oct 2016 02:36:32 -0000
X-Groupsio-MsgNum: 32660
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B6E9FD52-B914-459C-BEA6-536615496361";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B6E9FD52-B914-459C-BEA6-536615496361
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_169A1B87-40F2-4626-A5F9-6D72D20F3313"

--Apple-Mail=_169A1B87-40F2-4626-A5F9-6D72D20F3313
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 27, 2016, at 10:34 AM, Rick Altherr <raltherr@google.com> =
wrote:
>=20
> Krogoth (2.1.1) doesn't include the changes required to build a =
fitImage with an initramfs.  Specifically, it lacks =
ec755d2524fcbd9dfded23a576f25c990d405a6c =
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Dec755d2524fcb=
d9dfded23a576f25c990d405a6c> which is only submitted to master.  =46rom =
https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html =
<https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html>, it =
looks like those changes will show up in the upcoming 2.2.
>=20
> I've been testing those changes in OpenBMC =
<https://github.com/openbmc/openbmc> (Krogoth-based) and can =
successfully generate a fitImage with an initramfs.  Currently, =
kernel-fitimage.bbclass only stores an uncompressed initramfs which is =
problematic for the SoC I'm working on.  In short, even once 2.2 is =
released, fitImage w/ initramfs may not quite work for you yet.
>=20
>=20

CC'ing krogoth maintainer for back port consideration



--Apple-Mail=_169A1B87-40F2-4626-A5F9-6D72D20F3313
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv="Content-Type" content="text/html charset=us-ascii"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" class=""><div class=""><br class=""></div><div><blockquote type="cite" class=""><div class="">On Oct 27, 2016, at 10:34 AM, Rick Altherr &lt;<a href="mailto:raltherr@google.com" class="">raltherr@google.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><div class="">
  

    <meta http-equiv="content-type" content="text/html; charset=utf-8" class="">
  
  <div bgcolor="#FFFFFF" text="#000000" class=""><p class="">Krogoth (2.1.1) doesn't include the changes required to build a
      fitImage with an initramfs.&nbsp; Specifically, it lacks <a href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=ec755d2524fcbd9dfded23a576f25c990d405a6c" class="">ec755d2524fcbd9dfded23a576f25c990d405a6c</a>
      which is only submitted to master.&nbsp; From <a href="https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html" class="">https://www.mail-archive.com/yocto@yoctoproject.org/msg31779.html</a>,
      it looks like those changes will show up in the upcoming 2.2.</p><p class="">I've been testing those changes in <a href="https://github.com/openbmc/openbmc" class="">OpenBMC</a>
      (Krogoth-based) and can successfully generate a fitImage with an
      initramfs.&nbsp; Currently, kernel-fitimage.bbclass only stores an
      uncompressed initramfs which is problematic for the SoC I'm
      working on.&nbsp; In short, even once 2.2 is released, fitImage w/
      initramfs may not quite work for you yet.</p><div class=""><br class=""></div></div></div></blockquote><div><br class=""></div><div>CC'ing krogoth maintainer for back port consideration</div><div class=""><br class=""></div></div><br class=""></body></html>

--Apple-Mail=_169A1B87-40F2-4626-A5F9-6D72D20F3313--

--Apple-Mail=_B6E9FD52-B914-459C-BEA6-536615496361
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgSuawACgkQuwUzVZGdMxQarwCgg3KXrPXufqqeSsXGUZPwfOTt
D2cAnRhnvfrW7rCK3kXSV/Q8IN76k3hK
=E4Ic
-----END PGP SIGNATURE-----

--Apple-Mail=_B6E9FD52-B914-459C-BEA6-536615496361--
