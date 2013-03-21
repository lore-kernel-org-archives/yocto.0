Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46973E0136C
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 19:22:46 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id fc21so1567252vbb.21
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 19:22:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=u6GA5hor2i9w+V9ZKvdCJZdoxTfxG0a05ggNh4UM87o=;
	b=bO1ICLV//XuzPAnsCyVa18c3k93By9fWT3P8i9Ln9VU73nJx36ND/fijenPBXkPQys
	kAX3Uv/HV+RzOMTyOyvi/px1aoxe0fkJeo719Lx8amHiQMDTT/2ZtuXZcw9B63x4yJ0+
	kw6TllhcntLonjkGzNMtQvUbVjg1RfTjx/Hq9xcAC1SVJwKv1XB5VTsBiunU57g78yWX
	qMZKY+8bFqNNzhoUplbd50azQHe8W/cu0FKRKyLrZAqAGw7fz9k37d58HeDbZ0Manvom
	L/s1nVhRCKsNFUgw+bq4baA2IyARcUeNrUujNX1s64K5F8tWaWIBw5ZkJM05NIjdKQ/Z
	P1Ew==
MIME-Version: 1.0
X-Received: by 10.52.230.167 with SMTP id sz7mr9711250vdc.81.1363832565352;
	Wed, 20 Mar 2013 19:22:45 -0700 (PDT)
Received: by 10.52.174.165 with HTTP; Wed, 20 Mar 2013 19:22:45 -0700 (PDT)
Date: Wed, 20 Mar 2013 19:22:45 -0700
Message-ID: <CAPhnLPD9jawcDwQnv0Lwzt8E4YrcKehzxF0GqCNk4NAv6kh4ig@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQltsNit4i6hg2LC6b6F6lXb2XGg2jqCnafXAqyTlg92qm/paeTH6SfJUDYTQFCAgQ65xO+J
Subject: 1.4_M5.rc1 availability
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
X-List-Received-Date: Thu, 21 Mar 2013 02:22:46 -0000
Content-Type: text/plain; charset=ISO-8859-1

The new autobuilder is currently building our 1.4_M5.rc1 release, from
master HEAD, with a cleaned SSTATE_DIR. We are doing this from a clean
state in order to get both performance data for a scratch build. Also
it's been a very long time since we've actually cleaned out shared
state (3 months by my count) and I want to see if there is any issue
doing so.

We should have a 1.4_M5.rc1 build later today, but, as we've not built
from a clean sstate with the new code base before, I can't give a
better estimate than "in a few hours". If I had to guess, I'd say
it'll take about 8 hours. But that is nothing but an off the cuff
guess based on performance that we've been seeing with sstate builds
(around an hour to two hour reduction in time to build). So, no, I'm
not taking bets.

There is one identified defect in the new AB code, specifically in how
it gathers tarball git hash data for the git archives of the layers. I
will have a fix for that tonight, in the meantime, please utilize the
below hashes.

The release will be available at:
http://autobuilder.yoctoproject.org/pub/nightly/20130321-2

poky: 9ffee9add2d0380f4025e7a678a166f25a7d659e
eclipse-poky: 	5e20d3c32072ddd91dceb8b2b793ef13f25b915e
meta-intel: 7a5e19e0c7d5967ef7b003ab775b7210c0ee16d7
meta-fsl-arm: 	77af633422b96469f0fd2fc3b0ef889c0130cd52
meta-fsl-ppc: 	9f35cd43477a0fd76deca0e2f37d1dbf46f6c8f1
meta-openembedded: 98471be6e58451016200cfd10e64e8ae6266c801
bitbake: 58847fabd389e5b8d02d5a9c6827aabedb30312f

-b

--
Elizabeth Flanagan
Yocto Project
Build and Release

