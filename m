Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24CACE00B68; Thu, 15 May 2014 21:50:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 483 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 May 2014 21:50:29 PDT
Received: from mail-vc0-f172.google.com (unknown [209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C239DE00A44
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 21:50:29 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id hr9so5675989vcb.3
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 21:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=4m0URc2Pv13ypEJK8FazbExs1ZsMTh+aC6Mt6yBE458=;
	b=RGM72juNkS2d2UDDzXdMIkqriD9fRiwjoHviPi2LxVidrQAefDKMhkDi45BmtLCPGE
	D06pFl9n67SPtFVWSu3cY9UfnHM5g3mbcDcWIyoE5sG4+0sbI35xsGCcEuP/lYeQfOTp
	ynI/Nk7k0Upiy89yYJP3FVjhxUHDgWB7y9osjnVQzG/TjGL5rcWQ9vq69jCBLPKHh1sF
	9pINu4v2LNx7zaPAPuscvsVdqUlx2Gm7ncDG6n2Oj5mAdR3PI1KfA3oJiCeEFBYpbbv3
	QHxDZM02Mh4Zds0t1l/mWAPSabLL+jPOKcWFPuw5QJ1h2sUTH5HWtvWkuWkWdPx7lo+n
	QiEA==
X-Received: by 10.52.137.174 with SMTP id qj14mr10118111vdb.32.1400215345522; 
	Thu, 15 May 2014 21:42:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.227.67 with HTTP; Thu, 15 May 2014 21:41:55 -0700 (PDT)
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 15 May 2014 21:41:55 -0700
Message-ID: <CAK8F28mMgkyf2Ho5x7s7B1BTJH-kJP+fMuqwOCwggnNx+YHe7Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Changing metadata during bitbaking
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
X-List-Received-Date: Fri, 16 May 2014 04:50:35 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

(apologies if this is the wrong list---I tried sending to the bitbake
list and got bounced)

Under what conditions can I change the content of layers without
affecting an ongoing bitbake?

On occasion, I find myself wanting to do git operations on my layers
while I've got a build going on.  I've typically assumed this might
screw up bitbake but was wondering that my assumption isn't really
accurate.  Specifically, are these rules reasonable?
- don't mess around with the content of layers while bitbake is parsing
- once bitbake has parsed and started baking, playing around with
metadata should not affect the current build
- source/config files (i.e. any file:// in SRC_URI) may be fetched at
any time therefore don't mess around with files that might be used in
a build

Thanks,

Ash

