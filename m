Return-Path: <bojanjov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D619EC433F5
	for <webhook@archiver.kernel.org>; Tue, 23 Nov 2021 12:05:23 +0000 (UTC)
Subject: Build ROS2 package that contains custom interfaces (msg, srv) #yocto
To: yocto@lists.yoctoproject.org
From: "bojankoce" <bojanjov@gmail.com>
X-Originating-Location: FR (82.65.189.176)
X-Originating-Platform: Windows Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Nov 2021 04:05:23 -0800
Message-ID: <cKYl.1637669123302293433.pip6@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="FBjlYCAbVPs4nu85lY69"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Nov 2021 12:05:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55394

--FBjlYCAbVPs4nu85lY69
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi, guys!

I have a DART-MX8M-Mini machine ( https://www.variscite.com/product/system-=
on-module-som/cortex-a53-krait/dart-mx8m-mini-nxp-i-mx8m-mini/?utm_source=
=3Dgoogle&utm_medium=3Dcpc&utm_campaign=3D291971056&utm_content=3D532110069=
537&utm_term=3D&gclid=3DCjwKCAjwh5qLBhALEiwAioods_4YBjAwe9mqeq7pdZ58inI733n=
hLfbFsKz_EaNXLnY88O6qknOWsRoCuT0QAvD_BwE ) running Yocto Hardknott.

