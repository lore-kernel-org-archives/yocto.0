Return-Path: <prvs=10455cc49=Richard.Leitner@skidata.com>
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E71CAE0059A
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2014 04:17:09 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqAEAFSI71KsEApK/2dsb2JhbABZhBu+CoEddIInBTpRARUVFC8TJgEEGxOHb8wnF45Yg1yBFASOZJA2jl6CKg
X-IPAS-Result: AqAEAFSI71KsEApK/2dsb2JhbABZhBu+CoEddIInBTpRARUVFC8TJgEEGxOHb8wnF45Yg1yBFASOZJA2jl6CKg
From: Richard Leitner - SKIDATA <Richard.Leitner@skidata.com>
To: "Yocto Project Discussion ML (yocto@yoctoproject.org)"
	<yocto@yoctoproject.org>
Thread-Topic: SRCREV for BBLAYERS
Thread-Index: Ac8g2b040cUVCtGvRNCe2oYOUKPBUg==
Date: Mon, 3 Feb 2014 12:17:04 +0000
Message-ID: <F7680723A1CA6840825A59020FA770640102E7D7@sdexmbx1srv.skidata.net>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.111.80]
MIME-Version: 1.0
Subject: SRCREV for BBLAYERS
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
X-List-Received-Date: Mon, 03 Feb 2014 12:17:13 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
I've a question regarding the BBLAYERS variable.
Is it possible to set some kind of a SRCREV (=3D> git tag/branch/commit-id)=
 for a path listed in BBLAYERS?

I came to this question because I've two different branches in my meta laye=
r: one for development and one for 'stable' releases.
Therefore I have also two different build dirs and want to 'pin' the branch=
es/tags to the build dir (preferable via the bblayers.conf).
I think this should be possible because at the start of a build the revs ar=
e displayed like: meta-yocto =3D "[branch]:[commit-id]"
The problem is that I wasn't able to find any answers or solutions on the w=
eb so I ask you now for help.

I'd appreciate any kind of help!
Thanks!

best regards,
Richard

