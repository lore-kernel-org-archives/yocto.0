Return-Path: <sona.sarmadi@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BCDCE00851; Fri, 22 Aug 2014 09:02:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 431C1E0087E
	for <yocto@yoctoproject.org>; Fri, 22 Aug 2014 09:02:38 -0700 (PDT)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0158.001; Fri, 22 Aug 2014 18:02:35 +0200
From: Sona Sarmadi <sona.sarmadi@enea.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto]  kernel patches
Thread-Index: AQHPvgeQc9FlkIZsuU+NqaS1S+70x5vcmDvQ
Date: Fri, 22 Aug 2014 16:02:35 +0000
Message-ID: <3230301C09DEF9499B442BBE162C5E48256DBE09@SESTOEX04.enea.se>
References: <3230301C09DEF9499B442BBE162C5E48256DB954@SESTOEX04.enea.se>
	<53F73C54.60803@windriver.com>
In-Reply-To: <53F73C54.60803@windriver.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.6]
MIME-Version: 1.0
Subject: Re: kernel patches
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
X-List-Received-Date: Fri, 22 Aug 2014 16:02:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Bruce,
Thanks for quick response. See inline my comments.

Have a nice weekend
/Sona

>> Please let me know if this is the correct way. And also let me know if I=
 upstream this kernel patch to yocto, will yocto accept it (if the patch lo=
oks correct > of course). Please let me know if you prefer to apply securit=
y patches to kernels in some different way.

> If this is for your own local builds, a layer with a bbappend and the pat=
ches is a better idea.
Sona: No this is not local, I wanted to backport a security patch from 3.15=
 to lLinux Yoctp 3.14 and upstreamed to Yocto.

> For the main linux-yocto recipes, everything is maintained in the git rep=
ositories, not patched at build time, so changes go to the linux-yocto mail=
ing list, and I merge them from there.

> On this particular topic, I already track all the -stable updates for our=
 linux-yocto kernels, and CVEs are picked up by -stable. So there's a proce=
ss in place to get security related fixes into the linux-yocto trees.
Sona: very good :)

> I'm a few releases behind at the moment, due to a 2 week vacation, but 3.=
4, 3.10 and 3.14 will all be updated shortly.
Sona: So if a security patch is only fixed in later versions, you don't wan=
t to backport the fix to older yocto versions (e.g.3.10, 3.14) even if the =
bug is present in these versions. You rather prefer to inherit these from k=
.org.=20
  =20

> If you do notice a CVE that isn't part of the k.org -stable updates, that=
 is or more interest, and we should nominate it for -stable upstream and ha=
ve it > flow to all kernels via that process.

Sona: I see, this would be a better approach. =20

> Bruce


