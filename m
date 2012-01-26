Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B416E0059B
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 20:51:42 -0800 (PST)
Received: by bkat8 with SMTP id t8so197176bka.35
	for <yocto@yoctoproject.org>; Wed, 25 Jan 2012 20:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yDA77PHNEHxtAX2XJ+vERvLgWSdD3HhuORBwnqvVcEI=;
	b=YykIjsKH0PM49oxopinudD+WWqz2SnMW1r3TN4x1ZX8Z4lIpQ8H1dEFx5E61dzL95D
	3r/ohgrnXzu6l3AlZQCPABBwEyWEGU0cNvTQfKJIjWMjwRwvcGWQuy747H7Rfo0+OQEg
	fdAjVmAaBk/67PB+FpcJKb4/tpxYaTq1xna4c=
MIME-Version: 1.0
Received: by 10.204.154.211 with SMTP id p19mr229549bkw.130.1327553501742;
	Wed, 25 Jan 2012 20:51:41 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Wed, 25 Jan 2012 20:51:41 -0800 (PST)
Date: Wed, 25 Jan 2012 23:51:41 -0500
Message-ID: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 04:51:43 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I set my conf up to build .ipk packages but then I noticed that I
don't have opkg!  Working with Beagleboard and running core-image-base
from master branch.

All of my searches turned up info about he ADT.

Regards,

Brian

