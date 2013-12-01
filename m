Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3712CE006CA
	for <yocto@yoctoproject.org>; Sun,  1 Dec 2013 06:01:06 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id E4CDCF811EC; Sun,  1 Dec 2013 07:01:03 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9408EF811E5;
	Sun,  1 Dec 2013 07:01:02 -0700 (MST)
Message-ID: <529B4140.2040801@mlbassoc.com>
Date: Sun, 01 Dec 2013 07:01:36 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Very strange append issue
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
X-List-Received-Date: Sun, 01 Dec 2013 14:01:13 -0000
X-Groupsio-MsgNum: 17396
Content-Type: multipart/mixed; boundary="------------080502040700070001010800"

--------------080502040700070001010800
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

I'm having a very strange behaviour in one of my recipes.  I have two
recipes which are tightly coupled.  In one, the 'disk-installer', I'd
like to reuse a source file from another 'installer' so that I only need
to make changes in a single place (good practice).  To this end, I have
a structure like this (the 'installer' recipe is in another layer):

meta-mytarget/packages/misc/
├── disk-installer_0.0.bb
├── installer
│   └── mytarget
│       ├── 6x_bootscript.txt -> ../../../../recipes-bsp/u-boot/u-boot-script-boundary/6x_bootscript.txt
│       ├── do_install.defaults
│       ├── do_install.post
├── installer_0.0.bbappend

In the 'disk-installer' recipe, I have:
   FILESEXTRAPATHS_prepend := "${THISDIR}/installer:"
so that 'disk-installer' can pick up (share) 'do_install.defaults'
That part works fine.  The problem is that there is a 'do_install_append()'
fragment in 'installer_0.0.bbappend' that is being attached to the
'do_install()' of 'disk-installer_0.0.bb'!

Here's what I mean - from 'disk-installer_0.0.bb':
do_install() {
     # Copy images for fully recoverable image
     MAC_ADDR=ignored . ${WORKDIR}/do_install.defaults
     for f in ${KERNEL} ${ROOTFS} ${UBOOT}; do
       if [ -e ${DEPLOY_DIR_IMAGE}/`basename $f` ]; then
         install -d ${D}/`dirname $f`
         cp -L ${DEPLOY_DIR_IMAGE}/`basename $f` ${D}/`dirname $f`
       fi
     done
}

and from 'installer_0.0.bbappend':
do_install_append() {
     # Additional installation steps
     install -m 0755 ${WORKDIR}/do_install.post ${D}/etc/do_install.post
     mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "U-Boot script" -d ${WORKDIR}/6x_bootscript.txt ${D}/etc/6x_bootscript
}

The 'installer' bit makes no sense for the 'disk-installer' recipe
and yet when this package is built, I get this in 'run.do_install':
do_install() {
     # Copy images for fully recoverable image
     MAC_ADDR=ignored . /local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/do_install.defaults
     for f in ${KERNEL} ${ROOTFS} ${UBOOT}; do
       if [ -e /local/p8301_new/tmp/deploy/images/mytarget/`basename $f` ]; then
         install -d /local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/image/`dirname $f`
         cp -L /local/p8301_new/tmp/deploy/images/mytarget/`basename $f` /local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/image/`dirname $f`
       fi
     done
     # Additional installation steps
     install -m 0755 /local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/do_install.post 
/local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/image/etc/do_install.post
     mkimage -A arm -O linux -T script -C none -a 0 -e 0 -n "U-Boot script" -d /local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/6x_bootscript.txt 
/local/p8301_new/tmp/work/mytarget-amltd-linux-gnueabi/disk-installer/0.0-r0/image/etc/6x_bootscript

}

