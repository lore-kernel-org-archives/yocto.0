Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57803E0087C; Wed, 10 Dec 2014 17:23:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7390FE0080C
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 17:23:37 -0800 (PST)
Received: by mail-wi0-f176.google.com with SMTP id ex7so13028403wid.15
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 17:23:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=YNP0s2UjvAouBdWVaY7YXTx+x8mFK6HyjLP2jBpK3IM=;
	b=pEFTg0tOxmVGY8r0/6aAuHHS379TTy7c2EYo5OX0/6RxP3BPT+XtE2zHBJ3rBli8XK
	ZU8r1ZllIq/VGel30+yZhniQv+gUe9d0UbeEOTCqy6c+sVvCA8XsL0WyaMhcJnGxVwy1
	p0zEsmkqTv5i8vECkPZ8Xg04JPmiImbiwpf9JMvYK1TF4ZMITiZbSNxNqAZE0gSvFE9R
	zxV3hCLYMOSQVrJbF18xeb9elapy9oC/6x/UcwoNtpj7DmAVc9J2jwHFHEs/cEqKqY7W
	yACI7IPk+lKdLJR4EBMTSqCk1Iz9guRJT8PJuQx8sU2wUS0egzJM9jVpv3ULJQ+XFTFT
	7cSQ==
X-Received: by 10.194.3.45 with SMTP id 13mr11224087wjz.47.1418261016246; Wed,
	10 Dec 2014 17:23:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.7.99 with HTTP; Wed, 10 Dec 2014 17:23:15 -0800 (PST)
In-Reply-To: <D2ABFB01-ED92-4251-8B39-F89A9D178C72@gmail.com>
References: <CACzyEJ9bhV0iZWR7Tdis_n+oDB8yKzjM=J0M7e+YY+ZPz0ZufQ@mail.gmail.com>
	<D2ABFB01-ED92-4251-8B39-F89A9D178C72@gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Wed, 10 Dec 2014 17:23:15 -0800
Message-ID: <CACzyEJ9Lsv0PPaVGzGUWQY_XAUocJP=2xfPpNEiACRck3kJtGw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	=?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigbrady.com>
Subject: Re: add a process memory check utility (ps_mem)
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
X-List-Received-Date: Thu, 11 Dec 2014 01:23:42 -0000
X-Groupsio-MsgNum: 22584
Content-Type: multipart/mixed; boundary=047d7b3a892a1292f60509e6a0aa

--047d7b3a892a1292f60509e6a0aa
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Here is a patch.

- add RDEPENDS python
- updated FILES to your comment
- made change to the master tip of git://git.openembedded.org/meta-openembe=
dded
- testing: bitbake psmem
- testing: bitbake fsl-image-full (using freescale yocto)

Thank you.

Insop


From 2a4e527465b0ec80e41d2b0df0e2c0b2ef30c608 Mon Sep 17 00:00:00 2001
From: Insop Song <insop.song@gmail.com>
Date: Wed, 10 Dec 2014 17:16:27 -0800
Subject: [yocto][PATCH] Add ps_mem to to accurately report the in core
memory usage
 for a program

- https://github.com/pixelb/ps_mem
---
 meta-oe/recipes-extended/ps_mem/psmem.bb |   26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 meta-oe/recipes-extended/ps_mem/psmem.bb

diff --git a/meta-oe/recipes-extended/ps_mem/psmem.bb
b/meta-oe/recipes-extended/ps_mem/psmem.bb
new file mode 100644
index 0000000..b6b22a7
--- /dev/null
+++ b/meta-oe/recipes-extended/ps_mem/psmem.bb
@@ -0,0 +1,26 @@
+#
+# ps_mem
+#
+
+SUMMARY =3D "A utility to accurately report the in core memory usage
for a program"
+HOMEPAGE =3D "https://github.com/pixelb/ps_mem"
+LICENSE =3D "LGPLv2"
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc05fdef0c0d05f619748e9bb0fb41b2=
1"
+
+RDEPENDS_${PN} =3D " python "
+
+SRC_URI =3D "git://github.com/pixelb/ps_mem.git;branch=3Dmaster;protocol=
=3Dgit"
+SRCREV =3D "702b461d16062f14a9f4191bc731adcf48b51489"
+
+S =3D "${WORKDIR}/git"
+
+do_compile () {
+ echo "No compile needed"
+}
+
+do_install () {
+ install -d ${D}${bindir}
+ install -m 0755 ${S}/ps_mem.py ${D}${bindir}/ps_mem
+}
+
+FILES_${PN}-dbg +=3D "/var/www/pages/.debug"
--=20
1.7.9.5




