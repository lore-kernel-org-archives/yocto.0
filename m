Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
	[143.166.148.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98247E006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 13:32:45 -0800 (PST)
X-LoopCount0: from 10.175.216.251
X-IronPort-AV: E=Sophos;i="4.93,769,1378875600"; d="scan'208";a="340666669"
From: <Michael_E_Brown@Dell.com>
To: <yocto@yoctoproject.org>
Date: Mon, 25 Nov 2013 15:32:37 -0600
Thread-Topic: Git clone over http broken on git.yoctoproject.org
Thread-Index: AQHO6iXcLE9jcOEQCk+oLwZ91g7oMg==
Message-ID: <DB6E482E89290547898851B8CC9D8110012F80E185@AUSX7MCPS302.AMER.DELL.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Git clone over http broken on git.yoctoproject.org
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
X-List-Received-Date: Mon, 25 Nov 2013 21:32:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Several repositories have broken git pulls over http on git.yoctoproject.or=
g.

Working:

$ git clone --mirror http://git.yoctoproject.org/git/yocto-kernel-tools
Initialized empty Git repository in /home/michael_e_brown/f10/sources/f/yoc=
to-kernel-tools.git/
remote: Counting objects: 1067, done.
remote: Compressing objects: 100% (462/462), done.
remote: Total 1067 (delta 711), reused 958 (delta 603)
Receiving objects: 100% (1067/1067), 273.41 KiB | 251 KiB/s, done.
Resolving deltas: 100% (711/711), done.


Broken:

$ git clone --mirror http://git.yoctoproject.org/git/linux-yocto-3.10
Initialized empty Git repository in /home/michael_e_brown/f10/sources/f/lin=
ux-yocto-3.10.git/
error: RPC failed; result=3D52, HTTP code =3D 100

All of the kernel pulls appear to be broken in the same way (3.10, 3.8, etc=
)

URLs taken directly from the cgit HTTP url listed.
--
Michael=

