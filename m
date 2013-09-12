Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD37AE0073F
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 17:05:21 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id c14so6519047vea.10
	for <yocto@yoctoproject.org>; Wed, 11 Sep 2013 17:05:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=gEAjnCbKxqamiDKtthWkDpekqoOu9phvhRUveJrGvvY=;
	b=istoc5qUwsddhDuxWDttbX8Zno59/xXg5VW61ophTcWyUqXs9XC9YQr0/oNJikYlch
	MuT86TA0zxPgG6DFs3yPbwzyRey9U+pqJ57J6eowC+dw+gy58yWIiok7sWz2Dmg9kbhK
	R3J4AJyfkvo86UvAGfO3BALheYz1TLkQHNy6XOSy1ygvLZwgp1PhjVg439nYBnk/g+D/
	XuO+eRKiWbxFBAL3Ymek6tmEFZo1SJVIILn2vpeoWzZxqBsdPkcCE/BFHGFKM7ZFlbP2
	G5/jO2Jaj6d0IVBZaJ70WWKVv/VmzIPhDV8q3T/uYEt6qZswCX0lNMrphn3rM9hB9bZh
	5ZDw==
X-Gm-Message-State: ALoCoQmsIrYXHz3Ml+M86tshbmnFTYw5cH9thSyNE/dbxqzR6hF/TF3ozjnDpVBAIExuE6FNwrbt
MIME-Version: 1.0
X-Received: by 10.220.174.200 with SMTP id u8mr3791326vcz.6.1378944320430;
	Wed, 11 Sep 2013 17:05:20 -0700 (PDT)
Received: by 10.52.147.201 with HTTP; Wed, 11 Sep 2013 17:05:20 -0700 (PDT)
Date: Wed, 11 Sep 2013 17:05:20 -0700
Message-ID: <CAPhnLPC-du+pRMugP6q=n5Wscm57+TC_bEA_bvQNN_WNAM4HJw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: yocto-1.5 rc1
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
X-List-Received-Date: Thu, 12 Sep 2013 00:05:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

The first release candidate for yocto-1.5 will be available in a few hours at:

http://autobuilder.yoctoproject.org/pub/releases/1.5_M5.rc1

poky 566ca1e4769b4ec7e3f6c6a98bb817db2221cf82
meta-fsl-arm 6b7309e2bc8a9c9c9f02b2bd1ff97f9968fa4720
meta-fsl-ppc 1ddf5e66c635e086864ce15931628ce1a2d6ff0a
meta-intel 4f5c753fb2db0cb1f6989ea3be270eebf3ea3572
meta-minnow 7719e114bd0c2118c3d4c2a1a7c06e966103ab09
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

