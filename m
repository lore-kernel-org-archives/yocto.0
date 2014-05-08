Return-Path: <thshin@telechips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B212CE009A6; Wed,  7 May 2014 20:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE,
	T_FILL_THIS_FORM_SHORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
	*  0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
	*      information
X-Greylist: delayed 602 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 May 2014 20:08:28 PDT
Received: from sfilter.telechips.com (unknown [219.240.43.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E088E0070F
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 20:08:28 -0700 (PDT)
Received: from [219.240.43.118] ([219.240.43.118]) 
	by sfilter.telechips.com ([219.240.43.111]) 
	with ESMTP id 1399517013.3988.3071769520.sfilter
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 11:43:33 +0900 (KST) 
MIME-Version: 1.0
X-MimeOLE: Produced By Microsoft Exchange V6.5
X-TERRACE-DUMMYSUBJECT: Terrace Spam system *
Date: Thu, 8 May 2014 12:04:09 +0900
Message-ID: <F4F751F96C54D346898D4C77E196E3DB0C5DC54E@telegweb.telechips.com>
In-Reply-To: <mailman.9.1399316401.24008.yocto@yoctoproject.org>
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Thread-Topic: DL_DIR problems
thread-index: Ac9olSi0zlvOY49ES4aaVupxoytJwwB0ZMXQ
References: <mailman.9.1399316401.24008.yocto@yoctoproject.org>
From: =?ks_c_5601-1987?B?vcXFw8f2IChUYWVrIEh5dW4gU2hpbik=?=
	<thshin@telechips.com>
To: <yocto@yoctoproject.org>
X-TERRACE-SPAMMARK: NO       (SR:73.59)                     
	(by Terrace)                                                  
X-TERRACE-SCANRST: IPR=0 MSGR=22                                            
Subject: Re: DL_DIR problems
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
X-List-Received-Date: Thu, 08 May 2014 03:08:34 -0000
Content-class: urn:content-classes:message
Content-Type: text/plain;
	charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

If the problems is permission denied, you can try to that all developers =
change downloaded file's permission
(chmod -R g+rw DL_DIR or chmod -R g+r DL_DIR)

If break build, sometimes the downloaded file's permissions to be 0600.



Wily Taekhyun Shin


=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
Shin, Taekhyun
Associate Research Engineer
R&D Center
Telechips Inc.
Tel : + 82-2-3443-6792(Ext.390)
Fax : + 82-2-6424-7793=20
Mobile : + 82-10-4376-5530
E-mail : thshin@telechips.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
This mail and attachments contain confidential information of Telechips =
Inc. which has its own authority.
It is not allowed to disclose,transmit or use this confidential =
information to the third parties without the=20
prior written consent of Telechips Inc. by any form or means.=20
If you are not the intended recipient, please notify the sender =
immediately and do not disclose the=20
contents and destroy all copies of the original message.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D

-----Original Message-----
From: yocto-bounces@yoctoproject.org =
[mailto:yocto-bounces@yoctoproject.org] On Behalf Of =
yocto-request@yoctoproject.org
Sent: Tuesday, May 06, 2014 4:00 AM
To: yocto@yoctoproject.org
Subject: yocto Digest, Vol 44, Issue 18

Send yocto mailing list submissions to
	yocto@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://lists.yoctoproject.org/listinfo/yocto
or, via email, send a message with subject or body 'help' to
	yocto-request@yoctoproject.org

You can reach the person managing the list at
	yocto-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than =
"Re: Contents of yocto digest..."


Today's Topics:

   1. DL_DIR problems (Bollinger, Seth)
   2. Re: Migrating LDAT fs_final.sh to Yocto (Khem Raj)
   3. Re: Migrating LDAT fs_final.sh to Yocto (Vuille, Martin (Martin))
   4. Re: [AB] PublishLayerTarballs "git archives" the wrong
      directory (Flanagan, Elizabeth)
   5. Re: DL_DIR problems (Christopher Larson)
   6. Re: DL_DIR problems (Flanagan, Elizabeth)


----------------------------------------------------------------------

Message: 1
Date: Mon, 5 May 2014 11:40:00 +0000
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [yocto] DL_DIR problems
Message-ID: <CF8CE2C0.8C7E%seth.bollinger@digi.com>
Content-Type: text/plain; charset=3D"Windows-1252"

Hello All,

We?re trying to share a DL_DIR over NFS so all developers don?t have to =
re-download source files every time they want to do a clean build.  =
Unfortunately we?re running into problems with lock files that are left =
behind by (sometimes) terminated processes.  This will block users who =
are trying subsequent builds.  How are others approaching this problem?

Thanks,

Seth


------------------------------

Message: 2
Date: Mon, 5 May 2014 09:34:13 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Migrating LDAT fs_final.sh to Yocto
Message-ID:
	<CAMKF1sqYj4=3D8O3zZMGTdn3111-kRx3jb-oHp2Q9ODfUxjRC2-Q@mail.gmail.com>
Content-Type: text/plain; charset=3DUTF-8

On Mon, May 5, 2014 at 6:34 AM, Vuille, Martin (Martin) =
<vmartin@avaya.com> wrote:
> Migrating from LDAT to Yocto, and wondering whether
>
> there is an equivalent to LDAT?s fs_final.sh script?
>

Don't know what that is but you can use image post processing hooks in =
yocto to do tweaks to images. see IMAGE_POSTPROCESS_COMMAND

>
>
> The objective is to do some post-processing on the
>
> rootfs ?tree? before it is packaged into the UBIFS image.
>
>
>
> MV
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


------------------------------

Message: 3
Date: Mon, 5 May 2014 16:36:01 +0000
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] Migrating LDAT fs_final.sh to Yocto
Message-ID:
	=
<30C2D590D16A5C46ADFE65219103779820B8463D@AZ-US1EXMB03.global.avaya.com>
=09
Content-Type: text/plain; charset=3D"utf-8"

Exactly what I am looking for.

Thanks!
MV

> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: May 05, 2014 12:34 PM
> To: Vuille, Martin (Martin)
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Migrating LDAT fs_final.sh to Yocto
>=20
> On Mon, May 5, 2014 at 6:34 AM, Vuille, Martin (Martin)=20
> <vmartin@avaya.com> wrote:
> > Migrating from LDAT to Yocto, and wondering whether
> >
> > there is an equivalent to LDAT?s fs_final.sh script?
> >
>=20
> Don't know what that is but you can use image post processing hooks in =

> yocto to do tweaks to images. see IMAGE_POSTPROCESS_COMMAND
>=20
> >
> >
> > The objective is to do some post-processing on the
> >
> > rootfs ?tree? before it is packaged into the UBIFS image.
> >
> >
> >
> > MV
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >

------------------------------

Message: 4
Date: Mon, 5 May 2014 09:50:01 -0700
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto] [AB] PublishLayerTarballs "git archives" the
	wrong	directory
