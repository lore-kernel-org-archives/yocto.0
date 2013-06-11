Return-Path: <Noor_Ahsan@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8E4FE0155B
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 05:13:59 -0700 (PDT)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1UmNSY-0000Um-Hf from Noor_Ahsan@mentor.com ;
	Tue, 11 Jun 2013 05:13:58 -0700
Received: from SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Tue, 11 Jun 2013 05:13:57 -0700
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.178]) by
	SVR-IES-FEM-03.mgc.mentorg.com ([137.202.0.108]) with mapi id
	14.02.0247.003; Tue, 11 Jun 2013 13:13:56 +0100
From: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
To: "Behrens, Holger" <Holger.Behrens@windriver.com>
Thread-Topic: [PATCH] dlt-daemon: Fix multiple issues with service files.
Thread-Index: AQHOZptjMDFgkmt4LEaq634P/e35m5kwarM+gAACNnA=
Date: Tue, 11 Jun 2013 12:13:55 +0000
Message-ID: <365E1805BC95084CBE82381A0B869994DE4C1570@EU-MBX-01.mgc.mentorg.com>
References: <1370952018-31698-1-git-send-email-noor_ahsan@mentor.com>
	<7A688B48FC95D148BFE83E098348BE503713E9C7@ALA-MBB.corp.ad.wrs.com>
In-Reply-To: <7A688B48FC95D148BFE83E098348BE503713E9C7@ALA-MBB.corp.ad.wrs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.76]
MIME-Version: 1.0
X-OriginalArrivalTime: 11 Jun 2013 12:13:57.0880 (UTC)
	FILETIME=[264CF780:01CE669D]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"genivi-diagnostic-log-and-trace@lists.genivi.org"
	<genivi-diagnostic-log-and-trace@lists.genivi.org>
Subject: Re: [PATCH] dlt-daemon: Fix multiple issues with service files.
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
X-List-Received-Date: Tue, 11 Jun 2013 12:14:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I just send a patch to the same list.

Noor

-----Original Message-----
From: Behrens, Holger [mailto:Holger.Behrens@windriver.com]=20
Sent: Tuesday, June 11, 2013 5:10 PM
To: Ahsan, Noor
Cc: yocto@yoctoproject.org; Sarbu, Florin-Ionut (Florin); genivi-diagnostic=
-log-and-trace@lists.genivi.org
Subject: RE: [PATCH] dlt-daemon: Fix multiple issues with service files.

Hi,

> From: Noor <noor_ahsan@mentor.com>

Did you  file a bug with upstream http://projects.genivi.org/diagnostic-log=
-trace/ and provided them with these patches too?  As I do not see them on =
the email distribution list.  If so, can you make a reference to the bugzil=
la id(s) of any bug(s) you filed against the DLT daemon regarding these two=
 issues in the commit message?

Thank you.

Best regards,
Holger

---

* The newly included patch, systemd_service_installation.patch, is required
  because the cmake script in the dlt-daemon package tries to locate the
  systemd units directory on the host. During cross compiling it should not
  see paths on local machine and make decesion based on it. On ubuntu 10.04
  /lib/systemd/system folder does not exist so cross-compiling dlt-deamon
  results in no servie file image folder. So commented the if condition whi=
ch
  checks the existance of /lib/systemd/system.
* Created symlinks of dlt.service and dlt-system.servic in basic.target.wan=
ts
  folder.
* Set PARALLEL_MAKE to "" as faced some issues when it was set.

Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>
---
 .../systemd_service_installation.patch             |   24 ++++++++++++++++=
++++
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb    |   16 ++++++++++++-
 2 files changed, 39 insertions(+), 1 deletion(-)

diff --git a/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_i=
nstallation.patch b/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_se=
rvice_installation.patch
new file mode 100644
index 0000000..8469a5e
--- /dev/null
+++ b/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_installa=
tion.patch
@@ -0,0 +1,24 @@
+--- git/systemd/CMakeLists_old.txt     2013-03-12 16:53:37.052664326 +0500
++++ git/systemd/CMakeLists.txt 2013-03-12 16:53:57.052896347 +0500
+@@ -46,15 +46,15 @@ if(WITH_SYSTEMD)
+     message(STATUS "DLT adaptor udp configuration: APPID=3D${DLT_ADAPTOR_=
UDP_APPID} CTID=3D${DLT_ADAPTOR_UDP_CTID} PORT=3D${DLT_ADAPTOR_UDP_PORT}" )
+
+
+-    if(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
++    #if(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt.service DESTINATI=
ON ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-system.service DE=
STINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-receive.service D=
ESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-example-user.serv=
ice DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-adaptor-udp.servi=
ce DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )
+         message(STATUS "Unit files will be installed to ${SYSTEMD_CONFIGU=
RATIONS_FILES_DIR} after make install" )
+-    else(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
+-        message(STATUS "Unit files will not be installed to ${SYSTEMD_CON=
FIGURATIONS_FILES_DIR} after make install")
+-    endif(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
++    #else(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
++    #    message(STATUS "Unit files will not be installed to ${SYSTEMD_CO=
NFIGURATIONS_FILES_DIR} after make install")
++    #endif(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})
+
+-endif(WITH_SYSTEMD)
+\ No newline at end of file
++endif(WITH_SYSTEMD)
diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-exte=
nded/dlt-daemon/dlt-daemon_2.9.0.bb
index 9cdbfc0..82b46eb 100644
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb
@@ -19,7 +19,9 @@ LICENSE =3D "MPLv2"
 LIC_FILES_CHKSUM =3D "file://LICENSE.txt;md5=3D99ba60c3fad7eaf8c56bca6dd75=
cba09 \
                    file://MPL.txt;md5=3Dccdb2761cef70c8b2612624c323f89dc"

-SRC_URI =3D "git://git.projects.genivi.org/${PN}.git;protocol=3Dgit;tag=3D=
v${PV}"
+SRC_URI =3D "git://git.projects.genivi.org/${PN}.git;protocol=3Dgit;tag=3D=
v${PV} \
+           file://systemd_service_installation.patch \
+          "

 S =3D "${WORKDIR}/git"

@@ -31,3 +33,15 @@ FILES_${PN}-systemd +=3D "${systemd_unitdir}/system/"
 PACKAGES =3D+ "${PN}-systemd"

 EXTRA_OECMAKE =3D "-DWITH_SYSTEMD=3DON"
+
+PARALLEL_MAKE =3D ""
+
+do_install_append() {
+    # Remove "User=3Dgenivi" option from systemd service files, as we want=
 this to go to default setting
+    sed -i '/User/d' ${D}/${systemd_unitdir}/system/*.service
+
+    # Install the required systemd services links
+    install -d ${D}${base_libdir}/systemd/system/basic.target.wants
+    ln -sf ../dlt.service ${D}${base_libdir}/systemd/system/basic.target.w=
ants/dlt.service
+    ln -sf ../dlt-system.service ${D}${base_libdir}/systemd/system/basic.t=
arget.wants/dlt-system.service
+}
--
1.7.9.5


