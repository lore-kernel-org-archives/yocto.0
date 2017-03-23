Return-Path: <ingo.flaschberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83857E00AAA; Thu, 23 Mar 2017 08:04:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,LONGWORDS,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ingo.flaschberger[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.181 listed in list.dnswl.org]
	*  2.0 LONGWORDS Long string of long words
Received: from mail-wr0-f181.google.com (mail-wr0-f181.google.com
	[209.85.128.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FFBBE004E5
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:04:47 -0700 (PDT)
Received: by mail-wr0-f181.google.com with SMTP id y90so31779610wrb.0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 08:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version;
	bh=4GLVDpx+0H3jcA0taNqKBbPx1DnhzCZgdnAcfdhWQDw=;
	b=J7rdJl9S0xj3JC+7hOEdzP5qM5jE8LSQtLJS1ZZj7oF+6l6L1jB32TY9i6x565aKvX
	nNWjjAo4iXq92ZfiqZa+IQ/gJ2PxqktGUXqTfoN4j3x432XMCj0PPoMKhW6rREb9Uvhx
	s8vLwj8ec8qCX7T4nRVGJQcR5uB+TfBleIIow8oF5L+9PhrG6jQzQevQGEyTUlko99G5
	akzfzCiu4hLDtNtJowIj4mJJ07En0oYKMZx8ppClJLZXIwqnI/PSH1Aeq/Lu7F85OBxh
	VD0t8zC5DqdX69NcCf8uYnL37N2ZIonhNCp/3qvOIn1zcTFGjmyYjLUIpiUmxkvQhRWq
	k9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version;
	bh=4GLVDpx+0H3jcA0taNqKBbPx1DnhzCZgdnAcfdhWQDw=;
	b=B0EL89T+K3SUi3smZLGm7HeYNP79PAWE11KKTtbLO/xEFUTnbKNpS8mG8n9VPQN2YV
	qqP2gl9+1Ryh9pevRaF6Qi6B4V7IM7Cxq6raf9x3dXJxOW7qaLhiUygvhi1Y42S4Nuh6
	E0d32DYBWVRyUZXMSKRsrzYtwymYyygdN0z5K2n+UBGo26W/cvEtcoHggE7RrwQJgxmP
	kVamk8miXoQCRg67gIlu7quOmAuhB/rfiaUnM6X98sC7bWwPxVjFe80yd1DmX55w1nCX
	XP2E3lypfxiNTNdigp8M+fOpBO/d4img0DWMJwAbPei7A2663QKK13aoU/1BP1iP/y1v
	OUWA==
X-Gm-Message-State: AFeK/H3zhuWl2Hb9e1mRahJsFwSLdsC7oD8ZPLuKL9BAUs+6KixcMGGevZhmkN7OnLWFig==
X-Received: by 10.223.134.69 with SMTP id 5mr3251449wrw.22.1490281486754;
	Thu, 23 Mar 2017 08:04:46 -0700 (PDT)
Received: from [192.168.10.100] (80-110-126-22.cgn.dynamic.surfer.at.
	[80.110.126.22]) by smtp.gmail.com with ESMTPSA id
	v14sm6173856wra.43.2017.03.23.08.04.45 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Mar 2017 08:04:46 -0700 (PDT)
To: yocto@yoctoproject.org
From: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Message-ID: <edfa3cda-2c3e-d8d0-aeb8-c2ce30931ce4@gmail.com>
Date: Thu, 23 Mar 2017 16:04:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 23 Mar 2017 11:55:10 -0700
Subject: [meta-swupd] allow username/password encoded in SWUPD_VERSION_URL and SWUPD_CONTENT_URL
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
X-List-Received-Date: Thu, 23 Mar 2017 15:04:50 -0000
X-Groupsio-MsgNum: 35195
Content-Type: multipart/mixed; boundary="------------AD73EB3215736E2FEF7F930D"

--------------AD73EB3215736E2FEF7F930D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

This patch allows basic authentication of swupd SWUPD_VERSION_URL and 
SWUPD_CONTENT_URL.
swupd-client already support urlencoded username/password, but 
buildlayer does not.



--------------AD73EB3215736E2FEF7F930D
Content-Type: text/plain; charset=UTF-8;
 name="basic-auth.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="basic-auth.patch"

ZGlmZiAtLWdpdCBhL2xpYi9zd3VwZC9idW5kbGVzLnB5IGIvbGliL3N3dXBkL2J1bmRsZXMucHkK
aW5kZXggYjRjNmY0OS4uMjIzZmQzYyAxMDA2NDQKLS0tIGEvbGliL3N3dXBkL2J1bmRsZXMucHkK
KysrIGIvbGliL3N3dXBkL2J1bmRsZXMucHkKQEAgLTQsNiArNCw4IEBAIGltcG9ydCBzdWJwcm9j
ZXNzCiBpbXBvcnQgc2h1dGlsCiBpbXBvcnQgdXJsbGliLnJlcXVlc3QKIGltcG9ydCB1cmxsaWIu
ZXJyb3IKK2ltcG9ydCB1cmxsaWIucGFyc2UKK2ltcG9ydCByZQogZnJvbSBiYi51dGlscyBpbXBv
cnQgZXhwb3J0X3Byb3hpZXMKIGZyb20gb2UucGFja2FnZV9tYW5hZ2VyIGltcG9ydCBScG1QTQog
ZnJvbSBvZS5wYWNrYWdlX21hbmFnZXIgaW1wb3J0IE9wa2dQTQpAQCAtMTY0LDYgKzE2NiwxNSBA
QCBkZWYgZG93bmxvYWRfbWFuaWZlc3RzKGNvbnRlbnRfdXJsLCB2ZXJzaW9uLCBjb21wb25lbnQs
IHRvX2Rpcik6CiAgICAgYmFzZV92ZXJzaW9ucyA9IHNldCgpCiAgICAgaWYgbm90IG9zLnBhdGgu
ZXhpc3RzKHRhcmdldCk6CiAgICAgICAgIGJiLmRlYnVnKDEsICdEb3dubG9hZGluZyAlcyAtPiAl
cycgJSAoc291cmNlLCB0YXJnZXQpKQorICAgICAgICBwYXJzZWRfc291cmNlID0gdXJsbGliLnBh
cnNlLnVybHNwbGl0KHNvdXJjZSkKKyAgICAgICAgaWYoIHBhcnNlZF9zb3VyY2UudXNlcm5hbWUg
IT0gTm9uZSk6CisgICAgICAgICAgICBuZXdfc291cmNlID0gKCBwYXJzZWRfc291cmNlLnNjaGVt
ZSwgcmUuc3ViKCByZS5lc2NhcGUoIHBhcnNlZF9zb3VyY2UudXNlcm5hbWUrJzonK3BhcnNlZF9z
b3VyY2UucGFzc3dvcmQrJ0AnKSwgJycscGFyc2VkX3NvdXJjZS5uZXRsb2MpLCBwYXJzZWRfc291
cmNlLnBhdGgsIHBhcnNlZF9zb3VyY2UucXVlcnksIHBhcnNlZF9zb3VyY2UuZnJhZ21lbnQpCisg
ICAgICAgICAgICBzb3VyY2UgPSB1cmxsaWIucGFyc2UudXJsdW5zcGxpdCggbmV3X3NvdXJjZSkK
KyAgICAgICAgICAgIG1hbmFnZXIgPSB1cmxsaWIucmVxdWVzdC5IVFRQUGFzc3dvcmRNZ3JXaXRo
RGVmYXVsdFJlYWxtKCkKKyAgICAgICAgICAgIG1hbmFnZXIuYWRkX3Bhc3N3b3JkKE5vbmUsIG5l
d19zb3VyY2UsIHBhcnNlZF9zb3VyY2UudXNlcm5hbWUsIHBhcnNlZF9zb3VyY2UucGFzc3dvcmQp
CisgICAgICAgICAgICBhdXRoSGFuZGxlciA9IHVybGxpYi5yZXF1ZXN0LkhUVFBCYXNpY0F1dGhI
YW5kbGVyKG1hbmFnZXIpCisgICAgICAgICAgICBvcGVuZXIgPSB1cmxsaWIucmVxdWVzdC5idWls
ZF9vcGVuZXIoYXV0aEhhbmRsZXIpCisgICAgICAgICAgICB1cmxsaWIucmVxdWVzdC5pbnN0YWxs
X29wZW5lcihvcGVuZXIpCiAgICAgICAgIHJlc3BvbnNlID0gdXJsbGliLnJlcXVlc3QudXJsb3Bl
bihzb3VyY2UpCiAgICAgICAgIGFyY2hpdmUgPSByZXNwb25zZS5yZWFkKCkKICAgICAgICAgYmIu
dXRpbHMubWtkaXJoaWVyKHRvX2RpcikKQEAgLTIyOCw2ICsyMzksMTUgQEAgZGVmIGRvd25sb2Fk
X29sZF92ZXJzaW9ucyhkKToKICAgICBmb3IgZm9ybWF0IGluIHJhbmdlKDMsIGN1cnJlbnRfZm9y
bWF0ICsgMSk6CiAgICAgICAgIHRyeToKICAgICAgICAgICAgIHVybCA9ICclcy92ZXJzaW9uL2Zv
cm1hdCVkL2xhdGVzdCcgJSAoY29udGVudF91cmwsIGZvcm1hdCkKKyAgICAgICAgICAgIHBhcnNl
ZF91cmwgPSB1cmxsaWIucGFyc2UudXJsc3BsaXQodXJsKQorICAgICAgICAgICAgaWYoIHBhcnNl
ZF91cmwudXNlcm5hbWUgIT0gTm9uZSk6CisgICAgICAgICAgICAgICAgbmV3X3VybCA9ICggcGFy
c2VkX3VybC5zY2hlbWUsIHJlLnN1YiggcmUuZXNjYXBlKCBwYXJzZWRfdXJsLnVzZXJuYW1lKyc6
JytwYXJzZWRfdXJsLnBhc3N3b3JkKydAJyksICcnLHBhcnNlZF91cmwubmV0bG9jKSwgcGFyc2Vk
X3VybC5wYXRoLCBwYXJzZWRfdXJsLnF1ZXJ5LCBwYXJzZWRfdXJsLmZyYWdtZW50KQorICAgICAg
ICAgICAgICAgIHVybCA9IHVybGxpYi5wYXJzZS51cmx1bnNwbGl0KCBuZXdfdXJsKQorICAgICAg
ICAgICAgICAgIG1hbmFnZXIgPSB1cmxsaWIucmVxdWVzdC5IVFRQUGFzc3dvcmRNZ3JXaXRoRGVm
YXVsdFJlYWxtKCkKKyAgICAgICAgICAgICAgICBtYW5hZ2VyLmFkZF9wYXNzd29yZChOb25lLCBu
ZXdfdXJsLCBwYXJzZWRfdXJsLnVzZXJuYW1lLCBwYXJzZWRfdXJsLnBhc3N3b3JkKQorICAgICAg
ICAgICAgICAgIGF1dGhIYW5kbGVyID0gdXJsbGliLnJlcXVlc3QuSFRUUEJhc2ljQXV0aEhhbmRs
ZXIobWFuYWdlcikKKyAgICAgICAgICAgICAgICBvcGVuZXIgPSB1cmxsaWIucmVxdWVzdC5idWls
ZF9vcGVuZXIoYXV0aEhhbmRsZXIpCisgICAgICAgICAgICAgICAgdXJsbGliLnJlcXVlc3QuaW5z
dGFsbF9vcGVuZXIob3BlbmVyKQogICAgICAgICAgICAgcmVzcG9uc2UgPSB1cmxsaWIucmVxdWVz
dC51cmxvcGVuKHVybCkKICAgICAgICAgICAgIHZlcnNpb24gPSBpbnQocmVzcG9uc2UucmVhZCgp
KQogICAgICAgICAgICAgbGF0ZXN0X3ZlcnNpb25zW2Zvcm1hdF0gPSB2ZXJzaW9uCg==

--------------AD73EB3215736E2FEF7F930D--
