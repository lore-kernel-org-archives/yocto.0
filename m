Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78480E003BF
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 09:25:49 -0700 (PDT)
Received: by mail-pa0-f44.google.com with SMTP id fz6so5043644pac.17
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2013 09:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=NeXgpT615dT4w3w/NKhhiC42MbWDWpST4Z+iEoqcu1Q=;
	b=r41hdsdyNc+GNooT39K9cTC80AMxZCiDgNO3JNsqi8z+TjYvRazMKURG8zvVgy69uO
	hnBEa11srnc4ID+eAEjDC3PRZxfBUCf4khLNnLl95bdUOAULAZWKIo16luWtpWbjcY0c
	XbsxxR5SgFnUgdmDLvsggWXKMbIarkl+gevBRMY5txb3BI6m0+xbVlcnV9r+cwncnTmE
	2ALTuJoqzA23f7niEhKpJSImd7FTJ0VPFg967izYSJ7ngSA8NVawaehTSlzUZqBcM9ha
	xJMtKDflB7PCmSTNolCJTsyJ4X2x9h6qsDwHibKjQgxWTxHc6PskMv5VpBNEi93n/SpW
	9WkA==
X-Received: by 10.66.187.34 with SMTP id fp2mr21478971pac.12.1377620749352;
	Tue, 27 Aug 2013 09:25:49 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id
	7sm27866872paf.22.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 27 Aug 2013 09:25:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CACWQdqBLwYUR4+C4ico5ss08L_90ozKzvMiDL5bP_jKo2eC3tw@mail.gmail.com>
Date: Tue, 27 Aug 2013 09:25:47 -0700
Message-Id: <C873B6E8-7488-4E1F-B387-167BD1CDF1C1@gmail.com>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org>
	<1571616.VWc8oWtlLJ@helios>
	<loom.20130614T195255-724@post.gmane.org>
	<CE727E34-D6D2-4B25-840A-0D2F32318C0A@gmail.com>
	<loom.20130614T200317-354@post.gmane.org>
	<loom.20130724T132956-99@post.gmane.org>
	<CACWQdqBLwYUR4+C4ico5ss08L_90ozKzvMiDL5bP_jKo2eC3tw@mail.gmail.com>
To: Javi Roman <javiroman@kernel-labs.org>
X-Mailer: Apple Mail (2.1508)
Cc: Marcelo Valle <mvalleavila@gmail.com>, yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Tue, 27 Aug 2013 16:25:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Aug 26, 2013, at 5:23 AM, Javi Roman <javiroman@kernel-labs.org> wrote:

> $ cat recipes-devtools/libtool/libtool-cross_2.4.2.bbappend
> export FC = "${CCACHE}${HOST_PREFIX}gfortran ${HOST_CC_ARCH}
> --sysroot=${STAGING_DIR_HOST}"

can you submit this as a patch to OE-Core libtool recipe please ?

