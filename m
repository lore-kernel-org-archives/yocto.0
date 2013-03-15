Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03937E01471;
	Thu, 14 Mar 2013 23:37:16 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id 8so1000966wgl.6
	for <multiple recipients>; Thu, 14 Mar 2013 23:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=mGCyVWhKZsJpZn7t9b6Ht8WmZVE2nlsf6g6Jbs5Bq0c=;
	b=qazuTxf51oGXDwM9d0avutdi1YgUrUr/knNEjdQ2UghRTL9tSwSk4vzaHfWe2TsWaD
	FzmanK1X3UodH/NobLlxg0i1v3lQrCZ5jI84Uj/Nw74sLEQ/Wam/WiPFf1dRy3Y1hDhB
	fcWh7D4Vy6oJOTLabzdwXky/I5vXWpxAlOrnJX+McEdSfuF5+TkwZOXpJkcYhvuv/f9/
	H59WEiR0D7TL+3I0MHoTs96GLKl9bMSUOrWqs8gWuHCKPVofxGWmqeUctPZTMIax9JU0
	vgE0eVLdelRU3GfLJsTjV4y9q3qNQNNFv7ITC7bfjteRby3gEKh2Fs2A0AbH+Q2qJj/X
	V9Mw==
X-Received: by 10.180.13.98 with SMTP id g2mr1065439wic.21.1363329436059; Thu,
	14 Mar 2013 23:37:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Thu, 14 Mar 2013 23:36:55 -0700 (PDT)
In-Reply-To: <CADkTA4PJkFwNshUgcYTKKM+GDHTevMGPTj7t-M1eNeAL+XE_Zg@mail.gmail.com>
References: <CACzyEJ8DDZqhSDWvTN9vBtpZ910eGtAC9GGtvNEqHpM0x1hxVg@mail.gmail.com>
	<5142AE66.8010105@windriver.com>
	<CACzyEJ9VV89cDL3YB2ru-FAiAwjtOjs_An9gRjoUW5oHe93uaA@mail.gmail.com>
	<CADkTA4PJkFwNshUgcYTKKM+GDHTevMGPTj7t-M1eNeAL+XE_Zg@mail.gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Thu, 14 Mar 2013 23:36:55 -0700
Message-ID: <CACzyEJ_mjkVe-zo=uKug=m+NHjhr3YJeOY0F46L8pYzmhfXgzg@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [meta-realtime][PATCH] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 06:37:17 -0000
X-Groupsio-MsgNum: 12577
Content-Type: multipart/mixed; boundary=001a11c23d36bf913d04d7f0de00

--001a11c23d36bf913d04d7f0de00
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 11:13 PM, Bruce Ashfield
<bruce.ashfield@gmail.com> wrote:


>
> Hmm. One of the arbiters is me .. if it doesn't work this time, let me know
> and I'll check the list membership.

I've just signed up and got a confirmation email.


>>
>> I was do some testing on "make localmodconfig", which will gets me the
>> using module build .config.
>> So let me me ask you this before I send out an updated patch.
>>
>> I ran "lsmod > /tmp/lsmod" on my qemux86
>> On dev host, run "make LSMOD=/tmp/lsmod localmodconfig" to get this
>> localmodconfig_qemux86.cfg file, which has less module configurations.
>>
>> Then I use this in bbappend file like below:
>>
>> ---
>> SRC_URI = "git://git.yoctoproject.org/linux-yocto-3.8.git;protocol=git;bareclone=1;branch=${KBRANCH},${KMETA};name=machine,meta
>> \
>>         file://localmodconfig_qemux86.cfg \
>>         "
>> ----
>>
>> what do you think?
>
> We want to track the modules and policies of the main qemu BSP,
> not override them all here. Extra layers should be only changing board
> functionality that is specific to their functionality, not the base board
> configuration.
>
> If you think there are modules that are enabled that shouldn't be, we
> can address that by looking at the base policy and deciding if that
> base policy is wrong.
>
> Cheers,
>

I see, let me follow up the current patch update and do some more look
on qemu bsp and deal with a separate patch.

Here are the update patches 2/2.

And let me know if you want to see in different ways of patch
delivery? since, I haven't set up my gmail smtp set up yet (due to
application specific athentication), so I manually copy and paste and
attach the files.
------


Subject: [meta-realtime][PATCH 2/2] remove edf.cfg and follow up review
 feedback