Message-ID:
	<CAPhnLPDRt_XYnm_jcRAUY7x2QT8gVgc_smr0Mu-9FnfjbyD0sw@mail.gmail.com>
Content-Type: text/plain; charset=3DUTF-8

On Fri, May 2, 2014 at 1:16 PM, Jate S <jatedev@gmail.com> wrote:
> I am running off of the master branch.
>
> I hope this log message is readable. The key is to know that I have a=20
> meta-oe repo in the build directory and that the last line shows it's=20
> running in build instead of build/meta-oe.
>
>  git archive --format=3Dtar HEAD
> --prefix=3Dmeta-oe-40e0f371f3eb1628655c484feac0cebf810737b4/ | bzip2 =
-c
>> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2; md5sum
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2 >>=20
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2.md5sum; mkdir =

> -p /home/jate/tmp/yab/publish/builds/qemux86/20140501-1; rsync -av
> meta-oe-40e0f371f3eb1628655c484feac0cebf810737b4.tar.bz2*
> /home/jate/tmp/yab/publish/builds/qemux86/20140501-1
>  in dir /home/jate/yocto-autobuilder/yocto-slave/qemux86/build
> (timeout 100000 secs)
>
> I think that it should be changing directory to meta-oe, but the code=20
> is just missing that. This happens with all the other repourl's in my=20
> config too. The generated tarballs are of the same size (of poky).

You are correct. Patch in the works.

-b

>
>
> Cheers
>
>
> - Jate S.



--
Elizabeth Flanagan
Yocto Project
Build and Release


------------------------------

Message: 5
Date: Mon, 5 May 2014 10:41:22 -0700
From: Christopher Larson <clarson@kergoth.com>
To: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto] DL_DIR problems
Message-ID:
	<CABcZANm6aOq19bag-1oWNs_88BhaN-dq6hS=3DPZ8EqPvJQveTFg@mail.gmail.com>
Content-Type: text/plain; charset=3D"utf-8"

On Mon, May 5, 2014 at 4:40 AM, Bollinger, Seth =
<Seth.Bollinger@digi.com>wrote:

> We?re trying to share a DL_DIR over NFS so all developers don?t have =
to
> re-download source files every time they want to do a clean build.
>  Unfortunately we?re running into problems with lock files that are =
left
> behind by (sometimes) terminated processes.  This will block users who =
are
> trying subsequent builds.  How are others approaching this problem?


One option would be to maintain an internal downloads mirror, either
populated by an autobuilder or by an rsync after engineer builds to the
server hosting it. There'd be duplication in local disk space, but you'd
avoid the NFS locking issues.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics
-------------- next part --------------
An HTML attachment was scrubbed...
URL: =
<http://lists.yoctoproject.org/pipermail/yocto/attachments/20140505/74c59=
200/attachment-0001.html>

------------------------------

Message: 6
Date: Mon, 5 May 2014 10:50:35 -0700
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Bollinger,
	Seth" <Seth.Bollinger@digi.com>
Subject: Re: [yocto] DL_DIR problems
Message-ID:
	<CAPhnLPDCn6-stkBr2rSvYNQbgg6Z7+ijmZLFHkiJHuXs8WL-Rw@mail.gmail.com>
Content-Type: text/plain; charset=3DUTF-8

On Mon, May 5, 2014 at 10:41 AM, Christopher Larson =
<clarson@kergoth.com> wrote:
> On Mon, May 5, 2014 at 4:40 AM, Bollinger, Seth =
<Seth.Bollinger@digi.com>
> wrote:
>>
>> We?re trying to share a DL_DIR over NFS so all developers don?t have =
to
>> re-download source files every time they want to do a clean build.
>> Unfortunately we?re running into problems with lock files that are =
left
>> behind by (sometimes) terminated processes.  This will block users =
who are
>> trying subsequent builds.  How are others approaching this problem?
>
>
> One option would be to maintain an internal downloads mirror, either
> populated by an autobuilder or by an rsync after engineer builds to =
the
> server hosting it. There'd be duplication in local disk space, but =
you'd
> avoid the NFS locking issues.

This is similar how the project infrastructure works.

nfs:/dl_dir
nfs:/rsynced_dl_dir

autobuilder uses the nfs:/dl_dir and a period rsync syncs to
rsync_dl_dir. We can then use the rsync dir as our mirror. It ends up
solving a few issues. If you don't want to run a full autobuilder,
just a bitbake universe -c fetch on a cron job with all your layers
would do it.

-b


> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
Elizabeth Flanagan
Yocto Project
Build and Release


------------------------------

--=20
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto


End of yocto Digest, Vol 44, Issue 18
*************************************





