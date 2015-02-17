Return-Path: <Georg.PIEWALD@frequentis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93714E0081E; Tue, 17 Feb 2015 04:56:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [195.20.158.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 66 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Feb 2015 04:56:56 PST
Received: from mail1.frequentis.com (mail1.frequentis.com [195.20.158.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C0EE0080C
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 04:56:55 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.09,594,1418079600"; 
   d="scan'208";a="9012177"
Received: from vie191nt.frequentis.frq ([172.16.1.191])
	by mail1.frequentis.com with ESMTP; 17 Feb 2015 13:55:43 +0100
Received: from vie196nt.frequentis.frq ([172.16.1.196]) by
	vie191nt.frequentis.frq ([172.16.1.191]) with mapi id 14.02.0328.009;
	Tue, 17 Feb 2015 13:55:41 +0100
From: PIEWALD Georg <Georg.PIEWALD@frequentis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: kernel config and meta-altera
Thread-Index: AdBKsG4/tWozkajPQCqkIOoNrbaKVA==
Date: Tue, 17 Feb 2015 12:55:40 +0000
Message-ID: <7858CE2B355E1A438F13002DDE9D6394011104D9D6@vie196nt>
Accept-Language: en-US, de-AT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.4.11]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 17 Feb 2015 05:12:25 -0800
Subject: kernel config and meta-altera
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
X-List-Received-Date: Tue, 17 Feb 2015 12:56:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
I'm rather new to the Yocto world so please bear with me. I built a Linux k=
ernel using the Altera "Golden System Reference Design" [1], which is a 1GB=
 tarball containing all required layers and all source code. Works fine.

Now I'd like to customize the image. Particularly I want to change the kern=
el config to include the xHCI driver as a module [2]. I created a layer con=
taining a bbappend-file and a "config fragment" file. No success. Reading t=
ons of threads in the mailing list archive I figured that config fragments =
will not work, because apparently the meta-altera layer inherits from "kern=
el" rather than "linux-yocto".

So I tried the "defconfig" way, which I thought should work always. It turn=
ed out that the defconfig file is correctly picked up and copied to $WORKDI=
R, but simply not applied to .config there. After a long time of searching =
I figured out that linux-altera.inc [3] apparently overwrites the do_config=
ure task and ignores any defconfig.

Eventually, the only solution I came up with, was a new task in my bbappend=
 file:
  do_change_config() {
      sed -i "s|^.*CONFIG_USB_XHCI_HCD.*$|CONFIG_USB_XHCI_HCD=3Dm\\n# CONFI=
G_USB_XHCI_HCD_DEBUGGING is not set|" .config
  }
  addtask change_config before do_compile after do_configure

This works, but I find it somehow ugly. Can you think of a better way to ha=
ndle this? Can I somehow add the "defconfig" or (even better) the "config f=
ragments" features to the meta-altera layer?

BR, Georg


[1] http://www.rocketboards.org/foswiki/Documentation/GSRD131YoctoUserManua=
l
[2] CONFIG_USB_XHCI_HCD=3Dm
[3] https://github.com/kraj/meta-altera/blob/master/recipes-kernel/linux/li=
nux-altera.inc