---
 recipes-kernel/linux/linux-yocto/edf.cfg      |    4 ----
 recipes-kernel/linux/linux-yocto_3.8.bbappend |    5 -----
 2 files changed, 9 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto/edf.cfg

diff --git a/recipes-kernel/linux/linux-yocto/edf.cfg
b/recipes-kernel/linux/linux-yocto/edf.cfg
deleted file mode 100644
index ccf004f..0000000
--- a/recipes-kernel/linux/linux-yocto/edf.cfg
+++ /dev/null
@@ -1,4 +0,0 @@
-CONFIG_CGROUPS=y
-CONFIG_CGROUP_SCHED=y
-CONFIG_DEADLINE_GROUP_SCHED=y
-
diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend
b/recipes-kernel/linux/linux-yocto_3.8.bbappend
index c6a969f..175ab91 100644
--- a/recipes-kernel/linux/linux-yocto_3.8.bbappend
+++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -1,13 +1,8 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-COMPATIBLE_MACHINE_qemux86 = "qemux86"
-COMPATIBLE_MACHINE_fri2 = "fri2"

 KBRANCH_qemux86 = "standard/edf"
 KBRANCH_fri2 = "standard/edf"

-KMACHINE_qemux86 = "qemux86"
-KMACHINE_fri2 = "fri2"
-
 SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
 SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"

-- 
1.7.9.5

--001a11c23d36bf913d04d7f0de00
Content-Type: application/octet-stream; 
	name="0001-add-sched_deadline-reckpies-kernel-for-3.8-kernel.patch"
Content-Disposition: attachment; 
	filename="0001-add-sched_deadline-reckpies-kernel-for-3.8-kernel.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_heayxhpr0

RnJvbSA1NzZkOTczMDJmYWY1NjE1ZmY1ZThmYzFhMTAxYmUzNWM2MjA2ZWEwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJbnNvcCBTb25nIDxpbnNvcC5zb25nQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAxNCBNYXIgMjAxMyAyMTo1MjozOCAtMDcwMApTdWJqZWN0OiBbbWV0YS1yZWFsdGlt
ZV1bUEFUQ0ggMS8yXSBhZGQgc2NoZWRfZGVhZGxpbmUgcmVja3BpZXMta2VybmVsIGZvcgogMy44
IGtlcm5lbAoKLS0tCiByZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0by9lZGYuY2ZnICAg
ICAgfCAgICA0ICsrKysKIHJlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzMuOC5iYmFw
cGVuZCB8ICAgMTQgKysrKysrKysrKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9u
cygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3Rv
L2VkZi5jZmcKIGNyZWF0ZSBtb2RlIDEwMDY0NCByZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15
b2N0b18zLjguYmJhcHBlbmQKCmRpZmYgLS1naXQgYS9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51
eC15b2N0by9lZGYuY2ZnIGIvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8vZWRmLmNm
ZwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi5jY2YwMDRmCi0tLSAvZGV2L251
bGwKKysrIGIvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8vZWRmLmNmZwpAQCAtMCww
ICsxLDQgQEAKK0NPTkZJR19DR1JPVVBTPXkKK0NPTkZJR19DR1JPVVBfU0NIRUQ9eQorQ09ORklH
X0RFQURMSU5FX0dST1VQX1NDSEVEPXkKKwpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1rZXJuZWwvbGlu
dXgvbGludXgteW9jdG9fMy44LmJiYXBwZW5kIGIvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgt
eW9jdG9fMy44LmJiYXBwZW5kCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAuLmM2
YTk2OWYKLS0tIC9kZXYvbnVsbAorKysgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0
b18zLjguYmJhcHBlbmQKQEAgLTAsMCArMSwxNCBAQAorRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQg
Oj0gIiR7VEhJU0RJUn0vJHtQTn06IgorQ09NUEFUSUJMRV9NQUNISU5FX3FlbXV4ODYgPSAicWVt
dXg4NiIKK0NPTVBBVElCTEVfTUFDSElORV9mcmkyID0gImZyaTIiCisKK0tCUkFOQ0hfcWVtdXg4
NiA9ICJzdGFuZGFyZC9lZGYiCitLQlJBTkNIX2ZyaTIgPSAic3RhbmRhcmQvZWRmIgorCitLTUFD
SElORV9xZW11eDg2ID0gInFlbXV4ODYiCitLTUFDSElORV9mcmkyID0gImZyaTIiCisKK1NSQ1JF
Vl9tYWNoaW5lX3FlbXV4ODYgPSAiNjJkOThmNmIxMmY5MWNjNzQxOWI4OGRmYTJlMGFiZTA3N2M5
NGY5ZiIKK1NSQ1JFVl9tYWNoaW5lX2ZyaTIgPSAiNjJkOThmNmIxMmY5MWNjNzQxOWI4OGRmYTJl
MGFiZTA3N2M5NGY5ZiIKKworS0VSTkVMX0ZFQVRVUkVTX2FwcGVuZCA9IiBjZmcvZWRmLnNjYyIK
LS0gCjEuNy45LjUKCg==

