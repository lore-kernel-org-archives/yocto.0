Return-Path: <tim+yoctoproject.org@coote.org>
Received: from mercury.coote.org (mail.coote.org [46.65.100.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 594E2E00770
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 11:29:31 -0800 (PST)
Received: by mercury.coote.org (Postfix, from userid 500)
	id CAEC5438F; Sun,  9 Dec 2012 19:29:29 +0000 (GMT)
Received: from [127.0.0.1] (fw.coote.org [172.17.1.1])
	by mercury.coote.org (Postfix) with ESMTP id 491804229
	for <yocto@yoctoproject.org>; Sun,  9 Dec 2012 19:29:29 +0000 (GMT)
From: Tim Coote <tim+yoctoproject.org@coote.org>
Message-Id: <0A6B46B9-C866-4BE9-BBD3-936F67C9CFF6@coote.org>
Date: Sun, 9 Dec 2012 19:29:29 +0000
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
X-Spambayes-Classification: ham; 0.00
Subject: cannot find the pre-built kernel image for qemu for 1.3
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
X-List-Received-Date: Sun, 09 Dec 2012 19:29:31 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hullo
I'm sure that this is an obvious mistake on my part, but I cannot spot =
what I'm doing wrong.  I'm pulling together an initial arm instance =
under qemu, following the instructions here: http://bit.ly/UObwg0. I'm =
using fedora, but I don't think that's relevant.

For 1.3, I cannot find the pre-built kernel images. I'd expect there to =
be a .bin file in here: http://bit.ly/UObPHz In the same way that the =
1.2 kernel's in here: http://bit.ly/UObTXV

Have I missed something? is it somewhere else?

tia

Tim=

