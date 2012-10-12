Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43C65E0032E
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 08:42:38 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id p27so209144qat.14
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 08:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:mime-version:content-type;
	bh=Yghw4c4t0vRIWVfnVnGh7WU5ti6BaQtx5IqNdznP6BY=;
	b=BK8N3lUos1JU7WP8tLm8WT1S77s79pnDYOVsRlyH/oWM8vkgB0OeMNjT9K5ZYtBEFN
	7eQ9bothuV/DxoBQw1RkrBamkOBFIGDX2PlkMQbvpze5rIu+63DJObHMoQCJHfjrgopD
	LsUmC7r4nlCKG6rZ38GsbOClQd2Iqrmth7NP2e6RxgDYy957VZtk+ep52Iw+SEv1Wte6
	X5ZxYeSq7RhRAURJ7Yg3AIerQ6sIeKg4GxjxsktcDD9sjCK4N6I1KfvA7wGosagvhKOG
	shMoM5LKdN1LEcC47nt6fiOhQfkZMaJba43i0WTMOpMXh59mFGlpCMLEX0V1XNy2rX/x
	aDdg==
Received: by 10.229.196.101 with SMTP id ef37mr2128308qcb.50.1350056555399;
	Fri, 12 Oct 2012 08:42:35 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id t14sm6729207qef.3.2012.10.12.08.42.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 12 Oct 2012 08:42:33 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Fri, 12 Oct 2012 11:42:56 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Fri, 12 Oct 2012 11:42:56 -0400
Message-ID: <87hapzvgqn.fsf@sonatest.com>
MIME-Version: 1.0
Subject: Revision file in images
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
X-List-Received-Date: Fri, 12 Oct 2012 15:42:38 -0000
Content-Type: text/plain

Hi,

Is a revision file populated in the images produced by the build process?
Something listing the revisions of the different layers used. Just like
the "OE Build Configuration" summary.

I'd like to easily identify what a target system currently runs.

Regards,

Marc

