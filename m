Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EEF4E0053F
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 11:25:53 -0800 (PST)
Received: by mail-vb0-f54.google.com with SMTP id p6so2847899vbe.27
	for <yocto@yoctoproject.org>; Tue, 19 Nov 2013 11:25:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=VX4t5srRaeyxrVeF5L4+DHrbAemTTczkW8p/2Tv0EJA=;
	b=QDuopbuIbczYJLiUWhq2FFsG4mIQiWjIy074bnWYosYI3oSgdvn3ogc1d+FIP/lEQU
	OE5JrFmPqZcQW+tIHptd0NKaRduhycgCRxetqTkPbju+jLxrfa9w2z88CpIgFokASxZ3
	D6qDVon9Afq/x8C9izb96riEVVIfFKEAZup6qSt4+z0URaLnNNk7HyKDF5mD0AXXAtsp
	CHQOecKLjMnKT3LoyWwmwZ3mDWvcQJYF/tHIjNfHCOmdhRv3ZOtgBSBVUOQwrHvBEWd7
	G39vaG6gubfW0i0Q5cBzbxfsz+oTZA68NIGUgUOC6BS380J9R1V7W7cEg0BUymDwG5aG
	O2Yw==
X-Gm-Message-State: ALoCoQlyGHdvtlsn3dHfF0uRGKbZG+6rgJkPE6D9nMM3mrlKqofn3bI63ytLxTnj33npxsk5hV2W
MIME-Version: 1.0
X-Received: by 10.52.32.66 with SMTP id g2mr19440322vdi.14.1384889152769; Tue,
	19 Nov 2013 11:25:52 -0800 (PST)
Received: by 10.52.161.7 with HTTP; Tue, 19 Nov 2013 11:25:52 -0800 (PST)
Date: Tue, 19 Nov 2013 19:25:52 +0000
Message-ID: <CAPhnLPBboLn9ujr44i51nH8K5gmonhnpz8njwAMD+4hHkxo+hw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] meta-intel Released for Yocto Project 1.5
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
X-List-Received-Date: Tue, 19 Nov 2013 19:25:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I am pleased to announce the release of meta-intel for the Yocto
Project's 1.5 release.  Thank you for the meta-intel maintainers and
contributors for all their hard work.

-b

Release Name: meta-intel
Repo: git://git.yoctoproject.org/meta-intel
Branch: dora
Tag: dora-10.0.0
Hash: c86e39dd06571458c7dee6cf289d5b470c98f4bd
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/meta-intel-dora-10.0.0.tar.bz2

Board Support Packages
------------------------------------
chiefriver
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/chiefriver/meta-chiefriver-dora-10.0.0.tar.bz2
Md5sum: 53ddf64f85e5c9134c1e4ce318d61e7a

crownbay
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/crownbay/meta-crownbay-dora-10.0.0.tar.bz2
Md5sum: 92bcf9b94e1a3752b0879e3f2f15afee

crownbay-noemgd
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/crownbay-noemgd/meta-crownbay-noemgd-dora-10.0.0.tar.bz2
Md5sum: 7da983a218afbfdc75c90447e4667e38

crystalforest
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/crystalforest/meta-crystalforest-dora-10.0.0.tar.bz2
Md5sum: 5a3bc6a78f3cdf1dfd0fcb93a42ab1e0

emenlow
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/emenlow/meta-emenlow-dora-10.0.0.tar.bz2
Md5sum: 225199fe9685f972b43c0860f8dc6f3c

emenlow-noemgd
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/emenlow-noemgd/meta-emenlow-noemgd-dora-10.0.0.tar.bz2
Md5sum: 6e653f29786cc0a21a6551f71b83beaa

fri2
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/fri2/meta-fri2-dora-10.0.0.tar.bz2
Md5sum: e1c9e48f91616904603852a0ed2750e7

fri2-noemgd
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/fri2-noemgd/meta-fri2-noemgd-dora-10.0.0.tar.bz2
Md5sum: 71aac59dad80379dbf6842ded206d6fb

jasperforest
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/jasperforest/meta-jasperforest-dora-10.0.0.tar.bz2
Md5sum: a0a0a25d288ff976f25c881ce82405e8

haswell-wc
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/haswell-wc/meta-haswell-wc-dora-10.0.0.tar.bz2
Md5sum: f095e8dfd74fa0056de79f16a58bf376

n450
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/n450/meta-n450-dora-10.0.0.tar.bz2
Md5sum: 6d96fecb8b2cd5d90e5534ef56cb2177

nuc
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/nuc/meta-nuc-dora-10.0.0.tar.bz2
Md5sum: e626337289a4f3f23f0c846984c2b499

romley
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/romley/meta-romley-dora-10.0.0.tar.bz2
Md5sum: 06b82d7fd942e83dff1219fcaf206595

sugarbay
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/sugarbay/meta-sugarbay-dora-10.0.0.tar.bz2
Md5sum: 1dc884b9277e1b88c5f99575a374b661

sys940x
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/sys940x/meta-sys940x-dora-10.0.0.tar.bz2
Md5sum: f3cf53d6001df37f24323b723a159a0f

sys940x-noemgd
Download: http://Downloads.yoctoproject.org/releases/yocto/yocto-1.5/machines/sys940x-noemgd/meta-sys940x-noemgd-dora-10.0.0.tar.bz2
Md5sum: 396dba8c88013333f20e85f092cf8966

