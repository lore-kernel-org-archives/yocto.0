Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C982AE007FD
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 09:04:10 -0800 (PST)
Received: by mail-ve0-f170.google.com with SMTP id oz11so680324veb.29
	for <yocto@yoctoproject.org>; Wed, 19 Feb 2014 09:04:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=yWPiIOHy6MmAIg8MMhRsMr2I1Dmhu8J0YUV+5nHmYak=;
	b=BpD6ZB/li2Hs7UY+GmtgzzyDQdvFiwM+lzAqH8QCGTSW4pcu5F/NPEgfObmZB7kHED
	ed+dr9dlBC/zABdq4veSZ6oqWuI7PLhQoraYUa2PJ/wsnFptPy7Rz9rzF0iiZJ+rc9an
	QBQ3B3qwtZT4STueGUKvvkXvWdfestBK+nDbf1pZ0AMjJjgdQMnHJ7Tbhy22nF/1hlg4
	/bdAjT4E1NSAQHherTYupI9OXflDFPhhpduhKYWRLND5l+O724+WoFZVWACuPMgzzQBX
	Oge1Jv7zJnp+GDp07gIcEVdBNRLpzWBdVnSnWlj1HalWTOif+fzz7FfNxrbuGtteENSZ
	ggyg==
X-Gm-Message-State: ALoCoQkLX3anvkLzNUJuti560bJ0K/fENC2v7zj5g2h8E1813Nhc5zUyxhMpUJmbLOZqep5zkEQx
MIME-Version: 1.0
X-Received: by 10.52.171.68 with SMTP id as4mr21820657vdc.0.1392829449963;
	Wed, 19 Feb 2014 09:04:09 -0800 (PST)
Received: by 10.52.164.142 with HTTP; Wed, 19 Feb 2014 09:04:09 -0800 (PST)
Date: Wed, 19 Feb 2014 17:04:09 +0000
Message-ID: <CAPhnLPBnULL2YxrKEKWixtzm2LUNaS+KjABDiATytmnjGMW99w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: 1.6_M3.rc2 now available
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
X-List-Received-Date: Wed, 19 Feb 2014 17:04:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

The 1.6_M3.rc2 build is now available at:

http://autobuilder.yoctoproject.org/pub/nightly/20140218-3

Please begin testing as soon as possible. Thanks.

bitbake     c39b99792547b642570ea5152070e7396e812390
eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler     f4d8e9243f9355424a01e2d72fd1abbf68d3bb7c
meta-fsl-arm     40385ba8b3060adb3a535c6e5f08199b69f47754
meta-fsl-ppc     290a669e5480792836d4f7769ba2ef6f49799323
meta-intel     a2e40547fd6e2e7874e1587956c4490904ce552a
meta-minnow     32e4d6f17917027c3babe1ab738480de9691024d
meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
oecore     9a98b8bfe13b94d89a9e39cca821f26fdeaeffc3
poky     54562006c1327c5b99daa4cc05a3ba7e38412da1

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

