Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB839E0097F; Tue, 21 Jul 2015 09:08:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Tue, 21 Jul 2015 09:08:45 PDT
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6740BE00837
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 09:08:45 -0700 (PDT)
Received: from msxbvt03.planar.net (barbvt01.planar.com [199.244.172.50])
	(Using TLS) by us-smtp-1.mimecast.com with ESMTP id
	us-mta-21-uFkKN-gHR6KRVNtN9Tm0FQ-2; Tue, 21 Jul 2015 12:02:02 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Tue, 21 Jul 2015 09:01:40 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Gary Thomas <gary@mlbassoc.com>, Yocto Project <yocto@yoctoproject.org>
Date: Tue, 21 Jul 2015 09:01:38 -0700
Thread-Topic: [yocto] Read-only file system with persistent storage
Thread-Index: AdC/u883jhXIszpqQlOJFHLyqvN2CQEEVR6w
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FE9BBF806@MSXBEBVT12.planar.net>
References: <55A79757.8010704@mlbassoc.com>
In-Reply-To: <55A79757.8010704@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: uFkKN-gHR6KRVNtN9Tm0FQ-2
Subject: Re: Read-only file system with persistent storage
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
X-List-Received-Date: Tue, 21 Jul 2015 16:08:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

If you are using systemd you can simply create a separate writeable partiti=
on and then use the volatile_binds.bb recipe to map files or directories fr=
om the read only rootfs to the writable partition via bind mounts.=20
If you are not using systemd you can do the same thing with sysVinit you'll=
 just have to write your own recipe equivalent to volatile_binds.bb

This method works and the way volatile_binds is written it takes the defaul=
t settings from the read only rootfs which is nice.=20

The only problem I've found is if you have a bind mount to a file you have =
to be careful not to delete the file or it will break the mount link.You'd =
be surprised how often you want to delete the file when you go to update it=
. Therefore I tend to use directories with volatile_binds.bb instead of ind=
ividual files.=20

Matt S.=20

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Thursday, July 16, 2015 4:37 AM
> To: Yocto Project
> Subject: [yocto] Read-only file system with persistent storage
>=20
> I'd like to set up a system with a read-only root file system along with =
some
> persistent read-write storage.  What are the [best] options in Poky/Yocto=
 for
> this?  Is there any support for some type of overlay file system?
>=20
> Thanks for any ideas/pointers
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


