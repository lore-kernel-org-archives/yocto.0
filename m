Return-Path: <raj.khem@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30B06E01351
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 23:21:39 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so2201565ggc.35
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2012 23:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=YlZUqn9+bkIPZVukZN4WqOyEmGXSxKCu7b/G8CqqV0U=;
	b=rUXhu2moEj5IKy+7OC/o6OWQgSazAcO3z4y2/h8GKRv0Tw1/Og0sJ+QJupAXe8tpMg
	1x5BTdg2UREOQfKSJoh/6Z/qq+fQv4TNCXNhtFUC4p22yhiN7pobo3CSOUDtyd9oGOe1
	5K26zr0lawMnZAkYbDYeHF58Wt7hC0+PFh5TlhqPgnHIEvM/9Vk3yN9plB65Klb/6I15
	DRcdZHW8cjYIm7RzL1wQgaFt03Fr1HdqBAcbI8mEPVTCoVOu8/tRLMsfDbIO3KrSt9Df
	1iEUtUeTMxHp4lWe6QEG+/cllWu2yUZn7Zfgbz7hLT4dKHII7VQI3OLQMQMaRmirqCDS
	/Pcw==
Received: by 10.50.94.228 with SMTP id df4mr1508787igb.34.1343888498402;
	Wed, 01 Aug 2012 23:21:38 -0700 (PDT)
Received: from [192.168.1.67] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id q1sm10740995igj.15.2012.08.01.23.21.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Aug 2012 23:21:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAEsOVNeU6pz6Pkciymxu+2-JgcEuj=zc7-D+5xCXsjpg7fRuXw@mail.gmail.com>
Date: Wed, 1 Aug 2012 23:21:34 -0700
Message-Id: <6913CD3A-3504-405D-9315-8C8D8D47502C@gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
	<7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
	<CAEsOVNeU6pz6Pkciymxu+2-JgcEuj=zc7-D+5xCXsjpg7fRuXw@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
X-Mailer: Apple Mail (2.1485)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
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
X-List-Received-Date: Thu, 02 Aug 2012 06:21:39 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


On Aug 1, 2012, at 8:50 PM, McClintock Matthew-B29882 =
<B29882@freescale.com> wrote:

> Are you running with prelinking? You might try disabling that. It's in
> local.conf under IMAGE_CLASSES I believe.
>=20

FWIW I have seen issues with prelink + ppc64 that said ppc32 + prelink =
has worked well for me


