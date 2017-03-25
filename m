Return-Path: <ingo.flaschberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F83CE00AD5; Sat, 25 Mar 2017 13:14:39 -0700 (PDT)
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
	*      [74.125.82.65 listed in list.dnswl.org]
	*  2.0 LONGWORDS Long string of long words
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7724EE00AB7
	for <yocto@yoctoproject.org>; Sat, 25 Mar 2017 13:14:37 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id u132so4081902wmg.1
	for <yocto@yoctoproject.org>; Sat, 25 Mar 2017 13:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to;
	bh=t5e6Sftm+F46qGJUUEYE7FmaFsx30bOHpzIM+fkHeXM=;
	b=JVTBc5ae3WP52Hm/PVifo565xFX94Nj9us6vBdGIfEROMoyUKkhc8nGgmce+DO59uT
	js5FWfNKlRiPYO4vipVyDh0PkYccPJo6UBxi1PGZ01lzaKTo0eAPSvEhwo8eFEIJVzbH
	nq0YX4psOfqFAHH/5zBhfywY7guWouCpNI2oKpk3gfkX7UnCzVRG29v15vw/aWgzmgL9
	VVT/Pq13Lyxd0xWLPR9Xm/JnQhXM/qtoKalTpRRJOaYQOomr1oJtt99I3UqHHlXrqEb/
	FVVHjPzG++BZbtdQw8ri84iL6Q2DDQslZggxRWoksZkf+f9DAQHp7l/UlPw6Q+qfqdxO
	yVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=t5e6Sftm+F46qGJUUEYE7FmaFsx30bOHpzIM+fkHeXM=;
	b=I5P36I6VBxua+t2w0T+E/PkFEp3l5tRUido4yDuYweTSYk0ADBYihJeBrNrC7hUj9C
	OgTlXjj9uJROdUpTED+QTEe5OpFVSktCEOaux26ZHT/05lsntQOnL+iVPNIs0DWKR31d
	6odEWZ48wz4q6prXBSJFs8aoDtuKFUBHzn2WyzMtUqmmNP0Pi52685dRmzTFhmQGCGGp
	MQH0XBebSwwKo/c+9l+FVV9lCWWQk0ACVwjeyo+4fpUaEhl42fvdml5KS3QWLMDIE/rP
	/h2CoVE8g3i7qvBcyFepHOi0O96CLltB2WofqQR1LTSPUQscD7CYVyssTWmc7njlg6kn
	hVPg==
X-Gm-Message-State: AFeK/H3YR/usOUzhyfHCi713YZshC4j+vM7r3zFaN0qovoXhDloNf8S1MLe92pHeb1h6gQ==
X-Received: by 10.28.19.6 with SMTP id 6mr3053319wmt.96.1490472876726;
	Sat, 25 Mar 2017 13:14:36 -0700 (PDT)
Received: from [192.168.10.100] (80-110-126-22.cgn.dynamic.surfer.at.
	[80.110.126.22])
	by smtp.gmail.com with ESMTPSA id 10sm8187932wrz.44.2017.03.25.13.14.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Mar 2017 13:14:35 -0700 (PDT)
To: Patrick Ohly <patrick.ohly@intel.com>
References: <edfa3cda-2c3e-d8d0-aeb8-c2ce30931ce4@gmail.com>
	<1490346252.6396.262.camel@intel.com>
From: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Message-ID: <6ed440d1-6667-bd18-c9e2-58ac1461b571@gmail.com>
Date: Sat, 25 Mar 2017 21:14:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1490346252.6396.262.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd] allow username/password encoded in SWUPD_VERSION_URL and SWUPD_CONTENT_URL
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
X-List-Received-Date: Sat, 25 Mar 2017 20:14:39 -0000
X-Groupsio-MsgNum: 35230
Content-Type: multipart/mixed; boundary="------------F5FBAE9288E164880F0088B1"

--------------F5FBAE9288E164880F0088B1
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

requested patch attached


--------------F5FBAE9288E164880F0088B1
Content-Type: text/plain; charset=UTF-8;
 name="0001-bundles.py-allow-username-password-encoded-into-HTTP.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename*0="0001-bundles.py-allow-username-password-encoded-into-HTTP.pa";
 filename*1="tch"

