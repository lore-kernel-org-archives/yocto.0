Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29242E013B8
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2013 15:40:31 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w16so3080716vbb.23
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2013 15:40:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=OWlMiA5/uDtWnnyKP1LSOTMofL+covGa6OZNu/XoF+A=;
	b=YXAvX4jC5PbKnP70ucQbrn2cQAYwvKw7hARom6+jCeK6GrFkk4jw1Bmv4awtLYQLGw
	b5ihG8k/NCgVzQ8qOgj9sZxrTwqEpM7ea45aZ1aCwaZwjVYcModlRvHN+fN/hpVjUFF2
	o9WZLCQLM5HLCZTqUEAzazuTglOgpf+ohELjBUDFI/C2zPpDgCFSSB70w7+2/JyyfhVp
	ZBp2eL4sNA05fS9p7zxBQ7BT6dFUwaxwjyD/VlIY9gz6NPnILIPUI9vH9UFcqBQsob+Y
	HTEogFp9g3HmJw49/H+iRQU6ScGPGPGPjiU7btxdC78Y4cgsf/cX91hfuFli2QIb3ZYJ
	BRjg==
MIME-Version: 1.0
X-Received: by 10.221.4.4 with SMTP id oa4mr8663628vcb.70.1372632031106; Sun,
	30 Jun 2013 15:40:31 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Sun, 30 Jun 2013 15:40:31 -0700 (PDT)
Date: Sun, 30 Jun 2013 15:40:31 -0700
Message-ID: <CAPhnLPA1beCo03kmSq-T61ZgY_ouTp5n5DCKeFcM=DF-qQb1LA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmII/feza8p/90NRa2rWLuaoJ7IgqKNVGAs8BksmWU4mYkfhDbM2Q4CvnLLvHvIRG/QJ/eZ
Cc: Richard Purdie <rpurdie@linux.intel.com>
Subject: Recent autobuilder changes
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
X-List-Received-Date: Sun, 30 Jun 2013 22:40:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

This weekend I brought down the autobuilder to implement the new build
failure email formatter. This *should* provide a bit more detailed
information in a much easier to read format. Please, let me know of
any tweaks people might like to see in the message format.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

