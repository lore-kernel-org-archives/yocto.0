Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 804E1E01472;
	Thu, 14 Mar 2013 22:10:09 -0700 (PDT)
Received: by mail-wg0-f54.google.com with SMTP id fm10so2791681wgb.9
	for <multiple recipients>; Thu, 14 Mar 2013 22:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to:cc
	:content-type; bh=EFH90wAOj6PCp62RnXEzWph4SikjU6XzUvly2X4OuLU=;
	b=wZVVTbgAXd+P+fl2mEvfqMPAF4jKNYIqNZb3QVlEzbxqdG3oLTmUjKUbvJPDLvhqof
	lMxaZpLL3hTStpwyNFbEr6SuhfPNmztR/S1T/2j21Rb9aBn7QKYMRzaEQ9yBb4ZUMdvI
	xH14Y09o3rjozbG/sFLwFZE5n3yguSHmXAAJSYGtUKUJCX2oEX+hqPxMk4MUqp//+CKU
	S27ByGoctsP1aNJ57IJIewRi74lXHvTzzmO85UKxHbQKK+flpyjDC6Szm2gIxnes9vhf
	y8eZrMEeieas5cEgU9AwnmDU54cZWKMAGzns/82w9+YoN5UZJo1RjrQ0TlxidPhfCBpx
	i6VQ==
X-Received: by 10.194.76.37 with SMTP id h5mr8543937wjw.21.1363324208170; Thu,
	14 Mar 2013 22:10:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 14 Mar 2013 22:09:47 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Thu, 14 Mar 2013 22:09:47 -0700
Message-ID: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 05:10:10 -0000
X-Groupsio-MsgNum: 12572
Content-Type: multipart/mixed; boundary=047d7bb03bc4244e9104d7efa7c6

--047d7bb03bc4244e9104d7efa7c6
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

I've added recipes-kernel to use edf branch and cfg.

- tested on qemux86
===========================================

root@qemux86:~# uname -a
Linux qemux86 3.8.1-yocto-standard #1 SMP PREEMPT Thu Mar 14 21:57:12
PDT 2013 i686 GNU/Linux
root@qemux86:~# rt-app -t 100000:35000:d -D 2
[rt-app] <notice> [0] Using SCHED_DEADLINE policy:
[rt-app] <notice> [0] starting thread with period: 100000, exec:
35000,deadline: 100000, priority: 10
[rt-app] <notice> [0] Locking pages in memory
#idx	period	min_et	max_et	rel_st	start		end		deadline	dur.	slack	Budget	Used
Budget
0	100000	35000	35000	65466	354577907	354612918	354677899	35011	64981
0	100000	35000	35000	165585	354678026	354713105	354777899	35079	64794
...
0	100000	35000	35000	1965672	356478113	356513126	356577899	35014	64772
[rt-app] <notice> [0] Exiting.
root@qemux86:~#

===========================================

Let me know what you think.

Regards,

Insop

===========================================


Subject: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8
 kernel

---
 recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ++++
 recipes-kernel/linux/linux-yocto_3.8.bbappend |   14 ++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto/edf.cfg
b/recipes-kernel/linux/linux-yocto/edf.cfg
new file mode 100644
index 0000000..ccf004f
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/edf.cfg
@@ -0,0 +1,4 @@
+CONFIG_CGROUPS=y
+CONFIG_CGROUP_SCHED=y
+CONFIG_DEADLINE_GROUP_SCHED=y
+
diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend
b/recipes-kernel/linux/linux-yocto_3.8.bbappend
new file mode 100644
index 0000000..c6a969f
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -0,0 +1,14 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+COMPATIBLE_MACHINE_qemux86 = "qemux86"
+COMPATIBLE_MACHINE_fri2 = "fri2"
+
+KBRANCH_qemux86 = "standard/edf"
+KBRANCH_fri2 = "standard/edf"
+
+KMACHINE_qemux86 = "qemux86"
+KMACHINE_fri2 = "fri2"
+
+SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
+SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
+
+KERNEL_FEATURES_append =" cfg/edf.scc"
-- 
1.7.9.5

