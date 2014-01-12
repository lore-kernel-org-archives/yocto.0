Return-Path: <sgh@sgh.dk>
Received: from mx-aarh-2.stofanet.dk (mx-aarh-2.stofanet.dk [212.10.10.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12201E00832
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 06:08:14 -0800 (PST)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-2.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1W2Li0-0003LP-2n
	for yocto@yoctoproject.org; Sun, 12 Jan 2014 15:08:12 +0100
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id 130AC7ED3D
	for <yocto@yoctoproject.org>; Sun, 12 Jan 2014 15:08:12 +0100 (CET)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Sun, 12 Jan 2014 15:08:10 +0100
Message-ID: <4558388.sNptYpytgT@koontz>
User-Agent: KMail/4.12 (Linux/3.13.0-2-generic; KDE/4.12.0; i686; ; )
In-Reply-To: <20140112133857.GE16995@jama>
References: <2423322.zFb14inlks@koontz> <20140112133857.GE16995@jama>
MIME-Version: 1.0
Subject: Re: Constant linux-yocto rebuild
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
X-List-Received-Date: Sun, 12 Jan 2014 14:08:16 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"


Wow - that was a quick response.

Is it the two by Mike Crowe ?

And do they get into dora at some point?

S=F8ndag den 12. januar 2014 14:38:57 skrev Martin Jansa:
> On Sun, Jan 12, 2014 at 02:19:51PM +0100, S=F8ren Holm wrote:
> > Hi
> >=20
> > I'm having a weird issue with dora. After having rebuild everything=
 from
> > scratch I usually rebuild some of my own applications and rebuild t=
he
> > image
> > recipe to create the image. This all works great. But then after so=
me
> > number of rebuild linux-yoc suddenly gets rebuild every time. Even =
two
> > consequtive builds of my image recipe give me two linux-yocto rebui=
ld.
> >=20
> > Any hint on what might happen or what I can do to debug it?
>=20
> You need patch 3 and 4 from
> http://lists.openembedded.org/pipermail/openembedded-core/2014-Januar=
y/08807
> 4.html

--=20
S=F8ren Holm

