Return-Path: <Swapna.Gurumani@microchip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7736BE00CB6; Mon, 31 Oct 2016 21:04:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [198.175.253.37 listed in list.dnswl.org]
Received: from email.microchip.com (exsmtp01.microchip.com [198.175.253.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE00DE00C86
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 21:04:00 -0700 (PDT)
Received: from CHN-SV-EXMX05.mchp-main.com ([fe80::88ec:a5e:b3b2:e58]) by
	CHN-SV-EXCH01.mchp-main.com ([fe80::9840:ffdf:ec5:1335%29]) with mapi
	id 14.03.0181.006; Mon, 31 Oct 2016 21:03:59 -0700
From: <Swapna.Gurumani@microchip.com>
To: <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] how to copy a tar file to Root file system
Thread-Index: AdIz3RmoIOKxDAIqRCm8SCX7sc6E+wAQVLEAAAxww2D//7a5gIAAbtBw
Date: Tue, 1 Nov 2016 04:03:58 +0000
Message-ID: <061E8AE63BCA5A41B92BC90F19C8225237AE722C@CHN-SV-EXMX05.mchp-main.com>
References: <061E8AE63BCA5A41B92BC90F19C8225237AE71B6@CHN-SV-EXMX05.mchp-main.com>
	<4177938.GHPXVAbNun@peggleto-mobl.ger.corp.intel.com>
	<061E8AE63BCA5A41B92BC90F19C8225237AE71F2@CHN-SV-EXMX05.mchp-main.com>
	<16244336.UgYXzEjrtG@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <16244336.UgYXzEjrtG@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.215.90]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: how to copy a tar file to Root file system
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
X-List-Received-Date: Tue, 01 Nov 2016 04:04:06 -0000
X-Groupsio-MsgNum: 32729
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_061E8AE63BCA5A41B92BC90F19C8225237AE722CCHNSVEXMX05mchp_"

--_002_061E8AE63BCA5A41B92BC90F19C8225237AE722CCHNSVEXMX05mchp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

With the attached recipe I get the following error:
ERROR: crank-1.0-r0 do_package: QA Issue: crank: Files/directories were ins=
talled but not shipped in any package:
  /opt
  /opt/sb_launch.sh
  /opt/clear_buffers
  /opt/runsb.sh
  /opt/README.txt

......
...
.
.
.

  /opt/WashingMachine_V2/fonts/Roboto-Regular.ttf
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
crank: 1733 installed and not shipped files. [installed-vs-shipped]
ERROR: crank-1.0-r0 do_package: Fatal QA errors found, failing task.
ERROR: crank-1.0-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in: /home/swapna/workspace/work/yocto/poky=
/build-atmel/tmp/work/cortexa5hf-neon-poky-linux-gnueabi/crank/1.0-r0/temp/=
log.do_package.19127
ERROR: Task 1104 (/home/swapna/workspace/work/yocto/meta-atmel/qt5-layer/re=
cipes-qt/apps/crank_1.0.bb, do_package) failed with exit code '1'


I feel am very close!!=20
Regards
Swapna


-----Original Message-----
From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=20
Sent: Monday, October 31, 2016 8:35 PM
To: Swapna Gurumani - C40450 <Swapna.Gurumani@microchip.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] how to copy a tar file to Root file system

On Tue, 01 Nov 2016 03:12:15 Swapna.Gurumani@microchip.com wrote:
> Thank you so much for your speedy response!!! Actually I ended up=20
> attaching an older bb file. I had some more modifications as attached.=20
> I changed license to close per your suggestion. Should I change=20
> FILES_${PN} to look like this:
>=20
> FILES_${PN} =3D "/opt/crank/"

Yes that would be a lot simpler.

> Actually to be honest I took inspiration from another recipe to make mine=
.
> All I want to do it take a locally stored .tar.gz file, untar it and=20
> put it in the /opt folder of my RFS. I notice that the tar file has=20
> been extracted and I see it in the
> /home/swapna/workspace/work/yocto/poky/build-atmel/tmp/work/cortexa5hf
> -neon- poky-linux-gnueabi/crank/1.0-r0/crank Folder.
> Do I need a makefile? I don't know what a .po file is..

No, for something simple like this you can do everything you need from the =
recipe.

> How do I install the files "manually" within do_install using install=20
> and/or cp commands? Like this?:
>=20
> do_install() {
>         make INSTALL_ROOT=3D${D} install    << what does this do>>
>         cp -ar ${B}/crank/ ${D}/opt/
> }
>=20

I think you want:

do_install() {
    cp -a --no-preserve=3Downership ${WORKDIR}/crank ${D}/opt/ }

You don't need the "make install" line.

Cheers,
Paul

PS: please keep the mailing list on CC. Thanks.



--_002_061E8AE63BCA5A41B92BC90F19C8225237AE722CCHNSVEXMX05mchp_
Content-Type: application/octet-stream; name="crank_1.0.bb"
Content-Description: crank_1.0.bb
Content-Disposition: attachment; filename="crank_1.0.bb"; size=268;
	creation-date="Tue, 01 Nov 2016 03:00:21 GMT";
	modification-date="Tue, 01 Nov 2016 04:01:55 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiQ3JhbmsgaG9tZSBhdXRvbWF0aW9uIGRlbW8iCkxJQ0VOU0UgPSAiQ0xP
U0VEIgpQQUNLQUdFUyA9ICIke1BOfSIKClBSID0gInIwIgoKU1JDX1VSSSA9ICJmaWxlOi8vY3Jh
bmstViR7UFZ9LnRhci5neiIKCmluaGVyaXQgcGtnY29uZmlnCgpGSUxFU18ke1BOfSA9ICIvb3Av
Y3JhbmsvKiIKCgpkb19pbnN0YWxsKCkgewogICAgICAgIGNwIC1hIC0tbm8tcHJlc2VydmU9b3du
ZXJzaGlwICR7V09SS0RJUn0vY3JhbmsgJHtEfS9vcHQvIAp9CgoKCg==

--_002_061E8AE63BCA5A41B92BC90F19C8225237AE722CCHNSVEXMX05mchp_--
