Return-Path: <errordeveloper@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03C76E00306
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:01:51 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vbbez10 with SMTP id ez10so3501079vbb.35
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2011 08:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=5t2GMr56lR1Jux0E0a4A2tHqyjBXOBW+U3yzkLTu9IY=;
	b=gf743vK1p6mVhmoYg2FAVWZlPwbJKeWhlOG5Ltub9SLjyugJrWktTiZd1r8QDvn5cM
	R0DCGB2AbR5+8gY8aw1QRM3s0Kivw7cQJI4ATtSMQq3rE3ehjIwvUA/ojuiwdmTBCjz/
	9uqSPISziWu2zujZi+Uf4RtM8U4hC6UHC+85k=
MIME-Version: 1.0
Received: by 10.52.37.165 with SMTP id z5mr15756795vdj.117.1321891311336; Mon,
	21 Nov 2011 08:01:51 -0800 (PST)
Received: by 10.220.188.73 with HTTP; Mon, 21 Nov 2011 08:01:51 -0800 (PST)
Date: Mon, 21 Nov 2011 16:01:51 +0000
Message-ID: <CAPhDKbHwqW-EA=Dq_32wd1ywE5JmUn9uBqbsurqmeY0RAPce3g@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto@yoctoproject.org
Subject: Linux kernel recipe template
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
X-List-Received-Date: Mon, 21 Nov 2011 16:01:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello List,

I have had an attempt to build a kernel from the git sources, trying
to checkout the v3.1.1 tag, but it appeared to be more difficult then
I thought. Most of the problem I have had with the yocto-specific
metadata and some of the extra tasks that it adds. What is the
cleanest and compatible way to build a kernel from git or any standard
tree (i.e. 2.6.x or later).

I can see that the yocto way of building kernel is to provide a commit
ID for each specific architecture and there also these metadata
branches, which don't quite understand yet. I managed to somehow slip
through, but with manual creation of stamp files and manual 'make all
O=../<build_dir>' stage. I don't seem to find any detailed guide,
would be great to just see a template in the tree which do just a
basic build from a given SRC_URI. It would be also nice to have a line
in this template which would demonstrate how to apply a custom base
kernel config too.

Regards,
-- 
Ilya

