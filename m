Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50C34E0074C; Mon, 16 Feb 2015 01:27:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEFA9E00746
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 01:27:46 -0800 (PST)
Received: by iecrd18 with SMTP id rd18so32714610iec.5;
	Mon, 16 Feb 2015 01:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=s7scmEFXNl/Y0UsUwPbgaDEmoXg9eqS8YRMr6OhfECw=;
	b=Ut4YE8VCbMSKWLw3QDsCAQWHlCTVpRUX6BFUkVNKqlcJjfuQp589MoFvSA8DrKLYoJ
	0wrfSTR+tflKYhQoI/44bxIdZ7BBmSH26XCTiyxAzQ8X6OWSilpfxaaYKqR6V908fXQh
	oKG3vcSM10u+9OrfXxgINeYdDJLo1epUWKjJH3/6Ne5gb+VO6PZMVxY0gzi1eYdLlhM8
	+oImaD79cXSMyOf22PeqDG26qcuFalLyc+oBLB1Mv7hP0hsdfhHgMX8NHxKlgwA22BJt
	IDRuAAvJxslDJTipYRVRGoGR2D9OGlSabGuyyc5AMK7KURbAFTxzt8dfqf2bDKHPJaJA
	loFg==
MIME-Version: 1.0
X-Received: by 10.50.62.110 with SMTP id x14mr20600945igr.2.1424078865638;
	Mon, 16 Feb 2015 01:27:45 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Mon, 16 Feb 2015 01:27:45 -0800 (PST)
In-Reply-To: <CALTPfpHDYT3_O6TDCtmZCH432h9-xaX6fhm4W0mEgErshNqCuA@mail.gmail.com>
References: <CALTPfpHDYT3_O6TDCtmZCH432h9-xaX6fhm4W0mEgErshNqCuA@mail.gmail.com>
Date: Mon, 16 Feb 2015 14:57:45 +0530
Message-ID: <CALTPfpFWPRfixdjCavm6yp_u-8A9Cj5ut4EwT_SXm18JZSTZ6w@mail.gmail.com>
From: Priya Agarwal <priyaiitmandi@gmail.com>
To: yocto@yoctoproject.org, yocto-build@yoctoproject.org
Subject: How to remove: WARNING: No bb files matched BBFILE_PATTERN_mylayer '^/media/NewVolume/yocto/meta-mylayer/'
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
X-List-Received-Date: Mon, 16 Feb 2015 09:27:48 -0000
X-Groupsio-MsgNum: 23591
Content-Type: multipart/mixed; boundary=047d7bdc15b8eb48a0050f313278

--047d7bdc15b8eb48a0050f313278
Content-Type: multipart/alternative; boundary=047d7bdc15b8eb489a050f313276

--047d7bdc15b8eb489a050f313276
Content-Type: text/plain; charset=UTF-8

Hi,

I want to compile a c++ file(tcpserver.cpp) and build it along with my
kernel image. I am using QorIQ SDK1.4.

I created a new layer meta-mylayer in yocto/, wrote a simple recipe file,
and edited bblayers.conf and local.conf. But I am getting the following
error:

WARNING: No bb files matched BBFILE_PATTERN_mylayer
'^/media/NewVolume/yocto/meta-mylayer/'

What does this mean and how should I remove it?

The .bb file is in:
yocto/meta-mylayer/tcpserver/tcpserver.bb

I have also attached it.

Thanks.

--047d7bdc15b8eb489a050f313276
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_quote"><div dir=3D"ltr"><div><d=
iv><div><div><div><div><div><div><br></div>I want to compile a c++ file(tcp=
server.cpp) and build it along with my kernel image. I am using QorIQ SDK1.=
4.<br><br></div>I created a new layer meta-mylayer in yocto/, wrote a simpl=
e recipe file, and edited bblayers.conf and local.conf. But I am getting th=
e following error:<br><br>WARNING: No bb files matched BBFILE_PATTERN_mylay=
er &#39;^/media/NewVolume/yocto/meta-mylayer/&#39;<br><br></div>What does t=
his mean and how should I remove it?<br></div><br></div>The .bb file is in:=
<br></div>yocto/meta-mylayer/tcpserver/<a href=3D"http://tcpserver.bb" targ=
et=3D"_blank">tcpserver.bb</a><br><br></div>I have also attached it. <br><b=
r></div>Thanks.<br></div>
</div><br></div>

--047d7bdc15b8eb489a050f313276--

--047d7bdc15b8eb48a0050f313278
Content-Type: application/octet-stream; name="tcpserver.bb"
Content-Disposition: attachment; filename="tcpserver.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i67l25y80

REVTQ1JJUFRJT04gPSAiU2ltcGxlIFRDUCBzZXJ2ZXIgdG8gdGVzdCBpZiBzeXN0ZW0gY2FsbHMg
bGlrZSBzb2NrZXQoKSwgYmluZCgpIGV0YyBhcmUgd29ya2luZyB3aGVuIHVzZWQgd2l0aCB1c2Rw
YWEuZHRiIgpTRUNUSU9OID0gIm5ldHdvcmsiCkxJQ0VOU0UgPSAiR1BMdjIrIgoKU1JDX1VSSSA9
ICJmaWxlOi8vL21lZGlhL05ld1ZvbHVtZS90Y3BzZXJ2ZXIuY3BwIgoKUyA9ICIke1dPUktESVJ9
IgoKZG9fY29tcGlsZSgpIHsKICAgICAJJHtDQ30gdGNwc2VydmVyLmNwcCAtbyB0Y3BzZXJ2ZXIK
fQoKZG9faW5zdGFsbCgpIHsKICAgICAJaW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9CiAgICAgCWlu
c3RhbGwgLW0gMDc1NSB0Y3BzZXJ2ZXIgJHtEfSR7YmluZGlyfQp9Cg==

--047d7bdc15b8eb48a0050f313278--
