Return-Path: <food.dedication@aleeas.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD166C433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Feb 2022 20:59:42 +0000 (UTC)
Subject: Issues setting SELinux file contexts during build #selinux
To: yocto@lists.yoctoproject.org
From: "Ansh" <food.dedication@aleeas.com>
X-Originating-Location: US (173.36.212.118)
X-Originating-Platform: Mac Chrome 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 02 Feb 2022 12:59:41 -0800
Message-ID: <2sGe.1643835581827185787.icAh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="2hgGUzXiargS2CU4lKBO"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Feb 2022 20:59:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56048

--2hgGUzXiargS2CU4lKBO
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am currently working on enabling SELinux on an x86 system (Yocto version =
2.4). I was able to successfully enable SELinux on the target but need to s=
et SELinux file contexts during the build. I have inherited the=C2=A0selinu=
x-image.bbclass in my image recipe and can confirm that it's executed durin=
g the build. But, when I boot up the image on target all the files have the=
 wrong (or default) file contexts. For e.g. all files in /etc have system_u=
:object_r:root_t:s0 labels. When I run restorecon, the files get the correc=
t labels. I have managed to narrow it down to the following two issues:

1. setfiles fails during the build but doesn't return any error or error ms=
g causing the build to pass

I looked into the pseudo database table xattr to check if the xattrs are se=
t during the build and found the table empty. So I modified the selinux-ima=
ge.bbclass and added a setfattr to set xattr for a single file in /etc befo=
re it runs setfiles. After the build, I found one entry for the same file f=
or which I was using the setfattr command in the xattr table of pseudo db a=
nd was also able to get the xattr using getfattr in the modified selinux-im=
age.bbclass. So that means setfattr was working as expected but not setfile=
s. Next, I enabled some debug logs for pseudo and found the following that =
points to setfiles failing after it tries to read=C2=A0security.restorecon_=
last. Any pointer as to why it is trying to read security.restorecon_last x=
attr (even though we are not using -d option for setfiles) and fails if it =
doesn't find it?

27286: wrapper called: getxattr
27286: getxattr - signals blocked, obtaining lock
27286: <nil> + build/tmp/work/x86_ctm-poky-linux-musl/custom-image/1.0-r0/r=
ootfs =3D> <build/tmp/work/x86_ctm-poky-linux-musl/custom-image/1.0-r0/root=
fs>
27286: base_path: <nil></>build/tmp/work/x86_ctm-poky-linux-musl/custom-ima=
ge/1.0-r0/rootfs
27286: root_path [getxattr, 7008]: 'build/tmp/work/x86_ctm-poky-linux-musl/=
custom-image/1.0-r0/rootfs' from 'build/tmp/work/x86_ctm-poky-linux-musl/cu=
stom-image/1.0-r0/rootfs'
27286: getxattr(build/tmp/work/x86_ctm-poky-linux-musl/custom-image/1.0-r0/=
rootfs [fd -1], security.restorecon_last)
27286: getxattr, name 'security.restorecon_last'
27286: get-xattr security.restorecon_last -> build/tmp/work/x86_ctm-poky-li=
nux-musl/custom-image/1.0-r0/rootfs (+buf) (040755): processing request [in=
o 146615528]
27286: sending request [ino 146615528]
27286: sending a message: ino 146615528
27286: msg type 3 (get-xattr), external path build/tmp/work/x86_ctm-poky-li=
nux-musl/custom-image/1.0-r0/rootfs, mode 040755
27286: wrote 184 bytes
27286: sent!
27286: got header, type 4, pathlen 0
27286: got response type 4
27286: (27286) fail
2. xattrs set during the build are not present on the target

As mentioned above, I modified to selinux-image.bbclass to set xattr for a =
single file in /etc. This works during the build since I can see the corres=
ponding entry in pseudo db and also can get the set xattr using getfattr in=
 the same selinux-image.bbclass. But when I boot up the image on target the=
 xattr is replaced by (I am guessing) the default SELinux label of system_u=
:object_r:root_t:s0. I am using initramfs for packaging the root filesystem=
 and=C2=A0I found that cpio ignores xattrs and also initramfs doesn't suppo=
rt xattrs. Does that mean I can't set the file contexts during the build be=
cause I am using initramfs and cpio?

Thanks,
Ansh

