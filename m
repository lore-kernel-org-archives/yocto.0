Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8734BE00A81; Tue, 30 Jun 2015 06:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 Jun 2015 06:22:27 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0AA4EE009E6
	for <yocto@yoctoproject.org>; Tue, 30 Jun 2015 06:22:27 -0700 (PDT)
Received: from aragorn.auenland.lan ([88.134.178.228]) by mail.gmx.com
	(mrgmx102) with ESMTPSA (Nemesis) id 0LbPza-1Yl4yf0eCY-00kwEx;
	Tue, 30 Jun 2015 15:17:23 +0200
From: Jan-Simon Moeller <dl9pf@gmx.de>
To: yocto@yoctoproject.org
Date: Tue, 30 Jun 2015 15:16:40 +0200
Message-ID: <1625171.HGLB6nQN4h@aragorn.auenland.lan>
Organization: priv
User-Agent: KMail/4.14.8 (Linux/3.16.7-21-desktop; KDE/4.14.8; x86_64; ; )
MIME-Version: 1.0
X-Provags-ID: V03:K0:bbGMs8BWuRGPMRINfM7b1DOllVePXKZFgw2tOXqMtmQ+NI6iW3c
	pa6mEG8SC0Q7/Eo8vZeqVRO6SSs4nzbxPHyxf680VG5UQMCCGwXI2miV53/U1k1QSvNqXYp
	HsOQn9115s73q2NDPDVPVGyKxosfHnYRXyAgTiUkm3IRBSTJfTDumHPsRMS7TgOymdy8fXu
	PbKR6mwY7CYWzHK7nTpig==
X-UI-Out-Filterresults: notjunk:1;V01:K0:rQT3RzjuEIo=:s8ZyoxX63QV2khe2Bs9uHk
	4iEnoX57Lw7vcy1QE4HUTzJEaL5siFV2rSAo6Uh6VLZn6YMDBzaDpTKgGP0rdSougAdcdtLTs
	gATFqAEVFrkShs71sJFt20KbAlqroLi5GXR7IRgOeUjJSnWb58tyQIHIbQohXcMV3RPzbezUe
	Ooo5zSxcoDNtoZJj21MA/4l2hvdLuDs2svdGM05QGyA40rwGmwBbx0qslAGtddUmVEvjtm27I
	xI3+nWF/tTgYn9XhmmVtX4soGvXOq6JwaJbdVOOjmQWhgR4x1KKjvsTj+kUC7uwbnvQyQ0GGL
	ZfmNh5yfLr5dcZYnrfkIMbF1nviWt+X1pwNqJc3+cYbNkp9s9pyWlDIwle7dg3Tm/GEmsNt59
	Bs7zqytBloEcZEoCpLXxmWbBB6w8SuflqWHijRfIWrhpqjdXxMfDmRvfZyHTqy9MxGWpXgFL6
	trp7LD3w4haXyHpxfWVM+IWooRwrHJnSLSysDUSbtRXUTG3kJa38c1DAk+/Me6SlA9ZEJN4um
	oEwfCIfc53VU0OSXq1oWqPD6gpd06ODELJS0B09ms7YbtUU7VNOeocXqOii4seEoK7swyBZoI
	e9biMFokZcWSEoGyiLTe4kvLc7wUh0vV8fmC3OuxVpJxH3hffBOlBpR2uBmyrNQOWW8VWyyWe
	ydMEzdKQZxNGCH708/OszimFZi24l0FrANYIsO26di6ox5ffszTZ7xJIS+OQE+xbofxs=
Subject: [RFC][master][fido] yocto bsp on arm not in sync with beaglebone target defaults
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
X-List-Received-Date: Tue, 30 Jun 2015 13:22:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi all!

I noticed this inconsitency:

bitbake MACHINE=beaglebone  -> zImage kernel

but 

yocto-bsp create foo arm

will setup for uImage. 

Shouldn't we do:
diff --git 
a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf 
b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
index 588367a..e0831f5 100644
--- a/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
+++ b/scripts/lib/bsp/substrate/target/arch/arm/conf/machine/machine.conf
@@ -84,9 +84,8 @@ PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_PROVIDER_virtual/kernel ?= "{{=preferred_kernel}}"
 PREFERRED_VERSION_{{=preferred_kernel}} ?= "{{=preferred_kernel_version}}%"
 
-KERNEL_IMAGETYPE = "uImage"
+KERNEL_IMAGETYPE = "zImage"
 KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb"
-KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"
 
 SPL_BINARY = "MLO"
 UBOOT_SUFFIX = "img"


##########

Best,
Jan-Simon