I properly added meta-ros layer and ROS2 foxy distro to our Yocto build by =
following instructions from here ( https://github.com/ros/meta-ros/wiki/Ope=
nEmbedded-Build-Instructions#add-meta-ros-to-an-existing-openembedded-proje=
ct ) ( Sanity Tests ( https://github.com/ros/meta-ros/wiki/OpenEmbedded-Bui=
ld-Instructions#ros-2-sanity-test ) pass successfully).

With the help of devtool , I was able to build my custom ROS2 package (cont=
aining simple talker and listener nodes - link ( https://github.com/bojanko=
ce/my_first_yocto_pkg ) ). For that to happen, I got some great support fro=
m the Yocto community - link ( https://lists.yoctoproject.org/g/yocto/topic=
/cross_compile_custom_ros2/86906676?p=3D,,,20,0,0,0::recentpostdate/sticky,=
,,20,2,0,86906676,previd=3D1636382356558417769,nextid=3D1636039783275782835=
&previd=3D1636382356558417769&nextid=3D1636039783275782835 ).

Here is the content of my-first-yocto-pkg_git.bb recipe that enabled me to =
download my source code from the git and properly build the ROS2 package:

# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

# Unable to find any files that looked like license statements. Check the a=
ccompanying
# documentation and source headers and set LICENSE and LIC_FILES_CHKSUM acc=
ordingly.
#
# NOTE: LICENSE is being set to "CLOSED" to allow you to at least start bui=
lding - if
# this is not accurate with respect to the licensing of the software being =
built (it
# will not be in most cases) you must specify the correct value before usin=
g this
# recipe for anything other than initial testing/development!

DESCRIPTION =3D "Examples of minimal publisher/subscriber using rclcpp."
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://package.xml;beginline=3D8;endline=3D8;md5=3D12=
c26a18c7f493fdc7e8a93b16b7c04f"

SRC_URI =3D "git://github.com/bojankoce/my_first_yocto_pkg;protocol=3Dhttps=
"

# Modify these as desired
PV =3D "0.1.0"
SRCREV =3D "1312445de2e6861d9561c0f89f4827b94c2ff6b1"

S =3D "${WORKDIR}/git"

# NOTE: unable to map the following CMake package dependencies: rclcpp amen=
t_lint_auto std_msgs ros_ament_cmake
inherit ros_distro_foxy
inherit ros_superflore_generated
inherit ros_ament_cmake

ROS_BUILD_DEPENDS =3D " \
   rclcpp \
   std-msgs \
"

ROS_BUILDTOOL_DEPENDS =3D " \
	ament-cmake-native \
"

ROS_EXPORT_DEPENDS =3D ""

ROS_BUILDTOOL_EXPORT_DEPENDS =3D ""

ROS_EXEC_DEPENDS =3D " \
   launch-ros \
   std-msgs \
"

DEPENDS =3D "${ROS_BUILD_DEPENDS} ${ROS_BUILDTOOL_DEPENDS}"

DEPENDS +=3D "${ROS_EXPORT_DEPENDS} ${ROS_BUILDTOOL_EXPORT_DEPENDS}"

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
#EXTRA_OECMAKE =3D ""

I currently have a hard time building my ROS2 package that contains only cu=
stom ROS2 interfaces (messages and services).
CMakeLists.txt file of that package contains the following lines that are c=
ausing the build errors:

find_package(rosidl_default_generators REQUIRED)
...

rosidl_generate_interfaces(${PROJECT_NAME}
 "msg/MessageX.msg"
 "msg/MessageY.msg"
 "srv/SrvX.srv"
 "srv/SrvY.srv"
)

Do you have any idea about what should be included as inherit xxxxx or with=
in ROS_BUILD_DEPENDS / ROS_BUILDTOOL_DEPENDS / ROS_EXEC_DEPENDS... in order=
 to successfully generate the ROS2 package containing custom interfaces?

Thanks in advance for your time and efforts. It is appreciated.

Sincerely,
Bojan.

--FBjlYCAbVPs4nu85lY69
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"auto">Hi, guys!</p>
<p dir=3D"auto">I have a <a href=3D"https://www.variscite.com/product/syste=
m-on-module-som/cortex-a53-krait/dart-mx8m-mini-nxp-i-mx8m-mini/?utm_source=
=3Dgoogle&amp;utm_medium=3Dcpc&amp;utm_campaign=3D291971056&amp;utm_content=
=3D532110069537&amp;utm_term=3D&amp;gclid=3DCjwKCAjwh5qLBhALEiwAioods_4YBjA=
we9mqeq7pdZ58inI733nhLfbFsKz_EaNXLnY88O6qknOWsRoCuT0QAvD_BwE" rel=3D"nofoll=
ow">DART-MX8M-Mini machine</a> running Yocto Hardknott.</p>
<p dir=3D"auto">I properly added <code>meta-ros</code> layer and ROS2 foxy =
distro to our Yocto build by following instructions from <a href=3D"https:/=
/github.com/ros/meta-ros/wiki/OpenEmbedded-Build-Instructions#add-meta-ros-=
to-an-existing-openembedded-project">here </a>(<a href=3D"https://github.co=
m/ros/meta-ros/wiki/OpenEmbedded-Build-Instructions#ros-2-sanity-test">Sani=
ty Tests</a> pass successfully).</p>
<p dir=3D"auto">With the help of <code>devtool</code>, I was able to build =
my custom ROS2 package (containing simple <code>talker</code> and <code>lis=
tener</code> nodes - <a href=3D"https://github.com/bojankoce/my_first_yocto=
_pkg">link</a>). For that to happen, I got some great support from the Yoct=
o community - <a href=3D"https://lists.yoctoproject.org/g/yocto/topic/cross=
_compile_custom_ros2/86906676?p=3D,,,20,0,0,0::recentpostdate/sticky,,,20,2=
,0,86906676,previd=3D1636382356558417769,nextid=3D1636039783275782835&amp;p=
revid=3D1636382356558417769&amp;nextid=3D1636039783275782835" rel=3D"nofoll=
ow">link</a>.</p>
<p dir=3D"auto">Here is the content of <code>my-first-yocto-pkg_git.bb</cod=
e> recipe that enabled me to download my source code from the git and prope=
rly build the ROS2 package:</p>
<div class=3D"snippet-clipboard-content position-relative overflow-auto">
<pre><code># Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

# Unable to find any files that looked like license statements. Check the a=
ccompanying
# documentation and source headers and set LICENSE and LIC_FILES_CHKSUM acc=
ordingly.
#
# NOTE: LICENSE is being set to "CLOSED" to allow you to at least start bui=
lding - if
# this is not accurate with respect to the licensing of the software being =
built (it
# will not be in most cases) you must specify the correct value before usin=
g this
# recipe for anything other than initial testing/development!

DESCRIPTION =3D "Examples of minimal publisher/subscriber using rclcpp."
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://package.xml;beginline=3D8;endline=3D8;md5=3D12=
c26a18c7f493fdc7e8a93b16b7c04f"

SRC_URI =3D "git://github.com/bojankoce/my_first_yocto_pkg;protocol=3Dhttps=
"

# Modify these as desired
PV =3D "0.1.0"
SRCREV =3D "1312445de2e6861d9561c0f89f4827b94c2ff6b1"

S =3D "${WORKDIR}/git"

# NOTE: unable to map the following CMake package dependencies: rclcpp amen=
t_lint_auto std_msgs ros_ament_cmake
inherit ros_distro_foxy
inherit ros_superflore_generated
inherit ros_ament_cmake

ROS_BUILD_DEPENDS =3D " \
    rclcpp \
    std-msgs \
"

ROS_BUILDTOOL_DEPENDS =3D " \
	ament-cmake-native \
"

ROS_EXPORT_DEPENDS =3D ""

ROS_BUILDTOOL_EXPORT_DEPENDS =3D ""

ROS_EXEC_DEPENDS =3D " \
    launch-ros \
    std-msgs \
"

DEPENDS =3D "${ROS_BUILD_DEPENDS} ${ROS_BUILDTOOL_DEPENDS}"

DEPENDS +=3D "${ROS_EXPORT_DEPENDS} ${ROS_BUILDTOOL_EXPORT_DEPENDS}"

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
#EXTRA_OECMAKE =3D ""
</code></pre>
</div>
<p dir=3D"auto">I currently have a hard time building my ROS2 package that =
contains only custom ROS2 interfaces (messages and services).<br /><code>CM=
akeLists.txt</code> file of that package contains the following lines that =
are causing the build errors:</p>
<div class=3D"snippet-clipboard-content position-relative overflow-auto">
<pre><code>find_package(rosidl_default_generators REQUIRED)
...

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/MessageX.msg"
  "msg/MessageY.msg"
  "srv/SrvX.srv"
  "srv/SrvY.srv"
 )
</code></pre>
</div>
<p dir=3D"auto">Do you have any idea about what should be included as <code=
>inherit xxxxx</code> or within <code>ROS_BUILD_DEPENDS</code>/<code>ROS_BU=
ILDTOOL_DEPENDS </code>/<code>ROS_EXEC_DEPENDS</code> ... in order to succe=
ssfully generate the ROS2 package containing custom interfaces?</p>
<p dir=3D"auto">Thanks in advance for your time and efforts. It is apprecia=
ted.</p>
<p dir=3D"auto">Sincerely,<br />Bojan.</p>

--FBjlYCAbVPs4nu85lY69--

