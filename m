Return-Path: <sarayu@m5nv.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A791E0079D; Wed, 22 Aug 2018 07:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46770E00519
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:40:49 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id p84-v6so3540269oic.4
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=m5nv-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=A2ORCBHtv1m112QhEMR9vWILOWpD2j2rb5IdEnbB7qc=;
	b=XbvwDQyhxiRQt3plJ+vZVkz27S5HkncETkD2Tv+P6g59okhepTckTsXLopKq0bMSSS
	mNhQlNZebEmEw5ztaXNwRdUo90dyqhvhYSPhcm9hUexISfJy4SfFoJAyVpJThIHYTQVa
	oBlJiPs+F7jeDsoDXbHDZODPIavsKVUpC66d6r9Rdoo9zcOhaWCnoXRcU848dVZeU+br
	ndAm67cfYj+86kE7+dFXV7xDNyYIXE5u82xyqrnsSItuvAZCwpWthgosCYDe5g1IPO1H
	/vajerbIsJ9gSVus3oevVcJBpioU6ehw7v0VhjYCNoMMwj8Yidm5O1T+hppq/Bgn4A2I
	4Zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=A2ORCBHtv1m112QhEMR9vWILOWpD2j2rb5IdEnbB7qc=;
	b=IHdohet345ZiAze6TnVM9zTjYz4MzUCMdpuNZtsqIvfKNruUURdwapKHzuOETO9hTN
	6FOpLw6teKpkV2FnLmlauQI4XulvkeHQu2o3L0wpJ0WL/EoWFRsF7hNoJiZfwQH4c8ka
	LI38a1AFvIgAV2DbiBCbo0HsQLoZAIsyB7lqzPK4JriOEkJnBBs7x6sYY5sDHWzkuce3
	QYshS1+0G/ljQtMS/O529npcPGNp7hhx0GsseuIfjMJ5BWq9GVdopL4F5eb8TRcSKuM1
	88KIX/+9gJNvt5D1/hdSprNzTNTrirnrSX4MBhzkf2lCbGEbvJigO1JBVCHCuXhJJLNI
	JHqA==
X-Gm-Message-State: APzg51CAp7EJvjHnpesaHbhYN5u0d63ioMcnv9F7vlxDY+5iEq9Xo/DD
	NeetGFzYUtnJ5hBxmBSIj0Js3AVHePOnu1GwC7KKsOpUrxw=
X-Google-Smtp-Source: ANB0VdZrIMXj7gHB8eTl+1asXeGrVGU5I1Pd/cZtm5n4hZWacVUGLdJPuSvbyGw6B2ml7xTRi91aDX753lXnbtVBLP8=
X-Received: by 2002:aca:44c5:: with SMTP id
	r188-v6mr4496770oia.280.1534948849287; 
	Wed, 22 Aug 2018 07:40:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:3da6:0:0:0:0:0 with HTTP; Wed, 22 Aug 2018 07:40:48
	-0700 (PDT)
From: Sarayu Sivanandam <sarayu@m5nv.com>
Date: Wed, 22 Aug 2018 20:10:48 +0530
Message-ID: <CAG3Cyz9ZqDr1fH5PhctavTzTdD6CHYu1J4yuEvkCMvDWqTRUOA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: LXD on yocto
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
X-List-Received-Date: Wed, 22 Aug 2018 14:40:50 -0000
Content-Type: multipart/alternative; boundary="000000000000e915a8057407204f"

--000000000000e915a8057407204f
Content-Type: text/plain; charset="UTF-8"

Hi all,

Is anyone currently working on creating a recipe for LXD?

I want to create a recipe for LXD for my project and any inputs for
the same is welcome.

Thanks and Regards

Sarayu

--000000000000e915a8057407204f
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><pre><font size="2"><span style="font-family:comic sans ms,sans-serif">Hi all,

Is anyone currently working on creating a recipe for LXD?

I want to create a recipe for LXD for my project and any inputs for the same is welcome.

Thanks and Regards<br></span></font></pre><pre><font size="2"><span style="font-family:comic sans ms,sans-serif">Sarayu<br></span></font></pre><br></div>

--000000000000e915a8057407204f--