RnJvbSBmMjUyNmE3ZWQ0N2IzZjNjOGYwY2I4OTNlYWRiNWU2OTgxMjU1ZDRjIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBpbmdvIDxpbmdvLmZsYXNjaGJlcmdlckBnbWFpbC5jb20+CkRh
dGU6IFNhdCwgMjUgTWFyIDIwMTcgMjE6MTM6MzMgKzAxMDAKU3ViamVjdDogW1BBVENIXSBidW5k
bGVzLnB5OiBhbGxvdyB1c2VybmFtZS9wYXNzd29yZCBlbmNvZGVkIGludG8gSFRUUCBzZXJ2ZXIK
IFVSTHMgZXhhbXBsZTogaHR0cHM6Ly91c2VyOnBhc3N3b3JkQHNlcnZlci9wYXRoCgotLS0KIGxp
Yi9zd3VwZC9idW5kbGVzLnB5IHwgMjAgKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFu
Z2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvbGliL3N3dXBkL2J1bmRsZXMucHkg
Yi9saWIvc3d1cGQvYnVuZGxlcy5weQppbmRleCBiNGM2ZjQ5Li4yMjNmZDNjIDEwMDY0NAotLS0g
YS9saWIvc3d1cGQvYnVuZGxlcy5weQorKysgYi9saWIvc3d1cGQvYnVuZGxlcy5weQpAQCAtNCw2
ICs0LDggQEAgaW1wb3J0IHN1YnByb2Nlc3MKIGltcG9ydCBzaHV0aWwKIGltcG9ydCB1cmxsaWIu
cmVxdWVzdAogaW1wb3J0IHVybGxpYi5lcnJvcgoraW1wb3J0IHVybGxpYi5wYXJzZQoraW1wb3J0
IHJlCiBmcm9tIGJiLnV0aWxzIGltcG9ydCBleHBvcnRfcHJveGllcwogZnJvbSBvZS5wYWNrYWdl
X21hbmFnZXIgaW1wb3J0IFJwbVBNCiBmcm9tIG9lLnBhY2thZ2VfbWFuYWdlciBpbXBvcnQgT3Br
Z1BNCkBAIC0xNjQsNiArMTY2LDE1IEBAIGRlZiBkb3dubG9hZF9tYW5pZmVzdHMoY29udGVudF91
cmwsIHZlcnNpb24sIGNvbXBvbmVudCwgdG9fZGlyKToKICAgICBiYXNlX3ZlcnNpb25zID0gc2V0
KCkKICAgICBpZiBub3Qgb3MucGF0aC5leGlzdHModGFyZ2V0KToKICAgICAgICAgYmIuZGVidWco
MSwgJ0Rvd25sb2FkaW5nICVzIC0+ICVzJyAlIChzb3VyY2UsIHRhcmdldCkpCisgICAgICAgIHBh
cnNlZF9zb3VyY2UgPSB1cmxsaWIucGFyc2UudXJsc3BsaXQoc291cmNlKQorICAgICAgICBpZigg
cGFyc2VkX3NvdXJjZS51c2VybmFtZSAhPSBOb25lKToKKyAgICAgICAgICAgIG5ld19zb3VyY2Ug
PSAoIHBhcnNlZF9zb3VyY2Uuc2NoZW1lLCByZS5zdWIoIHJlLmVzY2FwZSggcGFyc2VkX3NvdXJj
ZS51c2VybmFtZSsnOicrcGFyc2VkX3NvdXJjZS5wYXNzd29yZCsnQCcpLCAnJyxwYXJzZWRfc291
cmNlLm5ldGxvYyksIHBhcnNlZF9zb3VyY2UucGF0aCwgcGFyc2VkX3NvdXJjZS5xdWVyeSwgcGFy
c2VkX3NvdXJjZS5mcmFnbWVudCkKKyAgICAgICAgICAgIHNvdXJjZSA9IHVybGxpYi5wYXJzZS51
cmx1bnNwbGl0KCBuZXdfc291cmNlKQorICAgICAgICAgICAgbWFuYWdlciA9IHVybGxpYi5yZXF1
ZXN0LkhUVFBQYXNzd29yZE1ncldpdGhEZWZhdWx0UmVhbG0oKQorICAgICAgICAgICAgbWFuYWdl
ci5hZGRfcGFzc3dvcmQoTm9uZSwgbmV3X3NvdXJjZSwgcGFyc2VkX3NvdXJjZS51c2VybmFtZSwg
cGFyc2VkX3NvdXJjZS5wYXNzd29yZCkKKyAgICAgICAgICAgIGF1dGhIYW5kbGVyID0gdXJsbGli
LnJlcXVlc3QuSFRUUEJhc2ljQXV0aEhhbmRsZXIobWFuYWdlcikKKyAgICAgICAgICAgIG9wZW5l
ciA9IHVybGxpYi5yZXF1ZXN0LmJ1aWxkX29wZW5lcihhdXRoSGFuZGxlcikKKyAgICAgICAgICAg
IHVybGxpYi5yZXF1ZXN0Lmluc3RhbGxfb3BlbmVyKG9wZW5lcikKICAgICAgICAgcmVzcG9uc2Ug
PSB1cmxsaWIucmVxdWVzdC51cmxvcGVuKHNvdXJjZSkKICAgICAgICAgYXJjaGl2ZSA9IHJlc3Bv
bnNlLnJlYWQoKQogICAgICAgICBiYi51dGlscy5ta2RpcmhpZXIodG9fZGlyKQpAQCAtMjI4LDYg
KzIzOSwxNSBAQCBkZWYgZG93bmxvYWRfb2xkX3ZlcnNpb25zKGQpOgogICAgIGZvciBmb3JtYXQg
aW4gcmFuZ2UoMywgY3VycmVudF9mb3JtYXQgKyAxKToKICAgICAgICAgdHJ5OgogICAgICAgICAg
ICAgdXJsID0gJyVzL3ZlcnNpb24vZm9ybWF0JWQvbGF0ZXN0JyAlIChjb250ZW50X3VybCwgZm9y
bWF0KQorICAgICAgICAgICAgcGFyc2VkX3VybCA9IHVybGxpYi5wYXJzZS51cmxzcGxpdCh1cmwp
CisgICAgICAgICAgICBpZiggcGFyc2VkX3VybC51c2VybmFtZSAhPSBOb25lKToKKyAgICAgICAg
ICAgICAgICBuZXdfdXJsID0gKCBwYXJzZWRfdXJsLnNjaGVtZSwgcmUuc3ViKCByZS5lc2NhcGUo
IHBhcnNlZF91cmwudXNlcm5hbWUrJzonK3BhcnNlZF91cmwucGFzc3dvcmQrJ0AnKSwgJycscGFy
c2VkX3VybC5uZXRsb2MpLCBwYXJzZWRfdXJsLnBhdGgsIHBhcnNlZF91cmwucXVlcnksIHBhcnNl
ZF91cmwuZnJhZ21lbnQpCisgICAgICAgICAgICAgICAgdXJsID0gdXJsbGliLnBhcnNlLnVybHVu
c3BsaXQoIG5ld191cmwpCisgICAgICAgICAgICAgICAgbWFuYWdlciA9IHVybGxpYi5yZXF1ZXN0
LkhUVFBQYXNzd29yZE1ncldpdGhEZWZhdWx0UmVhbG0oKQorICAgICAgICAgICAgICAgIG1hbmFn
ZXIuYWRkX3Bhc3N3b3JkKE5vbmUsIG5ld191cmwsIHBhcnNlZF91cmwudXNlcm5hbWUsIHBhcnNl
ZF91cmwucGFzc3dvcmQpCisgICAgICAgICAgICAgICAgYXV0aEhhbmRsZXIgPSB1cmxsaWIucmVx
dWVzdC5IVFRQQmFzaWNBdXRoSGFuZGxlcihtYW5hZ2VyKQorICAgICAgICAgICAgICAgIG9wZW5l
ciA9IHVybGxpYi5yZXF1ZXN0LmJ1aWxkX29wZW5lcihhdXRoSGFuZGxlcikKKyAgICAgICAgICAg
ICAgICB1cmxsaWIucmVxdWVzdC5pbnN0YWxsX29wZW5lcihvcGVuZXIpCiAgICAgICAgICAgICBy
ZXNwb25zZSA9IHVybGxpYi5yZXF1ZXN0LnVybG9wZW4odXJsKQogICAgICAgICAgICAgdmVyc2lv
biA9IGludChyZXNwb25zZS5yZWFkKCkpCiAgICAgICAgICAgICBsYXRlc3RfdmVyc2lvbnNbZm9y
bWF0XSA9IHZlcnNpb24KLS0gCjIuNy40Cgo=

--------------F5FBAE9288E164880F0088B1--
