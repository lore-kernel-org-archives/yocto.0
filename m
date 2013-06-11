Return-Path: <Holger.Behrens@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF8FCE01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 05:10:32 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r5BCASPi002432
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Jun 2013 05:10:28 -0700 (PDT)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.61]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.02.0342.003;
	Tue, 11 Jun 2013 05:10:28 -0700
From: "Behrens, Holger" <Holger.Behrens@windriver.com>
To: "Noor, Ahsan" <noor_ahsan@mentor.com>
Thread-Topic: [PATCH] dlt-daemon: Fix multiple issues with service files.
Thread-Index: AQHOZptjMDFgkmt4LEaq634P/e35m5kwarM+
Date: Tue, 11 Jun 2013 12:10:28 +0000
Message-ID: <7A688B48FC95D148BFE83E098348BE503713E9C7@ALA-MBB.corp.ad.wrs.com>
References: <1370952018-31698-1-git-send-email-noor_ahsan@mentor.com>
In-Reply-To: <1370952018-31698-1-git-send-email-noor_ahsan@mentor.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.204.228]
MIME-Version: 1.0
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
X-List-Received-Date: Tue, 11 Jun 2013 12:10:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
> From: Noor <noor_ahsan@mentor.com>=0A=
=0A=
Did you  file a bug with upstream http://projects.genivi.org/diagnostic-log=
-trace/ and provided them with these patches too?  As I do not see them on =
the email distribution list.  If so, can you make a reference to the bugzil=
la id(s) of any bug(s) you filed against the DLT daemon regarding these two=
 issues in the commit message?=0A=
=0A=
Thank you.=0A=
=0A=
Best regards,=0A=
Holger=0A=
=0A=
---=0A=
=0A=
* The newly included patch, systemd_service_installation.patch, is required=
=0A=
  because the cmake script in the dlt-daemon package tries to locate the=0A=
  systemd units directory on the host. During cross compiling it should not=
=0A=
  see paths on local machine and make decesion based on it. On ubuntu 10.04=
=0A=
  /lib/systemd/system folder does not exist so cross-compiling dlt-deamon=
=0A=
  results in no servie file image folder. So commented the if condition whi=
ch=0A=
  checks the existance of /lib/systemd/system.=0A=
* Created symlinks of dlt.service and dlt-system.servic in basic.target.wan=
ts=0A=
  folder.=0A=
* Set PARALLEL_MAKE to "" as faced some issues when it was set.=0A=
=0A=
Signed-off-by: Noor Ahsan <noor_ahsan@mentor.com>=0A=
---=0A=
 .../systemd_service_installation.patch             |   24 ++++++++++++++++=
++++=0A=
 recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb    |   16 ++++++++++++-=0A=
 2 files changed, 39 insertions(+), 1 deletion(-)=0A=
=0A=
diff --git a/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_i=
nstallation.patch b/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_se=
rvice_installation.patch=0A=
new file mode 100644=0A=
index 0000000..8469a5e=0A=
--- /dev/null=0A=
+++ b/recipes-extended/dlt-daemon/dlt-daemon-2.9.0/systemd_service_installa=
tion.patch=0A=
@@ -0,0 +1,24 @@=0A=
+--- git/systemd/CMakeLists_old.txt     2013-03-12 16:53:37.052664326 +0500=
=0A=
++++ git/systemd/CMakeLists.txt 2013-03-12 16:53:57.052896347 +0500=0A=
+@@ -46,15 +46,15 @@ if(WITH_SYSTEMD)=0A=
+     message(STATUS "DLT adaptor udp configuration: APPID=3D${DLT_ADAPTOR_=
UDP_APPID} CTID=3D${DLT_ADAPTOR_UDP_CTID} PORT=3D${DLT_ADAPTOR_UDP_PORT}" )=
=0A=
+=0A=
+=0A=
+-    if(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})=0A=
++    #if(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})=0A=
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt.service DESTINATI=
ON ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )=0A=
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-system.service DE=
STINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )=0A=
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-receive.service D=
ESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )=0A=
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-example-user.serv=
ice DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )=0A=
+         install(FILES ${PROJECT_BINARY_DIR}/systemd/dlt-adaptor-udp.servi=
ce DESTINATION ${SYSTEMD_CONFIGURATIONS_FILES_DIR} )=0A=
+         message(STATUS "Unit files will be installed to ${SYSTEMD_CONFIGU=
RATIONS_FILES_DIR} after make install" )=0A=
+-    else(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})=0A=
+-        message(STATUS "Unit files will not be installed to ${SYSTEMD_CON=
FIGURATIONS_FILES_DIR} after make install")=0A=
+-    endif(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})=0A=
++    #else(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})=0A=
++    #    message(STATUS "Unit files will not be installed to ${SYSTEMD_CO=
NFIGURATIONS_FILES_DIR} after make install")=0A=
++    #endif(EXISTS ${SYSTEMD_CONFIGURATIONS_FILES_DIR})=0A=
+=0A=
+-endif(WITH_SYSTEMD)=0A=
+\ No newline at end of file=0A=
++endif(WITH_SYSTEMD)=0A=
diff --git a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb b/recipes-exte=
nded/dlt-daemon/dlt-daemon_2.9.0.bb=0A=
index 9cdbfc0..82b46eb 100644=0A=
--- a/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb=0A=
+++ b/recipes-extended/dlt-daemon/dlt-daemon_2.9.0.bb=0A=
@@ -19,7 +19,9 @@ LICENSE =3D "MPLv2"=0A=
 LIC_FILES_CHKSUM =3D "file://LICENSE.txt;md5=3D99ba60c3fad7eaf8c56bca6dd75=
cba09 \=0A=
                    file://MPL.txt;md5=3Dccdb2761cef70c8b2612624c323f89dc"=
=0A=
=0A=
-SRC_URI =3D "git://git.projects.genivi.org/${PN}.git;protocol=3Dgit;tag=3D=
v${PV}"=0A=
+SRC_URI =3D "git://git.projects.genivi.org/${PN}.git;protocol=3Dgit;tag=3D=
v${PV} \=0A=
+           file://systemd_service_installation.patch \=0A=
+          "=0A=
=0A=
 S =3D "${WORKDIR}/git"=0A=
=0A=
@@ -31,3 +33,15 @@ FILES_${PN}-systemd +=3D "${systemd_unitdir}/system/"=0A=
 PACKAGES =3D+ "${PN}-systemd"=0A=
=0A=
 EXTRA_OECMAKE =3D "-DWITH_SYSTEMD=3DON"=0A=
+=0A=
+PARALLEL_MAKE =3D ""=0A=
+=0A=
+do_install_append() {=0A=
+    # Remove "User=3Dgenivi" option from systemd service files, as we want=
 this to go to default setting=0A=
+    sed -i '/User/d' ${D}/${systemd_unitdir}/system/*.service=0A=
+=0A=
+    # Install the required systemd services links=0A=
+    install -d ${D}${base_libdir}/systemd/system/basic.target.wants=0A=
+    ln -sf ../dlt.service ${D}${base_libdir}/systemd/system/basic.target.w=
ants/dlt.service=0A=
+    ln -sf ../dlt-system.service ${D}${base_libdir}/systemd/system/basic.t=
arget.wants/dlt-system.service=0A=
+}=0A=
--=0A=
1.7.9.5=0A=
=0A=

