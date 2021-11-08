Return-Path: <bojanjov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10CA3C433F5
	for <webhook@archiver.kernel.org>; Mon,  8 Nov 2021 14:39:17 +0000 (UTC)
Subject: Cross-compile custom ROS2 package for Yocto #bitbake
To: yocto@lists.yoctoproject.org
From: "bojankoce" <bojanjov@gmail.com>
X-Originating-Location: =?utf-8?b?QXJwYWpvbiwgw45sZS1kZS1GcmFuY2UsIEZSICg5?=
 =?utf-8?b?MS4xNzQuMjM1LjIwMSk=?=
X-Originating-Platform: Windows Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Nov 2021 06:39:16 -0800
Message-ID: <mtJp.1636382356510086252.8dYF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ROFMTJO69E8grOXOAUTr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Nov 2021 14:39:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55270

--ROFMTJO69E8grOXOAUTr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Sirs,

I have a hard time to cross-compile and to properly include the custom ROS2=
 foxy package into the Yocto image. I properly added meta-ros layer and ROS=
2 foxy distro to our Yocto build by following instructions from here ( http=
s://github.com/ros/meta-ros/wiki/OpenEmbedded-Build-Instructions#add-meta-r=
os-to-an-existing-openembedded-project ) ( Sanity Tests ( https://github.co=
m/ros/meta-ros/wiki/OpenEmbedded-Build-Instructions#ros-2-sanity-test ) pas=
s successfully).

I wanted to use a devtool and build a simple custom ROS2 package containing=
 publisher and subscriber nodes. The source code of the package is on the g=
it - link ( https://github.com/bojankoce/ros2pkg ).

I used tips and tricks from here ( https://wiki.yoctoproject.org/wiki/TipsA=
ndTricks/Creating_Recipes_for_ROS_modules ) to create ROS2 recipes with the=
 devtool. My custom bitbake recipe for the simple ROS2 package looks like t=
his ( my-first-yocto-pkg_git.bb file):

DESCRIPTION =3D "Example of minimal publisher/subscriber using rclcpp."
LICENSE =3D "Apache-2.0"
LIC_FILES_CHKSUM =3D "file://package.xml;beginline=3D8;endline=3D8;md5=3D3a=
75fd635766e2f76c3d90ee6495f310"

SRC_URI =3D "git://github.com/bojankoce/ros2pkg;protocol=3Dhttps"

# Modify these as desired
PV =3D "0.1.0"
SRCREV =3D "1312445de2e6861d9561c0f89f4827b94c2ff6b1"

DEPENDS =3D "rclcpp std-msgs"

S =3D "${WORKDIR}/git"

# NOTE: unable to map the following CMake package dependencies: rclcpp amen=
t_lint_auto std_msgs ros_ament_cmake
inherit ros_ament_cmake

However, when I tried to build the package with the devtool build my-first-=
yocto-pkg command, I get the following error:

CMake Error at CMakeLists. txt : 19 ( find_package ):
 By not providing "Findament_cmake.cmake" in CMAKE_MODULE_PATH this project
 has asked CMake to find a package configuration file provided by
 "ament_cmake" , but CMake did not find one.

 Could not find a package configuration file provided by "ament_cmake" with
 any of the following names :

   ament_cmakeConfig. cmake
   ament_cmake - config. cmake

 Add the installation prefix of "ament_cmake" to CMAKE_PREFIX_PATH or set
 "ament_cmake_DIR" to a directory containing one of the above files.  If
 "ament_cmake" provides a separate development package or SDK , be sure it
 has been installed.

The issue is around ament_cmake. I included the inherit ros_ament_cmake lin=
e into the recipe but this does not help. Do you have any idea about what I=
 am missing here? Is there any better way to cross-compile and include a cu=
stom ROS2 foxy package into the Yocto image?

Thanks in advance for your time and efforts.

Cheers,
Bojan.

--ROFMTJO69E8grOXOAUTr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div class=3D"js-editable-content">
<p>Dear Sirs,</p>
<p>I have a hard time to cross-compile and to properly include the custom R=
OS2 foxy package into the Yocto image. I properly added meta-ros layer and =
ROS2 foxy distro to our Yocto build by following instructions from <a href=
=3D"https://github.com/ros/meta-ros/wiki/OpenEmbedded-Build-Instructions#ad=
d-meta-ros-to-an-existing-openembedded-project">here</a> (<a href=3D"https:=
//github.com/ros/meta-ros/wiki/OpenEmbedded-Build-Instructions#ros-2-sanity=
-test">Sanity Tests</a> pass successfully).</p>
<p>I wanted to use a <code>devtool</code> and build a simple custom ROS2 pa=
ckage containing publisher and subscriber nodes. The source code of the pac=
kage is on the git - <a href=3D"https://github.com/bojankoce/ros2pkg">link<=
/a>.</p>
<p>I used tips and tricks from <a href=3D"https://wiki.yoctoproject.org/wik=
i/TipsAndTricks/Creating_Recipes_for_ROS_modules">here</a> to create ROS2 r=
ecipes with the <code>devtool</code>. My custom bitbake recipe for the simp=
le ROS2 package looks like this (<code>my-first-yocto-pkg_git.bb</code> fil=
e):</p>
<pre class=3D"prettyprint"><code><span class=3D"pln">DESCRIPTION </span><sp=
an class=3D"pun">=3D</span><span class=3D"pln"> </span><span class=3D"str">=
"Example of minimal publisher/subscriber using rclcpp."</span><span class=
=3D"pln">
LICENSE </span><span class=3D"pun">=3D</span><span class=3D"pln"> </span><s=
pan class=3D"str">"Apache-2.0"</span><span class=3D"pln">
LIC_FILES_CHKSUM </span><span class=3D"pun">=3D</span><span class=3D"pln"> =
</span><span class=3D"str">"file://package.xml;beginline=3D8;endline=3D8;md=
5=3D3a75fd635766e2f76c3d90ee6495f310"</span><span class=3D"pln">

SRC_URI </span><span class=3D"pun">=3D</span><span class=3D"pln"> </span><s=
pan class=3D"str">"git://github.com/bojankoce/ros2pkg;protocol=3Dhttps"</sp=
an><span class=3D"pln">

</span><span class=3D"com"># Modify these as desired</span><span class=3D"p=
ln">
PV </span><span class=3D"pun">=3D</span><span class=3D"pln"> </span><span c=
lass=3D"str">"0.1.0"</span><span class=3D"pln">
SRCREV </span><span class=3D"pun">=3D</span><span class=3D"pln"> </span><sp=
an class=3D"str">"1312445de2e6861d9561c0f89f4827b94c2ff6b1"</span><span cla=
ss=3D"pln">

DEPENDS </span><span class=3D"pun">=3D</span><span class=3D"pln"> </span><s=
pan class=3D"str">"rclcpp std-msgs"</span><span class=3D"pln">

S </span><span class=3D"pun">=3D</span><span class=3D"pln"> </span><span cl=
ass=3D"str">"${WORKDIR}/git"</span><span class=3D"pln">

</span><span class=3D"com"># NOTE: unable to map the following CMake packag=
e dependencies: rclcpp ament_lint_auto std_msgs ros_ament_cmake</span><span=
 class=3D"pln">
inherit ros_ament_cmake</span></code></pre>
<p>However, when I tried to build the package with the <code>devtool build =
my-first-yocto-pkg</code> command, I get the following error:</p>
<pre class=3D"prettyprint"><code><span class=3D"typ">CMake</span><span clas=
s=3D"pln"> </span><span class=3D"typ">Error</span><span class=3D"pln"> at <=
/span><span class=3D"typ">CMakeLists</span><span class=3D"pun">.</span><spa=
n class=3D"pln">txt</span><span class=3D"pun">:</span><span class=3D"lit">1=
9</span><span class=3D"pln"> </span><span class=3D"pun">(</span><span class=
=3D"pln">find_package</span><span class=3D"pun">):</span><span class=3D"pln=
">
  </span><span class=3D"typ">By</span><span class=3D"pln"> </span><span cla=
ss=3D"kwd">not</span><span class=3D"pln"> providing </span><span class=3D"s=
tr">"Findament_cmake.cmake"</span><span class=3D"pln"> </span><span class=
=3D"kwd">in</span><span class=3D"pln"> CMAKE_MODULE_PATH </span><span class=
=3D"kwd">this</span><span class=3D"pln"> project
  has asked </span><span class=3D"typ">CMake</span><span class=3D"pln"> to =
find a </span><span class=3D"kwd">package</span><span class=3D"pln"> config=
uration file provided </span><span class=3D"kwd">by</span><span class=3D"pl=
n">
  </span><span class=3D"str">"ament_cmake"</span><span class=3D"pun">,</spa=
n><span class=3D"pln"> but </span><span class=3D"typ">CMake</span><span cla=
ss=3D"pln"> did </span><span class=3D"kwd">not</span><span class=3D"pln"> f=
ind one</span><span class=3D"pun">.</span><span class=3D"pln">

  </span><span class=3D"typ">Could</span><span class=3D"pln"> </span><span =
class=3D"kwd">not</span><span class=3D"pln"> find a </span><span class=3D"k=
wd">package</span><span class=3D"pln"> configuration file provided </span><=
span class=3D"kwd">by</span><span class=3D"pln"> </span><span class=3D"str"=
>"ament_cmake"</span><span class=3D"pln"> </span><span class=3D"kwd">with</=
span><span class=3D"pln">
  any of the following names</span><span class=3D"pun">:</span><span class=
=3D"pln">

    ament_cmakeConfig</span><span class=3D"pun">.</span><span class=3D"pln"=
>cmake
    ament_cmake</span><span class=3D"pun">-</span><span class=3D"pln">confi=
g</span><span class=3D"pun">.</span><span class=3D"pln">cmake

  </span><span class=3D"typ">Add</span><span class=3D"pln"> the installatio=
n prefix of </span><span class=3D"str">"ament_cmake"</span><span class=3D"p=
ln"> to CMAKE_PREFIX_PATH </span><span class=3D"kwd">or</span><span class=
=3D"pln"> </span><span class=3D"kwd">set</span><span class=3D"pln">
  </span><span class=3D"str">"ament_cmake_DIR"</span><span class=3D"pln"> t=
o a directory containing one of the above files</span><span class=3D"pun">.=
</span><span class=3D"pln">  </span><span class=3D"typ">If</span><span clas=
s=3D"pln">
  </span><span class=3D"str">"ament_cmake"</span><span class=3D"pln"> provi=
des a separate development </span><span class=3D"kwd">package</span><span c=
lass=3D"pln"> </span><span class=3D"kwd">or</span><span class=3D"pln"> SDK<=
/span><span class=3D"pun">,</span><span class=3D"pln"> be sure it
  has been installed</span><span class=3D"pun">.</span></code></pre>
<p>The issue is around <code>ament_cmake</code>. I included the <code>inher=
it ros_ament_cmake</code> line into the recipe but this does not help. Do y=
ou have any idea about what I am missing here? Is there any better way to c=
ross-compile and include a custom ROS2 foxy package into the Yocto image?</=
p>
<p>Thanks in advance for your time and efforts.</p>
<p>Cheers, <br />Bojan.</p>
</div>

--ROFMTJO69E8grOXOAUTr--

