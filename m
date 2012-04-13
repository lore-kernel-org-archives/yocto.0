Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22165E0044A
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 07:37:19 -0700 (PDT)
Received: from mail-lpp01m010-f52.google.com ([209.85.215.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 13 Apr 2012 07:37:17 -0700
Received: by lahi5 with SMTP id i5so2155545lah.25
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 07:37:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=3A9s6uZqsDJR7Rto8kqepTRz5va8+u8/IUvMMGA+8Kw=;
	b=Ujc3RONEMM8wzL8NLpwerkO2PYQZdq6lRd4EjIV1obVaNxSVcj9KQDBbXz7gVK+Toc
	hpAwXtSItL6CQVBZEuPai9eFr86G4rJY5WJnCO3BiSvRZUkzKTIbvyIi19EdYQXrLIo4
	++npo0LECdpkEcZwCZJpNEVLhpyTDfbWpRlmZIyHWjp0c+2CkZtxprwQ94fIENZSK+Gu
	bJc85F+/mm40uz1BPY5YRsO5+QRWuX55zpx5bb8Q0R4vU5EYEsPiKsuuT6RpzyGiQ9QS
	5hLh+EZzUYziFsGwCvUOJOap1uhStk7N+bcXfOFejr/w9BK9nA4Boc5QdWLmtb+kpmp/
	Grfw==
MIME-Version: 1.0
Received: by 10.112.29.194 with SMTP id m2mr888352lbh.19.1334327835630; Fri,
	13 Apr 2012 07:37:15 -0700 (PDT)
Received: by 10.112.102.5 with HTTP; Fri, 13 Apr 2012 07:37:15 -0700 (PDT)
Date: Fri, 13 Apr 2012 07:37:15 -0700
Message-ID: <CAPhnLPAODU16dXQ0eE4wAcsA7DgXgx8COSHMZT+U79ew7kqVGw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQm5Uy3+PdiqxigNQgB52OJBOH5vV/bs5lR2tDm3oiMiM8vB9IABFrCo4qVCfX8WHuXiwBjJ
Subject: Rebuild of 1.2 rc3.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Apr 2012 14:37:19 -0000
Content-Type: multipart/alternative; boundary=bcaec554d78aa81e2d04bd90685f

--bcaec554d78aa81e2d04bd90685f
Content-Type: text/plain; charset=ISO-8859-1

We've rebased the 1.2_M4 branch and rebuilt the images. The new images are
available at:

http://autobuilder.pokylinux.org/nightly/20120412-2/

This build is based off the 1.2_M4.rc3.2 tag with
fae1c7a5fdcea19<http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=1.2_M4&id=fae1c7a5fdcea199338b5f91efaafd7c72aec5dd>(flip
of distro.conf).

The adt for this build should be up shortly (within the hour).

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--bcaec554d78aa81e2d04bd90685f
Content-Type: text/html; charset=ISO-8859-1

We&#39;ve rebased the 1.2_M4 branch and rebuilt the images. The new images are available at:<br><br> <a href="http://autobuilder.pokylinux.org/nightly/20120412-2/">http://autobuilder.pokylinux.org/nightly/20120412-2/</a>  <br>
<br>This build is based off the 1.2_M4.rc3.2 tag with <a href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=1.2_M4&amp;id=fae1c7a5fdcea199338b5f91efaafd7c72aec5dd">fae1c7a5fdcea19</a> (flip of distro.conf). <br>
<br>The adt for this build should be up shortly (within the hour).<br clear="all"><br>-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build and Release<br>

--bcaec554d78aa81e2d04bd90685f--
