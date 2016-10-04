Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73163E00839; Mon,  3 Oct 2016 18:20:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45055E00839
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 18:20:20 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id v7so91770906uaa.0
	for <yocto@yoctoproject.org>; Mon, 03 Oct 2016 18:20:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=hiswB0W4rjlfc4GQlfzLQDsnjH3DAgH3dCTK1E88Hns=;
	b=mWkGzx0DgNLvVIG8Dmc25egNI4YCGq41Dk8l8YBerM3FzVRnixXmV4CKvO43CKucAq
	M/oH4t+dXcJ4vlQfFcmDWZ0WO6KeLGHXnzLIuqyvhyfLzbRdPbfabh9Kcs53QNIYnNuo
	kyHHRPSMDDH2++MVeQygsHh722YB4nFeWT0Z+xxRm7L6aeELXDVHRhc/9P5yzPvZZWS4
	kcz01yLChoyDX5vFR6q2guyj6t5gCjMA/z1E4zqEAFMr3BZMKF9In9uhswVJZizHIibU
	Ecn9nAfEGi6lIma8UMZfxY2NKg7KSkdjMtGLcup7UIj0F0T+PS9CA94etwqFcqz4GWsN
	oiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hiswB0W4rjlfc4GQlfzLQDsnjH3DAgH3dCTK1E88Hns=;
	b=fIvLaOq4W9dFElzqs11tNHruYbszbz+jbTzCt5tWWjC3MV4lDZHTu1Niebb+B1i4Aj
	eeKPTX+DJUfPUWTXGjhGM/TJq3SCDAoOJ1vqeCprq9285SxZVBSz12g5Kttjl2hgBsfu
	B8Ykyr/eMPPpsJ/nIrmMfOszMQ1iVamQKZFulFJED3WqtmzifI4ov9IwXE58t1cV6mIG
	OpcwQcfM3PLGcIVhxo3At/LrGFT/QDOfAz9FYlZFqauOgu3m1k5KWfU7xl2Xrqfz3wWf
	TlCb6E17EU9zCdtyNDm3U+uz7BtmOTge85KxHyXDaivTaMMO2iihlA2+4gduRHb5fVy7
	+qZw==
X-Gm-Message-State: AA6/9RlhvdDLSYzcsef3m4lWkr11imBmlu/nkaCqkwBbKEqeuBbf0crye1wJ+qgP6YWilXEgdFa6V1EHt6dZqw==
X-Received: by 10.176.1.77 with SMTP id 71mr651617uak.58.1475544020002; Mon,
	03 Oct 2016 18:20:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.197 with HTTP; Mon, 3 Oct 2016 18:19:59 -0700 (PDT)
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Mon, 3 Oct 2016 18:19:59 -0700
Message-ID: <CAJ58UNnr5UFpU9SMHY3-2Oy6hgFBCa+uyQQCzi2S3nyx9nJ=Wg@mail.gmail.com>
To: yoctoproject <yocto@yoctoproject.org>
Subject: Need inputs on integrating YP-Core Krogoth to Brilliant Blow-fish AGL release.
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
X-List-Received-Date: Tue, 04 Oct 2016 01:20:24 -0000
Content-Type: multipart/alternative; boundary=001a11409d3c29aea6053dffdd03

--001a11409d3c29aea6053dffdd03
Content-Type: text/plain; charset=UTF-8

Hello All,

I am trying to integrate the YP Core - Krogoth 2.1.1 to the AGL Blowfish
release. I am getting the below error when I try to build the image.
Can you pls let me know how to fix this issue.

I see that in the earlier YP release the IMAGE_CMD was actually referenced
in the poky/meta/lib/oe/image.py. Now I don't see this file in that
location.
Please let me know if any one has faced this issue. Thanks.

/poky/meta-qti-internal/recipes/images/qt5-image.bb: No IMAGE_CMD defined
for IMAGE_FSTYPES entry 'fastboot' - possibly invalid type name or missing
support class:  --:--:--
ERROR: Failed to parse recipe:
/local/mnt/workspace/Oct-3/poky/meta-qti-internal/recipes/images/
qt5-image.bb


Cheers,
Vijay

--001a11409d3c29aea6053dffdd03
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello All,</div><div><br></div><div>I am trying to in=
tegrate the YP Core - Krogoth 2.1.1 to the AGL Blowfish release. I am getti=
ng the below error when I try to build the image.</div><div>Can you pls let=
 me know how to fix this issue.=C2=A0</div><div><br></div><div>I see that i=
n the earlier YP release the IMAGE_CMD was actually referenced in the poky/=
meta/lib/oe/image.py. Now I don&#39;t see this file in that location.</div>=
<div>Please let me know if any one has faced this issue. Thanks.</div><div>=
<br></div><div>/poky/meta-qti-internal/recipes/images/<a href=3D"http://qt5=
-image.bb">qt5-image.bb</a>: No IMAGE_CMD defined for IMAGE_FSTYPES entry &=
#39;fastboot&#39; - possibly invalid type name or missing support class: =
=C2=A0--:--:--</div><div>ERROR: Failed to parse recipe: /local/mnt/workspac=
e/Oct-3/poky/meta-qti-internal/recipes/images/<a href=3D"http://qt5-image.b=
b">qt5-image.bb</a></div><div><br></div><div><br></div><div>Cheers,</div><d=
iv>Vijay</div></div>

--001a11409d3c29aea6053dffdd03--
