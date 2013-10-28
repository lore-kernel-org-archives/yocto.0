Return-Path: <V.Vogelhuber@DigitalEndoscopy.de>
Received: from SRV-MSX01.digitendos.local
	(host-80-81-19-29.customer.m-online.net [80.81.19.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 839CBE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 03:22:50 -0700 (PDT)
Received: from [192.168.10.111] (192.168.10.111) by SRV-MSX01.digitendos.local
	(192.168.10.14) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Mon, 28 Oct 2013 11:22:45 +0100
Message-ID: <526E3AED.8010501@digitalendoscopy.de>
Date: Mon, 28 Oct 2013 11:22:37 +0100
From: Volker Vogelhuber <v.vogelhuber@digitalendoscopy.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-Originating-IP: [192.168.10.111]
X-TM-AS-Product-Ver: SMEX-10.1.0.2244-7.000.1014-20252.004
X-TM-AS-Result: No--7.461100-0.000000-31
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
Subject: Out of tree build yocto dylan
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
X-List-Received-Date: Mon, 28 Oct 2013 10:22:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

I'm currently trying to have the TMPDIR moved out of the normal 
repository path under dylan.
If I set it to
TMPDIR = "${TOPDIR}/../../build/tmp"
some of the build recipes fail because of the dots (e.g. mkdir-p.pl in 
openssl and ti-dsp-link from the meta-ti repository). I fixed it by 
adding a require conf/gettmpdir.inc containing the following
code:

def gettmpdir(d):
     return os.path.abspath(d.getVar("TOPDIR", True) + "/../../build/tmp");

and set the TMPDIR within the local.conf now to TMPDIR = "${@gettmpdir(d)}"
But I wonder if it wouldn't be a good idea to introduce a call to 
os.path.abspath on the TMPDIR in general.



