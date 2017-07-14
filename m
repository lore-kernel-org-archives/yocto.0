Return-Path: <robert_joslyn@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83D9BE00BD2; Fri, 14 Jul 2017 13:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1267 seconds by postgrey-1.32 at yocto-www;
	Fri, 14 Jul 2017 13:53:33 PDT
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2514E00BA1
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 13:53:33 -0700 (PDT)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.20/8.16.0.20) with SMTP id v6EKW60I023125
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 13:32:25 -0700
Received: from edison2.ad.selinc.com (mail.ad.selinc.com [10.100.0.115])
	by volare.selinc.com with ESMTP id 2bn0pyqd6g-1
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 13:32:25 -0700
Received: from robejoslpc.ad.selinc.com ([10.203.80.174])
	by edison2.ad.selinc.com (IBM Domino Release 9.0.1FP3 HF515)
	with ESMTP id 2017071413322543-199221 ;
	Fri, 14 Jul 2017 13:32:25 -0700 
Message-ID: <1500064345.5177.3.camel@selinc.com>
From: Robert Joslyn <robert_joslyn@selinc.com>
To: Jimi Damon <jdamon@gmail.com>
Date: Fri, 14 Jul 2017 13:32:25 -0700
In-Reply-To: <CAJTo0LZR0=_+WaUqQPx-UA75jOcjMa1OhaB13ztJE+oW4_4xBg@mail.gmail.com>
References: <a241bdb0-6ea7-8f0e-8411-02e9dbb1662c@gmail.com>
	<CAJTo0LZR0=_+WaUqQPx-UA75jOcjMa1OhaB13ztJE+oW4_4xBg@mail.gmail.com>
X-Mailer: Evolution 3.22.6 
Mime-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Edison2/SEL(Release 9.0.1FP3
	HF515|April 25, 2015) at 07/14/2017 01:32:25 PM,
	Serialize by Router on Edison2/SEL(Release 9.0.1FP3 HF515|April 25,
	2015) at 07/14/2017 01:32:25 PM,
	Serialize complete at 07/14/2017 01:32:25 PM
X-TNEFEvaluated: 1
X-Proofpoint-Virus-Version: vendor=nai engine=5800 definitions=8591
	signatures=668514
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do you build 2 versions of the same recipe and a specific version from bitbake cmd line
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
X-List-Received-Date: Fri, 14 Jul 2017 20:53:35 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Fri, 2017-07-14 at 19:49 +0100, Burton, Ross wrote:
>=20
> On 14 July 2017 at 18:17, Jimi Damon <jdamon@gmail.com> wrote:
> > Do to a fun "feature" of zeromq, the newest libraries are not
> > backward compatible and hence I need to install a zeromq-4.1.5 and
> > zeromq-3.2.2 libraries onto my target to assist with one
> > application using the old version and a newer application using the
> > newer one.=C2=A0
> >=20
> > How can I do this from the local.conf file AND how can I specify a
> > single recipe version to build on the command line ?=C2=A0
> >=20
>=20
> You need two recipes *with different names*, and they must not
> conflict in any way with each other.
>=20
> Ross

Just to clarify, the typical way this is done is to put the major
version number as part of the package name.=C2=A0For example, the recipes
could be called zeromq3_3.2.2.bb and zeromq4_4.1.5.bb. This assumes
zeromq can tolerate having multiple versions installed at the same
time.

Robert

