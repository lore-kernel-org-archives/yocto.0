Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEF41E00BAB; Tue, 18 Jul 2017 06:36:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB7C8E00B67
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:36:01 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id 64so23497593uae.2
	for <yocto@yoctoproject.org>; Tue, 18 Jul 2017 06:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=U4N4PyT1oZqaP9n0EM0QyxNGr4jsW0eGALlGvktg4Zw=;
	b=UW36fXCvVQdCU7I7NRugNjGBt40+fGNKm/NB+PJx4jGTCBuWNlfKj5u49LA4OsO1UK
	5B8QbvA0lf3HAajjEz7UYZ+dlNMivrQj4b4BHoFDb3YBEgMcgyDWtmCHzMp1WWXVEsm3
	6hsKW0h63PhFV2JuN2YJOJm49FMw2Vh/oi8I6bWSCqSCthmGhjWpoGW0PO2ZL0HWkRRI
	FE96pmxROY9KREyPHBIf/42vPLdMpxhtiBgdi7DULbFdbPoMCjnGsoNAWaN3vuP4VEjd
	aUiDUz37VKf0mhtHljxIzxs9DJha5XnuXthe2/IsuwQDS6WmQ+rbdL04yFJ/qYWU6YpC
	RwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=U4N4PyT1oZqaP9n0EM0QyxNGr4jsW0eGALlGvktg4Zw=;
	b=S+7ka/7Ny/pdVSlRcjD4JOmZxe1O1Qr6RaBS0BXGXEulUNkK/80gcuWBxVGjvncvwu
	U3rWF1QlPnyrBzG2QTiZHKM10a7G7pWLQwbVboORsYrDecxuJCTsx0Q8gH9uTFvJFJ1E
	5z9tGtXX0O9WxRNQg0RRyVR5qm9CLehDoJFpY8yUseNoH7EVWlnaYBpGYXPjRmR6RtF3
	qRv0yw9TWeDbHzn5Qnrc2O8EkZGwmwlmTH2uDDjhRBCGCXyao5YgaUwvRY7KyZT1l5ru
	xl8qscgatZgbfrmBHfSdkQDS0OAiXIPy540S6au2oyxtPe+STezxZfDoRdZCXXrSL8FM
	rs3Q==
X-Gm-Message-State: AIVw112WEWgz46oxFax/2+5m0g222HAtM8TKjUa6YgLAoVZ29tDg/GEO
	gI/qstEWf3qoyGH8oGD9ZYR43qRiwM3jeUM=
X-Received: by 10.176.86.204 with SMTP id c12mr989112uab.126.1500384961044;
	Tue, 18 Jul 2017 06:36:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.32.101 with HTTP; Tue, 18 Jul 2017 06:36:00 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Tue, 18 Jul 2017 15:36:00 +0200
Message-ID: <CAJO0J4iPW2tsj7fPC-o5OkU95Td9Ni+fxwy2R3Kdwj0XN_Wjcw@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: [PATCH] staging.bbclass: Refactored sysroot_stage_dir* functions.
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
X-List-Received-Date: Tue, 18 Jul 2017 13:36:04 -0000
X-Groupsio-MsgNum: 37073
Content-Type: multipart/mixed; boundary="94eb2c1b048aa13e650554979810"

--94eb2c1b048aa13e650554979810
Content-Type: text/plain; charset="UTF-8"

staging.bbclass: Refactored sysroot_stage_dir* functions.

    Removed sysroot_stage_libdir because it just forwarded the
    arguments to sysroot_stage_libdir with no other function.
    git grep for sysroot_stage_libdir did not show any recipe
    appending or overrriding sysroot_stage_libdir.

    Removed checks for directories in sysroot_stage_dirs because
    sysroot_stage_dir already handles the check.

    This block of code had tabs instead of spaces, as in the
    rest of the staging.bbclass. This commit replaces tabs with
    whitespaces where appropriate.

--94eb2c1b048aa13e650554979810
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-staging.bbclass-Refactored-sysroot_stage_dir-functio.patch"
Content-Disposition: attachment; 
	filename="0001-staging.bbclass-Refactored-sysroot_stage_dir-functio.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j59mfn430

