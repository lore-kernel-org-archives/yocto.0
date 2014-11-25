Return-Path: <Nick.Stevens@etherios.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75171E008D9; Tue, 25 Nov 2014 10:11:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.196 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 415 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Nov 2014 10:11:32 PST
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98096E0084E
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 10:11:32 -0800 (PST)
Received: from [216.82.241.196] by server-4.bemta-8.messagelabs.com id
	45/9B-27904-4B4C4745; Tue, 25 Nov 2014 18:04:36 +0000
X-Env-Sender: Nick.Stevens@etherios.com
X-Msg-Ref: server-7.tower-46.messagelabs.com!1416938675!37953491!1
X-Originating-IP: [66.77.174.13]
X-StarScan-Received: 
X-StarScan-Version: 6.12.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14923 invoked from network); 25 Nov 2014 18:04:35 -0000
Received: from mail.mx1.digi.com (HELO mcl-sms-ns1.digi.com) (66.77.174.13)
	by server-7.tower-46.messagelabs.com with RC4-SHA encrypted SMTP;
	25 Nov 2014 18:04:35 -0000
Received: from MTK-SMS-XCH01.digi.com (10.10.8.195) by mail.mx1.digi.com
	(172.16.1.13) with Microsoft SMTP Server (TLS) id 8.3.377.0;
	Tue, 25 Nov 2014 12:04:25 -0600
Received: from MTK-SMS-XCH03.digi.com ([fe80::484d:c326:e7f1:a9fd]) by
	MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40%20]) with mapi id
	14.03.0210.002; Tue, 25 Nov 2014 12:04:35 -0600
From: "Stevens, Nick" <Nick.Stevens@etherios.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Bob Cochran
	<yocto@mindchasers.com>
Thread-Topic: [yocto] Layer Priority with Wildcard .bbappend Files
Thread-Index: AdAIHwfCBhVTY1O2QDWJavgID0T9SQAQH+cAABzfuYAAAZKjYA==
Date: Tue, 25 Nov 2014 18:04:34 +0000
Message-ID: <94A9084532A7034A80AF38392EE560FF11064340@MTK-SMS-XCH03.digi.com>
References: <94A9084532A7034A80AF38392EE560FF11063166@MTK-SMS-XCH03.digi.com>
	<5473A266.6070407@mindchasers.com>
	<4839222.tS45RDzaJt@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4839222.tS45RDzaJt@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.35.1.176]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Layer Priority with Wildcard .bbappend Files
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
X-List-Received-Date: Tue, 25 Nov 2014 18:11:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

> > I verified this by building an image - the sysctl.conf that ends up in
> > the final image is the one from meta-bsp, not the one from meta-custom.
> > But if I switch the name of base-files_%.bbappend in meta-custom to
> > base-files_3.0.14.bbappend, this is what I get:
> > >      # $FILESEXTRAPATHS [5 operations]
> > >      #   set poky/meta/conf/documentation.conf:172
> > >      #     [doc] "Extends the search path the OpenEmbedded build
> system
> > >      uses when looking for files and patches as it processes recipes
> and
> > >      append files." #   _prepend
> > >      meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappend:3 #
> > >      "meta-bsp/recipes-core/base-files/base-files:"
> > >      #   _prepend
> > >      meta-custom/recipes-core/base-files/base-files_3.0.14.bbappend:6
> #
> > >        "meta-custom/recipes-core/base-files/base-files:"
> > >      #   set data_smart.py:432 [finalize]
> > >      #     "meta-bsp/recipes-core/base-files/base-files:"
> > >      #   set data_smart.py:432 [finalize]
> > >      #
> > >      "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes=
-
> cor
> > >      e/base-files/base-files:" # computed:
> > >      #
> > >      "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes=
-
> cor
> > >      e/base-files/base-files:"
> > >      FILESEXTRAPATHS=3D"meta-custom/recipes-core/base-files/base-
> files:meta
> > >      -bsp/recipes-core/base-files/base-files:">
> > > And now the sysctl.conf file is being pulled from meta-custom.
>=20
> That absolutely should not happen. If you change it back does it revert t=
o
> the version from meta-bsp? The wildcarding should not change the order in
> which the files are applied. The only corner case I can think of would be
> if the layer priority values are the same number - this isn't the case is
> it?

The behavior does reappear if I change the file name back to a wildcard. An=
d no, the layers are different priorities - meta-custom is priority 8 and m=
eta-bsp is priority 6.

Definitely sounds like there's some unexpected behavior here. I am going to=
 dig in some more and see if I can find a limited test case that reproduces=
 the issue, and then I'll get a bug report opened.

Thanks!
Nick

