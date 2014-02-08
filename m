Return-Path: <raj.khem@gmail.com>
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0AC6E0050E
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2014 08:08:51 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id hl1so3920302igb.1
	for <yocto@yoctoproject.org>; Sat, 08 Feb 2014 08:08:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=Ezh70apN/sam1T+6wvb8kvd/T8xpxhj4K1ecGWxVb6w=;
	b=hdzmZa/IVcrKdU0uSSPkiu+gUsSUBBYvkaQIX82G7UMw774lokND/mQRs8sJkYcQcL
	OT0yZbDLUTG/dPw/TRAVTtyZ9oEwbFlriY1TPmQw84yk5VfjigjOTOiRryjtUs9hzDaq
	yDO9Xy3Y9aN9p547W+FoxQ4nlNKwIOD3HOohwamQgcOPAJ+f6LkuwphYNQEvmRmVxhYB
	i8WgBI3VqluD9UsQKYwhWmy/Qjdoy1+yP2djYoZm2ZkVLZlth+JjD18XqJd7JRK/uG8G
	QOqq47Mm+ybTu9YsFUWa1WuATLuiuATivmQa5n+pEK9xAL50w3mluL6hfeZMbuJ1AUeL
	8cnw==
X-Received: by 10.50.38.171 with SMTP id h11mr5847421igk.20.1391875731248;
	Sat, 08 Feb 2014 08:08:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.8.137 with HTTP; Sat, 8 Feb 2014 08:08:21 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 8 Feb 2014 08:08:21 -0800
Message-ID: <CAMKF1sptnVxCrjm7PAOCtRWzmSsxPv4nc0nUO82jMPQ+BCz9Hg@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [RFT] eglibc 2.19
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
X-List-Received-Date: Sat, 08 Feb 2014 16:08:52 -0000
Content-Type: text/plain; charset=UTF-8

Hi all

I have staged a branch with eglibc 2.19 upgraded recipes here

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/eglibc-2.19

These are not final recipes there may be tweaks needed like adjusting SRC_URI
later on.

please help testing it out in your environments and machines
I would be happy to help out with issues we find

Thank you

-Khem

