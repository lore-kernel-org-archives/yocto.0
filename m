Return-Path: <008dilip@gmail.com>
Received: from mail-ob0-f174.google.com (mail-ob0-f174.google.com
	[209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BB02E01835
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 06:40:32 -0800 (PST)
Received: by mail-ob0-f174.google.com with SMTP id uy5so517342obc.19
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 06:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=fH/hHexF0rE80pGjBXXtrqs4eoDxSk5pxSWO8tgKeP4=;
	b=A+qRQVHLFgiVjGrk3umnQJOeEfzajLJvDjCFan8dPEZo+VRVx2eP1SICdnWJe3z9NI
	ghvZSm113ro9dMZiJ19RTv0FIyWpUeB4aQPcd44NMr3TgFXY4pd7C919LLSbISZzBPPv
	TXwkVDI2CsJfz7xuJ4XLkzzVDIsQVtGpAyIBJRwNFggB/fZlpha9CyxFU0oh0nikjSWY
	oPMDEckr9fLrXgU7p6tuaEUS2+ubBP8iddULHnRN9nMKzm97144IDXJOn1ZgPRnjpQji
	1hXEFXO0hbBxmkTeUIPYJKUvp6gb/BBBU6ZqR23kifxMqjL+OPqs3vUd5EvWxJk5cvLd
	S0fw==
MIME-Version: 1.0
X-Received: by 10.182.233.137 with SMTP id tw9mr2115424obc.87.1384353632407;
	Wed, 13 Nov 2013 06:40:32 -0800 (PST)
Received: by 10.76.177.34 with HTTP; Wed, 13 Nov 2013 06:40:32 -0800 (PST)
Received: by 10.76.177.34 with HTTP; Wed, 13 Nov 2013 06:40:32 -0800 (PST)
Date: Wed, 13 Nov 2013 20:10:32 +0530
Message-ID: <CABmxB3NBrsVeW1FqhnEasq4U8a8xSsfDKwQi2CQrFAsmaoafrw@mail.gmail.com>
From: Dilip Kumar <008dilip@gmail.com>
To: yocto@yoctoproject.org
Subject: Enabling Ltp-ddt into Yocto
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
X-List-Received-Date: Wed, 13 Nov 2013 14:40:33 -0000
Content-Type: multipart/alternative; boundary=001a11c1c55680d87404eb0ff2c2

--001a11c1c55680d87404eb0ff2c2
Content-Type: text/plain; charset=ISO-8859-1

Hi all,
I tried to add the ltp-ddt.bb file in the meta layer and tried to build but
didn't notice any changes in that it just parsed the bb file.

I need to know how to add the ltp-ddt test tool into the Yocto project
without the meta to layer or arago

regards
dilip kumar b

--001a11c1c55680d87404eb0ff2c2
Content-Type: text/html; charset=ISO-8859-1

<p dir="ltr">Hi all,<br>
I tried to add the <a href="http://ltp-ddt.bb">ltp-ddt.bb</a> file in the meta layer and tried to build but didn&#39;t notice any changes in that it just parsed the bb file. </p>
<p dir="ltr">I need to know how to add the ltp-ddt test tool into the Yocto project without the meta to layer or arago</p>
<p dir="ltr">regards <br>
dilip kumar b</p>

--001a11c1c55680d87404eb0ff2c2--
