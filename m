Return-Path: <jc@vtkloud.com>
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3884AE006B5
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 12:28:50 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id b12so4657261wgh.35
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 12:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=szPfwD8LwgFYoPzsxHohZ8A818H+faVxTe8KRNvcTq4=;
	b=mUOEHBLnevuDpLcVWoobeBx2I2kQF2d04X2uDeIHKbnvq+xQG86ke5A36jMPFtSqim
	m164AOhhTIV1PtYfoKh8oFZivEJT2fOqfF3CZlvXTzE7XXqdmDmnuGfgwp/10tIdIjUS
	2sNswHufEYnB3Z+0/jVd0QxOFWNM2dAGjkoFi1TsXgB3WRj7uLk0UadbFTKaXCLSo+Xj
	d2VA30sXRwIGNpBGgkDGZ7RdhVXpWp2XUcHPa05NyD9uWnFEks5EJ7+9FDM/EkY4oDxN
	Ey1yN0wlZ2tPPqle9RtcGBuUor4C5h9ZMEKb+gtrbTX4sqvRHR2Z5Z8KoPQNfkudy7lu
	5spw==
X-Gm-Message-State: ALoCoQkqSYq6GEyNontx3/qTmT159SrL9rsQvf1y91rhhiWMlBQBytiIPzk0kQaBF8mODChRtCEL
X-Received: by 10.181.12.75 with SMTP id eo11mr9746179wid.24.1378754929094;
	Mon, 09 Sep 2013 12:28:49 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id i3sm20005158wiw.7.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 09 Sep 2013 12:28:48 -0700 (PDT)
Message-ID: <522E216E.6000808@vtkloud.com>
Date: Mon, 09 Sep 2013 21:28:46 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: question about SmartPM install from local file
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
X-List-Received-Date: Mon, 09 Sep 2013 19:28:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I'm trying to get a better hand on how smart work. I've been successful 
to create a repo, update and install from it. Now I want to go further. 
Let's assume:
- I have a working repo and a working device
- I build a new recipe (here, git) and update my repo
- I "smart update" on my device
Now instead of installing, I choose to "download" the package :

# smart download git

It's successful. Now I want to install it :

# smart install ./git-1.8.1.4-r0.armv6_vfp.rpm
Loading cache...
error: Unable to create channel for file: ./git-1.8.1.4-r0.armv6_vfp.rpm

Whatever I do I end up with this error.

Does it ring a bell to anyone? Is this the right place to ask?

Thanks a lot for your help
Regards
Jay


