Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84BFAE007B1
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 22:14:13 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id lj1so7196607pab.40
	for <yocto@yoctoproject.org>; Mon, 10 Feb 2014 22:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=dbx2wvQYtv9fP6LNU6ruL7SA6oITjBWMFA+DvfsOMH8=;
	b=zl5e3e2iUiBKZEg1hcqiVByFCQmkPcRY1bMojWKVqM+gfiSzankKBBSYz1L9wczr8K
	BKsl9zPSgbhY/U6t75+/1SGHqbOyaBXQ74h88NRHDzyhkrgo6axKKEiV0OMXYigyyKRX
	aev14vqBeh0wrXFna+fxJ5G4uXQxop45iR6hm0EqbuTfDqpE3cX24lc4QjfpXFm6qDIv
	1TqgIs92ttLU73De4sDnEDqoCnYgt/PqRHjAUqF6SAySm2ES1sssCVSg5rxPJxDGNikM
	nIZuRGHSPlvbYxlBCgJD7mDTjQSKU52tpY0nsS1rs2R6KGzx7LBHiqiWN+rcdtGUH9/R
	OvBA==
X-Received: by 10.67.1.202 with SMTP id bi10mr30764126pad.68.1392099253517;
	Mon, 10 Feb 2014 22:14:13 -0800 (PST)
Received: from [192.168.0.33] (99-57-140-30.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.30]) by mx.google.com with ESMTPSA id
	ei4sm48957965pbb.42.2014.02.10.22.14.12 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 10 Feb 2014 22:14:12 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <52F4E620.6090303@mlbassoc.com>
Date: Mon, 10 Feb 2014 22:14:11 -0800
Message-Id: <5CF961D0-78FE-4108-BA7C-58F9AC87AE48@gmail.com>
References: <52F4E620.6090303@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1827)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding functionality to SDK
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
X-List-Received-Date: Tue, 11 Feb 2014 06:14:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Feb 7, 2014, at 5:56 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I have a basic image (similar to core-image-sato) that I've added
> (on board) SDK to using packagegroup-core-sdk  & =
packagegroup-core-standalone-sdk-target.
> This works pretty well but I've found some missing functionality.
> In particular, I used it to build the kernel on my ARM board and
> found the U-Boot 'mkimage' tool missing from the SDK.


add the package (whichever provided mkimage ) to IMAGE_INSTALL=20
>=20
> How can I add this to my SDK build?  I'm interested in both
> the specific answer of how to get the U-Boot utilities but
> also how to include additional functionality in my SDK builds,
> e.g. additional libraries, include files, etc.
>=20
> I've looked through the reference manual and it seems to only
> discuss cross-build SDK, not on-target SDK.
>=20
> Thanks for any pointers
>=20
> --=20
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


