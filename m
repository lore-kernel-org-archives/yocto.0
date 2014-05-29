Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E76E9E00BC1; Thu, 29 May 2014 05:47:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f171.google.com (unknown [209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73455E00BBF
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 05:47:49 -0700 (PDT)
Received: by mail-ie0-f171.google.com with SMTP id to1so215359ieb.30
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 05:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=NmnZ35wMEC2mMu1SU+QLBeQs4yfmh1Qc0cBXjz/e/Lo=;
	b=YSJWyhkztJvfqnKJoxSu8rnFS6XGk0dXhGp51zddm+wUzVtP1vvNOKC2scqnzFx6df
	1jPy0Vc4CM9+b1CAPlrKy4Vkv1oQJCMkDb9OFJbbpKqRAo1OoHKgyL/I1qb07vUWBE18
	GqeCFuvPmWgqv/AEhtNDFzuJ+9mM86MOcctIrJIEIsoSmGAY6XYjrh/I0zzdRkb67Hyw
	xSBZCbrKFPBfgVGSGH8BBrmkM+jfkifLV9xjB2MwCRCMP2KnSWhMJv6mbmnowgupM/Vc
	2dCJrGiyFZEOkRvDFPSXOhCnzUAq8XbfWlqMI+QSNc+3Ds12h1gIpAQWl8kaDvzu3vpz
	LoEg==
X-Received: by 10.50.152.38 with SMTP id uv6mr10190070igb.34.1401367669676;
	Thu, 29 May 2014 05:47:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.228.141 with HTTP; Thu, 29 May 2014 05:47:29 -0700 (PDT)
From: Chris Morgan <chmorgan@gmail.com>
Date: Thu, 29 May 2014 08:47:29 -0400
Message-ID: <CAAPegz3iEsEe15ywZpdnWQRbR2CieguDw1Y-AzaZ2P04m0uMLg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: [meta-oe][PATCH 2/2] Remove old dfu-util 0.1 recipe
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
X-List-Received-Date: Thu, 29 May 2014 12:47:53 -0000
X-Groupsio-MsgNum: 19841
Content-Type: multipart/mixed; boundary=089e013d0df626b04e04fa895694

--089e013d0df626b04e04fa895694
Content-Type: text/plain; charset=UTF-8



--089e013d0df626b04e04fa895694
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0002-Remove-old-dfu-util-0.1-recipe.patch"
Content-Disposition: attachment; 
	filename="0002-Remove-old-dfu-util-0.1-recipe.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hvs2416w0

RnJvbSA1NzNkYzQzNTE1YTQxYWRlMmQyY2YxYTVlYmZiZjhlYzM3MDFlYTgxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDaHJpcyBNb3JnYW4gPGNobW9yZ2FuQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAyOSBNYXkgMjAxNCAwODozNjozNyAtMDQwMApTdWJqZWN0OiBbUEFUQ0ggMi8yXSBS
ZW1vdmUgb2xkIGRmdS11dGlsIDAuMSByZWNpcGUKClNpZ25lZC1vZmYtYnk6IENocmlzIE1vcmdh
biA8Y2htb3JnYW5AZ21haWwuY29tPgotLS0KIG1ldGEtb2UvcmVjaXBlcy1zdXBwb3J0L2RmdS11
dGlsL2RmdS11dGlsXzAuMS5iYiB8IDEwIC0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBk
ZWxldGlvbnMoLSkKIGRlbGV0ZSBtb2RlIDEwMDY0NCBtZXRhLW9lL3JlY2lwZXMtc3VwcG9ydC9k
ZnUtdXRpbC9kZnUtdXRpbF8wLjEuYmIKCmRpZmYgLS1naXQgYS9tZXRhLW9lL3JlY2lwZXMtc3Vw
cG9ydC9kZnUtdXRpbC9kZnUtdXRpbF8wLjEuYmIgYi9tZXRhLW9lL3JlY2lwZXMtc3VwcG9ydC9k
ZnUtdXRpbC9kZnUtdXRpbF8wLjEuYmIKZGVsZXRlZCBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IGI2
M2Q3NGQuLjAwMDAwMDAKLS0tIGEvbWV0YS1vZS9yZWNpcGVzLXN1cHBvcnQvZGZ1LXV0aWwvZGZ1
LXV0aWxfMC4xLmJiCisrKyAvZGV2L251bGwKQEAgLTEsMTAgKzAsMCBAQAotcmVxdWlyZSBkZnUt
dXRpbC5pbmMKLQotUFIgPSAicjEiCi0KLURFUEVORFMgPSAidmlydHVhbC9saWJ1c2IwIHVzYnBh
dGgiCi0KLUJCQ0xBU1NFWFRFTkQgPSAibmF0aXZlIgotCi1TUkNfVVJJW21kNXN1bV0gPSAiNDU0
YjkzMTI0OWQyOWU0YTZjMmEyYWRlMTc4NTg0OTAiCi1TUkNfVVJJW3NoYTI1NnN1bV0gPSAiYTI3
Y2M2NjdiZTliMTU4ZmVjZjBlZDA2NjY5OGUzMGVjYTBjMGIzY2Q3YTg1YWFkMjA1OGQ0N2ZmZTE2
ZjBlMSIKLS0gCjEuOS4wCgo=

--089e013d0df626b04e04fa895694--
