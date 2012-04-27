Return-Path: <koenig@inmach.de>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 708C3E00596
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2012 03:06:28 -0700 (PDT)
Received: from farbauti.inmach.dnsalias.com (pd956e4d9.dip0.t-ipconnect.de
	[217.86.228.217])
	by mrelayeu.kundenserver.de (node=mreu4) with ESMTP (Nemesis)
	id 0MPvMs-1SIm7l24TC-004Ri8; Fri, 27 Apr 2012 12:06:27 +0200
Date: Fri, 27 Apr 2012 12:06:23 +0200
To: yocto@yoctoproject.org
MIME-Version: 1.0
From: =?iso-8859-15?Q?Johannes_K=F6nig?= <koenig@inmach.de>
Message-ID: <op.wde40xe0y8ugr7@farbauti.inmach.dnsalias.com>
User-Agent: Opera Mail/11.62 (Win32)
X-Provags-ID: V02:K0:zJ3RMcHJ9eR/gQg3d5TEenEIpS00iVsBRbcc5oplJeh
	TlDbQBbJ1cUQvbQe9x8nE9OyDOqvU7ctO6NFGQl3RMzQkdN2CC
	xOdyFG3q4iP139CvHKzzApeM5b7s8K+lquw+mk+CkAjp++o2S0
	zxITON0KEoaQlZ9Un4HGs2GN3Lw6DKwlAIR8i7bOF+lletBzSz
	guId6p5G0n+KtRhYUeTo9IUUtDMi4AKHG5AvCxW+jFcwnq6g4d
	0YPq9DEeer8Lex24QKpm/SfsLnPw0/Q3kOFMPjbWWK633XV+Ge
	uni9JXuNlaOzMErTBShnzcugGTnUKA46Zyi1z4Frecm+yGSzDi
	41CGeLPUsf3SczHMxuhOeAUJjqex7kx4kE2rVnssZyEthX0qW2
	Y1pr0Q2JqKBequgBs3/AiuLk3Ox7fnoczo=
Subject: build image with read-only rootfs
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
X-List-Received-Date: Fri, 27 Apr 2012 10:06:28 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi,

Is there a preferred way to build an image with a read-only rootfs using  
Yocto (poky-edison-6.0.1)? Are there recipes available which can be used?

I use a custom image by inheriting from image.bbclass and defining a  
couple of custom tasks.


Best Regards,
Johannes

