Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3B1D2E014AD
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 19:21:10 -0800 (PST)
Received: by mail-qc0-f170.google.com with SMTP id d42so1343991qca.15
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2013 19:21:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=POcfEMIGXi7L2GGmD0eLtgxC929ft1nXf8VxGR3eOVY=;
	b=HMFeluUyNxiW5ZhANyr4NxtMkY+htzeR9DV9FoozuTShrZRbQ+xmw6fnn7b6zYg1Ge
	PL4WBbUqFGobtrj9BE9hCCFTSuRbN59yNUKTmG4thqBEWSWn5fO1sLxvPN/nENfGjOdL
	BEhW9rWIgf852iNHDgeN5RipAcg3g4yFtEvmDCAkLXDvil4wqFdY9JnQsLTfNNJabFSh
	W0DSwCLsHyTGNQk+C2SLHGjeKn093d0+Z3rl7RhJbPjT2K4YA9kWK5mOZuSolAPIG49g
	AQ9tWGt7X8RN0tTytufxMSnbAwLA/8Fv6ytkenalWaWJhNFz7RT8jDyHZUo2ezpnB3f4
	FuRA==
MIME-Version: 1.0
X-Received: by 10.49.24.135 with SMTP id u7mr46178264qef.4.1362540069159; Tue,
	05 Mar 2013 19:21:09 -0800 (PST)
Received: by 10.49.95.166 with HTTP; Tue, 5 Mar 2013 19:21:09 -0800 (PST)
Date: Tue, 5 Mar 2013 19:21:09 -0800
Message-ID: <CAPhnLPDbt1AsnKJ2XJd9bQSG2aBWZk4A0-cVn1w-_N5QmerQQw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmT7N8vuq98F+NzHXoQb6O+icjdDR0A73+EaXy9s1hQ1JTZf6M0y4s+CTqaH3xrsMheGC+E
Subject: Weekly build availability
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
X-List-Received-Date: Wed, 06 Mar 2013 03:21:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

This weeks build is partially available. I should be complete in a few
hours at http://autobuilder.yoctoproject.org/pub/nightly/20130305-2

So far, the only failures I'm seeing are sanity tests (boot issue in
qemuarm core-image-minimal and smart_query failure in qemumips)

Please begin testing.

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