On Wed, Dec 10, 2014 at 2:39 PM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> On Dec 10, 2014, at 1:33 PM, Insop Song <insop.song@gmail.com> wrote:
>>
>> Hi Khem,
>>
>> I've been using this memory check utility (ps_mem) and wrote a bb file
>> to include it in our yocto image.
>>
>> I thought it'd nice to include this in yocto upstream as well.
>>
>> - It's called ps_mem, "A utility to accurately report the in core
>> memory usage for a program"
>> - https://github.com/pixelb
>>
>> Could you consider to include ps_mem in upstream? and let me know what
>> and where to put if is okay? I can follow up.
>
> sure, please post it for meta-openembedded/meta-oe
>
>>
>>
>> Thank you,
>>
>> Insop
>>
>>
>> - this is my bb file as an example
>>
>> diff --git a/recipes-gs/ps_mem/psmem.bb b/recipes-gs/ps_mem/psmem.bb
>> new file mode 100644
>> index 0000000..d408298
>> --- /dev/null
>> +++ b/recipes-gs/ps_mem/psmem.bb
>> @@ -0,0 +1,26 @@
>> +#
>> +# ps_mem
>> +#
>> +SUMMARY =3D "A utility to accurately report the in core memory usage
>> for a program"
>> +HOMEPAGE =3D "https://github.com/pixelb/ps_mem"
>> +LICENSE =3D "LGPLv2"
>> +LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3Dc05fdef0c0d05f619748e9bb0fb4=
1b21"
>> +
>> +PR =3D =E2=80=9Cr0"
>
> remove this
>
>> +
>> +SRC_URI =3D "git://github.com/pixelb/ps_mem.git;branch=3Dmaster;protoco=
l=3Dgit"
>> +SRCREV =3D "702b461d16062f14a9f4191bc731adcf48b51489"
>> +
>> +S =3D "${WORKDIR}/git"
>> +
>> +do_compile () {
>> + echo "No compile needed"
>> +}
>> +
>> +do_install () {
>> + install -d ${D}${bindir}
>> + install -m 0755 ${S}/ps_mem.py ${D}${bindir}/ps_mem
>
> you need a dependency on python atlas
>
>> +}
>> +
>> +FILES_${PN} +=3D "/*=E2=80=9D
>
> why is this needed may be you want www to go under /var
>
>> +FILES_${PN}-dbg +=3D "/www/pages/.debug=E2=80=9D
>
> this could go into /var/www
>
>> --
>> 1.7.9.5
>

--047d7b3a892a1292f60509e6a0aa
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-Add-ps_mem-to-to-accurately-report-the-in-core-memor.patch"
Content-Disposition: attachment; 
	filename="0001-Add-ps_mem-to-to-accurately-report-the-in-core-memor.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i3jfv3e50

RnJvbSAyYTRlNTI3NDY1YjBlYzgwZTQxZDJiMGRmMGUyYzBiMmVmMzBjNjA4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBJbnNvcCBTb25nIDxpbnNvcC5zb25nQGdtYWlsLmNvbT4KRGF0
ZTogV2VkLCAxMCBEZWMgMjAxNCAxNzoxNjoyNyAtMDgwMApTdWJqZWN0OiBbUEFUQ0hdIEFkZCBw
c19tZW0gdG8gdG8gYWNjdXJhdGVseSByZXBvcnQgdGhlIGluIGNvcmUgbWVtb3J5IHVzYWdlCiBm
b3IgYSBwcm9ncmFtCgotIGh0dHBzOi8vZ2l0aHViLmNvbS9waXhlbGIvcHNfbWVtCi0tLQogbWV0
YS1vZS9yZWNpcGVzLWV4dGVuZGVkL3BzX21lbS9wc21lbS5iYiB8ICAgMjYgKysrKysrKysrKysr
KysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgbWV0YS1vZS9yZWNpcGVzLWV4dGVuZGVkL3BzX21lbS9wc21lbS5iYgoKZGlm
ZiAtLWdpdCBhL21ldGEtb2UvcmVjaXBlcy1leHRlbmRlZC9wc19tZW0vcHNtZW0uYmIgYi9tZXRh
LW9lL3JlY2lwZXMtZXh0ZW5kZWQvcHNfbWVtL3BzbWVtLmJiCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
CmluZGV4IDAwMDAwMDAuLmI2YjIyYTcKLS0tIC9kZXYvbnVsbAorKysgYi9tZXRhLW9lL3JlY2lw
ZXMtZXh0ZW5kZWQvcHNfbWVtL3BzbWVtLmJiCkBAIC0wLDAgKzEsMjYgQEAKKyMKKyMgcHNfbWVt
CisjCisKK1NVTU1BUlkgPSAiQSB1dGlsaXR5IHRvIGFjY3VyYXRlbHkgcmVwb3J0IHRoZSBpbiBj
b3JlIG1lbW9yeSB1c2FnZSBmb3IgYSBwcm9ncmFtIgorSE9NRVBBR0UgPSAiaHR0cHM6Ly9naXRo
dWIuY29tL3BpeGVsYi9wc19tZW0iCitMSUNFTlNFID0gIkxHUEx2MiIKK0xJQ19GSUxFU19DSEtT
VU0gPSAiZmlsZTovL0xJQ0VOU0U7bWQ1PWMwNWZkZWYwYzBkMDVmNjE5NzQ4ZTliYjBmYjQxYjIx
IgorCitSREVQRU5EU18ke1BOfSA9ICIgcHl0aG9uICIKKworU1JDX1VSSSA9ICJnaXQ6Ly9naXRo
dWIuY29tL3BpeGVsYi9wc19tZW0uZ2l0O2JyYW5jaD1tYXN0ZXI7cHJvdG9jb2w9Z2l0IgorU1JD
UkVWID0gIjcwMmI0NjFkMTYwNjJmMTRhOWY0MTkxYmM3MzFhZGNmNDhiNTE0ODkiCisKK1MgPSAi
JHtXT1JLRElSfS9naXQiCisKK2RvX2NvbXBpbGUgKCkgeworCWVjaG8gIk5vIGNvbXBpbGUgbmVl
ZGVkIgorfQorCitkb19pbnN0YWxsICgpIHsKKwlpbnN0YWxsIC1kICR7RH0ke2JpbmRpcn0KKwlp
bnN0YWxsIC1tIDA3NTUgJHtTfS9wc19tZW0ucHkgJHtEfSR7YmluZGlyfS9wc19tZW0KK30KKwor
RklMRVNfJHtQTn0tZGJnICs9ICIvdmFyL3d3dy9wYWdlcy8uZGVidWciCi0tIAoxLjcuOS41Cgo=

--047d7b3a892a1292f60509e6a0aa--
