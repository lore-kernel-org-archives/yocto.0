Return-Path: <eisenmenger@fmp-berlin.de>
Received: from xmx2.fmp-berlin.de (xmx2.fmp-berlin.de [194.95.128.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4EE7E00406
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 01:57:52 -0700 (PDT)
Received: from msw49.fmp-berlin.de (msw49.fmp-berlin.de [194.95.130.49])
	by xmx2.fmp-berlin.de (Postfix) with ESMTP id B39E114AB41
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 10:57:45 +0200 (CEST)
Message-Id: <52149D250200001D00010E02@gwsmtp.fmp-berlin.de>
X-Mailer: Novell GroupWise Internet Agent 12.0.2 
Date: Wed, 21 Aug 2013 10:57:41 +0200
From: "Frank Eisenmenger" <eisenmenger@fmp-berlin.de>
To: <yocto@yoctoproject.org>
Mime-Version: 1.0
X-Mailman-Approved-At: Wed, 21 Aug 2013 07:05:41 -0700
Subject: Where are those images gone ?
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
X-List-Received-Date: Wed, 21 Aug 2013 08:57:52 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,

I've successfully used 'hob' (with poky-dylan-9.0.1) with atom-pc BSP in =
order to create a bootable linux on my 4 GB sdhc flash for eeepc 901.
Searching for an image-file to 'dd' to my sd-card, I found under my =
build/tmp/deploy/:

./images/core-image-x11-atom-pc.tar.bz2
./images/core-image-x11-atom-pc.ext3
./images/core-image-x11-atom-pc-20130820142138.rootfs.ext3
./images/core-image-x11-atom-pc-20130820142138.rootfs.tar.bz2

I could not find any suitable docu how to use those.=20

There're only texts to use 'hddimage' files (e.g. www.yoctoproject.org/down=
load/intel-atom-based-pcs-and-devices ), I was unable to create using =
'hob'.

Regards,

Frank


=20


