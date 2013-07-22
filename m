Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f65.google.com (mail-oa0-f65.google.com
	[209.85.219.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49234E01419
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 04:10:39 -0700 (PDT)
Received: by mail-oa0-f65.google.com with SMTP id k14so2038741oag.0
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 04:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=1dd+GyhxbXk71UfT+ZiHnVgknAR4jqP1Hn/24XYdYYY=;
	b=dc9LH/td500LK0g13W0twsztiy4FVrPbGZS1AmFfMqYRntd0bZeu4ZL3GtEilGx6dY
	NUV0R1U3zdX4whg/iFfYD2ytc3m0evMGKax9Iboyr28bazsvDMwzK+BgxlWNFAWVgLJE
	3eA4mFgWJHzaXn5sYqiYwxAFmaPSBk3EOD56D5DxKhfET9ZYvdRmuiNNs4vbzLZpAS4/
	TlLAbDLQlI/glzk/ml61BSYD5rDrUWGFpclb1VSVTTK99cyZMSHM4FuCqwfOXKkN/BF7
	xG1H2yQVMwBxkCCWI0/ueQVVo3Pz/c0xvSWt7Xqq94rj15qUoCXFmX6aCuC5cM7fNq6S
	eoBg==
X-Received: by 10.60.63.196 with SMTP id i4mr25846578oes.69.1374491048939;
	Mon, 22 Jul 2013 04:04:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.221.5 with HTTP; Mon, 22 Jul 2013 04:03:48 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Mon, 22 Jul 2013 16:33:48 +0530
Message-ID: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: bitbake -c populate_sdk -v poky-image
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
X-List-Received-Date: Mon, 22 Jul 2013 11:10:40 -0000
Content-Type: multipart/alternative; boundary=001a11c20f96b817d604e217a249

--001a11c20f96b817d604e217a249
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I want to build meta-toolchain-qte.bb as sdk while running

"bitbake -c populate_sdk -v core-image-minimal" ..

Please suggest what changes need to be done to provide this feature?

Thanks and Regards
Navani Kamal Srivastava

--001a11c20f96b817d604e217a249
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr"><div><div><div><div>Hi,<br><br></div>I want to build <a href="http://meta-toolchain-qte.bb">meta-toolchain-qte.bb</a> as sdk while running<br><br>&quot;bitbake -c populate_sdk -v core-image-minimal&quot; ..<br>

<br></div>Please suggest what changes need to be done to provide this feature?<br><br></div>Thanks and Regards<br></div>Navani Kamal Srivastava<br></div>

--001a11c20f96b817d604e217a249--
