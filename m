Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA1D5E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 17:07:43 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha11so820752vcb.7
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 17:07:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=HskYVN5imbFcn/MTdk+4XfFGaJzUWO2irSLHZn/b9+s=;
	b=C2dtsFejnC7ZwdpDJMT9NqVtrY8ECL2/bHYGHti9dhgr7zuQ1OpBZh/ESmUMdxebp7
	8bZMpHClr4/hfeuD/9Udwc99jrppxaj0dFPM/xCWE/eBk+8WCKu0JExh/AJDWVeOPAaw
	boftFy5ZDk5xFzX1fqAaHpYP1EP5SU7j7cjFyNgrmwcpOW6x3Z7Fa9JKt7Cy7+RAamta
	WkbBwVdpncJekXleil3c67KYKB0o5JEYVOWnf7G33QY+1qFZpiL6xhbHEXhwVFXD+dEQ
	Eyv5FVaRGZa2Y7owZBUH7ZTeUQrv+75j+z1I8NmjOoym57FFzVW9iG2ET/kd6TLgqXyi
	5B7A==
X-Gm-Message-State: ALoCoQmVv4iFu3S3jO3CF2tTiwvpyBW3W3avYd0I3PcuVw1jtu7yztoWLGFyp/B3yhXIcN09O/V+
MIME-Version: 1.0
X-Received: by 10.220.181.136 with SMTP id by8mr3563900vcb.11.1377043662792;
	Tue, 20 Aug 2013 17:07:42 -0700 (PDT)
Received: by 10.52.28.109 with HTTP; Tue, 20 Aug 2013 17:07:42 -0700 (PDT)
Date: Tue, 20 Aug 2013 17:07:42 -0700
Message-ID: <CAPhnLPBBQLhL9n5j3MYZ_Shy8FD9Mb-Av2yFmfCUDb71dBtrwg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Zhao Yi <yi.zhao@windriver.com>, Otavio Salvador <otavio@ossystems.com.br>
Subject: Weekly build availability
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
X-List-Received-Date: Wed, 21 Aug 2013 00:07:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build will soon be available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130820-1

meta-fsl-arm 1663874ee7ff6607a2685929c27695fe21c8ceb8
meta-fsl-ppc 399c1ab5e86cf6dbb7c0c48d5253ac8798d6bfe4
meta-intel 3be52cc95ff2c43d9d3c46c03c636e520ebefebc
meta-minnow 7719e114bd0c2118c3d4c2a1a7c06e966103ab09
meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
poky 2779faf33de96d1260955af08868f9ab89f1aed4
eclipse-poky-kepler f1fc72a31f7e51364ba3bccf45c028e694aefb9a
eclipse-poky-juno a80114b5d1c8d774fd9271da48a38654321d4817


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

