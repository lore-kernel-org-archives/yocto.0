Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 082C9E00DA4; Fri, 12 Jan 2018 07:14:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f176.google.com (mail-qk0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B158CE00D1C
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 07:14:49 -0800 (PST)
Received: by mail-qk0-f176.google.com with SMTP id a5so6198570qkg.10
	for <yocto@yoctoproject.org>; Fri, 12 Jan 2018 07:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=qBco2HKTlOkc7JTaTJoJXHx1c15+tAfaIC7JvWLm3KA=;
	b=edOdM3ZczaxC8mux2mJqxMrjUXH5aDtIQSrxCYmqMjHHTn7cP+6RI4jPrAqCQTwhrY
	hRzq9l0c8p+gEDwqvz77//Wb84E64xN3wGOEWW3OoVbG06iLiRU6Mx5qalb9oCiWEldf
	udGO+95/WzBekYhUhWbrWLQbf1v8dyD+pbMzprTxJspWOFUvZu+wzFLQjhpWob7v1JiI
	PGj3A/nSk/Y13ZLHdtdANQMG1y4Eph1KvXM78Z6kKy8d8odWYI2daQGvI4NQB4jijuD2
	8e7cZOS+NnQEU7pJH48k17uA35PuE10wUw9bZ4UtZLakfM6BvmX/cW1X8m50bk0y2WSO
	D5iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qBco2HKTlOkc7JTaTJoJXHx1c15+tAfaIC7JvWLm3KA=;
	b=SWj27j5mNoQoMvicfJkKrfFG9KjNZrm/Oqafc7805IFIX6DqKtkT180dLlk8Sgz41S
	esqtldH6lp8bCMO/GtHKEQYgLkM+yjYJBoLXrILdMGo3BBQ6jy9kpFD2jM2SGzMkVi6j
	+Z186FFBNVeis1JdQCTHfwBk3g4cb6JEs7fV/jg1LjNHQ6BqMpDNybKFxLjXAfW0kCMw
	a9ylH2ZGTMkszACu0tmgUKpnhcsqjAHh0Lu2BHUZ83eLTE5EJAVVUOpovO/0SSZ69qAn
	wqJoqtniuvBPdPttNkwGM1nHpScmELWK3QnAsUvPwf2fOCavMe0Xl/YBO6SHO8xvM82K
	t3RA==
X-Gm-Message-State: AKwxytf9R1SXUyypBHB3h3SnSHqUNuR0PQpaVWzYxtzhz8AUUwarK/pf
	25hZcLhoElTOBw1ja3gd67zC2v4UdKmDROWRFjGVFz4=
X-Google-Smtp-Source: ACJfBovmRxGiLLvYE/KW5ovqepwqpUVNsbQTUIXNBK/1LcfQFF52w/zM1ZcujC1EE13ByIDSdYgZOUixnPron6Pc9dg=
X-Received: by 10.55.136.130 with SMTP id k124mr34830810qkd.194.1515770088377; 
	Fri, 12 Jan 2018 07:14:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.138.161 with HTTP; Fri, 12 Jan 2018 07:14:47 -0800 (PST)
From: Paulo Neves <ptsneves@gmail.com>
Date: Fri, 12 Jan 2018 16:14:47 +0100
Message-ID: <CAJO0J4hRZ5xuD6Nd8uu=9P1a1ew9W=PMQDvuK6NJGwwi34v2BA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: COMPATIBLE_MACHINE not honored in native extended recipes
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
X-List-Received-Date: Fri, 12 Jan 2018 15:14:52 -0000
X-Groupsio-MsgNum: 39511
Content-Type: multipart/mixed; boundary="94eb2c072ec6adeabe056295b904"

--94eb2c072ec6adeabe056295b904
Content-Type: text/plain; charset="UTF-8"

Hello I am having a problem where I want a recipe, along with its
-native version to only be available when allowed by compatible
machine.

In the non native case, COMPATIBLE_MACHINE is correctly honored. But
in the -native version the COMPATIBLE_MACHINE is not honored because
in the native.bbclass there is:

MACHINEOVERRIDES = ""

This change was introduced in d09e6d883042e5d094cd08d829327c4bbbfae135.
While the explanation provided by the commit is accurate for specific
case mentioned it also breaks the COMPATIBLE_MACHINE mechanism which
relies on the MACHINEOVERRIDES variable.

Further evidence that this was not intended is that the exception text is false:

ERROR: Nothing PROVIDES 'x-filter-native'
x-filter-native was skipped: incompatible with machine m1 (not in
COMPATIBLE_MACHINE)

And the x-filter-native'.bb recipe header contains:

COMPATIBLE_MACHINE = "^m1$"


So the exception uses ${MACHINE} to report that a ${MACHINEOVERRIDE}
was not matched with the COMPATIBLE_MACHINE, which is a false
statement.

My solution is very simple and does not break the fix that
d09e6d883042e5d094cd08d829327c4bbbfae135 did:

--94eb2c072ec6adeabe056295b904
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-Fix-COMPATIBLE_MACHINE-for-native-recipe-variants.patch"
Content-Disposition: attachment; 
	filename="0001-Fix-COMPATIBLE_MACHINE-for-native-recipe-variants.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jcc1zki00

RnJvbSA4Yjc4YzgxZGMxZDIxYmMyM2FlYjEzODdjMjAxZTA5MGYwMzFhMTRhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBQYXVsbyBOZXZlcyA8cGF1bG8uZGVfc291c2FfbmV2ZXNAbm9r
aWEuY29tPgpEYXRlOiBGcmksIDEyIEphbiAyMDE4IDE1OjU4OjM5ICswMTAwClN1YmplY3Q6IFtQ
QVRDSCAxLzFdIEZpeCBDT01QQVRJQkxFX01BQ0hJTkUgZm9yIC1uYXRpdmUgcmVjaXBlIHZhcmlh
bnRzLgoKSGVsbG8gSSBhbSBoYXZpbmcgYSBwcm9ibGVtIHdoZXJlIEkgd2FudCBhIHJlY2lwZSwg
YWxvbmcKd2l0aCBpdHMgLW5hdGl2ZSB2ZXJzaW9uIHRvIG9ubHkgYmUgYXZhaWxhYmxlIHdoZW4g
YWxsb3dlZApieSBjb21wYXRpYmxlIG1hY2hpbmUuCgpJbiB0aGUgbm9uIG5hdGl2ZSBjYXNlLCBD
T01QQVRJQkxFX01BQ0hJTkUgaXMgY29ycmVjdGx5Cmhvbm9yZWQuIEJ1dCBpbiB0aGUgLW5hdGl2
ZSB2ZXJzaW9uIHRoZSBDT01QQVRJQkxFX01BQ0hJTkUKaXMgbm90IGhvbm9yZWQgYmVjYXVzZSBp
biB0aGUgbmF0aXZlLmJiY2xhc3MgdGhlcmUgaXM6CgpNQUNISU5FT1ZFUlJJREVTID0gIiIKClRo
aXMgY2hhbmdlIHdhcyBpbnRyb2R1Y2VkIGluCmQwOWU2ZDg4MzA0MmU1ZDA5NGNkMDhkODI5MzI3
YzRiYmJmYWUxMzUuCldoaWxlIHRoZSBleHBsYW5hdGlvbiBwcm92aWRlZCBieSB0aGUgY29tbWl0
IGlzIGFjY3VyYXRlIGZvcgpzcGVjaWZpYyBjYXNlIG1lbnRpb25lZCBpdCBhbHNvIGJyZWFrcyB0
aGUKQ09NUEFUSUJMRV9NQUNISU5FIG1lY2hhbmlzbSB3aGljaCByZWxpZXMgb24gdGhlCk1BQ0hJ
TkVPVkVSUklERVMgdmFyaWFibGUuCgpGdXJ0aGVyIGV2aWRlbmNlIHRoYXQgdGhpcyB3YXMgbm90
IGludGVuZGVkIGlzIHRoYXQgdGhlCmV4Y2VwdGlvbiB0ZXh0IGlzIGZhbHNlOgoKRVJST1I6IE5v
dGhpbmcgUFJPVklERVMgJ3gtZmlsdGVyLW5hdGl2ZScKeC1maWx0ZXItbmF0aXZlIHdhcyBza2lw
cGVkOiBpbmNvbXBhdGlibGUgd2l0aCBtYWNoaW5lIG0xCihub3QgaW4gQ09NUEFUSUJMRV9NQUNI
SU5FKQoKQW5kIHRoZSB4LWZpbHRlci1uYXRpdmUnLmJiIHJlY2lwZSBoZWFkZXIgY29udGFpbnM6
CgpDT01QQVRJQkxFX01BQ0hJTkUgPSAiXm0xJCIKClNvIHRoZSBleGNlcHRpb24gdXNlcyAke01B
Q0hJTkV9IHRvIHJlcG9ydCB0aGF0IGEKJHtNQUNISU5FT1ZFUlJJREV9IHdhcyBub3QgbWF0Y2hl
ZCB3aXRoIHRoZQpDT01QQVRJQkxFX01BQ0hJTkUsIHdoaWNoIGlzIGEgZmFsc2Ugc3RhdGVtZW50
LgoKVGhpcyBmaXggYXR0ZW1wdHMgdG8gY29ycmVjdCB0aGUgaXNzdWUgd2l0aCBtaW5pbWFsCmNo
YW5nZXMuCgpDaGFuZ2UtSWQ6IElmNTA4NWU0ZTkyNTUwYjgxNTQwMzNkZDU2MTQ5ZWI0ZTM1OGVm
MjY2Ci0tLQogbWV0YS9jbGFzc2VzL2Jhc2UuYmJjbGFzcyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL21ldGEvY2xhc3Nl
cy9iYXNlLmJiY2xhc3MgYi9tZXRhL2NsYXNzZXMvYmFzZS5iYmNsYXNzCmluZGV4IGMzYzI2Njk5
MzljNmYwYjkwODA3MjczNzhhMjZhMzI0MDcyZDdlNTEuLmI0MDUxMTAyZDBlY2NmYjU3NmQ4Yjc2
ZjZmNDdjZThjZDc2M2FmNTUgMTAwNjQ0Ci0tLSBhL21ldGEvY2xhc3Nlcy9iYXNlLmJiY2xhc3MK
KysrIGIvbWV0YS9jbGFzc2VzL2Jhc2UuYmJjbGFzcwpAQCAtNDczLDcgKzQ3Myw3IEBAIHB5dGhv
biAoKSB7CiAgICAgbmVlZF9tYWNoaW5lID0gZC5nZXRWYXIoJ0NPTVBBVElCTEVfTUFDSElORScs
IFRydWUpCiAgICAgaWYgbmVlZF9tYWNoaW5lOgogICAgICAgICBpbXBvcnQgcmUKLSAgICAgICAg
Y29tcGF0X21hY2hpbmVzID0gKGQuZ2V0VmFyKCdNQUNISU5FT1ZFUlJJREVTJywgVHJ1ZSkgb3Ig
IiIpLnNwbGl0KCI6IikKKyAgICAgICAgY29tcGF0X21hY2hpbmVzID0gKGQuZ2V0VmFyKCdNQUNI
SU5FT1ZFUlJJREVTJywgVHJ1ZSkgb3IgZC5nZXRWYXIoJ01BQ0hJTkUnLCBUcnVlKSkuc3BsaXQo
IjoiKQogICAgICAgICBmb3IgbSBpbiBjb21wYXRfbWFjaGluZXM6CiAgICAgICAgICAgICBpZiBy
ZS5tYXRjaChuZWVkX21hY2hpbmUsIG0pOgogICAgICAgICAgICAgICAgIGJyZWFrCi0tIAoyLjYu
MgoK

--94eb2c072ec6adeabe056295b904--