I can see by the copied comment (#) lines that this fragment
is coming exactly from 'installer_0.0.bbappend'

This looks totally wrong to me.  Am I missing something (and
it should work this way)??

The complete recipes and fragments are attached in case my explanation
is a bit confusing.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------080502040700070001010800
Content-Type: text/plain; charset=UTF-8;
 name="disk-installer_0.0.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="disk-installer_0.0.bb"

REVTQ1JJUFRJT04gPSAiQWRkaXRpb25hbCBzZXR1cCBmb3Igc2VsZi1jb250YWluZWQgZGlzayBi
YXNlZCBpbnN0YWxsZXIiClNFQ1RJT04gPSAiYmFzZSIKTElDRU5TRSA9ICJNSVQiCkxJQ19GSUxF
U19DSEtTVU0gPSAiZmlsZTovLyR7Q09SRUJBU0V9L0xJQ0VOU0U7bWQ1PTNmNDBkNzk5NDM5NzEw
OTI4NWVjN2I4MWZkZWIzYjU4ICIKRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJ
Un0vaW5zdGFsbGVyOiIKCiMgVGhlc2UgZmlsZXMgZ2V0IGRyYWdnZWQgaW4gYnkgdGhpcyBwcm9j
ZXNzCkRFUEVORFMgKz0gImFtbHRkLWNvbnNvbGUtaW1hZ2UgbGludXgtYm91bmRhcnkgdS1ib290
LWZzbGMiCgojIFBpY2sgdXAgZGVmYXVsdHMgdXNlZCBieSBuZXR3b3JrIGluc3RhbGxlcgpTUkNf
VVJJICs9ICIgXAogICAgICAgICAgICBmaWxlOi8vZG9faW5zdGFsbC5kZWZhdWx0cyBcCiIKClMg
PSAiJHtXT1JLRElSfSIKClBBQ0tBR0VfQVJDSCA9ICIke01BQ0hJTkVfQVJDSH0iCgpkb19pbnN0
YWxsKCkgewogICAgIyBDb3B5IGltYWdlcyBmb3IgZnVsbHkgcmVjb3ZlcmFibGUgaW1hZ2UKICAg
IE1BQ19BRERSPWlnbm9yZWQgLiAke1dPUktESVJ9L2RvX2luc3RhbGwuZGVmYXVsdHMKICAgIGZv
ciBmIGluICR7S0VSTkVMfSAke1JPT1RGU30gJHtVQk9PVH07IGRvCiAgICAgIGlmIFsgLWUgJHtE
RVBMT1lfRElSX0lNQUdFfS9gYmFzZW5hbWUgJGZgIF07IHRoZW4KICAgICAgICBpbnN0YWxsIC1k
ICR7RH0vYGRpcm5hbWUgJGZgCiAgICAgICAgY3AgLUwgJHtERVBMT1lfRElSX0lNQUdFfS9gYmFz
ZW5hbWUgJGZgICR7RH0vYGRpcm5hbWUgJGZgCiAgICAgIGZpCiAgICBkb25lCn0KCkZJTEVTXyR7
UE59ICs9ICIvbG9jYWwiCg==

--------------080502040700070001010800
Content-Type: text/plain; charset=UTF-8;
 name="installer_0.0.bbappend"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="installer_0.0.bbappend"

IwojIEp1c3QgdGVsbCBCaXRCYWtlIHdoZXJlIHRvIGZpbmQgbXkgY29tcG9uZW50IGZpbGVzCiMK
RklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vaW5zdGFsbGVyOiIKClNSQ19V
UkkgKz0gIiBcCiAgICAgICAgICAgIGZpbGU6Ly9kb19pbnN0YWxsLnBvc3QgXAoJICAgIGZpbGU6
Ly82eF9ib290c2NyaXB0LnR4dCBcCiIKCkNPTVBBVElCTEVfTUFDSElORSA9ICIke01BQ0hJTkV9
IgoKZG9faW5zdGFsbF9hcHBlbmQoKSB7CiAgICAjIEFkZGl0aW9uYWwgaW5zdGFsbGF0aW9uIHN0
ZXBzCiAgICBpbnN0YWxsIC1tIDA3NTUgJHtXT1JLRElSfS9kb19pbnN0YWxsLnBvc3QgJHtEfS9l
dGMvZG9faW5zdGFsbC5wb3N0ICAgICAgICAgICAgCiAgICBta2ltYWdlIC1BIGFybSAtTyBsaW51
eCAtVCBzY3JpcHQgLUMgbm9uZSAtYSAwIC1lIDAgLW4gIlUtQm9vdCBzY3JpcHQiIC1kICR7V09S
S0RJUn0vNnhfYm9vdHNjcmlwdC50eHQgJHtEfS9ldGMvNnhfYm9vdHNjcmlwdAp9CgoK

--------------080502040700070001010800--
