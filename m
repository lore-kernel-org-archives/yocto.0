Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B573E015AB
	for <yocto@yoctoproject.org>; Tue, 17 Sep 2013 05:37:37 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Tue, 17 Sep 2013 08:37:36 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 17 Sep 2013 08:35:20 -0400
Thread-Topic: How to reduce deploy/ipks only to what is contained on image?
Thread-Index: Ac6zol9xHn3szmGtRvOiGu11eZo80Q==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153B26E0C1B@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 004315C20054220043170F
acceptlanguage: en-US
MIME-Version: 1.0
Subject: How to reduce deploy/ipks only to what is contained on image?
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
X-List-Received-Date: Tue, 17 Sep 2013 12:37:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I have an image that is based upon core-image-minimal (build poky/dylan-9.0=
.1) with a few extra packages.  In total, 'opkg list-installed' on my targe=
t system shows about 100 packages installed.  I am using the tmp/deploy/ipk=
 directory as I have built as a basis for firmware upgrade for my devices, =
but there are many more packages in the ipk directories than my target syst=
em is using.  The folder for my target architecture has around 3500 .ipk fi=
les, so there is a lot of clutter in the ipk directories.  It'd be a lot mo=
re portable for firmware upgrade if I could reduce the contents of the ipk =
directory (and the resulting Packages and Packages.gz files) only contain t=
he packages my system needs.

What is the easiest way to recreate the tmp/deploy/ipk directories to only =
contain the packages that are needed by the built image and have the packag=
e index match those contents?

Thanks,
Bryan

