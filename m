Return-Path: <rahuljangra017@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB56CE0086B; Wed, 16 May 2018 03:31:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rahuljangra017[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60431E00791
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 03:31:43 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id h2-v6so287108qtp.7
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 03:31:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kjFKf4/iGwhfW+a/FeTo1Wh3EciueGe4b9AupLALxn4=;
	b=uPQuQ3GGd5IOXw3Vj7XI4ptTuUDLW/RJW02thbFZTpnHZyKeCFzJXLc+3TtoaiSTvy
	TTvi9S+0dMFke+9f+i3G3km8lhwXRK1pO3cd8wNx1/tFBPa/NtFVWRabEEBRWquSWF3v
	wzLtDb1gcFsZzGqhnm0Z49O1zD9C4HmRFbTSkr2JQ0Vd9PMUEhvVwR/vl0djaWf/gRbQ
	xKJwXnSLVu6KGd1T8wl/F+ZxxOb1RAdX+crkTByRG3lRoSuRaxfAWvd63TRqORxG4itv
	J5ADMOBgBH98WYoVGEvvJjXsTV70vquWgyyPvspoJg03H4tOwdKgYMXOqlJBN8hwXEAV
	kxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kjFKf4/iGwhfW+a/FeTo1Wh3EciueGe4b9AupLALxn4=;
	b=hZARi3h805kp+w0EB2tseq+KEvl1wHDbmY1jXtXanbODHPjzxRCzBQszcKtdudUqVA
	IekMTdPGykO22n8cTD+9S49oGTSXfwKn4rE/s4JEtLTWEVR0Sw8VnUuhySmevzIYfhSi
	0vFUpEnUryW7AKjdB3yVY063sNhMgL+B2Yw/DqDPCzYwC6saZoQYMaYFiRqRM3YBGYzz
	ytl7cvM2SUFe+kPZMe/GIwlw6BRYhXHBsjBxjXE/5ylA5VlKbOXe/a+sDqfzFC/oDfji
	2y5hw3rQyo7Mq3o9GQSfMEMXOmX4Xrg6BVWEMRpGrhBoLmInIXf5TVHJPY7NWHycHMZY
	/FAw==
X-Gm-Message-State: ALKqPwcFaDpBFJ1fO/hEdq/GH+doMvuZNfjjzBiIwK4IgwGxgFqU3E+K
	cBvMcXNWMbSy1Ev02ZJCjerYOUNn0x107mfrIRE=
X-Google-Smtp-Source: AB8JxZoNXhi8vNlSaJEDmnirwpLEhQQ8gUwz6s2hg0C1jnoVHAKiKRRKAIInj2PAcEnmrxlorFeMcT6bnrHvYt/Ay0s=
X-Received: by 2002:ac8:328b:: with SMTP id
	z11-v6mr258052qta.287.1526466703390; 
	Wed, 16 May 2018 03:31:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.229.132 with HTTP; Wed, 16 May 2018 03:31:43 -0700 (PDT)
From: Rahul jangra <rahuljangra017@gmail.com>
Date: Wed, 16 May 2018 16:01:43 +0530
Message-ID: <CAGUdgLYvHa1DMx4qZ5D1M+x7YSymjYJ9_htyjf=bXKuV50V4hA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: apt-get error
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
X-List-Received-Date: Wed, 16 May 2018 10:31:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hi
i am facing the so many issues to creating .deb base yocto raspberry pi
image now i am getting this error.
someone can help me how to resolve this error.

ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Unable to install
packages. Command
'/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-f
ull-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-get install
--force-yes --allow-unauthenticated mender psplash-raspberrypi shadow
run-postinsts hello-mender packagegroup-core-boot kernel-devicetree
packagegroup-core-ssh-openssh apt dpkg base-passwd kernel-image-4.14.37


Best Regards
rahul

