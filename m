Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4691E00576; Tue, 22 Jul 2014 19:51:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FDBE00558
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 19:50:57 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id hq11so1002091vcb.24
	for <yocto@yoctoproject.org>; Tue, 22 Jul 2014 19:50:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=OwGEY9f2rXCaWzDhUHy1P++YatiA819EVyS9yxoi6LQ=;
	b=PP44ZtIL0+1jbn7r6+XxM8kJqQIGXZ9SFnrsbYlJeQ8McIwHGwvP3/GhV3WItg1qj6
	a8qOeZjBbb+FMW+f2UIJN2ZGy+A2IdrHiUsZqywcbDGmrn9R8vQS/LByAP6ptdgiqvaG
	M7v9t2jwFk4U/ELrI/WE8JA14s4qXpXddem3XwIWJRfG0BSAtxPm6QhDz+yvkBtj8gVI
	Heu3Ujh8Icw4VJfaZ2T+WDVSS116r4zBNt2JSdnMHGNf14Y7vzCO2X/2QCstq6xGDlly
	JY1G+hF1xw/OsQvsxSRvJLX2NjfYFRKPkuQ9/axCxz+tvvNYJ90/phAmkkvN5Zx+SeP8
	FSdw==
X-Gm-Message-State: ALoCoQlEc7W8NP4p46oCjB714meg4HT06fuU3U+5zqXvOJiW7y2RrB/APfBmsNSzUQyOHfakz70+
MIME-Version: 1.0
X-Received: by 10.52.35.81 with SMTP id f17mr17866852vdj.13.1406083856563;
	Tue, 22 Jul 2014 19:50:56 -0700 (PDT)
Received: by 10.52.135.50 with HTTP; Tue, 22 Jul 2014 19:50:56 -0700 (PDT)
Date: Wed, 23 Jul 2014 03:50:56 +0100
Message-ID: <CAPhnLPBu+1C11u9ar5JxRuQj_LBT+mXP-B7hywCHCnmmT+V17Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [ANNOUNCEMENT] Yocto Project 1.7 Milestone 1 now available
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
X-List-Received-Date: Wed, 23 Jul 2014 02:51:00 -0000
Content-Type: text/plain; charset=UTF-8

The first milestone for the upcoming 1.7 release is now available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-1.7_M1

poky a5531a2b8983318b99c119a87b78a92cf84160b8
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm 31a0928cbbe707548712ec3612cdc727a3775501
meta-fsl-ppc b920491d60752ffc38098266f260dacaa2c35e7a
meta-intel 05dd98cf5c117a8bdd566d36d20a84fff20e8cc3
meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

