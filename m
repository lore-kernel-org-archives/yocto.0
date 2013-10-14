Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E2ADE01373
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2013 06:46:11 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 14 Oct 2013 09:46:03 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 14 Oct 2013 09:46:03 -0400
Thread-Topic: yocto-autobuilder: Nightly build not building nightly
Thread-Index: Ac7I47lsqpo7Tdn5TzWxyu7HW4YruQ==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B8DD45A1@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: yocto-autobuilder: Nightly build not building nightly
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
X-List-Received-Date: Mon, 14 Oct 2013 13:46:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have a local yocto-autobuilder setup (using yocto-autobuilder master) whi=
ch I can do a build of my own setup.  I created my own nightly-foo.conf fil=
e and verified that a forced build of this builds without errors.  However,=
 the nightly builds are not triggering and I'm wondering what I missed.

I modified yoctoAB.conf to only include my buildset.  So my yoctoAB.conf no=
w looks like this:

[BuildSets]
Order: ['nightly-foo']

I set this up near the beginning of October and there has not been a nightl=
y build triggered since my last forced build.  At first I thought it was be=
cause the layers I am using have not been updated, as I'm using the Dylan b=
ranch for everything.  However, poky/dylan just received some updates a few=
 days ago and my autobuilder has not yet triggered a new nightly build.

Is there something I need to add to my nightly-foo.conf to get the nightly =
build to trigger?  Or is there a different configuration file that I need t=
o modify?

Thanks,
Bryan Evenson

