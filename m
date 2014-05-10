Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B1AFE0073D; Sat, 10 May 2014 02:01:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36443E0070F
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 02:01:35 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wj39z-0003wT-2z
	for yocto@yoctoproject.org; Sat, 10 May 2014 11:01:35 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 11:01:35 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 11:01:35 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Sat, 10 May 2014 11:01:22 +0200
Message-ID: <lkkpt3$lj0$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <lkcshi$dep$1@ger.gmane.org>
Subject: [solved] Re: replace udhcpc
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
X-List-Received-Date: Sat, 10 May 2014 09:01:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Found a very simple solution to the original problem (after reading
through the busybox source code). Just add this small recipe to your
layer, and udhcpc will fork in to the background to gain the IP as soon
as the network is available:

diff --git a/recipes-core/busybox/busybox_%.bbappend
b/recipes-core/busybox/busybox_%.bbappend
new file mode 100644
index 0000000..14e4e37
--- /dev/null
+++ b/recipes-core/busybox/busybox_%.bbappend
@@ -0,0 +1,4 @@
+FILESEXTRAPATHS_append := "${THISDIR}/files:"
+
+SRC_URI += "file://udhcpc-opts.cfg \
+           "
diff --git a/recipes-core/busybox/files/udhcpc-opts.cfg
b/recipes-core/busybox/files/udhcpc-opts.cfg
new file mode 100644
index 0000000..d02ba19
--- /dev/null
+++ b/recipes-core/busybox/files/udhcpc-opts.cfg
@@ -0,0 +1 @@
+CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -b"


Am 07.05.2014 10:57, schrieb Neuer User:
> Hi
> 
> I encounter a problem with the DHCP network setup during boot:
> 
> System starts. During start ifup is called. ifup calls udhcpc. Network
> is, however, not yet up! udhcpc exits with failure. Then network is up.
> But, of course, no connection, because no IP address.
> 
> In earlier times I used debian based system, which seem to rely on
> dhclient3. My experiences here were that dhclient remained as a deamon
> continuing trying to get a dhcp address.
> 
> What should I do best on Yocto? Replace udhcpc with dhclient? If so, how
> should that be done?
> 
> Or can udhcpc be configured to remain in the background and try to get
> an IP address when network is finally up?
> 
> Thanks for any help
> 
> Michael
> 