--001a11c23d36bf913d04d7f0de00
Content-Type: application/octet-stream; 
	name="0002-remove-edf.cfg-and-follow-up-review-feedback.patch"
Content-Disposition: attachment; 
	filename="0002-remove-edf.cfg-and-follow-up-review-feedback.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_heayxt981

RnJvbSAxNjE1NTJiMTViYWRkNThiMGNiMTBlODc5ZTQwMTg5ZDgwNDA5MmZjIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJbnNvcCBTb25nIDxpbnNvcC5zb25nQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAxNCBNYXIgMjAxMyAyMzoxODo0MCAtMDcwMApTdWJqZWN0OiBbbWV0YS1yZWFsdGlt
ZV1bUEFUQ0ggMi8yXSByZW1vdmUgZWRmLmNmZyBhbmQgZm9sbG93IHVwIHJldmlldwogZmVlZGJh
Y2sKCi0tLQogcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8vZWRmLmNmZyAgICAgIHwg
ICAgNCAtLS0tCiByZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15b2N0b18zLjguYmJhcHBlbmQg
fCAgICA1IC0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDkgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9k
ZSAxMDA2NDQgcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8vZWRmLmNmZwoKZGlmZiAt
LWdpdCBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvL2VkZi5jZmcgYi9yZWNpcGVz
LWtlcm5lbC9saW51eC9saW51eC15b2N0by9lZGYuY2ZnCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0
NAppbmRleCBjY2YwMDRmLi4wMDAwMDAwCi0tLSBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4
LXlvY3RvL2VkZi5jZmcKKysrIC9kZXYvbnVsbApAQCAtMSw0ICswLDAgQEAKLUNPTkZJR19DR1JP
VVBTPXkKLUNPTkZJR19DR1JPVVBfU0NIRUQ9eQotQ09ORklHX0RFQURMSU5FX0dST1VQX1NDSEVE
PXkKLQpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG9fMy44LmJi
YXBwZW5kIGIvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG9fMy44LmJiYXBwZW5kCmlu
ZGV4IGM2YTk2OWYuLjE3NWFiOTEgMTAwNjQ0Ci0tLSBhL3JlY2lwZXMta2VybmVsL2xpbnV4L2xp
bnV4LXlvY3RvXzMuOC5iYmFwcGVuZAorKysgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9saW51eC15
b2N0b18zLjguYmJhcHBlbmQKQEAgLTEsMTMgKzEsOCBAQAogRklMRVNFWFRSQVBBVEhTX3ByZXBl
bmQgOj0gIiR7VEhJU0RJUn0vJHtQTn06IgotQ09NUEFUSUJMRV9NQUNISU5FX3FlbXV4ODYgPSAi
cWVtdXg4NiIKLUNPTVBBVElCTEVfTUFDSElORV9mcmkyID0gImZyaTIiCiAKIEtCUkFOQ0hfcWVt
dXg4NiA9ICJzdGFuZGFyZC9lZGYiCiBLQlJBTkNIX2ZyaTIgPSAic3RhbmRhcmQvZWRmIgogCi1L
TUFDSElORV9xZW11eDg2ID0gInFlbXV4ODYiCi1LTUFDSElORV9mcmkyID0gImZyaTIiCi0KIFNS
Q1JFVl9tYWNoaW5lX3FlbXV4ODYgPSAiNjJkOThmNmIxMmY5MWNjNzQxOWI4OGRmYTJlMGFiZTA3
N2M5NGY5ZiIKIFNSQ1JFVl9tYWNoaW5lX2ZyaTIgPSAiNjJkOThmNmIxMmY5MWNjNzQxOWI4OGRm
YTJlMGFiZTA3N2M5NGY5ZiIKIAotLSAKMS43LjkuNQoK

--001a11c23d36bf913d04d7f0de00--