RnJvbSAzNzY4ZmE1YjVmOGM0NDZjOTY1OTBkZjU0ZGRlNTliZWFkZDE1ZTVmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsbyBOZXZlcyA8cGF1bG8uZGVfc291c2FfbmV2ZXNAbm9r
aWEuY29tPgpEYXRlOiBUdWUsIDE4IEp1bCAyMDE3IDE1OjE1OjMyICswMjAwClN1YmplY3Q6IFtQ
QVRDSCAxLzFdIHN0YWdpbmcuYmJjbGFzczogUmVmYWN0b3JlZCBzeXNyb290X3N0YWdlX2Rpciog
ZnVuY3Rpb25zLgoKUmVtb3ZlZCBzeXNyb290X3N0YWdlX2xpYmRpciBiZWNhdXNlIGl0IGp1c3Qg
Zm9yd2FyZGVkIHRoZQphcmd1bWVudHMgdG8gc3lzcm9vdF9zdGFnZV9saWJkaXIgd2l0aCBubyBv
dGhlciBmdW5jdGlvbi4KZ2l0IGdyZXAgZm9yIHN5c3Jvb3Rfc3RhZ2VfbGliZGlyIGRpZCBub3Qg
c2hvdyBhbnkgcmVjaXBlCmFwcGVuZGluZyBvciBvdmVycnJpZGluZyBzeXNyb290X3N0YWdlX2xp
YmRpci4KClJlbW92ZWQgY2hlY2tzIGZvciBkaXJlY3RvcmllcyBpbiBzeXNyb290X3N0YWdlX2Rp
cnMgYmVjYXVzZQpzeXNyb290X3N0YWdlX2RpciBhbHJlYWR5IGhhbmRsZXMgdGhlIGNoZWNrLgoK
VGhpcyBibG9jayBvZiBjb2RlIGhhZCB0YWJzIGluc3RlYWQgb2Ygc3BhY2VzLCBhcyBpbiB0aGUK
cmVzdCBvZiB0aGUgc3RhZ2luZy5iYmNsYXNzLiBUaGlzIGNvbW1pdCByZXBsYWNlcyB0YWJzIHdp
dGgKd2hpdGVzcGFjZXMgd2hlcmUgYXBwcm9wcmlhdGUuCi0tLQogbWV0YS9jbGFzc2VzL3N0YWdp
bmcuYmJjbGFzcyB8IDgzICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMzQgaW5zZXJ0aW9ucygrKSwgNDkgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvbWV0YS9jbGFzc2VzL3N0YWdpbmcuYmJjbGFzcyBiL21ldGEvY2xhc3Nlcy9z
dGFnaW5nLmJiY2xhc3MKaW5kZXggYmM1ZGZhODFhZjNjZmFlODRlYzJkYmNiYmM2MWQyMGNmOTJk
ZDk3YS4uODYwNmIwZTQ3ZjY1MTk2MDNkYjk1NTA4ODkzZTQxMTk4OWNmODdjNSAxMDA2NDQKLS0t
IGEvbWV0YS9jbGFzc2VzL3N0YWdpbmcuYmJjbGFzcworKysgYi9tZXRhL2NsYXNzZXMvc3RhZ2lu
Zy5iYmNsYXNzCkBAIC0xLDYwICsxLDQ1IEBACiAKIHN5c3Jvb3Rfc3RhZ2VfZGlyKCkgewotCXNy
Yz0iJDEiCi0JZGVzdD0iJDIiCi0JIyBpZiB0aGUgc3JjIGRvZXNuJ3QgZXhpc3QgZG9uJ3QgZG8g
YW55dGhpbmcKLQlpZiBbICEgLWQgIiRzcmMiIF07IHRoZW4KLQkJIHJldHVybgotCWZpCi0KLQlt
a2RpciAtcCAiJGRlc3QiCi0JKAotCQljZCAkc3JjCi0JCWZpbmQgLiAtcHJpbnQwIHwgY3BpbyAt
LW51bGwgLXBkbHUgJGRlc3QKLQkpCi19Ci0KLXN5c3Jvb3Rfc3RhZ2VfbGliZGlyKCkgewotCXNy
Yz0iJDEiCi0JZGVzdD0iJDIiCi0KLQlzeXNyb290X3N0YWdlX2RpciAkc3JjICRkZXN0CisgICAg
c3JjPSIkMSIKKyAgICBkZXN0PSIkMiIKKyAgICAjIGlmIHRoZSBzcmMgZG9lc24ndCBleGlzdCBk
b24ndCBkbyBhbnl0aGluZworICAgIGlmIFsgISAtZCAiJHNyYyIgXTsgdGhlbgorICAgICAgICAg
cmV0dXJuCisgICAgZmkKKworICAgIG1rZGlyIC1wICIkZGVzdCIKKyAgICAoCisgICAgICAgIGNk
ICRzcmMKKyAgICAgICAgZmluZCAuIC1wcmludDAgfCBjcGlvIC0tbnVsbCAtcGRsdSAkZGVzdAor
ICAgICkKIH0KIAogc3lzcm9vdF9zdGFnZV9kaXJzKCkgewotCWZyb209IiQxIgotCXRvPSIkMiIK
LQotCXN5c3Jvb3Rfc3RhZ2VfZGlyICRmcm9tJHtpbmNsdWRlZGlyfSAkdG8ke2luY2x1ZGVkaXJ9
Ci0JaWYgWyAiJHtCVUlMRF9TWVN9IiA9ICIke0hPU1RfU1lTfSIgXTsgdGhlbgotCQlzeXNyb290
X3N0YWdlX2RpciAkZnJvbSR7YmluZGlyfSAkdG8ke2JpbmRpcn0KLQkJc3lzcm9vdF9zdGFnZV9k
aXIgJGZyb20ke3NiaW5kaXJ9ICR0byR7c2JpbmRpcn0KLQkJc3lzcm9vdF9zdGFnZV9kaXIgJGZy
b20ke2Jhc2VfYmluZGlyfSAkdG8ke2Jhc2VfYmluZGlyfQotCQlzeXNyb290X3N0YWdlX2RpciAk
ZnJvbSR7YmFzZV9zYmluZGlyfSAkdG8ke2Jhc2Vfc2JpbmRpcn0KLQkJc3lzcm9vdF9zdGFnZV9k
aXIgJGZyb20ke2xpYmV4ZWNkaXJ9ICR0byR7bGliZXhlY2Rpcn0KLQkJc3lzcm9vdF9zdGFnZV9k
aXIgJGZyb20ke3N5c2NvbmZkaXJ9ICR0byR7c3lzY29uZmRpcn0KLQkJc3lzcm9vdF9zdGFnZV9k
aXIgJGZyb20ke2xvY2Fsc3RhdGVkaXJ9ICR0byR7bG9jYWxzdGF0ZWRpcn0KLQlmaQotCWlmIFsg
LWQgJGZyb20ke2xpYmRpcn0gXQotCXRoZW4KLQkJc3lzcm9vdF9zdGFnZV9saWJkaXIgJGZyb20k
e2xpYmRpcn0gJHRvJHtsaWJkaXJ9Ci0JZmkKLQlpZiBbIC1kICRmcm9tJHtiYXNlX2xpYmRpcn0g
XQotCXRoZW4KLQkJc3lzcm9vdF9zdGFnZV9saWJkaXIgJGZyb20ke2Jhc2VfbGliZGlyfSAkdG8k
e2Jhc2VfbGliZGlyfQotCWZpCi0JaWYgWyAtZCAkZnJvbSR7bm9uYXJjaF9iYXNlX2xpYmRpcn0g
XQotCXRoZW4KLQkJc3lzcm9vdF9zdGFnZV9saWJkaXIgJGZyb20ke25vbmFyY2hfYmFzZV9saWJk
aXJ9ICR0byR7bm9uYXJjaF9iYXNlX2xpYmRpcn0KLQlmaQotCXN5c3Jvb3Rfc3RhZ2VfZGlyICRm
cm9tJHtkYXRhZGlyfSAkdG8ke2RhdGFkaXJ9Ci0JIyBXZSBkb24ndCBjYXJlIGFib3V0IGRvY3Mv
aW5mby9tYW5wYWdlcy9sb2NhbGVzCi0Jcm0gLXJmICR0byR7bWFuZGlyfS8gJHRvJHtkb2NkaXJ9
LyAkdG8ke2luZm9kaXJ9LyAke3RvfSR7ZGF0YWRpcn0vbG9jYWxlLwotCXJtIC1yZiAkdG8ke2Rh
dGFkaXJ9L2FwcGxpY2F0aW9ucy8gJHRvJHtkYXRhZGlyfS9mb250cy8gJHRvJHtkYXRhZGlyfS9w
aXhtYXBzLworICAgIGZyb209IiQxIgorICAgIHRvPSIkMiIKKworICAgIHN5c3Jvb3Rfc3RhZ2Vf
ZGlyICRmcm9tJHtpbmNsdWRlZGlyfSAkdG8ke2luY2x1ZGVkaXJ9CisgICAgaWYgWyAiJHtCVUlM
RF9TWVN9IiA9ICIke0hPU1RfU1lTfSIgXTsgdGhlbgorICAgICAgICBzeXNyb290X3N0YWdlX2Rp
ciAkZnJvbSR7YmluZGlyfSAkdG8ke2JpbmRpcn0KKyAgICAgICAgc3lzcm9vdF9zdGFnZV9kaXIg
JGZyb20ke3NiaW5kaXJ9ICR0byR7c2JpbmRpcn0KKyAgICAgICAgc3lzcm9vdF9zdGFnZV9kaXIg
JGZyb20ke2Jhc2VfYmluZGlyfSAkdG8ke2Jhc2VfYmluZGlyfQorICAgICAgICBzeXNyb290X3N0
YWdlX2RpciAkZnJvbSR7YmFzZV9zYmluZGlyfSAkdG8ke2Jhc2Vfc2JpbmRpcn0KKyAgICAgICAg
c3lzcm9vdF9zdGFnZV9kaXIgJGZyb20ke2xpYmV4ZWNkaXJ9ICR0byR7bGliZXhlY2Rpcn0KKyAg
ICAgICAgc3lzcm9vdF9zdGFnZV9kaXIgJGZyb20ke3N5c2NvbmZkaXJ9ICR0byR7c3lzY29uZmRp
cn0KKyAgICAgICAgc3lzcm9vdF9zdGFnZV9kaXIgJGZyb20ke2xvY2Fsc3RhdGVkaXJ9ICR0byR7
bG9jYWxzdGF0ZWRpcn0KKyAgICBmaQorCisgICAgc3lzcm9vdF9zdGFnZV9kaXIgJGZyb20ke2xp
YmRpcn0gJHRvJHtsaWJkaXJ9CisgICAgc3lzcm9vdF9zdGFnZV9kaXIgJGZyb20ke2Jhc2VfbGli
ZGlyfSAkdG8ke2Jhc2VfbGliZGlyfQorICAgIHN5c3Jvb3Rfc3RhZ2VfZGlyICRmcm9tJHtub25h
cmNoX2Jhc2VfbGliZGlyfSAkdG8ke25vbmFyY2hfYmFzZV9saWJkaXJ9CisgICAgc3lzcm9vdF9z
dGFnZV9kaXIgJGZyb20ke2RhdGFkaXJ9ICR0byR7ZGF0YWRpcn0KKyAgICAjIFdlIGRvbid0IGNh
cmUgYWJvdXQgZG9jcy9pbmZvL21hbnBhZ2VzL2xvY2FsZXMKKyAgICBybSAtcmYgJHRvJHttYW5k
aXJ9LyAkdG8ke2RvY2Rpcn0vICR0byR7aW5mb2Rpcn0vICR7dG99JHtkYXRhZGlyfS9sb2NhbGUv
CisgICAgcm0gLXJmICR0byR7ZGF0YWRpcn0vYXBwbGljYXRpb25zLyAkdG8ke2RhdGFkaXJ9L2Zv
bnRzLyAkdG8ke2RhdGFkaXJ9L3BpeG1hcHMvCiB9CiAKIHN5c3Jvb3Rfc3RhZ2VfYWxsKCkgewot
CXN5c3Jvb3Rfc3RhZ2VfZGlycyAke0R9ICR7U1lTUk9PVF9ERVNURElSfQorICAgIHN5c3Jvb3Rf
c3RhZ2VfZGlycyAke0R9ICR7U1lTUk9PVF9ERVNURElSfQogfQogCiBweXRob24gc3lzcm9vdF9z
dHJpcCAoKSB7Ci0tIAoyLjYuMgoK

--94eb2c1b048aa13e650554979810--
