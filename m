Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7583FE01482
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 14:07:37 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ht10so4404392vcb.24
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 14:07:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=d7fxhx3/3XSzFqPsykTWhFQn6yHRz1ZeRLTxbiLdEmI=;
	b=Xctam4M/MkO2QFIb6xwPKqZvzHVmDj7XqTKTQM2UT35dWezFkDxt/+IfvnQr36W/Sy
	iyFKCUXX3w4fJpKglIWPJs9i7xYpwWZ+LzUo122NuHGNY/jA9JKdt2OnPY3eF315ULAY
	UUnj/cN4h096iIQH8eKlh/zpLtW8jCTCHonZ6LT7PT5ZvW34DnHz+zMG018fewyW/TbF
	boafLtdV/czMSWuxht7WWkACu+81Klpas3+j4zGxp4hDdHevCb6oXLNglfYSRpuWPdYh
	UasX+fKAXxMC9mBdVQeBuJX8ELtoTMyhmfA/7SrJdZk8OCmcM3sTUqNKo0e/0bM9hG7u
	bwJQ==
X-Gm-Message-State: ALoCoQk3ycuI39GkN+LsXPY4GNrNPQdBOs47rApIp5f68GnzAVFWhx0Q7WcXW/BTx21UN332ztOv
MIME-Version: 1.0
X-Received: by 10.58.197.5 with SMTP id iq5mr2111544vec.30.1377724057273; Wed,
	28 Aug 2013 14:07:37 -0700 (PDT)
Received: by 10.52.28.109 with HTTP; Wed, 28 Aug 2013 14:07:37 -0700 (PDT)
Date: Wed, 28 Aug 2013 14:07:37 -0700
Message-ID: <CAPhnLPAH40jnKxYkOC6VTVk=3Tex0H-LKm+AEo+MPJ0pC-2tcQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Deleted tag in poky master.
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
X-List-Received-Date: Wed, 28 Aug 2013 21:07:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

I jumped the gun and pushed a tag a few moments ago (1.5_M4.rc1). I've
deleted this tag, so folks should git fetch --prune --tags if you've
pulled in the past few moments.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

