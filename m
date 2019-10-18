Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7E14E00DAE; Fri, 18 Oct 2019 09:55:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cavallini.koan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com
	[209.85.166.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB9A3E00D33
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 09:55:21 -0700 (PDT)
Received: by mail-io1-f52.google.com with SMTP id q1so8299305ion.1
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 09:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=pHagz1lN5NLWTNJ1ZAUfD30eVziMqrEY80RfS3hXS2M=;
	b=KO4UDpr+zRlHn0ECBvE4TzplrCpwppLmoldD1JdxjTvTNT8GwiF8LksIao0ZYcxGwW
	CDjGs/28BIK2mq3neDgd+s46T4dHh+6U+C+E2SVlabI7VyZzsT1irx1XMFrrBgSmM85N
	7ogTvT6XDOukhjhQQH5dYIPkT1ivr3ralsN9JIEenHH8cVQXVcXK8xsGMegNa7Aa0B0a
	892gUQTWnIu9zibqToFOEV+4vOhd0S6e4s1XgHulATLi/hGBPz/PkyQ8GRNr5ZfWGlj8
	zP6fzWSSLbmJzIAAoDlpLjRHqR+wBcBdpIj4/FcuA3DsAU63trz2pYVMewVDa/CYdJOL
	OcDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=pHagz1lN5NLWTNJ1ZAUfD30eVziMqrEY80RfS3hXS2M=;
	b=RQgGT80Q4kPbXJJLP835AzuOdWHQzYKtGHnEeCFSPlQZqLK5gjVhdjZ4JO3yjwpTXc
	0b614m2mi8plrRTGGiyq/mXbc+cfl/2JFBnrvlOIosmeYcGfP8HYoQL45M9aLPjaG3m0
	2PbDvv4Y1ZCmRrfNKq5Btnh/0OwCxFzQ7cV+zPS62+hac4g9gHxeGbKKTvDe3N2sqxRD
	YSm6UE0SD986KzQgU0OmZsYn1nJ68tnM9XxyMG4K3xCe6+peqU7d1kqUV+SLhYyfKS/x
	Lt3xhvB8H5VAadK22wURbGbb/SKZ1BRs19TLmBSifzwJFl5W1xvfbmmiQFatf6Xhals4
	cSkQ==
X-Gm-Message-State: APjAAAUvOL1cIYGyv1ulpF3OOdkerSkslTQzdY/o1Y5C5e879WO1vxkF
	9CB61ZrR6CwmVX7uqO84hCsfvRlS+/xpYFwxX2pOQc0n
X-Google-Smtp-Source: APXvYqwfEv/cSUSvCmUJMZXn5G/j35UmIbPNa0K2MEFyMubnyAA8623syRe8ZynuDrHR3c2/lFEGuiXysDfdhqKArHY=
X-Received: by 2002:a6b:7942:: with SMTP id j2mr9705000iop.161.1571417721175; 
	Fri, 18 Oct 2019 09:55:21 -0700 (PDT)
MIME-Version: 1.0
From: Marco <cavallini.koan@gmail.com>
Date: Fri, 18 Oct 2019 18:55:10 +0200
Message-ID: <CAFQ+DihRstNhn_CXeM2kuJDWp_FFQEu=_e6dd81nsgsrLWPvRQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>,
	rpurdie@linuxfoundation.org
Subject: [yocto-autobuilder-helper] Replaced hardcoded BASE_HOMEDIR directory
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
X-List-Received-Date: Fri, 18 Oct 2019 16:55:22 -0000
X-Groupsio-MsgNum: 46978
Content-Type: multipart/mixed; boundary="0000000000001128f80595323378"

--0000000000001128f80595323378
Content-Type: text/plain; charset="UTF-8"

Replaced hardcoded BASE_HOMEDIR directory.
Please apologize the missing send-email on my machine.
--
Marco

--0000000000001128f80595323378
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-config.json-Replaced-occurrencies-of-home-pokybuild-.patch"
Content-Disposition: attachment; 
	filename="0001-config.json-Replaced-occurrencies-of-home-pokybuild-.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k1wdi69v0>
X-Attachment-Id: f_k1wdi69v0

RnJvbSA5MGY5ZWM4NDYwZTcwNTRlNjdlNzRmN2QwZDU0MTc5ZTE1YzFjOWJkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXJjbyBDYXZhbGxpbmkgPG0uY2F2YWxsaW5pQGtvYW5zb2Z0
d2FyZS5jb20+CkRhdGU6IEZyaSwgMTggT2N0IDIwMTkgMTg6NDA6NDMgKzAyMDAKU3ViamVjdDog
W1BBVENIXSBjb25maWcuanNvbjogUmVwbGFjZWQgb2NjdXJyZW5jaWVzIG9mIC9ob21lL3Bva3li
dWlsZCB3aXRoCiAke0JBU0VfSE9NRURJUn0KClNpZ25lZC1vZmYtYnk6IE1hcmNvIENhdmFsbGlu
aSA8bS5jYXZhbGxpbmlAa29hbnNvZnR3YXJlLmNvbT4KLS0tCiBjb25maWcuanNvbiB8IDYgKysr
LS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2NvbmZpZy5qc29uIGIvY29uZmlnLmpzb24KaW5kZXggODg3OTViNy4uMTQ5M2Fi
NSAxMDA2NDQKLS0tIGEvY29uZmlnLmpzb24KKysrIGIvY29uZmlnLmpzb24KQEAgLTE2LDggKzE2
LDggQEAKICAgICAiV0VCUFVCTElTSF9ESVIiIDogIiR7QkFTRV9TSEFSRURESVJ9LyIsCiAgICAg
IldFQlBVQkxJU0hfVVJMIiA6ICJodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvLyIsCiAKLSAg
ICAiQlVJTERQRVJGX1NUQVRFRElSIiA6ICIvaG9tZS9wb2t5YnVpbGQvYnVpbGRwZXJmIiwKLSAg
ICAiQlVJTERQRVJGX1JFU1VMVFNESVIiIDogIi9ob21lL3Bva3lidWlsZC9idWlsZHBlcmYtcmVz
dWx0cyIsCisgICAgIkJVSUxEUEVSRl9TVEFURURJUiIgOiAiJHtCQVNFX0hPTUVESVJ9L2J1aWxk
cGVyZiIsCisgICAgIkJVSUxEUEVSRl9SRVNVTFRTRElSIiA6ICIke0JBU0VfSE9NRURJUn0vYnVp
bGRwZXJmLXJlc3VsdHMiLAogCiAgICAgImRlZmF1bHRzIiA6IHsKICAgICAgICAgIk5FRURSRVBP
UyIgOiBbInBva3kiXSwKQEAgLTE0MSw3ICsxNDEsNyBAQAogICAgICAgICAgICAgIlNTVEFURURJ
Ul9SRUxFQVNFIiA6IFsiU1NUQVRFX0RJUiA/PSAnJHtIRUxQRVJCVUlMRERJUn0vc3N0YXRlJyJd
LAogICAgICAgICAgICAgIlBBQ0tBR0VfQ0xBU1NFUyIgOiAicGFja2FnZV9ycG0iLAogICAgICAg
ICAgICAgIkVYVFJBUExBSU5DTURTIiA6IFsKLSAgICAgICAgICAgICAgICAiJHtTQ1JJUFRTRElS
fS9idWlsZC1wZXJmLXRlc3Qtd3JhcHBlciAtciAke0JVSUxEUEVSRl9SRVNVTFRTRElSfSAtRSB5
b2N0by1wZXJmQHlvY3RvcHJvamVjdC5vcmcgLWQgJHtCVUlMRFBFUkZfU1RBVEVESVJ9L2Rvd25s
b2FkcyAtdyAvaG9tZS9wb2t5YnVpbGQvYnVpbGQtcGVyZi10ZXN0IC1wICR7SEVMUEVSUkVTVUxU
U0RJUn0vJHtIRUxQRVJUQVJHRVR9IC1SICR7SEVMUEVSUkVQT05BTUV9IC1iICR7SEVMUEVSQlJB
TkNITkFNRX0gLS1wdXNoIGdpdEBwdXNoLnlvY3RvcHJvamVjdC5vcmc6eW9jdG8tYnVpbGRzdGF0
cyIKKyAgICAgICAgICAgICAgICAiJHtTQ1JJUFRTRElSfS9idWlsZC1wZXJmLXRlc3Qtd3JhcHBl
ciAtciAke0JVSUxEUEVSRl9SRVNVTFRTRElSfSAtRSB5b2N0by1wZXJmQHlvY3RvcHJvamVjdC5v
cmcgLWQgJHtCVUlMRFBFUkZfU1RBVEVESVJ9L2Rvd25sb2FkcyAtdyAke0JBU0VfSE9NRURJUn0v
YnVpbGQtcGVyZi10ZXN0IC1wICR7SEVMUEVSUkVTVUxUU0RJUn0vJHtIRUxQRVJUQVJHRVR9IC1S
ICR7SEVMUEVSUkVQT05BTUV9IC1iICR7SEVMUEVSQlJBTkNITkFNRX0gLS1wdXNoIGdpdEBwdXNo
LnlvY3RvcHJvamVjdC5vcmc6eW9jdG8tYnVpbGRzdGF0cyIKICAgICAgICAgICAgIF0sCiAgICAg
ICAgICAgICAiZXh0cmF2YXJzIiA6IFsKICAgICAgICAgICAgICAgICAiQkJfTlVNQkVSX1RIUkVB
RFMgPSAnMjQnIiwKLS0gCjIuNy40Cgo=

--0000000000001128f80595323378--
