Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7981DE01423
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 15:57:35 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id 12so5857295vbf.32
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 15:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=/V3tg7+Vn1ejvB/EqDj0OGrqWS8xdOMxSy9HTDbc9AM=;
	b=A2g6iPcDQ+TfsUZ4Cx+UXNK4uHx6barG671lqvwjW0BDbhHcfA4MOCHlfXwR4sSiv2
	2gqhqsQ+Dz9bgfS2yx2Uruh6FUADYwV+y0ILzHPCV8d6W9fe5ojSqzY8gg7YtbXYfsU0
	Clo2ZAH657pyzDNBfR2P/gvEMp8Ty/jnf4wVoWG1o6425NXHFANuelgZxPru3eANytsG
	Qz/qz6A/zGdnJPu+KwmnW/8K4+vY5NahReCzA7EfENSK6RNBOwzJ3aozqt/yNYgIWlOI
	WaZYmWpzJ65Z22KSbq2/bRhfEfGEX1vAICwvW3CRG+DPsdOCdSJxzoGeCD6SOONzKqqn
	psxg==
MIME-Version: 1.0
X-Received: by 10.58.116.211 with SMTP id jy19mr40898veb.7.1369781854594; Tue,
	28 May 2013 15:57:34 -0700 (PDT)
Received: by 10.52.120.108 with HTTP; Tue, 28 May 2013 15:57:34 -0700 (PDT)
Date: Tue, 28 May 2013 15:57:34 -0700
Message-ID: <CAPhnLPAFOj05bXLUpq3qPws=8XO2excp4XgkiMkxnVWv-b7hDQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnXGxa6mDidlbQoFpZQOOH4kaXK4vUR7elTNLg/v9gznu0hf+dE3u7vifzPjY5gmSTNYk87
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: Weekly build now available for QA
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
X-List-Received-Date: Tue, 28 May 2013 22:57:35 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

The weekly build is available for QA. Please being QA on the following:

Download: http://autobuilder.yoctoproject.org/pub/nightly/20130528-2

poky 676fd3f394a0c0576b63c77ed2184bf5f42c29b6
meta-fsl-arm ab56b11ba65bfa3bb5d123a51510e6d5c9f65e36
meta-fsl-ppc 52b906c448f275719f241c634fe6e412e917b67a
meta-intel 2ba2e0ea55bab687134b452a5db81d189b820f59
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605

Thanks!

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

