Return-Path: <andrea.adami@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ABCDE01429
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 04:43:44 -0700 (PDT)
Received: by dadz8 with SMTP id z8so6761665dad.35
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 04:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=s8xbSrCVRw8v0GSTeCVMQtt83c4FPvZW9NF7xXpZF4M=;
	b=d1q/XOBKJpQdKbsa5lrWWo0LTVeJhguZXTJAlrLmDvJ49ewT1r2Qe9fgQFgeeGxNMS
	PYUo8pqw2ABxgkk84oa0fTauYbK32J9dTC6GL3vbSm/CCqQNlppCEvZZCzOQT2oqBqhg
	6mMKZc1bCsOSZ+6rZYHvecSoYO9iCLOln7mzbqIUlWmfba8zaKOQARtjSU6Rxei/vgmT
	YZonu19ANUaiDgoWCIXeFPJD+2fID2BBvuz/QKMwxU8yBV44Ku0bFBcugEid4lpHQH8N
	mV/PimqUqp0oKsvulfmGfZGMMd7YslIWUN4WV7oKhOwPc2tYY8J8z2BbhPWBUmxXiGqL
	ZUig==
MIME-Version: 1.0
Received: by 10.68.225.69 with SMTP id ri5mr36570694pbc.147.1338291824062;
	Tue, 29 May 2012 04:43:44 -0700 (PDT)
Received: by 10.143.63.11 with HTTP; Tue, 29 May 2012 04:43:44 -0700 (PDT)
In-Reply-To: <1825014.hTMMLqSJaD@helios>
References: <OFEE166903.804CCB84-ONC1257A0D.0035DA8C-C1257A0D.00394872@Sitek.it>
	<1825014.hTMMLqSJaD@helios>
Date: Tue, 29 May 2012 13:43:44 +0200
Message-ID: <CAAQYJAuekXxz8_O_GM3gAcvX0mz+TNFvMeY67Cp_vf3i5bY6Kw@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Help in building an ad-hoc qte image
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
X-List-Received-Date: Tue, 29 May 2012 11:43:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, May 29, 2012 at 12:56 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 29 May 2012 12:25:27 marco.monguzzi@exorint.it wrote:
>> let me rephrase for the sake of clearness.
>> This part of recipe:
>>
>> RDEPENDS_${PN}-base_ANOTHERBOARD =A0=3D " \
>> =A0 =A0 =A0 =A0 libqt-embeddedphonon4 \
>> =A0 =A0 =A0 =A0 qt4-embedded-plugin-phonon-backend-gstreamer \
>> =A0 =A0 =A0 =A0 "
>>
>> has the ultimate goal of adding phonon + gstreamer backend
>> for ANOTHERBOARD only to the rootfs.
>> It appears ok. We normally do not get indeed phonon + gstreamer backend.
>>

and btw this doesn't look right to me.

maybe you meant

>> RDEPENDS_${PN}-base_append_ANOTHERBOARD  =3D " \

Finally, it looks like you could easily workaround your problem by
defining a specific recipe for ANOTHERBOARD.

Regards

Andrea

P.S.: try bitbake -g XYZ  or   bitbake -g -u depexp XYZ  to quickly
inspect dependencies



>> The issue is that we get contents of
>> meta\recipes-multimedia\gstreamer\gstreamer_0.10.36.bb
>> (see original post for listing) in the rootfs and do not get what pull
>> them in.
>
> Ah, right, now I understand the question. So you've asked for task-qt4e-x=
yz-
> base to be installed, and task-qt4e-xyz-base for ANOTHERBOARD RDEPENDS up=
on
> qt4-embedded-plugin-phonon-backend-gstreamer. The "missing link" is that =
in
> do_package we have some code to analyse shared libraries (.so) that are g=
oing
> into a package in order to detect which other shared libraries they need,=
 and
> if any are found we look to see which package provides them and automatic=
ally
> add that package to RDEPENDS. Thus we look at the .so files in qt4-embedd=
ed-
> plugin-phonon-backend-gstreamer and determine from them that gstreamer is
> required, thus gstreamer (along with libgstaudio and libgstvideo) is adde=
d to
> RDEPENDS. See classes/package.bbclass if you want to see the code for thi=
s
> (look for shlibdeps).
>
> Note that sometimes this highlights problems with package granularity - I
> don't know enough about gstreamer to know if any of the files currently i=
n the
> "gstreamer" package could actually be separated out if they aren't desire=
d in
> some installations. Occasionally as a result we do split packages further=
 to
> avoid unnecessary files being installed for all situations.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

