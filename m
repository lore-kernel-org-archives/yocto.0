Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E41FE008A6; Mon,  2 Feb 2015 02:07:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 8225FE0070B
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 02:07:07 -0800 (PST)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.224.2; Mon, 2 Feb 2015
	11:07:05 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 34C192800CB;
	Mon,  2 Feb 2015 11:07:05 +0100 (CET)
Date: Mon, 2 Feb 2015 11:07:05 +0100
From: "Maxin B. John" <maxin.john@enea.com>
To: Jim Abernathy <jfabernathy@outlook.com>
Message-ID: <20150202100705.GA17981@sestofb10.enea.se>
References: <BAY169-W1362E3C1DC8377B4CE66D2DAE3F0@phx.gbl>
	<BAY169-W8554ED0435BE93C2A8F54EAE3F0@phx.gbl>
MIME-Version: 1.0
In-Reply-To: <BAY169-W8554ED0435BE93C2A8F54EAE3F0@phx.gbl>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Checksum failure encountered Java
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
X-List-Received-Date: Mon, 02 Feb 2015 10:07:13 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jim,

On Sun, Feb 01, 2015 at 10:58:02AM -0500, Jim Abernathy wrote:
> after I posted this issues, I tried to click on the link at the Oracle si=
te and
> there is something about accepting a License.  I have the
> LICENSE_FLAGS_WHITELIST +=3D "oracle_java" which worked on the NUC build.=
  I'm
> guessing that's not the issue.

Since Oracle download webpage has an "accept license" button, the
downloading process is on a "best effort" basis one. If the download
fails for a particular binary, please go to the oracle download
webpage and download the tarball. Move that binary to the bitbake download
location as mentioned in local.conf file and build again.

Sorry for the trouble and I think, we should update the README to
reflect this process (again).

Please note that the arm binary is pre-built for vfp-hflt (hard-float)
and it may have troubles with root-filesystem built with soft-float
support.

> Jim A

Best Regards,
Maxin

>=20
> =E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=
=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=
=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81=E2=94=
=81=E2=94=81=E2=94=81=E2=94=81=E2=94=81
> From: jfabernathy@outlook.com
> To: yocto@yoctoproject.org
> Date: Sun, 1 Feb 2015 10:53:28 -0500
> Subject: [yocto] Checksum failure encountered Java
>=20
> I tried to move a build from NUC to Pandaboard and the core-image-sato wo=
rked
> fine, well except the README.HARDWARE for arm didn't mention coping the u=
Image
> to /boot. Figured that out easy enough.
>=20
> But when I tried to add oracle-jse-jre that worked fine on NUC got the
> following errors:
>=20
> WARNING: Checksum failure encountered with download of http://
> download.oracle.com/otn/java/ejre/7u60-b19/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz -=
 will
> attempt other sources if available
> WARNING: Renaming /work/downloads/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz t=
o /
> work/downloads/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz_b=
ad-checksum_b72400960629e7403c4b579dada2a804
> ERROR: Fetcher failure for URL: 'http://download.oracle.com/otn/java/ejre=
/
> 7u60-b19/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz'.
> Checksum mismatch!
> File: '/work/downloads/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz' =
has
> md5 checksum b72400960629e7403c4b579dada2a804 when
> b9b8f598b0a7f49e4d221f16ba25c6c0 was expected
> File: '/work/downloads/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz' =
has
> sha256 checksum
> c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd913308eb03cdf86779 when
> ed061060011d88efe5563c2949c00993db85db17ab94f18a78713007a2b90faf was expe=
cted
> If this change is expected (e.g. you have upgraded to a new version witho=
ut
> updating the checksums) then you can use these lines within the recipe:
> SRC_URI[md5sum] =3D "b72400960629e7403c4b579dada2a804"
> SRC_URI[sha256sum] =3D
> "c4a64be693e0e27ca95ffe3036c56156e3d75e07f620fd913308eb03cdf86779"
> Otherwise you should retry the download and/or check with upstream to det=
ermine
> if the file has become corrupted or otherwise unexpectedly modified.
>=20
> ERROR: Function failed: Fetcher failure for URL: 'http://download.oracle.=
com/
> otn/java/ejre/7u60-b19/
> ejre-7u60-fcs-b19-linux-arm-vfp-hflt-client_headless-07_may_2014.tar.gz'.
> Unable to fetch URL from any source.
> ERROR: Logfile of failure stored in: /work/pandaboard/tmp/work/
> cortexa9t2hf-vfp-neon-poky-linux-gnueabi/oracle-jse-jre/1.7.0-u60r0/temp/
> log.do_fetch.31677
> ERROR: Task 231 (/home/jim/poky/meta-oracle-java/recipes-devtools/oracle-=
java/
> oracle-jse-jre_1.7.0.bb, do_fetch) failed with exit code '1'
>=20
> Should I just change the checksum locally or what???
>=20
> Jim A
>=20
>=20
>=20
> -- _______________________________________________ yocto mailing list
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


