Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-1.stofanet.dk (mx-aarh-1.stofanet.dk [212.10.10.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53937E00832
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 05:19:57 -0800 (PST)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-1.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1W2KxF-0003Oa-10
	for yocto@yoctoproject.org; Sun, 12 Jan 2014 14:19:53 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 769957ED3D
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 14:19:52 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Sun, 12 Jan 2014 14:19:51 +0100
Message-ID: <2423322.zFb14inlks@koontz>
User-Agent: KMail/4.12 (Linux/3.13.0-2-generic; KDE/4.12.0; i686; ; )
MIME-Version: 1.0
Subject: Constant linux-yocto rebuild
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
X-List-Received-Date: Sun, 12 Jan 2014 13:19:58 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi

I'm having a weird issue with dora. After having rebuild everything fro=
m=20
scratch I usually rebuild some of my own applications and rebuild the i=
mage=20
recipe to create the image. This all works great. But then after some n=
umber=20
of rebuild linux-yoc suddenly gets rebuild every time. Even two consequ=
tive=20
builds of my image recipe give me two linux-yocto rebuild.

Any hint on what might happen or what I can do to debug it?

--=20
S=F8ren Holm

