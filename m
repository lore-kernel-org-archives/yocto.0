Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F297E0086B; Wed, 16 Mar 2016 12:29:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD21E007D2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 12:29:15 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id qe11so542986lbc.3
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 12:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=eARVYYZVl0+1eB6Yk7kxdXR4QMtL27bihqc3XgT/P0Y=;
	b=G1//bYrnNoWtM8jF8ig1SMUktH8oxczDPdtc4Q2sEbD783jC4zcGMNiM3lf/3KnFhi
	fsqDCRAxPvLtGLX0hpY6w/q9cq9+CR3aM8/pFzaH40jtpKfQ4BqaqwhiQXC4LgWLaGvA
	DAVfruVm+Rw4CQ+VPg9z9DaiYOAtiQydkFXnPUIcYLm6/j07hklCzF+/BGhntwRdqANl
	CutFCbZOlSjOLhR+MOJsEQuU7RlhiyK8LlG/gSevRQqI2pEwA0UQzLUQqPUADo3ujUqt
	ZqTiCwS4BmcRu5vI3dZpqsoXIYLS2d9b7c/79e+kS0mrvEuMHo+b3S3x8hGI3322yXt0
	KrLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=eARVYYZVl0+1eB6Yk7kxdXR4QMtL27bihqc3XgT/P0Y=;
	b=VQIhQtTIRR8ed5cTPC6E0DvtcsEGBr0oCpvSvT6hpRcmYgqt+pYylEnDW7Z+ty6V2+
	cEH2a49aI5Aan/9s2/z4dCrqp4U0qbrf4QfGJLPVWA6gLhU2KpXr+PIkTez9pRXAGFzk
	aIFM4GYJ000GYQTDlATnIgaiPdOqS56hA4juz90vXc/bBTCRgKDxOlIuzpbkam2Y/SUl
	EPwETtWEAVctwnyKY3oUy9ssBpbFRaIVeHR0YwjUdzt4cXtecLDtIdtOZ/3DvQmf0Ut7
	DNYFAxVXIgEgi0lJNa5ixxxmJNuqnzgtTuF0f1Qg72oqB+yZ+090sSlhEB0aYKMRwmt8
	HysQ==
X-Gm-Message-State: AD7BkJKNZU3jLCtxBzRhBqJ2V+mC49VWPLAR+sUyoDINMmpCF9YtWfJMlZ8ptfoClVAzoVQEMUBYxw7cNZaQuw==
MIME-Version: 1.0
X-Received: by 10.112.205.68 with SMTP id le4mr2083710lbc.62.1458156553868;
	Wed, 16 Mar 2016 12:29:13 -0700 (PDT)
Received: by 10.25.205.10 with HTTP; Wed, 16 Mar 2016 12:29:13 -0700 (PDT)
Date: Wed, 16 Mar 2016 20:29:13 +0100
Message-ID: <CAALGJZZwG1ifVf7J0WdvNyXWN81Ot2m3rWgSUhTX2Gueywx3fw@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [master] ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot:
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
X-List-Received-Date: Wed, 16 Mar 2016 19:29:20 -0000
X-Groupsio-MsgNum: 29057
Content-Type: multipart/mixed; boundary=001a11c3c34a6bb5d5052e2f87b0

--001a11c3c34a6bb5d5052e2f87b0
Content-Type: text/plain; charset=UTF-8

Hi,

with the latest master from today I ran in some trouble:

