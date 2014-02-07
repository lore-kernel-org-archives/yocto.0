Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1AF1E006AD
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 00:16:22 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id e9so5337389qcy.12
	for <yocto@yoctoproject.org>; Fri, 07 Feb 2014 00:16:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=MB8KHSJw9UsQ+C/4pIjOd3kRCfPYDFI8XY8CZxWuAIM=;
	b=fy2MMDR5YZ3nLAsKeFfxPqaCC3aRKG/c1ymGy2dOtMxhDzEuu149mhbbERYfYprEc3
	ayHsbDngor505a5OIGwd4M1KI/g1CVnXSMFuXf6kW27MEdUyOpShN341nBGlaf9o/Uxa
	k8FAccrfW436wnhux46wihZw8ABNj5DaBfKryKx8RNW6RXdJVnO4HKwkKQDy1qLfceSC
	hkHObX+cg5tzWzUZvKEVrMKYMkXjTByByzIR/+7RcLufmnU1bAwJSI23TIfUAuSGpFkL
	Hoah5PSz2XZE4Iqe0ziVXvjVf6FH3ltVpJqp8WpYfl3VZNPQTi87TUSk6Kh3N/mk7BHH
	o2wA==
X-Gm-Message-State: ALoCoQlqe7HEAHJaVfedcI6wU7j22O6A/gDbdyxPeKE4xuE/4uBCdK7CgPki3nCSADTDkdd0OmZK
MIME-Version: 1.0
X-Received: by 10.140.22.232 with SMTP id 95mr18248199qgn.82.1391760980927;
	Fri, 07 Feb 2014 00:16:20 -0800 (PST)
Received: by 10.140.49.239 with HTTP; Fri, 7 Feb 2014 00:16:20 -0800 (PST)
Date: Fri, 7 Feb 2014 08:16:20 +0000
Message-ID: <CAPhnLPBdU=meyvZ+OqXkMETK9SEK9gFiVRd9j8iCYC116e3_PQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: 1.6_M2 released
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
X-List-Received-Date: Fri, 07 Feb 2014 08:16:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

The next milestone release for the upcoming Yocto Project 1.6 release
is now available at:

http://downloads.yoctoproject.org/releases/yocto/milestones/1.6_M2

Thank you everyone for all your contributions.

eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler c73c6e4510c42601854f3c542ca6e14b4510380c
meta-fsl-arm 7629b77c63ad9e1ef0c928451626eaac4173d054
meta-fsl-ppc 1536064e02f15761e90f784d88f2a930784f7f3d
meta-intel d8c1d14f9e0a87a0b4357b8764a0df40cc22f789
meta-minnow 6a4f0dd875a5ec0303ab4387944dc7eb98508769
meta-qt3 4772424ab69908d4e3b9d6d4717ca889468e6acd
poky 1a9226f140f578f11696abf1a3c989fae1d4c14a

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

