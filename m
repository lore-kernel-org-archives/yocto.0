Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe003.messaging.microsoft.com [213.199.154.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB5E4E00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 11:51:18 -0700 (PDT)
Received: from mail69-db3-R.bigfish.com (10.3.81.254) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 18 Jul 2012 18:51:17 +0000
Received: from mail69-db3 (localhost [127.0.0.1])	by mail69-db3-R.bigfish.com
	(Postfix) with ESMTP id 6F1E03E0491;
	Wed, 18 Jul 2012 18:51:17 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -7
X-BigFish: VS-7(zz98dI9371I154dM1432Izz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail69-db3 (localhost.localdomain [127.0.0.1]) by mail69-db3
	(MessageSwitch) id 1342637475234479_10443;
	Wed, 18 Jul 2012 18:51:15 +0000 (UTC)
Received: from DB3EHSMHS010.bigfish.com (unknown [10.3.81.226])	by
	mail69-db3.bigfish.com (Postfix) with ESMTP id 350D43C00BC;
	Wed, 18 Jul 2012 18:51:15 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS010.bigfish.com
	(10.3.87.110) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 18 Jul 2012 18:51:15 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Wed, 18 Jul 2012 13:51:13 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] 1.1.2 Full Pass consolidated Test Report
Thread-Index: AQHNY5/hbr5cKoixskGHFMBAm7dmyJctRywAgAAF0YCAAJiNgIAALCQAgAGnZIA=
Date: Wed, 18 Jul 2012 18:51:13 +0000
Message-ID: <CAEsOVNfXzA_ox9qeRFdzNmbvgSObjKJyMRsnBTxsD4kJHzBukw@mail.gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
	<CAEsOVNdtHsAaJX9NdtiWSa70aRcK+Q+dvUgV7FWXu_tEkSEQYg@mail.gmail.com>
	<CAEsOVNcas4rN6sRaZSOLjy-xNTONdRXaepTiANkpjVh9jr0P_A@mail.gmail.com>
	<CAMKF1srAY+iyR+oRTsCfWqEsHaBKV4OTFFhHQr7Reaha6p_--A@mail.gmail.com>
	<CAEsOVNcY1xBk83MeYaXLdjE+V4Bp1EruOR9LVTs=jAcWjHa8HQ@mail.gmail.com>
	<CAEsOVNdz3oBUP0pee9fecN4Yk4vUQEZFyMbmyeY75vM66UKfXQ@mail.gmail.com>
In-Reply-To: <CAEsOVNdz3oBUP0pee9fecN4Yk4vUQEZFyMbmyeY75vM66UKfXQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.1.2 Full Pass consolidated Test Report
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 18:51:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <3996A7ADECEF66419E36E28C98DBC773@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

Ok, so I've found downgrading coreutils package to the last working
version (from CentOS 5.6) makes this issue go away:

$ wget http://vault.centos.org/5.6/os/x86_64/CentOS/coreutils-5.97-23.el5_4=
.2.x86_64.rpm
$ sudo rpm -Uvh --oldpackage coreutils-5.97-23.el5_4.2.x86_64.rpm

I've looked at the changelog of coreutils package for centos and
nothing stands out as causing the issue. The most likely candiate is:
https://bugzilla.redhat.com/show_bug.cgi?id=3D523923

$ rpm -q --changelog coreutils
* Wed Mar 14 2012 Ondrej Vasik <ovasik@redhat.com> 5.97-34.1
- fix backup of the individual files (broken by backupdir
  patch - #803356)

* Wed May 11 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-34
- su: fix shell suspend in tcsh (#681598)

* Fri Apr 29 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-33
- workaround wrong workarounds for the runcon argument
  reordering (related #628953)

* Tue Apr 19 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-32
- fix descriptor leak in fts tight cycle fix (#537463)

* Thu Apr 14 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-31
- improve error chmod handling in ro xattrs fix (#525199)

* Thu Mar 31 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-30
- improve the fix for preserving xattrs in read only mode
  (#525199)

* Fri Mar 25 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-28
- fix incorrect output of ls -1U with more than one
  argument(#515499)
- runuser documentation improved (#524805)
- cp/mv: preserving xattrs should work on read only
  files too (#525199)
- fix failure of rmdir --ignore-fail-on-non-empty on vxfs
  filesystem (#664895)
- mv: fix confusing 'subdirectory of itself' error message
  (#658839)
- don't reorder runcon arguments (#628953)
- clarify mkdir --mode behaviour in info documentation
  (#610559)
- improve escaping in colorls scriptlets(#586957)
- add info documentation for chcon and runcon(#660186)
- document that groups are not reflecting changes within
  existing login session (#584802)
- pwd: add support for -P (physical) and -L (logical) (#582774)
- cp/mv: do not inform about ACL preserving failure, when
  preserving not explicitely requested (#513153)
- du using ghosted automounted directory no longer
  results in 'No such file or directory' (#537463)
- fix segfault in sort if LC_TIME differs from the rest
  of locales(#684249)
- speed up deleting many files (#523923)
- allow mv backups for directories (#627285)

* Wed Jan 26 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-27
- fix exit status of terminated child processes in su with
  pam(#559098)

* Mon Jan 10 2011 Ondrej Vasik <ovasik@redhat.com> 5.97-26
- add support for iflag=3Dfullblock in dd (#668247)
- fix the build with gettext-0.17

* Mon Feb 22 2010 Ondrej Vasik <ovasik@redhat.com> 5.97-25
- readlink cannot handle recursive symlinks(#510809)

* Mon Oct 12 2009 Ondrej Vasik <ovasik@redhat.com> 5.97-24
- fixed regression where df -l <device> as regular user
  cause "Permission denied" (#520630, introduced by fix for
  rhbz #497830)

On Tue, Jul 17, 2012 at 12:35 PM, Matthew McClintock <msm@freescale.com> wr=
ote:
> On Tue, Jul 17, 2012 at 9:57 AM, Matthew McClintock <msm@freescale.com> w=
rote:
>> On Tue, Jul 17, 2012 at 12:51 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>> On Mon, Jul 16, 2012 at 10:31 PM, McClintock Matthew-B29882
>>> <B29882@freescale.com> wrote:
>>>> }
>>>> -       rm -rf ${SSTATE_BUILDDIR}
>>>> +       strace rm -rf ${SSTATE_BUILDDIR}
>>>
>>> strace is probably eating the return value
>>
>> And you would be right....
>>
>> I want to point out running the
>> ./tmp/work/ppc603e-poky-linux/eglibc-locale-2.13-r16/temp/run.sstate_cre=
ate_package.17463
>> generated script directly does not fail (without the strace
>> modification)
>
> Also, the follow does work:
>
> diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> index d2a45c3..92a1e4d 100644
> --- a/meta/classes/sstate.bbclass
> +++ b/meta/classes/sstate.bbclass
> @@ -463,7 +463,14 @@ sstate_create_package () {
>         mv $TFILE ${SSTATE_PKG}
>
>         cd ${WORKDIR}
> -       rm -rf ${SSTATE_BUILDDIR}
> +       for i in `find ${SSTATE_BUILDDIR} -type f`; do
> +               bbnote "deleting $i"
> +               rm -rf $i
> +       done
> +       for i in `find ${SSTATE_BUILDDIR} -type d -depth`; do
> +               bbnote "rmdir $i"
> +               rmdir $i
> +       done
>  }
>
> Still debugging....
>
> -M=