Build Configuration:
BB_VERSION        = "1.29.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "udooneo"
DISTRO            = "poky"
DISTRO_VERSION    = "2.0+snapshot-20160316"
TUNE_FEATURES     = "arm armv7a vfp thumb neon
callconvention-hard       cortexa9"
TARGET_FPU        = "hard"
meta
meta-poky         = "HEAD:8debfea81e69d038bd2d56314b272cb74f5582ed"
meta-oe
meta-multimedia
meta-python
meta-networking   = "HEAD:35d91f32c462ad5889cb3229766d6d4ed2c80a4c"
meta-qt5          = "master-5.6:b2d5376b41625521b9a081fe800345fff33d8dd6"
meta-ruby         = "HEAD:35d91f32c462ad5889cb3229766d6d4ed2c80a4c"
meta-fsl-arm      = "HEAD:37564e6801ce82fad979b4f57151c676d80e8a6c"
meta-fsl-arm-extra = "HEAD:36a638abe1238bdc8e0ef1242dd7bfab59cc48d7"
meta-fsl-demos    = "HEAD:6b779b2cb0d231063fc035a9a0871d722366c329"
meta-udoo         = "master:1b38bcec5057b93017a00f107e0738ce64ade66f"
meta-swupdate     = "master:44516e81a494afef3be7e3f249713fdec6e6e32a"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: The recipe
gobject-introspection is trying to install files into a shared area
when those files already exist. Those files and their manifest
location are:
   /data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/share/gobject-introspection-1.0/Makefile.introspection
 Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot
 /data/FSL/fsl-community-bsp-master/build/tmp/sysroots/udooneo/usr/share/aclocal/introspection.m4
 Matched in manifest-udooneo-gtk-doc-stub.populate_sysroot
