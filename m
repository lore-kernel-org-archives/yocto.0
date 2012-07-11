Return-Path: <navani.srivastava@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E692E002A8
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 05:28:38 -0700 (PDT)
Received: by bkty5 with SMTP id y5so958313bkt.35
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 05:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=gUgtrTpTO3jXwOwLfg0xBn8/pRo9BS2Z4bLfjjOoLFg=;
	b=CYVXXvBnZHTqUSoZgw1pXz+JjugUxk7+t+DOB+JOxuX9mcsb0m6mlTSJeMy6yVNroz
	aOq28SJ/1FcWrKce2Ltn4XI0UNDevDT+x4uvnZ/Gm5QuG3Ly+EeVsFQvzIWaCiQ4fUOg
	99ar5wtLwDZugr28lwBJ4Fl7CejuQk9R1csP9RNf9GDXwwofN3HcBWyaQBJKPCPdyWAY
	FOQC9t5/Aqr9ELbezQidj7+pNjrXCO56Y5Ef0UY0LCBgywQhFP5x8ugCW0FrN42X1TTZ
	tyLbB39SGKFj+hH9PQzUbdJjiVaUpVrlA63mlutay+z2b6+utlbPEsAPtVKqbmouCVT9
	SwIQ==
Received: by 10.205.119.208 with SMTP id fv16mr9439289bkc.100.1342009716828;
	Wed, 11 Jul 2012 05:28:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.205.34.4 with HTTP; Wed, 11 Jul 2012 05:28:16 -0700 (PDT)
From: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 11 Jul 2012 17:58:16 +0530
Message-ID: <CA+Z6RkUQy_rcRPe8OAKek+aNs-LG106C3aXfXTwS1_0ZbZB-kw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error while adding a new recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jul 2012 12:28:38 -0000
Content-Type: multipart/alternative; boundary=00151759355c74ec2104c48cfceb

--00151759355c74ec2104c48cfceb
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am working on poky-denzil-1.0 and I have added a recipe to copy pre-built
binaries and some documents to specified path of rootfs. I am able to copy
documents in rootfs successfully but while copying binaries to rootfs, I am
getting following error -

NOTE: package colorado-1.0-r0: task do_package: Started
ERROR: runstrip: ''arm-poky-linux-gnueabi-strip' --remove-section=.comment
--remove-section=.note
'/home/navani/poky_test/build/tmp/work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/package/home/Leica/Bin/colorado_gui_bk''
strip command failed
ERROR: QA Issue: Architecture did not match (40 to 3) on
/work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/colorado_gui_bk
ERROR: QA run found fatal errors. Please consider fixing them.
ERROR: Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/navani/poky_test/build/tmp/work/armv6-vfp-poky-linux-gnueabi/colorado-1.0-r0/temp/log.do_package.29705
NOTE: package colorado-1.0-r0: task do_package: Failed
ERROR: Task 151 (/home/navani/poky_test/meta-EB/recipes-colorado/colorado/
colorado_1.0.bb, do_package) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1127 tasks of which 1119 didn't need to be
rerun and 1 failed.

Any help is appreciable.

Thanks and Regards
Navani Kamal Srivastava

--00151759355c74ec2104c48cfceb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I am working on poky-denzil-1.0 and I have added a recipe to cop=
y pre-built binaries and some documents to specified path of rootfs. I am a=
ble to copy documents in rootfs successfully but while copying binaries to =
rootfs, I am getting following error -<br>

<br>NOTE: package colorado-1.0-r0: task do_package: Started<br>ERROR: runst=
rip: &#39;&#39;arm-poky-linux-gnueabi-strip&#39; --remove-section=3D.commen=
t --remove-section=3D.note &#39;/home/navani/poky_test/build/tmp/work/armv6=
-vfp-poky-linux-gnueabi/colorado-1.0-r0/package/home/Leica/Bin/colorado_gui=
_bk&#39;&#39; strip command failed<br>

ERROR: QA Issue: Architecture did not match (40 to 3) on /work/armv6-vfp-po=
ky-linux-gnueabi/colorado-1.0-r0/packages-split/colorado/home/Leica/Bin/col=
orado_gui_bk<br>ERROR: QA run found fatal errors. Please consider fixing th=
em.<br>

ERROR: Function failed: do_package_qa<br>ERROR: Logfile of failure stored i=
n: /home/navani/poky_test/build/tmp/work/armv6-vfp-poky-linux-gnueabi/color=
ado-1.0-r0/temp/log.do_package.29705<br>NOTE: package colorado-1.0-r0: task=
 do_package: Failed<br>

ERROR: Task 151 (/home/navani/poky_test/meta-EB/recipes-colorado/colorado/<=
a href=3D"http://colorado_1.0.bb">colorado_1.0.bb</a>, do_package) failed w=
ith exit code &#39;1&#39;<br>NOTE: Tasks Summary: Attempted 1127 tasks of w=
hich 1119 didn&#39;t need to be rerun and 1 failed.<br>

<br>Any help is appreciable.<br><br>Thanks and Regards<br>Navani Kamal Sriv=
astava<br><br>

--00151759355c74ec2104c48cfceb--
