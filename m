Return-Path: <Nick.Stevens@etherios.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF353E0084F; Mon, 24 Nov 2014 12:29:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.14 listed in list.dnswl.org]
X-Greylist: delayed 405 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Nov 2014 12:29:41 PST
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3753CE007C1
	for <yocto@yoctoproject.org>; Mon, 24 Nov 2014 12:29:40 -0800 (PST)
Received: from [216.82.249.131] by server-14.bemta-12.messagelabs.com id
	BF/5C-02695-E9393745; Mon, 24 Nov 2014 20:22:54 +0000
X-Env-Sender: Nick.Stevens@etherios.com
X-Msg-Ref: server-13.tower-28.messagelabs.com!1416860556!33653558!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.12.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 14061 invoked from network); 24 Nov 2014 20:22:37 -0000
Received: from mail.mx2.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-13.tower-28.messagelabs.com with RC4-SHA encrypted SMTP;
	24 Nov 2014 20:22:37 -0000
Received: from MTK-SMS-XCH02.digi.com (10.10.8.196) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.377.0;
	Mon, 24 Nov 2014 14:22:28 -0600
Received: from MTK-SMS-XCH03.digi.com ([fe80::484d:c326:e7f1:a9fd]) by
	MTK-SMS-XCH02.digi.com ([fe80::4960:cfbf:ad5e:3cdb%20]) with mapi id
	14.03.0210.002; Mon, 24 Nov 2014 14:22:33 -0600
From: "Stevens, Nick" <Nick.Stevens@etherios.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Layer Priority with Wildcard .bbappend Files
Thread-Index: AdAIHwfCBhVTY1O2QDWJavgID0T9SQ==
Date: Mon, 24 Nov 2014 20:22:31 +0000
Message-ID: <94A9084532A7034A80AF38392EE560FF11063166@MTK-SMS-XCH03.digi.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.35.1.176]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Layer Priority with Wildcard .bbappend Files
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
X-List-Received-Date: Mon, 24 Nov 2014 20:29:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think I've encountered a bug with how multiple bbappend files are process=
ed when one of the bbappends contains a filename wildcard, but I want to ma=
ke sure there's not something I'm missing before filing a bug report.

I have a BSP layer and a customization layer that are based on the OE/poky =
Daisy release. The output of `bitbake-layers show-layers` looks like:
    layer                 path                 priority
    =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
    meta                  poky/meta            5
    meta-yocto            poky/meta-yocto      5
    meta-yocto-bsp        poky/meta-yocto-bsp  5
    ...ellided...
    meta-bsp              meta-bsp             6
    meta-custom           meta-custom          8

In meta-bsp there is a bbappend for base-files named base-files_3.0.14.bbap=
pend. The meta-bsp bbappend adds a sysctl.conf to /etc - pretty straightfor=
ward:
    FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
    SRC_URI +=3D "file://sysctl.conf"
    do_install_append() {
        install -m 0644 ${WORKDIR}/sysctl.conf ${D}${sysconfdir}/
    }

Now what I want to do is add a file called base-files_%.bbappend to meta-cu=
stom. It has its own version of sysctl.conf, and the recipe looks like this=
:
    FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

Here's where things get weird. If I run `bitbake -e base-files` and pull ou=
t the section for FILESEXTRAPATHS, this is what I get (note that I've strip=
ped out the huge absolute paths to make this easier to read):
    # $FILESEXTRAPATHS [5 operations]
    #   set poky/meta/conf/documentation.conf:172
    #     [doc] "Extends the search path the OpenEmbedded build system uses=
 when looking for files and patches as it processes recipes and append file=
s."
    #   _prepend meta-custom/recipes-core/base-files/base-files_%.bbappend:=
6
    #     "meta-custom/recipes-core/base-files/base-files:"
    #   _prepend meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappen=
d:3
    #     "meta-bsp/recipes-core/base-files/base-files:"
    #   set data_smart.py:432 [finalize]
    #     "meta-custom/recipes-core/base-files/base-files:"
    #   set data_smart.py:432 [finalize]
    #     "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-=
core/base-files/base-files:"
    # computed:
    #   "meta-bsp/recipes-core/base-files/base-files:meta-custom/recipes-co=
re/base-files/base-files:"
    FILESEXTRAPATHS=3D"meta-bsp/recipes-core/base-files/base-files:meta-cus=
tom/recipes-core/base-files/base-files:"

For some reason meta-bsp is coming before meta-custom in FILESEXTRAPATHS, e=
ven though meta-custom has a higher priority! I verified this by building a=
n image - the sysctl.conf that ends up in the final image is the one from m=
eta-bsp, not the one from meta-custom. But if I switch the name of base-fil=
es_%.bbappend in meta-custom to base-files_3.0.14.bbappend, this is what I =
get:
    # $FILESEXTRAPATHS [5 operations]
    #   set poky/meta/conf/documentation.conf:172
    #     [doc] "Extends the search path the OpenEmbedded build system uses=
 when looking for files and patches as it processes recipes and append file=
s."
    #   _prepend meta-bsp/recipes-core/base-files/base-files_3.0.14.bbappen=
d:3
    #     "meta-bsp/recipes-core/base-files/base-files:"
    #   _prepend meta-custom/recipes-core/base-files/base-files_3.0.14.bbap=
pend:6
    #     "meta-custom/recipes-core/base-files/base-files:"
    #   set data_smart.py:432 [finalize]
    #     "meta-bsp/recipes-core/base-files/base-files:"
    #   set data_smart.py:432 [finalize]
    #     "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-=
core/base-files/base-files:"
    # computed:
    #   "meta-custom/recipes-core/base-files/base-files:meta-bsp/recipes-co=
re/base-files/base-files:"
    FILESEXTRAPATHS=3D"meta-custom/recipes-core/base-files/base-files:meta-=
bsp/recipes-core/base-files/base-files:"

And now the sysctl.conf file is being pulled from meta-custom.

Is there something I'm missing, like some sort of decreased priorty for bba=
ppend files with a wildcard? Or is this a bug?

Thanks for any help!

Nick Stevens