--047d7bb03bc4244e9104d7efa7c6
Content-Type: application/octet-stream; 
	name="0001-add-sched_deadline-reckpies-kernel-for-3.8-kernel.patch"
Content-Disposition: attachment; 
	filename="0001-add-sched_deadline-reckpies-kernel-for-3.8-kernel.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_heavygzx0

RnJvbSA1NzZkOTczMDJmYWY1NjE1ZmY1ZThmYzFhMTAxYmUzNWM2MjA2ZWEwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJbnNvcCBTb25nIDxpbnNvcC5zb25nQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAxNCBNYXIgMjAxMyAyMTo1MjozOCAtMDcwMApTdWJqZWN0OiBbbWV0YS1yZWFsdGlt
ZV1bUEFUQ0hdIGFkZCBzY2hlZF9kZWFkbGluZSByZWNrcGllcy1rZXJuZWwgZm9yIDMuOAoga2Vy
bmVsCgotLS0KIHJlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvL2VkZi5jZmcgICAgICB8
ICAgIDQgKysrKwogcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG9fMy44LmJiYXBwZW5k
IHwgICAxNCArKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCsp
CiBjcmVhdGUgbW9kZSAxMDA2NDQgcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8vZWRm
LmNmZwogY3JlYXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3Rv
XzMuOC5iYmFwcGVuZAoKZGlmZiAtLWdpdCBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlv
Y3RvL2VkZi5jZmcgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0by9lZGYuY2ZnCm5l
dyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLmNjZjAwNGYKLS0tIC9kZXYvbnVsbAor
KysgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0by9lZGYuY2ZnCkBAIC0wLDAgKzEs
NCBAQAorQ09ORklHX0NHUk9VUFM9eQorQ09ORklHX0NHUk9VUF9TQ0hFRD15CitDT05GSUdfREVB
RExJTkVfR1JPVVBfU0NIRUQ9eQorCmRpZmYgLS1naXQgYS9yZWNpcGVzLWtlcm5lbC9saW51eC9s
aW51eC15b2N0b18zLjguYmJhcHBlbmQgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0
b18zLjguYmJhcHBlbmQKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uYzZhOTY5
ZgotLS0gL2Rldi9udWxsCisrKyBiL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzMu
OC5iYmFwcGVuZApAQCAtMCwwICsxLDE0IEBACitGSUxFU0VYVFJBUEFUSFNfcHJlcGVuZCA6PSAi
JHtUSElTRElSfS8ke1BOfToiCitDT01QQVRJQkxFX01BQ0hJTkVfcWVtdXg4NiA9ICJxZW11eDg2
IgorQ09NUEFUSUJMRV9NQUNISU5FX2ZyaTIgPSAiZnJpMiIKKworS0JSQU5DSF9xZW11eDg2ID0g
InN0YW5kYXJkL2VkZiIKK0tCUkFOQ0hfZnJpMiA9ICJzdGFuZGFyZC9lZGYiCisKK0tNQUNISU5F
X3FlbXV4ODYgPSAicWVtdXg4NiIKK0tNQUNISU5FX2ZyaTIgPSAiZnJpMiIKKworU1JDUkVWX21h
Y2hpbmVfcWVtdXg4NiA9ICI2MmQ5OGY2YjEyZjkxY2M3NDE5Yjg4ZGZhMmUwYWJlMDc3Yzk0Zjlm
IgorU1JDUkVWX21hY2hpbmVfZnJpMiA9ICI2MmQ5OGY2YjEyZjkxY2M3NDE5Yjg4ZGZhMmUwYWJl
MDc3Yzk0ZjlmIgorCitLRVJORUxfRkVBVFVSRVNfYXBwZW5kID0iIGNmZy9lZGYuc2NjIgotLSAK
MS43LjkuNQoK

--047d7bb03bc4244e9104d7efa7c6--
