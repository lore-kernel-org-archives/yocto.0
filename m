Return-Path: <simon.bolek@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0C84E00CC9; Sat, 23 Jul 2016 05:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (simon.bolek[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36A23E00CB0
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 05:25:24 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id g86so9026446ioj.1
	for <yocto@yoctoproject.org>; Sat, 23 Jul 2016 05:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=hNBPVfE5oaiWedf4KBnsrkCEDsNWOZBAhs0oOdth9nM=;
	b=jQoU7/az+gNlVbfdE+2Q+uQOqbnVCs0TzBkYqXt7FrerShwJqVFWPEJLgas09qa/+a
	aGMEwzJBf6Qkfd+9FVdlGoYNKoHYxHPmavt6ZGOEroMlR5eRTDLt922LR8cN12KI6huB
	oJltS9OKjdLjrAG5E8RXLR7bVKrJSrvVq6ju8gzWsvfiO6Y3lUHzCiXcZQvDWxTNRykf
	6l2M2s4iUf3I3dKg+LiMTQQShgOy6c5Z6BcFXEqF6Tnloo5qPIC048ZY/EPHUJ61T16z
	ok6Xju01PCzXiM/efdh+S8wW3j2Xb4o3PYVWOOkv3MvrWr1ua/tE9J5wlQ/CsWtQIda7
	3psg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=hNBPVfE5oaiWedf4KBnsrkCEDsNWOZBAhs0oOdth9nM=;
	b=Uuto09ioFgF+gwAyeC+EueGkIiVHzGOhBujRWwQMwOUKkmsT6p4LN1CzLazwUyA1mB
	1uUYTbemsT4PaF7zE3cafEltgxVp6kExghzVLpRXXYEHFJR4EKj5B5Oo0qKGBKyNeA+K
	aaGfYPJOeh3gZRLUVxqZHJPhJtPq1fZTwT8XRZI3GM0oZxh7SWnpEO/BqeQ7o1HGWZjU
	UWAZKXEn78j8vpqQI4HjPEUurtEt3ybLQOkRktqEWPEcwFWWK1T22pS1HJT9tjqAZcb8
	MJKVReG1Gs+hwATohQX5uSbB/uSgefsGRo+7MbmfChB7A1cNABkW1aY0+L0HicRf2zjp
	e4/g==
X-Gm-Message-State: AEkoouv11rplagMURtMUtryOT3wQ4dQKnwHsNiYdXp5xn7I3MbjK+P/WSnDjerNELmBZ9uFmtcmAtHOVgMyjXQ==
X-Received: by 10.107.154.196 with SMTP id c187mr9896692ioe.99.1469276724136; 
	Sat, 23 Jul 2016 05:25:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.55.135 with HTTP; Sat, 23 Jul 2016 05:25:04 -0700 (PDT)
From: Simon Bolek <simon.bolek@googlemail.com>
Date: Sat, 23 Jul 2016 14:25:04 +0200
Message-ID: <CAEfap_ADomjxhF0nEfJFwvWZ04bvJZ=+puboRLzX+4hAJrL4eg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [genericx86-jethro] core-image-sato - VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0, 0): error -6
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
X-List-Received-Date: Sat, 23 Jul 2016 12:25:28 -0000
Content-Type: multipart/alternative; boundary=001a1140e81e380e6305384ca582

--001a1140e81e380e6305384ca582
Content-Type: text/plain; charset=UTF-8

Hello!

I am trying to install genericx86 core-image-sato on a atom-pc device with
80GB Intel SSD drive.
I have created an image with
bitbake core-image-sato
without changing anything in the kernel via menuconfig, etc.

ps. after installation I had to set /dev/sda1 to bootable with fdisk

After installation I have got this ugly error while booting the device.
PLEASE HELP ME!


"...
VFS: Cannot open root device "PARTUUID=8316.." or unknown-block(0,0): error
-6
Pease append a correct "root=" boot option; here are the available
partitions:
0100 4096 ram0 (driver?)
...
010f 4096 ram15 (driver?)
..."


I noticed that install.sh script is creating GPT
parted ${device} mktable gpt
not MSDOS as in previous yocto versions, e.g. fido.

Any hint is more than welcome. The device will just not boot :((((

Here are some details about the device:


+++
blkid says:
/dev/sda2: UUID="e88ec2c7-3438-4fe3-9033-83eb81957875" TYPE="ext3"
PARTLABEL="boot" PARTUUID="57f43ab0-6e30-4721-81e2-c565f6c184c8"
/dev/sda3: UUID="cbb77742-c9fe-4f19-85d7-399af99c3aa8" TYPE="ext3"
PARTLABEL="root" PARTUUID="8316255c-f839-43fa-b2c6-d83bbed80962"
/dev/sda4: TYPE="swap" PARTLABEL="swap"
PARTUUID="15ddbd73-15b3-40a8-97e7-6377048a79eb"
/dev/sdb: SEC_TYPE="msdos" LABEL="boot" UUID="3C80-C1D7" TYPE="vfat"
/dev/sda1: PARTLABEL="bios_boot"
PARTUUID="11cf26d2-2333-4c5b-a876-59d65929085f"

+++
/etc/fstab says
# stock fstab - you probably want to override this with a machine specific
one

/dev/root            /                    auto       defaults
1  1
proc                 /proc                proc       defaults
0  0
devpts               /dev/pts             devpts     mode=0620,gid=5
0  0
tmpfs                /run                 tmpfs
mode=0755,nodev,nosuid,strictatime 0  0
tmpfs                /var/volatile        tmpfs      defaults
0  0

# uncomment this if your device has a SD/MMC/Transflash slot
#/dev/mmcblk0p1       /media/card          auto       defaults,sync,noauto
0  0

/dev/sda2         /                      ext3         rw
0  1
/dev/disk/by-partuuid/15ddbd73-15b3-40a8-97e7-6377048a79eb
swap             swap       defaults              0  0
UUID=e88ec2c7-3438-4fe3-9033-83eb81957875              /boot
ext3       defaults              1  2


+++
fdisk -l says
Disk /dev/sda: 80.0 GB, 80026361856 bytes
255 heads, 63 sectors/track, 9729 cylinders
Units = cylinders of 16065 * 512 = 8225280 bytes

   Device Boot      Start         End      Blocks  Id System
/dev/sda1   *           1        9730    78150743+ ee EFI GPT

+++
parted /dev/sda says
Model: ATA INTEL SSDSA2M080 (scsi)
Disk /dev/sda: 80.0GB
Sector size (logical/physical): 512B/512B
Partition Table: gpt
Disk Flags: pmbr_boot

Number  Start   End     Size    File system     Name       Flags
 1      1049kB  2097kB  1049kB                  bios_boot  bios_grub
 2      2097kB  19.9MB  17.8MB  ext3            boot
 3      22.0MB  76.0GB  76.0GB  ext3            root
 4      76.0GB  80.0GB  4001MB  linux-swap(v1)  swap

+++
lspci says
Device:    00:1f.2
Class:    IDE interface
Vendor:    Intel Corporation
Device:    NM10/ICH7 Family SATA Controller [IDE mode]
SVendor:    Intel Corporation
SDevice:    Device 464c
Rev:    01
ProgIf:    8a
Driver:    ata_piix
Module:    ata_piix


thank you
Simon :-)

--001a1140e81e380e6305384ca582
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PjxkaXY+PGRpdj48ZGl2PkhlbGxvITxicj48YnI+SSBh
bSB0cnlpbmcgdG8gaW5zdGFsbCBnZW5lcmljeDg2IGNvcmUtaW1hZ2Utc2F0byBvbiBhIGF0b20t
cGMgZGV2aWNlIHdpdGggODBHQiBJbnRlbCBTU0QgZHJpdmUuPGJyPjwvZGl2PjxkaXY+SSBoYXZl
IGNyZWF0ZWQgYW4gaW1hZ2Ugd2l0aCA8YnI+Yml0YmFrZSBjb3JlLWltYWdlLXNhdG88YnI+PC9k
aXY+PGRpdj53aXRob3V0IGNoYW5naW5nIGFueXRoaW5nIGluIHRoZSBrZXJuZWwgdmlhIG1lbnVj
b25maWcsIGV0Yy48YnI+PC9kaXY+PGRpdj48YnI+cHMuIGFmdGVyIGluc3RhbGxhdGlvbiBJIGhh
ZCB0byBzZXQgL2Rldi9zZGExIHRvIGJvb3RhYmxlIHdpdGggZmRpc2s8YnI+PC9kaXY+PGRpdj48
YnI+QWZ0ZXIgaW5zdGFsbGF0aW9uIEkgaGF2ZSBnb3QgdGhpcyB1Z2x5IGVycm9yIHdoaWxlIGJv
b3RpbmcgdGhlIGRldmljZS4gUExFQVNFIEhFTFAgTUUhPGJyPjwvZGl2PjxkaXY+PGJyPjxicj4m
cXVvdDsuLi48YnI+VkZTOiBDYW5ub3Qgb3BlbiByb290IGRldmljZSAmcXVvdDtQQVJUVVVJRD04
MzE2Li4mcXVvdDsgb3IgdW5rbm93bi1ibG9jaygwLDApOiBlcnJvciAtNjxicj48L2Rpdj5QZWFz
ZSBhcHBlbmQgYSBjb3JyZWN0ICZxdW90O3Jvb3Q9JnF1b3Q7IGJvb3Qgb3B0aW9uOyBoZXJlIGFy
ZSB0aGUgYXZhaWxhYmxlIHBhcnRpdGlvbnM6PGJyPjwvZGl2PjAxMDAgNDA5NiByYW0wIChkcml2
ZXI/KTxicj4uLi48YnI+MDEwZiA0MDk2IHJhbTE1IChkcml2ZXI/KTxicj4uLi4mcXVvdDs8YnI+
PGJyPjxicj48L2Rpdj48ZGl2Pkkgbm90aWNlZCB0aGF0IGluc3RhbGwuc2ggc2NyaXB0IGlzIGNy
ZWF0aW5nIEdQVCA8YnI+cGFydGVkICR7ZGV2aWNlfSBta3RhYmxlIGdwdDxicj48L2Rpdj48ZGl2
Pm5vdCBNU0RPUyBhcyBpbiBwcmV2aW91cyB5b2N0byB2ZXJzaW9ucywgZS5nLiBmaWRvLjxicj48
L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkFueSBoaW50IGlzIG1vcmUgdGhhbiB3ZWxjb21lLiBU
aGUgZGV2aWNlIHdpbGwganVzdCBub3QgYm9vdCA6KCgoKDxicj48YnI+PC9kaXY+PGRpdj5IZXJl
IGFyZSBzb21lIGRldGFpbHMgYWJvdXQgdGhlIGRldmljZTo8YnI+PC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj48YnI+PC9kaXY+PGRpdj4rKys8L2Rpdj5ibGtpZCBzYXlzOjxicj4vZGV2L3NkYTI6
IFVVSUQ9JnF1b3Q7ZTg4ZWMyYzctMzQzOC00ZmUzLTkwMzMtODNlYjgxOTU3ODc1JnF1b3Q7IFRZ
UEU9JnF1b3Q7ZXh0MyZxdW90OyBQQVJUTEFCRUw9JnF1b3Q7Ym9vdCZxdW90OyBQQVJUVVVJRD0m
cXVvdDs1N2Y0M2FiMC02ZTMwLTQ3MjEtODFlMi1jNTY1ZjZjMTg0YzgmcXVvdDs8YnI+L2Rldi9z
ZGEzOiBVVUlEPSZxdW90O2NiYjc3NzQyLWM5ZmUtNGYxOS04NWQ3LTM5OWFmOTljM2FhOCZxdW90
OyBUWVBFPSZxdW90O2V4dDMmcXVvdDsgUEFSVExBQkVMPSZxdW90O3Jvb3QmcXVvdDsgUEFSVFVV
SUQ9JnF1b3Q7ODMxNjI1NWMtZjgzOS00M2ZhLWIyYzYtZDgzYmJlZDgwOTYyJnF1b3Q7PGJyPi9k
ZXYvc2RhNDogVFlQRT0mcXVvdDtzd2FwJnF1b3Q7IFBBUlRMQUJFTD0mcXVvdDtzd2FwJnF1b3Q7
IFBBUlRVVUlEPSZxdW90OzE1ZGRiZDczLTE1YjMtNDBhOC05N2U3LTYzNzcwNDhhNzllYiZxdW90
Ozxicj4vZGV2L3NkYjogU0VDX1RZUEU9JnF1b3Q7bXNkb3MmcXVvdDsgTEFCRUw9JnF1b3Q7Ym9v
dCZxdW90OyBVVUlEPSZxdW90OzNDODAtQzFENyZxdW90OyBUWVBFPSZxdW90O3ZmYXQmcXVvdDs8
YnI+L2Rldi9zZGExOiBQQVJUTEFCRUw9JnF1b3Q7Ymlvc19ib290JnF1b3Q7IFBBUlRVVUlEPSZx
dW90OzExY2YyNmQyLTIzMzMtNGM1Yi1hODc2LTU5ZDY1OTI5MDg1ZiZxdW90Ozxicj48YnI+Kysr
PGJyPjwvZGl2PjxkaXY+L2V0Yy9mc3RhYiBzYXlzPGJyPiMgc3RvY2sgZnN0YWIgLSB5b3UgcHJv
YmFibHkgd2FudCB0byBvdmVycmlkZSB0aGlzIHdpdGggYSBtYWNoaW5lIHNwZWNpZmljIG9uZTxi
cj48YnI+L2Rldi9yb290wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgYXV0b8KgwqDCoMKgwqDCoCBkZWZhdWx0c8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIDHCoCAxPGJyPnByb2PCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvcHJvY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwcm9jwqDCoMKgwqDCoMKg
IGRlZmF1bHRzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMMKgIDA8YnI+ZGV2cHRzwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAvZGV2L3B0c8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBk
ZXZwdHPCoMKgwqDCoCBtb2RlPTA2MjAsZ2lkPTXCoMKgwqDCoMKgwqAgMMKgIDA8YnI+dG1wZnPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgL3J1bsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHRtcGZzwqDCoMKgwqDCoCBtb2RlPTA3NTUsbm9kZXYsbm9zdWlkLHN0cmljdGF0
aW1lIDDCoCAwPGJyPnRtcGZzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC92YXIvdm9s
YXRpbGXCoMKgwqDCoMKgwqDCoCB0bXBmc8KgwqDCoMKgwqAgZGVmYXVsdHPCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAwwqAgMDxicj48YnI+IyB1bmNvbW1lbnQgdGhpcyBpZiB5b3VyIGRldmlj
ZSBoYXMgYSBTRC9NTUMvVHJhbnNmbGFzaCBzbG90PGJyPiMvZGV2L21tY2JsazBwMcKgwqDCoMKg
wqDCoCAvbWVkaWEvY2FyZMKgwqDCoMKgwqDCoMKgwqDCoCBhdXRvwqDCoMKgwqDCoMKgIGRlZmF1
bHRzLHN5bmMsbm9hdXRvwqAgMMKgIDA8YnI+PGJyPi9kZXYvc2RhMsKgwqDCoCDCoMKgwqDCoCAv
wqDCoMKgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXh0M8KgwqDCoCDCoMKg
wqDCoCByd8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDDCoCAxPGJyPi9k
ZXYvZGlzay9ieS1wYXJ0dXVpZC8xNWRkYmQ3My0xNWIzLTQwYTgtOTdlNy02Mzc3MDQ4YTc5ZWLC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3dhcMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBzd2FwwqDCoMKgwqDCoMKgIGRlZmF1bHRzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMMKg
IDA8YnI+VVVJRD1lODhlYzJjNy0zNDM4LTRmZTMtOTAzMy04M2ViODE5NTc4NzXCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAvYm9vdMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZXh0M8KgwqDCoMKg
wqDCoCBkZWZhdWx0c8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDHCoCAyPGJyPjxicj48YnI+
PC9kaXY+PGRpdj4rKys8YnI+PC9kaXY+ZmRpc2sgLWwgc2F5czxicj5EaXNrIC9kZXYvc2RhOiA4
MC4wIEdCLCA4MDAyNjM2MTg1NiBieXRlczxicj4yNTUgaGVhZHMsIDYzIHNlY3RvcnMvdHJhY2ss
IDk3MjkgY3lsaW5kZXJzPGJyPlVuaXRzID0gY3lsaW5kZXJzIG9mIDE2MDY1ICogNTEyID0gODIy
NTI4MCBieXRlczxicj48YnI+wqDCoCBEZXZpY2UgQm9vdMKgwqDCoMKgwqAgU3RhcnTCoMKgwqDC
oMKgwqDCoMKgIEVuZMKgwqDCoMKgwqAgQmxvY2tzwqAgSWQgU3lzdGVtPGJyPi9kZXYvc2RhMcKg
wqAgKsKgwqDCoMKgwqDCoMKgwqDCoMKgIDHCoMKgwqDCoMKgwqDCoCA5NzMwwqDCoMKgIDc4MTUw
NzQzKyBlZSBFRkkgR1BUPGJyPjxicj4rKys8YnI+PC9kaXY+cGFydGVkIC9kZXYvc2RhIHNheXM8
YnI+TW9kZWw6IEFUQSBJTlRFTCBTU0RTQTJNMDgwIChzY3NpKTxicj5EaXNrIC9kZXYvc2RhOiA4
MC4wR0I8YnI+U2VjdG9yIHNpemUgKGxvZ2ljYWwvcGh5c2ljYWwpOiA1MTJCLzUxMkI8YnI+UGFy
dGl0aW9uIFRhYmxlOiBncHQ8YnI+RGlzayBGbGFnczogcG1icl9ib290PGJyPjxicj5OdW1iZXLC
oCBTdGFydMKgwqAgRW5kwqDCoMKgwqAgU2l6ZcKgwqDCoCBGaWxlIHN5c3RlbcKgwqDCoMKgIE5h
bWXCoMKgwqDCoMKgwqAgRmxhZ3M8YnI+wqAxwqDCoMKgwqDCoCAxMDQ5a0LCoCAyMDk3a0LCoCAx
MDQ5a0LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJpb3NfYm9vdMKgIGJpb3Nf
Z3J1Yjxicj7CoDLCoMKgwqDCoMKgIDIwOTdrQsKgIDE5LjlNQsKgIDE3LjhNQsKgIGV4dDPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGJvb3Q8YnI+wqAzwqDCoMKgwqDCoCAyMi4wTULCoCA3Ni4wR0LC
oCA3Ni4wR0LCoCBleHQzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByb290PGJyPsKgNMKgwqDCoMKg
wqAgNzYuMEdCwqAgODAuMEdCwqAgNDAwMU1CwqAgbGludXgtc3dhcCh2MSnCoCBzd2FwPGJyPjxi
cj4rKys8YnI+PGRpdj48ZGl2PjxkaXY+bHNwY2kgc2F5czxicj48L2Rpdj48ZGl2PjxkaXY+PGRp
dj48ZGl2PkRldmljZTrCoMKgwqAgMDA6MWYuMjxicj5DbGFzczrCoMKgwqAgSURFIGludGVyZmFj
ZTxicj5WZW5kb3I6wqDCoMKgIEludGVsIENvcnBvcmF0aW9uPGJyPkRldmljZTrCoMKgwqAgTk0x
MC9JQ0g3IEZhbWlseSBTQVRBIENvbnRyb2xsZXIgW0lERSBtb2RlXTxicj5TVmVuZG9yOsKgwqDC
oCBJbnRlbCBDb3Jwb3JhdGlvbjxicj5TRGV2aWNlOsKgwqDCoCBEZXZpY2UgNDY0Yzxicj5SZXY6
wqDCoMKgIDAxPGJyPlByb2dJZjrCoMKgwqAgOGE8YnI+RHJpdmVyOsKgwqDCoCBhdGFfcGlpeDxi
cj5Nb2R1bGU6wqDCoMKgIGF0YV9waWl4PGJyPjxicj48ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+
PGJyPnRoYW5rIHlvdTxicj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+U2ltb24gOi0p
PGJyPjxiciBjbGVhcj0iYWxsIj48L2Rpdj48ZGl2IGNsYXNzPSJnbWFpbF9leHRyYSI+PGRpdj48
ZGl2IGNsYXNzPSJnbWFpbF9zaWduYXR1cmUiIGRhdGEtc21hcnRtYWlsPSJnbWFpbF9zaWduYXR1
cmUiPjxkaXYgZGlyPSJsdHIiPjxkaXY+PGRpdiBkaXI9Imx0ciI+PGRpdj48YnI+PC9kaXY+PC9k
aXY+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+DQo8YnI+PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+
PC9kaXY+PC9kaXY+PC9kaXY+PC9kaXY+DQo=

--001a1140e81e380e6305384ca582--
