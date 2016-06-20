Return-Path: <krussell7711@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9C9CE006B3; Mon, 20 Jun 2016 05:24:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 553A1E00474
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 05:24:43 -0700 (PDT)
Received: by mail-yw0-f196.google.com with SMTP id f75so2056232ywb.3
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 05:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:cc;
	bh=XXUqLcks0Tax5p0BPJ0vd4s20N/LvB0uvUP/Eo/BkS4=;
	b=ot546+U4DCkJ65/2zWNn/HFqFfEeLc7cU+JtL3p7tJ7qO5NfwRGIlY6GgH2pox4xN7
	ANNvJrv9adHzoqaT1YtUaFTakhoeedjHjSj4OhyaA34HfxRzJxW1L/Eiuj5gVwfdbmAY
	5YIlybx/5N/J2P081v8rOqaSrlXb1DTIkHyOTm1s55W83/tV2RburKNThE6wdJxuvYFc
	9Hkbug0UnRngn/MWtXhdriVAAHQdwUgvkv8rClJ2kZret8HbC1IC7QczCxf7JmmEIeIF
	yof/ewV5OCYw5RbV0OCObzuS7tjw7BdK1DmUWTnhwTSSqJwOZXc3g6aU/Q/tave4ILrd
	09wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
	:to:cc;
	bh=XXUqLcks0Tax5p0BPJ0vd4s20N/LvB0uvUP/Eo/BkS4=;
	b=iwl1zLGNkLZQuPFEzX4KxNJuQD1S8MFYIalF9CmNfpJwKYH+jlwMJSryLEZSzTress
	PnekMM0/SB9vNe6s1qt7kcfxUPUm1ORszYiGyweEAk7OnWxfde703QQrVnhvQ9swiwS7
	kzynwo0mGowhzEpjXQGDPYGssXbgAaN0IM6k7uKamD9VzA+UTuaGD3Ug5DLIylCt4AxN
	np0ADD3gM6/GYF8mKiB6XQHELgJ6gg11mjQSPHKDyNDzfHmyUe5JjpYHC70FPtSdKR68
	FqGdqt0+eoCbp0ScPPioP6I+rxm0C1L1mHRIWktney6xCXdcdYJnDTrQqPDDe5sc6LyF
	VxNQ==
X-Gm-Message-State: ALyK8tJX6+Tizh7x4qsP1MPRDWe4FlG0uANlRXXRHW4BthxkKn5u9dKmNXvfFHut/TE95k43scniHIyGIf/u8w==
X-Received: by 10.37.115.211 with SMTP id o202mr8379420ybc.177.1466425482419; 
	Mon, 20 Jun 2016 05:24:42 -0700 (PDT)
MIME-Version: 1.0
Sender: krussell7711@gmail.com
Received: by 10.129.41.139 with HTTP; Mon, 20 Jun 2016 05:24:23 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
Date: Mon, 20 Jun 2016 08:24:23 -0400
X-Google-Sender-Auth: XOR6HiGdmN27cgcZE1YMFpg_xns
Message-ID: <CAFrQVPMhmCAT+TfdOmQ95LsaTSc13=6GNvc=L=6cHmACGHRZgw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: prelink support
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
X-List-Received-Date: Mon, 20 Jun 2016 12:24:44 -0000
Content-Type: multipart/alternative; boundary=94eb2c0978c2f825500535b4c908

--94eb2c0978c2f825500535b4c908
Content-Type: text/plain; charset=UTF-8

It looks like the image-prelink support is still disabled in master because
of an issue with IFUNC symbol relocation.

https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/local.conf.sample?id=8debfea81e69d038bd2d56314b272cb74f5582ed

Is there still a problem, or is it safe to reenable image-prelink?  I see a
"Fix ARM IFUNC support" in the prelink-cross repo, but that appears to have
been committed several months before image-prelink was disabled.  We'd like
to enable image-prelink on a build off jethro.

Any help or links to a recent discussion thread would be helpful.  Thanks!

--94eb2c0978c2f825500535b4c908
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It looks like the image-prelink support is still disabled =
in master because of an issue with IFUNC symbol relocation.<div><br></div><=
div><a href=3D"https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-=
poky/conf/local.conf.sample?id=3D8debfea81e69d038bd2d56314b272cb74f5582ed">=
https://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta-poky/conf/local=
.conf.sample?id=3D8debfea81e69d038bd2d56314b272cb74f5582ed</a><br></div><di=
v><br></div><div>Is there still a problem, or is it safe to reenable image-=
prelink?=C2=A0 I see a &quot;Fix ARM IFUNC support&quot; in the prelink-cro=
ss repo, but that appears to have been committed several months before imag=
e-prelink was disabled.=C2=A0 We&#39;d like to enable image-prelink on a bu=
ild off jethro.</div><div><br></div><div>Any help or links to a recent disc=
ussion thread would be helpful.=C2=A0 Thanks!</div><div><br></div><div><br>=
</div></div>

--94eb2c0978c2f825500535b4c908--
