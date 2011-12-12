Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31952E0132F
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 11:22:54 -0800 (PST)
Received: from mail-qy0-f180.google.com ([209.85.216.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 12 Dec 2011 11:22:53 -0800
Received: by qcse1 with SMTP id e1so3870375qcs.25
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2011 11:22:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.237.5 with SMTP id uy5mr16250496igc.50.1323717772073; Mon,
	12 Dec 2011 11:22:52 -0800 (PST)
Received: by 10.50.66.2 with HTTP; Mon, 12 Dec 2011 11:22:52 -0800 (PST)
Date: Mon, 12 Dec 2011 11:22:52 -0800
Message-ID: <CAPhnLPApkRzc0VABdz=duP1_BRsBoNkxU8650EBbuM3WzXkCaw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: Yocto Mirroring.
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
X-List-Received-Date: Mon, 12 Dec 2011 19:22:54 -0000
Content-Type: multipart/alternative; boundary=f46d044787fb965be604b3ea0f2f

--f46d044787fb965be604b3ea0f2f
Content-Type: text/plain; charset=ISO-8859-1

All,

You may have noticed over the past few days some slowness when trying to
access the autobuilder or the downloads area on the yocto websites. This
was due to someone attempting to wget the entire downloads directory and
accounting for about 75% of the hits against the webserver over a period of
a few days.

Please, if you are attempting to mirror via wget, don't.

- It's inefficient. rsync is better.
- You really don't need all of downloads.yoctoproject.org, do you? If you
do, see above and email me.
- If you end up doing it and your wget ends up causing bandwidth issues due
to flooding our connection, you will end up bandwidth limited (which is bad
if you ever need to use the autobuilder PREMIRRORS/MIRRORS)
- It effects other users and it's really not the right way of doing it.

If you wish to mirror the yocto download site, please contact me and I can
tell you how to go about doing it correctly. Also, please remember that we
are mirrored via kernel.org @ http://mirrors.kernel.org/yocto

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--f46d044787fb965be604b3ea0f2f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<br><br>You may have noticed over the past few days some slowness when =
trying to access the autobuilder or the downloads area on the yocto website=
s. This was due to someone attempting to wget the entire downloads director=
y and accounting for about 75% of the hits against the webserver over a per=
iod of a few days.<br>
<br>Please, if you are attempting to mirror via wget, don&#39;t. <br><br>- =
It&#39;s inefficient. rsync is better.<br>- You really don&#39;t need all o=
f <a href=3D"http://downloads.yoctoproject.org">downloads.yoctoproject.org<=
/a>, do you? If you do, see above and email me.<br>
- If you end up doing it and your wget ends up causing bandwidth issues due=
 to flooding our connection, you will end up bandwidth limited (which is ba=
d if you ever need to use the autobuilder PREMIRRORS/MIRRORS) <br>- It effe=
cts other users and it&#39;s really not the right way of doing it. <br>
<br>If you wish to mirror the yocto download site, please contact me and I =
can tell you how to go about doing it correctly. Also, please remember that=
 we are mirrored via <a href=3D"http://kernel.org">kernel.org</a> @ <a href=
=3D"http://mirrors.kernel.org/yocto">http://mirrors.kernel.org/yocto</a> <b=
r clear=3D"all">
<br>-- <br>Elizabeth Flanagan<br>Yocto Project<br>Build and Release<br>

--f46d044787fb965be604b3ea0f2f--
