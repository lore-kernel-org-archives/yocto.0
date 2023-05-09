Return-Path: <stefanb@linux.ibm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7FD5C77B7C
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 13:31:12 +0000 (UTC)
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com [148.163.158.5])
 by mx.groups.io with SMTP id smtpd.web10.32530.1683639062273474665
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 06:31:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibm.com header.s=pp1 header.b=aiGVAmA1;
 spf=pass (domain: linux.ibm.com, ip: 148.163.158.5, mailfrom: stefanb@linux.ibm.com)
Received: from pps.filterd (m0353723.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 349DAbHF011614
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com; h=from : to : cc : subject
 : date : message-id : in-reply-to : references : content-transfer-encoding
 : mime-version; s=pp1; bh=elpPD1kM3GuO6qEbSsZnSVYHdgZDQLM/qQ7QmyuZONU=;
 b=aiGVAmA1olfG5txbMDcf7FOHoi1F597nHnr5KpNni+3IAu1HwC3mI0GHclMBMQXEXyBA
 uurq3eLzc0j+FVwWZ+CFjOcJjFhbq7c3vS0s+5fxAU2o9B7Q4dzIpCFYZJIgfFJzVLry
 7CpVuEna4JZzBsDRS4AMDB7PEJhEwKOU+lJnphUQyRsAgiILFKnPZGuTryH5G5cRv+9i
 DmCcmN4wFff2Yf9srSy3wXG+ZR5bDRf0swdu109ghwP2Znl8cezJunxt9+QkXq7d4EDd
 nEU53OmdPzBa010xRgC0IJhHClPPP367l0O8eCo1fAXXj4qswA1q9h4p0fZ2C/wTwPfy 2w== 
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfeqn7eaf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:01 +0000
Received: from m0353723.ppops.net (m0353723.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 349DBpC9019800
	for <yocto@lists.yoctoproject.org>; Tue, 9 May 2023 13:31:00 GMT
Received: from ppma02wdc.us.ibm.com (aa.5b.37a9.ip4.static.sl-reverse.com [169.55.91.170])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qfeqn7ea1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:00 +0000
Received: from pps.filterd (ppma02wdc.us.ibm.com [127.0.0.1])
	by ppma02wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 349Cs2CU014481;
	Tue, 9 May 2023 13:31:00 GMT
Received: from smtprelay02.wdc07v.mail.ibm.com ([9.208.129.120])
	by ppma02wdc.us.ibm.com (PPS) with ESMTPS id 3qf7ey3njk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 May 2023 13:31:00 +0000
Received: from smtpav01.dal12v.mail.ibm.com (smtpav01.dal12v.mail.ibm.com [10.241.53.100])
	by smtprelay02.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 349DUwtI54788434
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 May 2023 13:30:58 GMT
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 229C658064;
	Tue,  9 May 2023 13:30:58 +0000 (GMT)
Received: from smtpav01.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D617258068;
	Tue,  9 May 2023 13:30:57 +0000 (GMT)
Received: from sbct-3.pok.ibm.com (unknown [9.47.158.153])
	by smtpav01.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  9 May 2023 13:30:57 +0000 (GMT)
From: Stefan Berger <stefanb@linux.ibm.com>
To: yocto@lists.yoctoproject.org
Cc: akuster808@gmail.com, Stefan Berger <stefanb@linux.ibm.com>
Subject: [meta-security][PATCH v2 1/8] ima: Document and replace keys and adapt scripts for EC keys
Date: Tue,  9 May 2023 09:30:46 -0400
Message-Id: <20230509133053.1032476-2-stefanb@linux.ibm.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230509133053.1032476-1-stefanb@linux.ibm.com>
References: <20230509133053.1032476-1-stefanb@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: wCpQIAQ1RJnRYz9p0QSflqsiz1vtDN0y
X-Proofpoint-GUID: lKFltpUVhs83EhVIrcVU4R8_cgpzjb5Y
Content-Transfer-Encoding: 8bit
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-09_08,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0
 lowpriorityscore=0 phishscore=0 spamscore=0 mlxscore=0 impostorscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305090106
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 13:31:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59918

For shorted file signatures use EC keys rather than RSA keys.
Document the debug keys and their purpose.
Adapt the scripts for creating these types of keys to now
create EC keys.

Signed-off-by: Stefan Berger <stefanb@linux.ibm.com>
---
 meta-integrity/data/debug-keys/README.md      |  17 ++++++++
 .../data/debug-keys/ima-local-ca.pem          |  15 +++++++
 .../data/debug-keys/ima-local-ca.priv         |   7 +++
 .../data/debug-keys/privkey_ima.pem           |  17 ++------
 meta-integrity/data/debug-keys/x509_ima.der   | Bin 707 -> 620 bytes
 meta-integrity/scripts/ima-gen-CA-signed.sh   |   9 ++--
 meta-integrity/scripts/ima-gen-local-ca.sh    |   6 +--
 meta-integrity/scripts/ima-gen-self-signed.sh |  41 ------------------
 8 files changed, 50 insertions(+), 62 deletions(-)
 create mode 100644 meta-integrity/data/debug-keys/README.md
 create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.pem
 create mode 100644 meta-integrity/data/debug-keys/ima-local-ca.priv
 delete mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh

diff --git a/meta-integrity/data/debug-keys/README.md b/meta-integrity/data/debug-keys/README.md
new file mode 100644
index 0000000..e613968
--- /dev/null
+++ b/meta-integrity/data/debug-keys/README.md
@@ -0,0 +1,17 @@
+# EVM & IMA keys
+
+The following IMA & EVM debug/test keys are in this directory
+
+- ima-local-ca.priv: The CA's private key (password: 1234)
+- ima-local-ca.pem: The CA's self-signed certificate
+- privkey_ima.pem: IMA & EVM private key used for signing files
+- x509_ima.der: Certificate containing public key (of privkey_ima.pem) to verify signatures
+
+The CA's (self-signed) certificate can be used to verify the validity of
+the x509_ima.der certificate. Since the CA certificate will be built into
+the Linux kernel, any key (x509_ima.der) loaded onto the .ima keyring must
+pass this test:
+
+```
+  openssl verify -CAfile ima-local-ca.pem x509_ima.der
+````
diff --git a/meta-integrity/data/debug-keys/ima-local-ca.pem b/meta-integrity/data/debug-keys/ima-local-ca.pem
new file mode 100644
index 0000000..4b48be4
--- /dev/null
+++ b/meta-integrity/data/debug-keys/ima-local-ca.pem
@@ -0,0 +1,15 @@
+-----BEGIN CERTIFICATE-----
+MIICWzCCAgCgAwIBAgITYMKT7/z5qI+hLfNC6Jy6hhBCWDAKBggqhkjOPQQDAjB9
+MRQwEgYDVQQKDAtleGFtcGxlLmNvbTFAMD4GA1UEAww3bWV0YS1pbnRlbC1pb3Qt
+c2VjdXJpdHkgZXhhbXBsZSBjZXJ0aWZpY2F0ZSBzaWduaW5nIGtleTEjMCEGCSqG
+SIb3DQEJARYUam9obi5kb2VAZXhhbXBsZS5jb20wIBcNMjMwNDI2MTYyNjExWhgP
+MjEyMzA0MDIxNjI2MTFaMH0xFDASBgNVBAoMC2V4YW1wbGUuY29tMUAwPgYDVQQD
+DDdtZXRhLWludGVsLWlvdC1zZWN1cml0eSBleGFtcGxlIGNlcnRpZmljYXRlIHNp
+Z25pbmcga2V5MSMwIQYJKoZIhvcNAQkBFhRqb2huLmRvZUBleGFtcGxlLmNvbTBZ
+MBMGByqGSM49AgEGCCqGSM49AwEHA0IABCiC+YIbCoOhyLy63lOGbiK+DPkW7gMU
+rmfVLIb4oTmKxZS5/L8VE6hjKDcLa7OauyuW2nd4fnFAautFxpw/Q0yjXTBbMAwG
+A1UdEwQFMAMBAf8wHQYDVR0OBBYEFL/PiFFjjlzVtExXMb2uXOfIgeIEMB8GA1Ud
+IwQYMBaAFL/PiFFjjlzVtExXMb2uXOfIgeIEMAsGA1UdDwQEAwIBBjAKBggqhkjO
+PQQDAgNJADBGAiEA0HOxloLMr87yDoH3CljWDWb7M2zLA+BQFXLN511qDl0CIQDu
+clewWaJHw4Wq8IN3JsrNDDw2GfrN3sx4hfWUK/0SPw==
+-----END CERTIFICATE-----
diff --git a/meta-integrity/data/debug-keys/ima-local-ca.priv b/meta-integrity/data/debug-keys/ima-local-ca.priv
new file mode 100644
index 0000000..e13de23
--- /dev/null
+++ b/meta-integrity/data/debug-keys/ima-local-ca.priv
@@ -0,0 +1,7 @@
+-----BEGIN ENCRYPTED PRIVATE KEY-----
+MIHjME4GCSqGSIb3DQEFDTBBMCkGCSqGSIb3DQEFDDAcBAhinM5KnV2x5wICCAAw
+DAYIKoZIhvcNAgkFADAUBggqhkiG9w0DBwQI4Xbw/W1pgH0EgZCiurgCTUEIDbiK
+x5kw3/Rg1/ZLwk5TEiMoIa9CmXEyuSRUla/Ta4o/rZEzKAp6vwkcupviirtWYems
+lZNfggfzITWNEWtkU6BrhZgJ7kaeZrIbuAO7YUJy6Z2MQfgaKI9BE2EEgKJ+X5gY
+LjkobSAtEqDjuheLgaXIMQ7/qT0MGmi6LmzwMEhu8ZXlNGg8udw=
+-----END ENCRYPTED PRIVATE KEY-----
diff --git a/meta-integrity/data/debug-keys/privkey_ima.pem b/meta-integrity/data/debug-keys/privkey_ima.pem
index 502a0b6..8362cfe 100644
--- a/meta-integrity/data/debug-keys/privkey_ima.pem
+++ b/meta-integrity/data/debug-keys/privkey_ima.pem
@@ -1,16 +1,5 @@
 -----BEGIN PRIVATE KEY-----
-MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJw2G3d0fM36rcQU
-Bt8V/SapJe0lxWJ+CY+HcMx8AhWY9XQ66AXcqBsRHiUnYCaFGXFI35VKGC6d/Gs6
-IWlHgI0tcTyzy5eul+BKRLy/3PNjkK2jJETlbetQy+gE6gUtg4RmPV5ALGksK74p
-OrAfKnahoMi82NVIiBitwmRimms1AgMBAAECgYBTxciRFU1hAVBy2PKebKJoO0n1
-lc329fSWnmHlp5NOlcr8XCLWEfGtIk7ySd2MitCMKjKNU0EIrv0RXAlS9l9/gBYW
-HY+eEaa6l80sp8q4aPKImSi0pb3LVNqWKXJg8qr4AZ45/TEL/fzILFv5QcY8xDjV
-aj6DOlEnNDjlBlBbQQJBAMyYDlKItes/Rnmtp9roXj3XUfiBDHTLY2HVgDBe87sA
-TOSnbgIv+6urd1h9XvBmJlRYH7YKJmBSZWcSlfdC6XkCQQDDdfkUMxQZo9PC/Eue
-WYzytx4xUm3ItWcuKILtFgcNh3c4s4dMx4X/WhQj5/H/nVOIWDioQ0mrW3ap/qcb
-SBydAkAf/gb/UPFhf9t9W3JMANn7wZfHzCYufT9lJQWOisqCC2H6v1Osc+Rey8k1
-xST7Yn3L4pvS03N8zGWe4IEi0QvBAkAWdTWbNos2rvYjzy05Enz5XkTf0eK/Tuh+
-CzWP3BoPWeM+5pHDJqGkx0rNHVdW0VLJtak83A5Y2/d0bMfygISZAkBFGui4HW+Q
-1BlpmDeslsE11wm5jSmm6Ti12a2dVKGFo9QLQcSj4bfgxtqU2dQaYRmajXtSBrGQ
-3vVaxg2EfqB1
+MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgmbPxV5LYZ530IfGm
+SMpfPQFgoIkKPMRuNWLyVn+wiAOhRANCAAQ31W5ZQZdcwidgpyls2oO5rSsHLlqj
+cKYaDF2fveMN5L/wBwEi84ubzz2+MkM9q7RaOSC4TPYHnhVvYcH+SsFv
 -----END PRIVATE KEY-----
diff --git a/meta-integrity/data/debug-keys/x509_ima.der b/meta-integrity/data/debug-keys/x509_ima.der
index 087ca6bea53c172e7eb9a269183a32b3ecbd3aaa..3f6f24e61373912cf39598a427fba09c75e74592 100644
GIT binary patch
delta 420
zcmX@i`i8~Opou91h<O(<GchtTiD=rcII<&lhOg5x2csv6GWV}f4iz@wV&l+i^EhYA
z!pvk)J8_>lmxF;F8*?ZNGmrVi`wCpisYNB3X_?81B@_P|D=3Kb8W|gy7?~NG8JU?_
zL`m=)8G-~1j35FNcbC>j8VIwogN<ZjgqqFF$j<D<z+!$iFVb;(%pvuJ<(fISns=_%
zX4i{aT(C@vCwBhc$GlJWe_&@+`rJMHyzM?CXWP|VqAV45_<UoZCz_vl@SoSg{KcgP
z#Rfb;$H@vaGX7^_GGH*^2J!e=fR1NxFc1TA>QzB<JRpB*voW%=vNJOq$buyJSj1RF
zZWqVLdDo{rj0+P#;Q6gwKHcEmUjuoNv@(l?fmnmc{_`Dy$$c?bxA=q`?p+u2{6ym;
z7UVEu_GB<{V^U-|P`Rr*Zt2H)ZYL%h?fkphW$TAIuj+!<Jp8V8P$_X&W#na`nl+6t
jyo(z`O1=2)rOw6#XzVCl=Wr*re40+_o3v9q-v<EzPIQdl

delta 490
zcmaFEa+p=!powWe5Nj-8W@2Pw;$&Ev_Kw}@@5(*{UN%mxHjlRNyo`*jtPB$`lqe{O
z^BS5N7#bNGn44Odm_$kN8yOm!8X6f{Km;b9FRgE!kF1fAm4Ugjm%*U1lc}+hVUC$}
zc}dOLUu%zuu-zB^tF}`0t?JRFI?n#~f-^NtqBFjhSiNAqvqD->PE|cYtyQwn<Nj1H
z3B9?0vaJ*|-5Yv!3vD)^p1yAS12307`|o^Cp0IYYip$g7*8!(ru)Jc`ZEi`kt&eli
z$<)!_r)jl8UaM^3f)jggT=nRXSbHcXX;!u=6Eh<N<KkF@XagQL=1^H-M#ldvOa=@F
z+#nu53kx$7dxL>2h{MMs#v)Q%T$8e2$NAsBg}3FLd+H7cC8Z`C$b+PnStJa^8n7s+
z2dY2~IA);7CE4|y8dgPru-Va-?r`+w*M{B4Qk8-~RJ~DstJG$5*M+C#eBA$qBA?IQ
zi#XD!^?xaMa-hvFpF;7>h^4<)8&z1mFsnIzMy+W^{27zLSGM&o2WzB{WS3ukm~v04
seSbc0i;m3fSIP33d0S_T-F&dflIgem)LYJa+g7k1Pdm)DaOK<z0Cl&yl>h($

diff --git a/meta-integrity/scripts/ima-gen-CA-signed.sh b/meta-integrity/scripts/ima-gen-CA-signed.sh
index 5f3a728..b10b1ba 100755
--- a/meta-integrity/scripts/ima-gen-CA-signed.sh
+++ b/meta-integrity/scripts/ima-gen-CA-signed.sh
@@ -20,7 +20,6 @@ CAKEY=${2:-ima-local-ca.priv}
 
 cat << __EOF__ >$GENKEY
 [ req ]
-default_bits = 1024
 distinguished_name = req_distinguished_name
 prompt = no
 string_mask = utf8only
@@ -36,13 +35,15 @@ basicConstraints=critical,CA:FALSE
 #basicConstraints=CA:FALSE
 keyUsage=digitalSignature
 #keyUsage = nonRepudiation, digitalSignature, keyEncipherment
+extendedKeyUsage=critical,codeSigning
 subjectKeyIdentifier=hash
 authorityKeyIdentifier=keyid
 #authorityKeyIdentifier=keyid,issuer
 __EOF__
 
-openssl req -new -nodes -utf8 -sha1 -days 365 -batch -config $GENKEY \
-        -out csr_ima.pem -keyout privkey_ima.pem
-openssl x509 -req -in csr_ima.pem -days 365 -extfile $GENKEY -extensions v3_usr \
+openssl req -new -nodes -utf8 -sha256 -days 36500 -batch -config $GENKEY \
+        -out csr_ima.pem -keyout privkey_ima.pem \
+        -newkey ec -pkeyopt ec_paramgen_curve:prime256v1
+openssl x509 -req -in csr_ima.pem -days 36500 -extfile $GENKEY -extensions v3_usr \
         -CA $CA -CAkey $CAKEY -CAcreateserial \
         -outform DER -out x509_ima.der
diff --git a/meta-integrity/scripts/ima-gen-local-ca.sh b/meta-integrity/scripts/ima-gen-local-ca.sh
index b600761..339d3e3 100755
--- a/meta-integrity/scripts/ima-gen-local-ca.sh
+++ b/meta-integrity/scripts/ima-gen-local-ca.sh
@@ -18,7 +18,6 @@ GENKEY=ima-local-ca.genkey
 
 cat << __EOF__ >$GENKEY
 [ req ]
-default_bits = 2048
 distinguished_name = req_distinguished_name
 prompt = no
 string_mask = utf8only
@@ -33,10 +32,11 @@ emailAddress = john.doe@example.com
 basicConstraints=CA:TRUE
 subjectKeyIdentifier=hash
 authorityKeyIdentifier=keyid:always,issuer
-# keyUsage = cRLSign, keyCertSign
+keyUsage = cRLSign, keyCertSign
 __EOF__
 
-openssl req -new -x509 -utf8 -sha1 -days 3650 -batch -config $GENKEY \
+openssl req -new -x509 -utf8 -sha256 -days 36500 -batch -config $GENKEY \
+        -newkey ec -pkeyopt ec_paramgen_curve:prime256v1 \
         -outform DER -out ima-local-ca.x509 -keyout ima-local-ca.priv
 
 openssl x509 -inform DER -in ima-local-ca.x509 -out ima-local-ca.pem
diff --git a/meta-integrity/scripts/ima-gen-self-signed.sh b/meta-integrity/scripts/ima-gen-self-signed.sh
deleted file mode 100755
index 5ee876c..0000000
--- a/meta-integrity/scripts/ima-gen-self-signed.sh
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/sh
-#
-# Copied from ima-evm-utils.
-#
-# This program is free software; you can redistribute it and/or
-# modify it under the terms of the GNU General Public License
-# version 2 as published by the Free Software Foundation.
-#
-# This program is distributed in the hope that it will be useful,
-# but WITHOUT ANY WARRANTY; without even the implied warranty of
-# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-# GNU General Public License for more details.
-#
-# You should have received a copy of the GNU General Public License
-# along with this program.  If not, see <http://www.gnu.org/licenses/>.
-
-GENKEY=ima.genkey
-
-cat << __EOF__ >$GENKEY
-[ req ]
-default_bits = 1024
-distinguished_name = req_distinguished_name
-prompt = no
-string_mask = utf8only
-x509_extensions = myexts
-
-[ req_distinguished_name ]
-O = example.com
-CN = meta-intel-iot-security example signing key
-emailAddress = john.doe@example.com
-
-[ myexts ]
-basicConstraints=critical,CA:FALSE
-keyUsage=digitalSignature
-subjectKeyIdentifier=hash
-authorityKeyIdentifier=keyid
-__EOF__
-
-openssl req -new -nodes -utf8 -sha1 -days 36500 -batch \
-        -x509 -config $GENKEY \
-	-outform DER -out x509_ima.der -keyout privkey_ima.pem
-- 
2.34.1