--2hgGUzXiargS2CU4lKBO
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />I am currently working on enabling SELinux on an x86 sys=
tem (Yocto version 2.4). I was able to successfully enable SELinux on the t=
arget but need to set SELinux file contexts during the build. I have inheri=
ted the&nbsp;selinux-image.bbclass in my image recipe and can confirm that =
it's executed during the build. But, when I boot up the image on target all=
 the files have the wrong (or default) file contexts. For e.g. all files in=
 /etc have&nbsp;<em>system_u:object_r:root_t:s0</em> labels. When I run res=
torecon, the files get the correct labels. I have managed to narrow it down=
 to the following two issues:<br /><br /><em>1. setfiles fails during the b=
uild but doesn't return any error or error msg causing the build to pass</e=
m><br /><br />I looked into the pseudo database table xattr to check if the=
 xattrs are set during the build and found the table empty. So I modified t=
he selinux-image.bbclass and added a setfattr to set xattr for a single fil=
e in /etc before it runs setfiles. After the build, I found one entry for t=
he same file for which I was using the setfattr command in the xattr table =
of pseudo db and was also able to get the xattr using getfattr in the modif=
ied selinux-image.bbclass. So that means setfattr was working as expected b=
ut not setfiles. Next, I enabled some debug logs for pseudo and found the f=
ollowing that points to setfiles failing after it tries to read&nbsp;securi=
ty.restorecon_last. Any pointer as to why it is trying to read security.res=
torecon_last xattr (even though we are not using -d option for setfiles) an=
d fails if it doesn't find it?<br /><br />
<pre class=3D"code-java" style=3D"margin-bottom: 0px; padding: 0px; max-hei=
ght: 30em; white-space: pre-wrap; overflow-wrap: normal; color: #172b4d; fo=
nt-size: 12px; background-color: #f4f5f7;">27286: wrapper called: getxattr
27286: getxattr - signals blocked, obtaining lock
27286: &lt;nil&gt; + build/tmp/work/x86_ctm-poky-linux-musl/custom-image/1.=
0-r0/rootfs =3D&gt; &lt;build/tmp/work/x86_ctm-poky-linux-musl/custom-image=
/1.0-r0/rootfs&gt;<br />27286: base_path: &lt;nil&gt;&lt;/&gt;build/tmp/wor=
k/x86_ctm-poky-linux-musl/custom-image/1.0-r0/rootfs<br />27286: root_path =
[getxattr, 7008]: <span class=3D"code-quote" style=3D"color: #009100;">'bui=
ld/tmp/work/x86_ctm-poky-linux-musl/custom-image/1.0-r0/rootfs'<span style=
=3D"color: #172b4d;"> from </span><span class=3D"code-quote">'build/tmp/wor=
k/x86_ctm-poky-linux-musl/custom-image/1.0-r0/rootfs'<br /></span></span>27=
286: getxattr(build/tmp/work/x86_ctm-poky-linux-musl/custom-image/1.0-r0/ro=
otfs [fd -1], security.restorecon_last)<br />27286: getxattr, name <span cl=
ass=3D"code-quote" style=3D"color: #009100;">'security.restorecon_last'</sp=
an>
27286: get-xattr security.restorecon_last -&gt; build/tmp/work/x86_ctm-poky=
-linux-musl/custom-image/1.0-r0/rootfs (+buf) (040755): processing request =
[ino 146615528]<br />27286: sending request [ino 146615528]
27286: sending a message: ino 146615528
27286: msg type 3 (get-xattr), external path build/tmp/work/x86_ctm-poky-li=
nux-musl/custom-image/1.0-r0/rootfs, mode 040755<br />27286: wrote 184 byte=
s
27286: sent!
27286: got header, type 4, pathlen 0
27286: got response type 4
27286: (27286) fail</pre>
<br /><em>&nbsp;2. xattrs set during the build are not present on the targe=
t</em><br /><br />As mentioned above, I modified to selinux-image.bbclass t=
o set xattr for a single file in /etc. This works during the build since I =
can see the corresponding entry in pseudo db and also can get the set xattr=
 using getfattr in the same selinux-image.bbclass. But when I boot up the i=
mage on target the xattr is replaced by (I am guessing) the default SELinux=
 label of <em>system_u:object_r:root_t:s0. </em>I am using initramfs for pa=
ckaging the root filesystem and&nbsp;I found that cpio ignores xattrs and a=
lso initramfs doesn't support xattrs. Does that mean I can't set the file c=
ontexts during the build because I am using initramfs and cpio?<br /><br />=
Thanks,<br />Ansh<br />

--2hgGUzXiargS2CU4lKBO--

