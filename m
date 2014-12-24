Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61BD0E0080C; Tue, 23 Dec 2014 16:41:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 370EBE003AB
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 16:41:24 -0800 (PST)
Received: by mail-vc0-f169.google.com with SMTP id hy10so2744412vcb.28
	for <yocto@yoctoproject.org>; Tue, 23 Dec 2014 16:41:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=CfbC4GZFpqnS2mgW3qGOwBH2GizBvT0qQUm7Kfz49cQ=;
	b=QjhKpUTCArxuq4plP96M1E7cwrcNqETvqhDMfQim0ZGht9/+J8sVyxhAcx1mfEtBUk
	DvMubR+GkeigZQL2W0lVOMYS+Dxl462bP2cZ/gVb4H7TSHKlf6F76R0VRBzQzJiJyTb6
	E3EjMtVsZDylzR2q1u/kWQJiwc6CnyleU/mc03WH4fuaBXraU9Xh7wZDz9PtMRqVgsV8
	TOYHXfhhA3TvrD21z3u4Dem9vhugPeoOoIeuBvWml0/hOrcwHOLmOJLImpMNBhKgPxGt
	CXzDKgQ0BC7FV6F2A/rU6AAqkzGP0oW0OFCFf67UrqDZRGyW+vuIF8/TDqKtM5u3Dz0/
	c+Dw==
X-Gm-Message-State: ALoCoQkw9ErGxJBnA3WspXD+/r9nTsOq2C/8jNX1BQxGgnvJ9X8x1LMmEeNQMVtd4/QCqK7ga0G6
MIME-Version: 1.0
X-Received: by 10.221.4.2 with SMTP id oa2mr12062540vcb.17.1419381683553; Tue,
	23 Dec 2014 16:41:23 -0800 (PST)
Received: by 10.52.29.146 with HTTP; Tue, 23 Dec 2014 16:41:23 -0800 (PST)
Date: Tue, 23 Dec 2014 16:41:23 -0800
Message-ID: <CAPhnLPBE1FYaEDQLp21=TZ+8kDhTFOVi_9DiXNkQNHO0TUFdog@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: 1.8_M1 released
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
X-List-Received-Date: Wed, 24 Dec 2014 00:41:31 -0000
Content-Type: text/plain; charset=UTF-8

The first milestone release for the upcoming Yocto Project 1.8 release
is now available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.8_M1/

Thank you everyone for all your contributions.

eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler b4d75601847b4c5b060265a37b47c2a9642da62d
meta-fsl-arm a593ac48d1a13067d3e4000be616e34699ea4732
meta-fsl-ppc 486a72425f2f6e25efd9bfdbb9638fb58e90a85f
meta-intel a72da6350e7a77256ad597e8e8c40909590a2a40
meta-minnow 13a5f2ab84c7284647a3e067a33109c11dae0568
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
poky b813bdebb36501500e86fea5f7e15b4b15ea0902


-- 
Elizabeth Flanagan
Yocto Project
Build and Release

