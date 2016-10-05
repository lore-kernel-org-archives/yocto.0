Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B4DE00C4F; Wed,  5 Oct 2016 06:55:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AAE6E00C4B
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 06:55:35 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id 188so105208617iti.1
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 06:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AcEuwxKjpQu4qs3XwE0KK6e7FYSyKQ3iY/ZlXDX68wM=;
	b=aR0AaniNYmw1qFaKmAzG7dICmLGR7+SEztuThYK1t8acWyUz/zMemvokZ6L4/wccHV
	BBx0EdZRZ+o2O+7313z1/ORFNAkshUCjOrMwCr4v88jHaXVpQs4XhL7PYvAESBynoVZN
	SvAgybNyrx+ZA4X8cvRYIGrWFNaHfdBPG5z5ScUhXhWdCbqmoYRNFrUUja69aTbHUPt1
	fLVsCAyoGHO+sCwbvY/SZ7Gyim/8ZJ0E+0gtiUmZq/Uu7R4s1NUyUbgJBioC2p7xDAmN
	OBpXXDTdirrEwgdL4K1z/svo5n2AY6CB5gD9Gmxq2nmXGAX13C8fvhRqVYs5Onq2HuCe
	yWrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AcEuwxKjpQu4qs3XwE0KK6e7FYSyKQ3iY/ZlXDX68wM=;
	b=cO01edfyxcp+XOEbyE6VzR6HmpnwCRTNPW7zw69bRyHjNLeEODyEwaOwQuqkRqLvVf
	JQ6Mnthm/SK3Oq31JP9moxNQJA3i1zJ08E736avP1rZe/d7t5rxqwyA0WlNUY1ErQayZ
	339l8uU1ElfNcN9sATbrTNbsyRx0SCEHq242ATFJisUOp7Mze0BsHLWMvlNWNt71jwZu
	OVhy1To5r9Z3NTAnj/XV7Km9XWkk0V7OV5DQPd47dAiayIIbf5bFeBjxAk4xO7g/Dv0Y
	70nqUQWdXRG2GHjHRUHW6+YzQrKUvl8bqcV405s3ahzyjMiI24HgNqmscW3bIbmV4zlm
	ei8A==
X-Gm-Message-State: AA6/9Rk3avCPybfiV42Jd1UFqJgCC5E8i2y018k4JdOkgMgM2JebHLv/yizReHSCN3DuMvmPEDnqrPBWpBmfbxgU
X-Received: by 10.36.133.65 with SMTP id r62mr9522392itd.29.1475675732986;
	Wed, 05 Oct 2016 06:55:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.155.66 with HTTP; Wed, 5 Oct 2016 06:55:12 -0700 (PDT)
In-Reply-To: <20161005125828.25322-1-adrian.ratiu@ni.com>
References: <20161005125828.25322-1-adrian.ratiu@ni.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Oct 2016 14:55:12 +0100
Message-ID: <CAJTo0Lb+ztkSfr6fkrB3g=eJ4Ux-o8D4+u0NhrRVoDchk4t2_Q@mail.gmail.com>
To: Ioan-Adrian Ratiu <adrian.ratiu@ni.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH] libpcre_%.bbappend: add missing symlink libpcre.so.1
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
X-List-Received-Date: Wed, 05 Oct 2016 13:55:39 -0000
Content-Type: multipart/alternative; boundary=94eb2c05b746de6afb053e1e8709

--94eb2c05b746de6afb053e1e8709
Content-Type: text/plain; charset=UTF-8

On 5 October 2016 at 13:58, Ioan-Adrian Ratiu <adrian.ratiu@ni.com> wrote:

> (the reason why the lib is moved in the first place is to avoid a QA issue
> because there's a risk for /usr to be on another partition)
>

I'm not a meta-selinux maintainer but this is where I ask is there actually
a risk, or is this something people have been saying for years without any
basis.

If someone is booting a system with /usr separate from / then they should
just use an initramfs with a complete minimal file system in, instead of
moving libraries one at a time into /lib and hoping for the best.

Ross

--94eb2c05b746de6afb053e1e8709
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 October 2016 at 13:58, Ioan-Adrian Ratiu <span dir=3D"ltr">&lt;<a href=
=3D"mailto:adrian.ratiu@ni.com" target=3D"_blank">adrian.ratiu@ni.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1sy" class=
=3D"a3s aXjCH m15794ee43da7c879">(the reason why the lib is moved in the fi=
rst place is to avoid a QA issue<br>
because there&#39;s a risk for /usr to be on another partition)<br></div></=
blockquote></div><br>I&#39;m not a meta-selinux maintainer but this is wher=
e I ask is there actually a risk, or is this something people have been say=
ing for years without any basis.</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra">If someone is booting a system with /usr separat=
e from / then they should just use an initramfs with a complete minimal fil=
e system in, instead of moving libraries one at a time into /lib and hoping=
 for the best.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--94eb2c05b746de6afb053e1e8709--
