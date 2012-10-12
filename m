Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 663BCE01467
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 17:25:57 -0700 (PDT)
Received: from mail-qc0-f176.google.com ([209.85.216.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 11 Oct 2012 17:25:56 -0700
Received: by mail-qc0-f176.google.com with SMTP id n41so2245003qco.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 17:25:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=fnDSJyg+MgrZscDg1jkfg25mgkhafsD4pTvK6eIQ+3I=;
	b=Y0Ov4hJ4fwv5QQg/ZUcBeB7QOJngrW+Ed8hgW88jtdQJlouWL5oECf8j7h4Ylzjosg
	m94y1SFvXL2zE5UNpcUdgn5N06TLfETldzn6RgoQ/q5j9oGQor237ykdxdTrAVxgbZw7
	N6VUtmMog1FZ6185CRbZ6ko7NT6LymE/O54U/15Zl2xOflgzMsgUET7PtmnofUL7AYn9
	/2J2/IQuDslx6rSDY1GQeePawNtHyv7BcZ9rgy9lfilaX1sUDkq5b0inFuct+nJY8Gyz
	9VNlkKj2EcfN07PxjAFR6XWHF+CnMalgsBrg+YAvgOwDoMbTQeuGQmOxea5zxCYUleKV
	Ta6Q==
MIME-Version: 1.0
Received: by 10.224.186.195 with SMTP id ct3mr4715166qab.66.1350001555759;
	Thu, 11 Oct 2012 17:25:55 -0700 (PDT)
Received: by 10.229.110.2 with HTTP; Thu, 11 Oct 2012 17:25:55 -0700 (PDT)
Date: Thu, 11 Oct 2012 17:25:55 -0700
Message-ID: <CAPhnLPC5a5VNEdBxiqtvCBw+utbVpPJWPMWBQDHkNncF3-Q8Zg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQkOlJhrN95r++0g1LqtHPS0j7dTdFkrDxKunDT2hdxFFmNMhEa7wqCcD0FKVrzwjq+48nvM
Subject: 1.3_M5.rc4 ready for QA
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Oct 2012 00:25:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

Last night we generated what we hope will be the final release
candidate for the upcoming Yocto Project 1.3 release "danny"

Please begin QA on the following build

Location: http://autobuilder.yoctoproject.org/pub/nightly/20121010-3/
Branch: danny
Tag: 1.3_M5.rc4

Commits:
poky: c9de24d3f4845251b01e2eab0aeeb7472badc5bb
eclipse-poky: cb8a0eff776d2cbd1b5f596a94dce825860574ab
meta-qt3: c86fb1727ae09526c442ec29fffde3f010aa70eb
meta-intel: 5d8a05811101f7d69994f4028ec620c4480f6da4

--
Elizabeth Flanagan
Yocto Project
Build and Release

