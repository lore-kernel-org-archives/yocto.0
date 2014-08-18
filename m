Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7634AE0079B; Mon, 18 Aug 2014 13:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B71E00563
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 13:52:08 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id im17so6422174vcb.17
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 13:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=rC+kqo7Poq5japK+aiNvdGBLJ7h2MbHVUtp5qx8k7/Q=;
	b=f1lyiiZ5pDut0YVNQOaiAvnJFJFkpWCavDwT3pIy2e3xe1pHs18Y46vfoj0LD+CEcL
	Uc+ZIwke79oXJqx7lK6cg7Oziesl0vrKlSJ4VfXEHqNlgICMToCm9CY8uzS1YkMzzvUW
	/CQ5PWE0cCtk8B/fKwW87B+dLSxt59OR9ZaoD03r5AHuPYB+IwVxX3WVJTwdZNrlTtI2
	UKVPAc9Em6I0CG6Jpjh73FJpKbOncnzuKxqsMMaIR92UXTlTgOmByoK9dnNFjtxht6aO
	ku3zlJjK9UnMUBdCWs1pifQa7OY11Ee8VmhNJMAz+Gu7eutTV3OPD8NPDUeLphSeKnVD
	DYvg==
X-Gm-Message-State: ALoCoQkh+3xf1b78HA4ja51nTMpK1CxaAt8NiObWmwyXjSR+NVmkjmGRUoLow6NXWzWR5ktGyh9m
MIME-Version: 1.0
X-Received: by 10.221.44.69 with SMTP id uf5mr26865269vcb.4.1408395127367;
	Mon, 18 Aug 2014 13:52:07 -0700 (PDT)
Received: by 10.52.255.168 with HTTP; Mon, 18 Aug 2014 13:52:07 -0700 (PDT)
Date: Mon, 18 Aug 2014 13:52:07 -0700
Message-ID: <CAPhnLPCVnTeEFSS7wKMu3iMvx1Wtkm+ATtv3V-ez76tRiFQgcQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Yocto Project 1.7 Milestone 2 now available
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
X-List-Received-Date: Mon, 18 Aug 2014 20:52:13 -0000
Content-Type: text/plain; charset=UTF-8

The second milestone for our upcoming 1.7 release is now available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.7_M2/


bitbake 4aaf56bfbad4aa626be8a2f7a5f70834c3311dd3
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 7986adeac16550b33f65fded39a55f668e0e543f
poky 2d1660112e54653f7bb763939d0416472c49fe01


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

