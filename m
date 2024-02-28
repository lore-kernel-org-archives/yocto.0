Return-Path: <patrick.huesmann@desy.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5FF7C47DD9
	for <webhook@archiver.kernel.org>; Wed, 28 Feb 2024 17:37:06 +0000 (UTC)
Subject: Re: [yocto] dnf/libsolv vs. package feed with commit hashes in version strings
To: Alexander Kanavin <alex.kanavin@gmail.com>,yocto@lists.yoctoproject.org
From: patrick.huesmann@desy.de
X-Originating-Location: Hamburg, Free and Hanseatic City of Hamburg, DE (84.162.109.92)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 28 Feb 2024 09:37:04 -0800
References: <CANNYZj9rDDcYq+W0fmi1sxPV+d2Z+Vu0B0qggBZTSrgeW9UY8A@mail.gmail.com>
In-Reply-To: <CANNYZj9rDDcYq+W0fmi1sxPV+d2Z+Vu0B0qggBZTSrgeW9UY8A@mail.gmail.com>
Message-ID: <23930.1709141824214834058@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sWQ2Nz9jb5xhubuC2pel"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Feb 2024 17:37:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62639

--sWQ2Nz9jb5xhubuC2pel
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

We have Yocto running on FPGA boards; the Linux images and package feeds in=
clude bitstream files to download into the FPGA.
These bitstreams cannot be built within the Yocto/BitBake system, because t=
hey require special (closed source) build tools, take ages to build, etc.

So they are built somewhere outside BitBake (either on the local machine or=
 on a build server) and provided as binaries via file:// or http://. But th=
ere are a bunch of complications:

- The version information (version string, git hash) has to be extracted fr=
om the filename. The files are named like "foobar_1.2.3-g12345678.xsa" and =
from that we derive the version 1.2.3 and SRCREV 12345678. The recipe doesn=
't know the filename in advance; in case of the local filesystem it is glob=
bed and in case of the build server it is retrieved via Jenkins REST API.

- For some systems we need to bundle multiple bitstreams (variants), then a=
t runtime an application specific script chooses one of them based on CPU I=
D, EEPROM contents, config files, etc. Hence the sub-packages.

- Some metadata (file basenames, versions, etc.) has to be passed to depend=
ent recipes that extract further stuff from the original files.

See our bbappend and the original bb (from Xilinx) below.

This has already grown into quite a monstrosity, so I wouldn't be averse to=
 rewrite/refactor it, especially if you happen to have a better idea how to=
 implement it.

Thanks!
Patrick

https://github.com/MicroTCA-Tech-Lab/meta-techlab-utils/blob/rel-v2021.2/re=
cipes-bsp/device-tree-from-bd/external-hdf.bbappend
https://github.com/Xilinx/meta-xilinx-tools/blob/rel-v2021.2/recipes-bsp/hd=
f/external-hdf.bb

--sWQ2Nz9jb5xhubuC2pel
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,<br /><br />We have Yocto running on FPGA boards; the Linux images =
and package feeds include bitstream files to download into the FPGA.<br />T=
hese bitstreams cannot be built within the Yocto/BitBake system, because th=
ey require special (closed source) build tools, take ages to build, etc.<br=
 /><br />So they are built somewhere outside BitBake (either on the local m=
achine or on a build server) and provided as binaries via file:// or http:/=
/. But there are a bunch of complications:<br /><br />- The version informa=
tion (version string, git hash) has to be extracted from the filename. The =
files are named like "foobar_1.2.3-g12345678.xsa" and from that we derive t=
he version 1.2.3 and SRCREV 12345678. The recipe doesn't know the filename =
in advance; in case of the local filesystem it is globbed and in case of th=
e build server it is retrieved via Jenkins REST API.<br /><br />- For some =
systems we need to bundle multiple bitstreams (variants), then at runtime a=
n application specific script chooses one of them based on CPU ID, EEPROM c=
ontents, config files, etc. Hence the sub-packages.<br /><br />- Some metad=
ata (file basenames, versions, etc.) has to be passed to dependent recipes =
that extract further stuff from the original files.<br /><br />See our bbap=
pend and the original bb (from Xilinx) below.<br /><br />This has already g=
rown into quite a monstrosity, so I wouldn't be averse to rewrite/refactor =
it, especially if you happen to have a better idea how to implement it.<br =
/><br />Thanks!<br />Patrick<br /><br />https://github.com/MicroTCA-Tech-La=
b/meta-techlab-utils/blob/rel-v2021.2/recipes-bsp/device-tree-from-bd/exter=
nal-hdf.bbappend<br />https://github.com/Xilinx/meta-xilinx-tools/blob/rel-=
v2021.2/recipes-bsp/hdf/external-hdf.bb

--sWQ2Nz9jb5xhubuC2pel--