Please verify which recipe should provide the above files.
The build has stopped as continuing in this scenario WILL break
things, if not now, possibly in the future (we've seen builds fail
several months later). If the system knew how to recover from this
automatically it would however there are several different scenarios
which can result in this and we don't know which one this is. It may
be you have switched providers of something like virtual/kernel (e.g.
from linux-yocto to linux-yocto-dev), in that case you need to execute
the clean task for both recipes and it will resolve this error. It may
be you changed DISTRO_FEATURES from systemd to udev or vice versa.
Cleaning those recipes should again resolve this error however
switching DISTRO_FEATURES on an existing build directory is not
supported, you should really clean out tmp and rebuild (reusing sstate
should be safe). It could be the overlapping files detected are
harmless in which case adding them to SSTATE_DUPWHITELIST may be the
correct solution. It could also be your build is including two
different conflicting versions of things (e.g. bluez 4 and bluez 5 and
the correct solution for that would be to resolve the conflict. If in
doubt, please ask on the mailing list, sharing the error and filelist
above.
ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: If the
above message is too much, the simpler version is you're advised to
wipe out tmp and rebuild (reusing sstate is fine). That will likely
fix things in most (but not all) cases.
ERROR: gobject-introspection-1.46.0-r0 do_populate_sysroot: Function
failed: sstate_task_postfunc
ERROR: Logfile of failure stored in:
/data/FSL/fsl-community-bsp-master/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/gobject-introspection/1.46.0-r0/temp/log.do_populate_sysroot.16494
ERROR: Task 1802
(/data/FSL/fsl-community-bsp-master/sources/poky/meta/recipes-gnome/gobject-introspection/gobject-introspection_1.46.0.bb,
do_populate_sysroot) failed with exit code '1'
NOTE: Tasks Summary: Attempted 4772 tasks of which 4742 didn't need to
be rerun and 1 failed.
No currently running tasks (4772 of 5254)


Any help is appreciated.

Best,
Christian

-- 
http://ch.ege.io/

--001a11c3c34a6bb5d5052e2f87b0
Content-Type: application/octet-stream; name="log.do_populate_sysroot.16494"
Content-Disposition: attachment; filename="log.do_populate_sysroot.16494"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_ilv8p75v0

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcHJlZnVuYwpERUJV
RzogUHl0aG9uIGZ1bmN0aW9uIHNzdGF0ZV90YXNrX3ByZWZ1bmMgZmluaXNoZWQKREVCVUc6IEV4
ZWN1dGluZyBweXRob24gZnVuY3Rpb24gZG9fcG9wdWxhdGVfc3lzcm9vdApERUJVRzogU0lURSBm
aWxlcyBbJ2VuZGlhbi1saXR0bGUnLCAnYml0LTMyJywgJ2FybS1jb21tb24nLCAnYXJtLTMyJywg
J2NvbW1vbi1saW51eCcsICdjb21tb24tZ2xpYmMnLCAnYXJtLWxpbnV4JywgJ2FybS1saW51eC1n
bnVlYWJpJywgJ2NvbW1vbiddCkRFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gc3lzcm9v
dF9zdGFnZV9hbGwKMCBibG9ja3MKMCBibG9ja3MKMCBibG9ja3MKREVCVUc6IFNoZWxsIGZ1bmN0
aW9uIHN5c3Jvb3Rfc3RhZ2VfYWxsIGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1
bmN0aW9uIHN5c3Jvb3Rfc3RyaXAKREVCVUc6IHJ1bnN0cmlwOiAnYXJtLXBva3ktbGludXgtZ251
ZWFiaS1zdHJpcCcgLS1yZW1vdmUtc2VjdGlvbj0uY29tbWVudCAtLXJlbW92ZS1zZWN0aW9uPS5u
b3RlIC0tc3RyaXAtdW5uZWVkZWQgJy9kYXRhL0ZTTC9mc2wtY29tbXVuaXR5LWJzcC1tYXN0ZXIv
YnVpbGQvdG1wL3dvcmsvY29ydGV4YTloZi1uZW9uLXBva3ktbGludXgtZ251ZWFiaS9nb2JqZWN0
LWludHJvc3BlY3Rpb24vMS40Ni4wLXIwL3N5c3Jvb3QtZGVzdGRpci91c3IvbGliL2xpYmdpcmVw
b3NpdG9yeS0xLjAuc28uMS4wLjAnCkRFQlVHOiBydW5zdHJpcDogJ2FybS1wb2t5LWxpbnV4LWdu
dWVhYmktc3RyaXAnIC0tcmVtb3ZlLXNlY3Rpb249LmNvbW1lbnQgLS1yZW1vdmUtc2VjdGlvbj0u
bm90ZSAtLXN0cmlwLXVubmVlZGVkICcvZGF0YS9GU0wvZnNsLWNvbW11bml0eS1ic3AtbWFzdGVy
L2J1aWxkL3RtcC93b3JrL2NvcnRleGE5aGYtbmVvbi1wb2t5LWxpbnV4LWdudWVhYmkvZ29iamVj
dC1pbnRyb3NwZWN0aW9uLzEuNDYuMC1yMC9zeXNyb290LWRlc3RkaXIvdXNyL2xpYi9nb2JqZWN0
LWludHJvc3BlY3Rpb24vZ2lzY2FubmVyL19naXNjYW5uZXIuc28nCkRFQlVHOiBQeXRob24gZnVu
Y3Rpb24gc3lzcm9vdF9zdHJpcCBmaW5pc2hlZApERUJVRzogU0lURSBmaWxlcyBbJ2VuZGlhbi1s
aXR0bGUnLCAnYml0LTMyJywgJ2FybS1jb21tb24nLCAnYXJtLTMyJywgJ2NvbW1vbi1saW51eCcs
ICdjb21tb24tZ2xpYmMnLCAnYXJtLWxpbnV4JywgJ2FybS1saW51eC1nbnVlYWJpJywgJ2NvbW1v
biddCkRFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZ2lfYmluYXJpZXNfc3lzcm9vdF9w
cmVwcm9jZXNzCjAgYmxvY2tzCkRFQlVHOiBTaGVsbCBmdW5jdGlvbiBnaV9iaW5hcmllc19zeXNy
b290X3ByZXByb2Nlc3MgZmluaXNoZWQKREVCVUc6IFB5dGhvbiBmdW5jdGlvbiBkb19wb3B1bGF0
ZV9zeXNyb290IGZpbmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgcHl0aG9uIGZ1bmN0aW9uIGRvX3Fh
X3N0YWdpbmcKTk9URTogUUEgY2hlY2tpbmcgc3RhZ2luZwpERUJVRzogUHl0aG9uIGZ1bmN0aW9u
IGRvX3FhX3N0YWdpbmcgZmluaXNoZWQKREVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24g
c3N0YXRlX3Rhc2tfcG9zdGZ1bmMKREVCVUc6IFN0YWdpbmcgZmlsZXMgZnJvbSAvZGF0YS9GU0wv
ZnNsLWNvbW11bml0eS1ic3AtbWFzdGVyL2J1aWxkL3RtcC93b3JrL2NvcnRleGE5aGYtbmVvbi1w
b2t5LWxpbnV4LWdudWVhYmkvZ29iamVjdC1pbnRyb3NwZWN0aW9uLzEuNDYuMC1yMC9zeXNyb290
LWRlc3RkaXIgdG8gL2RhdGEvRlNML2ZzbC1jb21tdW5pdHktYnNwLW1hc3Rlci9idWlsZC90bXAv
c3lzcm9vdHMvdWRvb25lbwpFUlJPUjogVGhlIHJlY2lwZSBnb2JqZWN0LWludHJvc3BlY3Rpb24g
aXMgdHJ5aW5nIHRvIGluc3RhbGwgZmlsZXMgaW50byBhIHNoYXJlZCBhcmVhIHdoZW4gdGhvc2Ug
ZmlsZXMgYWxyZWFkeSBleGlzdC4gVGhvc2UgZmlsZXMgYW5kIHRoZWlyIG1hbmlmZXN0IGxvY2F0
aW9uIGFyZToKICAgL2RhdGEvRlNML2ZzbC1jb21tdW5pdHktYnNwLW1hc3Rlci9idWlsZC90bXAv
c3lzcm9vdHMvdWRvb25lby91c3Ivc2hhcmUvZ29iamVjdC1pbnRyb3NwZWN0aW9uLTEuMC9NYWtl
ZmlsZS5pbnRyb3NwZWN0aW9uCiBNYXRjaGVkIGluIG1hbmlmZXN0LXVkb29uZW8tZ3RrLWRvYy1z
dHViLnBvcHVsYXRlX3N5c3Jvb3QKIC9kYXRhL0ZTTC9mc2wtY29tbXVuaXR5LWJzcC1tYXN0ZXIv
YnVpbGQvdG1wL3N5c3Jvb3RzL3Vkb29uZW8vdXNyL3NoYXJlL2FjbG9jYWwvaW50cm9zcGVjdGlv
bi5tNAogTWF0Y2hlZCBpbiBtYW5pZmVzdC11ZG9vbmVvLWd0ay1kb2Mtc3R1Yi5wb3B1bGF0ZV9z
eXNyb290ClBsZWFzZSB2ZXJpZnkgd2hpY2ggcmVjaXBlIHNob3VsZCBwcm92aWRlIHRoZSBhYm92
ZSBmaWxlcy4KVGhlIGJ1aWxkIGhhcyBzdG9wcGVkIGFzIGNvbnRpbnVpbmcgaW4gdGhpcyBzY2Vu
YXJpbyBXSUxMIGJyZWFrIHRoaW5ncywgaWYgbm90IG5vdywgcG9zc2libHkgaW4gdGhlIGZ1dHVy
ZSAod2UndmUgc2VlbiBidWlsZHMgZmFpbCBzZXZlcmFsIG1vbnRocyBsYXRlcikuIElmIHRoZSBz
eXN0ZW0ga25ldyBob3cgdG8gcmVjb3ZlciBmcm9tIHRoaXMgYXV0b21hdGljYWxseSBpdCB3b3Vs
ZCBob3dldmVyIHRoZXJlIGFyZSBzZXZlcmFsIGRpZmZlcmVudCBzY2VuYXJpb3Mgd2hpY2ggY2Fu
IHJlc3VsdCBpbiB0aGlzIGFuZCB3ZSBkb24ndCBrbm93IHdoaWNoIG9uZSB0aGlzIGlzLiBJdCBt
YXkgYmUgeW91IGhhdmUgc3dpdGNoZWQgcHJvdmlkZXJzIG9mIHNvbWV0aGluZyBsaWtlIHZpcnR1
YWwva2VybmVsIChlLmcuIGZyb20gbGludXgteW9jdG8gdG8gbGludXgteW9jdG8tZGV2KSwgaW4g
dGhhdCBjYXNlIHlvdSBuZWVkIHRvIGV4ZWN1dGUgdGhlIGNsZWFuIHRhc2sgZm9yIGJvdGggcmVj
aXBlcyBhbmQgaXQgd2lsbCByZXNvbHZlIHRoaXMgZXJyb3IuIEl0IG1heSBiZSB5b3UgY2hhbmdl
ZCBESVNUUk9fRkVBVFVSRVMgZnJvbSBzeXN0ZW1kIHRvIHVkZXYgb3IgdmljZSB2ZXJzYS4gQ2xl
YW5pbmcgdGhvc2UgcmVjaXBlcyBzaG91bGQgYWdhaW4gcmVzb2x2ZSB0aGlzIGVycm9yIGhvd2V2
ZXIgc3dpdGNoaW5nIERJU1RST19GRUFUVVJFUyBvbiBhbiBleGlzdGluZyBidWlsZCBkaXJlY3Rv
cnkgaXMgbm90IHN1cHBvcnRlZCwgeW91IHNob3VsZCByZWFsbHkgY2xlYW4gb3V0IHRtcCBhbmQg
cmVidWlsZCAocmV1c2luZyBzc3RhdGUgc2hvdWxkIGJlIHNhZmUpLiBJdCBjb3VsZCBiZSB0aGUg
b3ZlcmxhcHBpbmcgZmlsZXMgZGV0ZWN0ZWQgYXJlIGhhcm1sZXNzIGluIHdoaWNoIGNhc2UgYWRk
aW5nIHRoZW0gdG8gU1NUQVRFX0RVUFdISVRFTElTVCBtYXkgYmUgdGhlIGNvcnJlY3Qgc29sdXRp
b24uIEl0IGNvdWxkIGFsc28gYmUgeW91ciBidWlsZCBpcyBpbmNsdWRpbmcgdHdvIGRpZmZlcmVu
dCBjb25mbGljdGluZyB2ZXJzaW9ucyBvZiB0aGluZ3MgKGUuZy4gYmx1ZXogNCBhbmQgYmx1ZXog
NSBhbmQgdGhlIGNvcnJlY3Qgc29sdXRpb24gZm9yIHRoYXQgd291bGQgYmUgdG8gcmVzb2x2ZSB0
aGUgY29uZmxpY3QuIElmIGluIGRvdWJ0LCBwbGVhc2UgYXNrIG9uIHRoZSBtYWlsaW5nIGxpc3Qs
IHNoYXJpbmcgdGhlIGVycm9yIGFuZCBmaWxlbGlzdCBhYm92ZS4KRVJST1I6IElmIHRoZSBhYm92
ZSBtZXNzYWdlIGlzIHRvbyBtdWNoLCB0aGUgc2ltcGxlciB2ZXJzaW9uIGlzIHlvdSdyZSBhZHZp
c2VkIHRvIHdpcGUgb3V0IHRtcCBhbmQgcmVidWlsZCAocmV1c2luZyBzc3RhdGUgaXMgZmluZSku
IFRoYXQgd2lsbCBsaWtlbHkgZml4IHRoaW5ncyBpbiBtb3N0IChidXQgbm90IGFsbCkgY2FzZXMu
CkRFQlVHOiBQeXRob24gZnVuY3Rpb24gc3N0YXRlX3Rhc2tfcG9zdGZ1bmMgZmluaXNoZWQKRVJS
T1I6IEZ1bmN0aW9uIGZhaWxlZDogc3N0YXRlX3Rhc2tfcG9zdGZ1bmMK

--001a11c3c34a6bb5d5052e2f87b0--
