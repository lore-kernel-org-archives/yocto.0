Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EB3BE00708; Wed, 19 Sep 2018 09:25:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.153.90 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from esa1.dell-outbound.iphmx.com (esa1.dell-outbound.iphmx.com
	[68.232.153.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 904EAE00546
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 09:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1537374313; x=1568910313;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-transfer-encoding:mime-version;
	bh=DobnySbD9jo0k8rcEzaOCtRh59ofdeggfYgNwDNeVpQ=;
	b=dNFkV8p4uC5SiJ1Ez+5TZmD0qYzw7XF9/5niUrXXFPlebyF4r2+lPBLS
	s+gkPDqVIgoV8f+mtjTjriyICZDyNMZ30N7foCPQayUXYSxdRyW5bCpzj
	MO37f0vOoSTu3Sc2qmDnlVlSGj2vUx9ci//SrdhWXE43/LaiHO3Ctzo53 Q=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EQAADodqJbhyWd50NdGQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQcBAQEBAYFRg2soCoxdi1KCDXiVVBSBZguEbAKDPCE1FwEDAQECAQE?=
	=?us-ascii?q?CAQECEAEBAQoLCQgpL4I1IoJiAQEBAQIBEig/BQsCAQgYHhBXAgQBDQUIGoJ?=
	=?us-ascii?q?/gXoImxSJVwEBAYIbihGKbYIXgRKCXTWEWA+FbwKII5Q2BwKQGh+PGpRIAgQ?=
	=?us-ascii?q?CBAUCFIFDAXiBFHCDPIIzjiBvixeBLYEeAQE?=
X-IPAS-Result: =?us-ascii?q?A2EQAADodqJbhyWd50NdGQEBAQEBAQEBAQEBAQcBAQEBA?=
	=?us-ascii?q?YFRg2soCoxdi1KCDXiVVBSBZguEbAKDPCE1FwEDAQECAQECAQECEAEBAQoLC?=
	=?us-ascii?q?QgpL4I1IoJiAQEBAQIBEig/BQsCAQgYHhBXAgQBDQUIGoJ/gXoImxSJVwEBA?=
	=?us-ascii?q?YIbihGKbYIXgRKCXTWEWA+FbwKII5Q2BwKQGh+PGpRIAgQCBAUCFIFDAXiBF?=
	=?us-ascii?q?HCDPIIzjiBvixeBLYEeAQE?=
Received: from mx0b-00154901.pphosted.com ([67.231.157.37])
	by esa1.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	19 Sep 2018 11:25:12 -0500
Received: from pps.filterd (m0144103.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w8JGN1dp120593
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 12:25:19 -0400
Received: from esa4.dell-outbound2.iphmx.com (esa4.dell-outbound2.iphmx.com
	[68.232.154.98])
	by mx0b-00154901.pphosted.com with ESMTP id 2mkse106x1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 12:25:18 -0400
From: <Jack.Fewx@dell.com>
Received: from ausc60ps301.us.dell.com ([143.166.148.206])
	by esa4.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	19 Sep 2018 22:25:17 +0600
X-LoopCount0: from 10.166.132.127
X-IronPort-AV: E=Sophos;i="5.53,394,1531803600"; d="scan'208";a="1196207192"
To: <seebs@seebs.net>, <ross.burton@intel.com>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQBa03cAAABmVBAADCzFgAAKVFJg//+1TICAAE9nsP/V3zawgFSk7ACAAAHaAIAAAT4AgADuRoCAADPWgIAARfLQ
Date: Wed, 19 Sep 2018 16:25:15 +0000
Message-ID: <f0960c92e64e4d34be28780b5a74410b@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
	<767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
	<20180918160944.43679aec@seebsdell>
	<CAJdd5Gb64JqHY3gv=r+_ZnKpDzO63CLpOF0fP8MQy_Dd_bshQQ@mail.gmail.com>
	<20180918162048.35454f8d@seebsdell>
	<CAJTo0LZ1qDr2DAFWJcHBrzWWwERYh-6eSiXNO5gcJwT=HXMb-w@mail.gmail.com>
	<20180919093909.12d3fedd@seebsdell>
In-Reply-To: <20180919093909.12d3fedd@seebsdell>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: Internal Use 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiIwODgzMDlmMC1jYjIwLTRjOGItOWJlMS02YzJkMTllM2Y2Y2YiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJJbnRlcm5hbCBVc2UifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W3sidmFsdWUiOiJObyJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNi4yLjExLjAiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUDBtajZXNjlrK0V3bTk5VjBzTE5pYmVmUURSbFY5aCtmbGVcL3M0R3VYZlk9In0=
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-09-19_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1809190159
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 19 Sep 2018 16:25:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Dell - Internal Use - Confidential =20

> On Wed, 19 Sep 2018 12:33:37 +0100
> "Burton, Ross" <ross.burton@intel.com> wrote:
>=20
> > On Tue, 18 Sep 2018 at 22:21, Seebs <seebs@seebs.net> wrote:
> > > > Are the databases supposed to be shareable between different build
> > > > machines? IIRC, the answer is no. Could you store the native inode
> > > > type as a sqlite BLOB? Not necessarily a good idea.... Just an
> > > > idea.
> > >
> > > I think coercing the values into range is probably safer. It should
> > > be trivial enough...
> >=20
> > That is an excellent catch and I'm hopeful that this explains the
> > failures in glibc-locales too that I still see occasionally.
> >=20
> > Is anyone actually writing a patch?
>=20
> I can try to get a proposed patch out sometime soon, I don't have an
> easy way to check it.
>=20
> -s

You can send the patch to me, it is easy to reproduce here.

I think the "coercing" of the values is a good path, when the inodes are hi=
gh, they are usually all high, except for the rare case where inode values =
are just on either side of the Signed limit.  That happened one time and wa=
s the final proof of why this was happening.

A little more background, we have two build environments, the developer wor=
kstations and the automated build cluster.  The developers never saw this, =
because they are stand-alone boxes with typical 4 TB hardrives, max inode c=
ounts around a couple million. Our automated build system is a bunch of vir=
tual machines which are setup and torn down with each build.  What we notic=
ed though is each newly created builder gets a new inode starting value, wh=
ich is an increment from previous ones.  This is why completely restarting =
the build cluster 'fixed' the issue for a while, it reset the inode numberi=
ng. So each builder gets assigned a non-overlapping new block of inodes, e.=
g. 1 - 1M, 1M+1 - 2M, 2M+1 - 3M, etc.  Eventually this climbs up into the r=
ange above 1.5B and the problems begin. The build managers are investigatin=
g if there is a way in the cluster config to limit the inode upper limit an=
d force the numbers to wrap around sooner.

One thing I am curious about, is that Pseudo 1.6.x never gave us this probl=
em, was the reference inside the database different? Or maybe it's just a c=
ase of never hitting the issue.

Thanks,

Jack Fewx
jack.fewx@dell.com

