Return-Path: <jholzmayr@the-exact-steps.net>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3AB6E00AA2
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 03:59:10 -0700 (PDT)
Received: from oxbsltgw54.schlund.de (oxbsltgw54.schlund.de [172.19.249.201])
	by mrelayeu.kundenserver.de (node=mreue103) with ESMTP (Nemesis)
	id 0Lg6Fn-1WyVWB3jXX-00pcaz; Mon, 10 Mar 2014 11:59:08 +0100
Date: Mon, 10 Mar 2014 11:59:08 +0100 (CET)
From: Josef Holzmayr <jholzmayr@the-exact-steps.net>
To: yocto@yoctoproject.org
Message-ID: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.4.0-Rev29
X-Provags-ID: V02:K0:g23fUuX35q9Xszwi95RelMbkfUiMovSlf33mE9aVf7L
	xurI+yeo4n8s4hB9q0atZaLNLt+txpgyLWhkc9ME9K8c6DLV5E
	empXBjMBq3/R7qSwkHx45X5DF627c6B9iZIj0uVXH0Yb7sS/az
	xK5FKX5C6w/OUwfX+QBgtsolb5OXDd4fYisTpxUccTAFiB3byB
	s/H0uP6z+PrHYhL1qQWsDhS5D+jP0f9Igjw8uuabsZ9G7d0OBe
	6iYq3AK7voamkEZRbyDRMdgsHoC2hJkU3n1pEnxWNmeWT2YUtu
	7PbZ257mzWMaj7vay+pXVUYF0x/N3zqySbYWLFaf5d3D7+9F3c
	zj7r6FR4AxfqlTMFIgzmNTP7W8IHpSGWa8YcL6c5oXc8vxmEwX
	7japf73NcIpseXZA+Fpxu7o8dt4NkaUdCU=
Subject: [RFC] Blubber, a tool to set up yocto/poky projects easily
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Josef Holzmayr <jholzmayr@the-exact-steps.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Mar 2014 10:59:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Howdy!

After looking more and more into yocto, one of the main issues for me is the
process to set up a project properly, including all layers and conf options.
Especially those which would be needed to set exactly the same way again and
again every time somebody needs to reproduce a build.

So I've come up with an idea: a small tool that can handle these things for me.
And here it is for your enjoyment/use/abuse/comments:

https://github.com/LetoThe2nd/blubber

Short excerpt from the README:

But be warned first. Blubber is still in pre-pre-pre-alpha stage (more like a
proof of concept), and has the following defects/bugs/non-features:
- Horribly bad python code (Yes, its really that bad. Blame me, its my first
attempt to use that language)
- No error checking whatsoever
- Largely incomplete feature set
- Did I already mention the utterly bad code?
- Only supports git sources so far.

Despite that, it can already do some magic:
- Getting poky and layers from git, and checking out branches/tags/commits if
needed
- Accordingly setting up build/conf/bblayers.conf
- Setting up build/conf/local.conf with a set of predefined options
- Running arbitrary commands with proper shell setup (source-ed
poky/oe-init-build-env) for the configured project.

If anybody has feedback, just scream loudly. Or if anybody knows of a better
solution making it all obsolete, please also scream. Thanks!

Leto

