Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F51E0051D
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 14:51:35 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id m1so1160536ves.30
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 14:51:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=jfDE4/XjMDOTMFjZ0JRTDPpu6aP+fF94U4raNpUmkVQ=;
	b=djktv/7b3wgJ3YiDLvVLS67kp2lqV/jqPF1AwkCeMq2mV5PgQKMBPZDJUrG6PjXp9E
	QlCbLOgm5VLzotyY1/YLZ0JK0y6rJQNogFdq1O3fwQvMBGZdIuRYUCIBi3rDklks6gHO
	LkyMViU+1Z0n6aPP4LrXR83xvYGY6k6w0U8d+EixCNB2KxVAvF7+zIv2yCQ1nhY1Tchp
	91zVICz1+nCcPblgpnFOdu0sF/XmMqvRsTkp0ZcpSUuBcsSc2in8ALwKxXPOzNEWsyOU
	wJNOMgxgMevCc4cDLAym7os8TrbDx0YHfUNs64Nx/uSnVwoLPBaPCa3ik1OlIcZ0zCrY
	ZRig==
MIME-Version: 1.0
X-Received: by 10.52.240.238 with SMTP id wd14mr809095vdc.81.1368222695105;
	Fri, 10 May 2013 14:51:35 -0700 (PDT)
Received: by 10.52.163.79 with HTTP; Fri, 10 May 2013 14:51:34 -0700 (PDT)
Date: Fri, 10 May 2013 14:51:34 -0700
Message-ID: <CAPhnLPD+1_nENOdF+tqf3W+c6Fq-2_VAp1Tq3kop1KtDaNCkrQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlt6QisasQWrEND6uDDAtCUvZ9J/BVRxILJa99T/7tPmVuonzaAjgRLQMM+3TUXELB/smpw
Cc: SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>
Subject: New 1.3.2 Release Candidate available
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
X-List-Received-Date: Fri, 10 May 2013 21:51:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

We have fixed the final issues with the 1.3.2 rc build. The build is
available at:

http://autobuilder.yoctoproject.org/pub/nightly/20130509-1

meta-fsl-arm 	a0e486a76af5819ee76ac34e966feb72bd3c48bd 	danny
meta-fsl-ppc 	084331c6f72dfe8be2f4981c802c43ae44d3b812 	danny
meta-intel 	d44f005338012cc7111190122b2ab08a29c0e0e7 	danny
meta-qt3 	c86fb1727ae09526c442ec29fffde3f010aa70eb 	danny
poky 	00ab7c884b614d23a4ce6c17f07c612ecc9c7319 	danny

Please begin QA on this as soon as possible.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

