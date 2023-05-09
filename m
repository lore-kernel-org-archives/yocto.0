Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C84B1C7EE2D
	for <webhook@archiver.kernel.org>; Tue,  9 May 2023 18:57:24 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web10.41608.1683658643505526597
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 May 2023 11:57:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JH+XeDjN;
 spf=pass (domain: gmail.com, ip: 209.85.128.41, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-3f195b164c4so41671955e9.1
        for <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 11:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683658642; x=1686250642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0K7ipfpfyN+yaSl0KZgRk08Y7V3Z2mGMI7REKBvvf3c=;
        b=JH+XeDjN5j7WkphaszX/SWx5Wul8DwpiuuMrR2usgHOFRxcCN8Jxx79svpzkMhvexo
         YUafdEL8pI5Lw+ml7v+qy2cXjmcOrOi6ZTTJeNwWNYLaaQT8C4puCNRfaQoeAmY5ieqD
         IkFeBN2TSe0V4vAUW/xDdWa9WGBgp8iVQjusiOhwbxvSNOcRaAawVu343KHAcqp6egsl
         qvXnrIw/NT0G6B/Lv2mwJXusW9NXUeetN3xO1C17xsUooWOl9kJZfkFW6Bd2qu1Dyg6S
         SOVWha5d6ipIiKLoYNEY9ymc1dBb4tTz7RlRK4Zth5Odl5M07do4QRh7eYJ7ia8GyiRx
         cAwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683658642; x=1686250642;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0K7ipfpfyN+yaSl0KZgRk08Y7V3Z2mGMI7REKBvvf3c=;
        b=FNppXk3k+m+qwrEl893LGbYkJebIued8xDprsGNX1tqq6tRIhvdPGsJJcaSGwx0AgK
         okvKbNbDcFTBkTagIX+Y7n7QridLUKUuKy/oVU5knnXwxPQlTugRFy9+oK8bsAQqdpe1
         ID4/tWnyZRxydD0vHtzHOR/j8XDSAk2u7L7OGwxI8VuOWsoUiuVJRZg3vscnLjha+vDn
         KGkGSdi9Laj3gicRX5+3vrNkgDQ0wpYyHlLfIgi2ETX3VMlKnnAgj2n1nFrO+yMiweBN
         dwBvbYIhQQvN4bM313SACH3NwKLgjYfGM9Bu0CnZCNltPaoVjetHhCi+Ij8mCrhVXvVc
         d4iA==
X-Gm-Message-State: AC+VfDznpJN7XtSRVIyeZXHxLvtGuFtpI7TCAwdnwVbWCLNg8+f6RfKN
	1/Csk/3tS1y7rcDY6CMmcFn7F2cIkX9hzSZ/
X-Google-Smtp-Source: ACHHUZ4C/DgGZEa6C3gcVU7xXBq2B6h55h5pr9vn4WH4kfufZB/BLoSvucmnhimR0RWo4i0LejwNzg==
X-Received: by 2002:a7b:c404:0:b0:3ed:b048:73f4 with SMTP id k4-20020a7bc404000000b003edb04873f4mr10873952wmi.5.1683658641641;
        Tue, 09 May 2023 11:57:21 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id k17-20020adfe3d1000000b00301a351a8d6sm15248310wrm.84.2023.05.09.11.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 11:57:21 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: stefanb@linux.ibm.com,
	Jose Quaresma <jose.quaresma@foundries.io>
Subject: [meta-security][PATCH 8/8] Revert "ima: Document and replace keys and adapt scripts for EC keys"
Date: Tue,  9 May 2023 18:56:31 +0000
Message-Id: <20230509185631.3182570-8-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230509185631.3182570-1-jose.quaresma@foundries.io>
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 May 2023 18:57:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59953

This reverts commit 0652c9fd7496d021f91759cc7489b6faad3e04bd.

The full patchset are overriding the do_configure task and also added a kernel patch
on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file is included
in every recipe that follows the pattern pattern starting by linux- (recipes-kernel/linux/linux-%.bbappend).
So the patch fails in some recipes and also do_configure task doesn't make sense.
This breaks many recipes like linux-firmware and maybe others.

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 meta-integrity/data/debug-keys/README.md      |  17 --------
 .../data/debug-keys/ima-local-ca.pem          |  15 -------
 .../data/debug-keys/ima-local-ca.priv         |   7 ---
 .../data/debug-keys/privkey_ima.pem           |  17 ++++++--
 meta-integrity/data/debug-keys/x509_ima.der   | Bin 620 -> 707 bytes
 meta-integrity/scripts/ima-gen-CA-signed.sh   |   9 ++--
 meta-integrity/scripts/ima-gen-local-ca.sh    |   6 +--
 meta-integrity/scripts/ima-gen-self-signed.sh |  41 ++++++++++++++++++
 8 files changed, 62 insertions(+), 50 deletions(-)
 delete mode 100644 meta-integrity/data/debug-keys/README.md
 delete mode 100644 meta-integrity/data/debug-keys/ima-local-ca.pem
 delete mode 100644 meta-integrity/data/debug-keys/ima-local-ca.priv
 create mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh

diff --git a/meta-integrity/data/debug-keys/README.md b/meta-integrity/data/debug-keys/README.md
deleted file mode 100644
index e613968..0000000
--- a/meta-integrity/data/debug-keys/README.md
+++ /dev/null
@@ -1,17 +0,0 @@
-# EVM & IMA keys
-
-The following IMA & EVM debug/test keys are in this directory
-
-- ima-local-ca.priv: The CA's private key (password: 1234)
-- ima-local-ca.pem: The CA's self-signed certificate
-- privkey_ima.pem: IMA & EVM private key used for signing files
-- x509_ima.der: Certificate containing public key (of privkey_ima.pem) to verify signatures
-
-The CA's (self-signed) certificate can be used to verify the validity of
-the x509_ima.der certificate. Since the CA certificate will be built into
-the Linux kernel, any key (x509_ima.der) loaded onto the .ima keyring must
-pass this test:
-
-```
-  openssl verify -CAfile ima-local-ca.pem x509_ima.der
-````
diff --git a/meta-integrity/data/debug-keys/ima-local-ca.pem b/meta-integrity/data/debug-keys/ima-local-ca.pem
deleted file mode 100644
index 4b48be4..0000000
--- a/meta-integrity/data/debug-keys/ima-local-ca.pem
+++ /dev/null
@@ -1,15 +0,0 @@
------BEGIN CERTIFICATE-----
-MIICWzCCAgCgAwIBAgITYMKT7/z5qI+hLfNC6Jy6hhBCWDAKBggqhkjOPQQDAjB9
-MRQwEgYDVQQKDAtleGFtcGxlLmNvbTFAMD4GA1UEAww3bWV0YS1pbnRlbC1pb3Qt
-c2VjdXJpdHkgZXhhbXBsZSBjZXJ0aWZpY2F0ZSBzaWduaW5nIGtleTEjMCEGCSqG
-SIb3DQEJARYUam9obi5kb2VAZXhhbXBsZS5jb20wIBcNMjMwNDI2MTYyNjExWhgP
-MjEyMzA0MDIxNjI2MTFaMH0xFDASBgNVBAoMC2V4YW1wbGUuY29tMUAwPgYDVQQD
-DDdtZXRhLWludGVsLWlvdC1zZWN1cml0eSBleGFtcGxlIGNlcnRpZmljYXRlIHNp
-Z25pbmcga2V5MSMwIQYJKoZIhvcNAQkBFhRqb2huLmRvZUBleGFtcGxlLmNvbTBZ
-MBMGByqGSM49AgEGCCqGSM49AwEHA0IABCiC+YIbCoOhyLy63lOGbiK+DPkW7gMU
-rmfVLIb4oTmKxZS5/L8VE6hjKDcLa7OauyuW2nd4fnFAautFxpw/Q0yjXTBbMAwG
-A1UdEwQFMAMBAf8wHQYDVR0OBBYEFL/PiFFjjlzVtExXMb2uXOfIgeIEMB8GA1Ud
-IwQYMBaAFL/PiFFjjlzVtExXMb2uXOfIgeIEMAsGA1UdDwQEAwIBBjAKBggqhkjO
-PQQDAgNJADBGAiEA0HOxloLMr87yDoH3CljWDWb7M2zLA+BQFXLN511qDl0CIQDu
-clewWaJHw4Wq8IN3JsrNDDw2GfrN3sx4hfWUK/0SPw==
------END CERTIFICATE-----
diff --git a/meta-integrity/data/debug-keys/ima-local-ca.priv b/meta-integrity/data/debug-keys/ima-local-ca.priv
deleted file mode 100644
index e13de23..0000000
--- a/meta-integrity/data/debug-keys/ima-local-ca.priv
+++ /dev/null
@@ -1,7 +0,0 @@
------BEGIN ENCRYPTED PRIVATE KEY-----
-MIHjME4GCSqGSIb3DQEFDTBBMCkGCSqGSIb3DQEFDDAcBAhinM5KnV2x5wICCAAw
-DAYIKoZIhvcNAgkFADAUBggqhkiG9w0DBwQI4Xbw/W1pgH0EgZCiurgCTUEIDbiK
-x5kw3/Rg1/ZLwk5TEiMoIa9CmXEyuSRUla/Ta4o/rZEzKAp6vwkcupviirtWYems
-lZNfggfzITWNEWtkU6BrhZgJ7kaeZrIbuAO7YUJy6Z2MQfgaKI9BE2EEgKJ+X5gY
-LjkobSAtEqDjuheLgaXIMQ7/qT0MGmi6LmzwMEhu8ZXlNGg8udw=
------END ENCRYPTED PRIVATE KEY-----
diff --git a/meta-integrity/data/debug-keys/privkey_ima.pem b/meta-integrity/data/debug-keys/privkey_ima.pem
index 8362cfe..502a0b6 100644
--- a/meta-integrity/data/debug-keys/privkey_ima.pem
+++ b/meta-integrity/data/debug-keys/privkey_ima.pem
@@ -1,5 +1,16 @@
 -----BEGIN PRIVATE KEY-----
-MIGHAgEAMBMGByqGSM49AgEGCCqGSM49AwEHBG0wawIBAQQgmbPxV5LYZ530IfGm
-SMpfPQFgoIkKPMRuNWLyVn+wiAOhRANCAAQ31W5ZQZdcwidgpyls2oO5rSsHLlqj
-cKYaDF2fveMN5L/wBwEi84ubzz2+MkM9q7RaOSC4TPYHnhVvYcH+SsFv
+MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJw2G3d0fM36rcQU
+Bt8V/SapJe0lxWJ+CY+HcMx8AhWY9XQ66AXcqBsRHiUnYCaFGXFI35VKGC6d/Gs6
+IWlHgI0tcTyzy5eul+BKRLy/3PNjkK2jJETlbetQy+gE6gUtg4RmPV5ALGksK74p
+OrAfKnahoMi82NVIiBitwmRimms1AgMBAAECgYBTxciRFU1hAVBy2PKebKJoO0n1
+lc329fSWnmHlp5NOlcr8XCLWEfGtIk7ySd2MitCMKjKNU0EIrv0RXAlS9l9/gBYW
+HY+eEaa6l80sp8q4aPKImSi0pb3LVNqWKXJg8qr4AZ45/TEL/fzILFv5QcY8xDjV
+aj6DOlEnNDjlBlBbQQJBAMyYDlKItes/Rnmtp9roXj3XUfiBDHTLY2HVgDBe87sA
+TOSnbgIv+6urd1h9XvBmJlRYH7YKJmBSZWcSlfdC6XkCQQDDdfkUMxQZo9PC/Eue
+WYzytx4xUm3ItWcuKILtFgcNh3c4s4dMx4X/WhQj5/H/nVOIWDioQ0mrW3ap/qcb
+SBydAkAf/gb/UPFhf9t9W3JMANn7wZfHzCYufT9lJQWOisqCC2H6v1Osc+Rey8k1
+xST7Yn3L4pvS03N8zGWe4IEi0QvBAkAWdTWbNos2rvYjzy05Enz5XkTf0eK/Tuh+
+CzWP3BoPWeM+5pHDJqGkx0rNHVdW0VLJtak83A5Y2/d0bMfygISZAkBFGui4HW+Q
+1BlpmDeslsE11wm5jSmm6Ti12a2dVKGFo9QLQcSj4bfgxtqU2dQaYRmajXtSBrGQ
+3vVaxg2EfqB1
 -----END PRIVATE KEY-----
diff --git a/meta-integrity/data/debug-keys/x509_ima.der b/meta-integrity/data/debug-keys/x509_ima.der
index 3f6f24e61373912cf39598a427fba09c75e74592..087ca6bea53c172e7eb9a269183a32b3ecbd3aaa 100644
GIT binary patch
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

delta 420
zcmX@i`i8~Opou91h<O(<GchtTiD=rcII<&lhOg5x2csv6GWV}f4iz@wV&l+i^EhYA
z!pvk)J8_>lmxF;F8*?ZNGmrVi`wCpisYNB3X_?81B@_P|D=3Kb8W|gy7?~NG8JU?_
zL`m=)8G-~1j35FNcbC>j8VIwogN<ZjgqqFF$j<D<z+!$iFVb;(%pvuJ<(fISns=_%
zX4i{aT(C@vCwBhc$GlJWe_&@+`rJMHyzM?CXWP|VqAV45_<UoZCz_vl@SoSg{KcgP
z#Rfb;$H@vaGX7^_GGH*^2J!e=fR1NxFc1TA>QzB<JRpB*voW%=vNJOq$buyJSj1RF
zZWqVLdDo{rj0+P#;Q6gwKHcEmUjuoNv@(l?fmnmc{_`Dy$$c?bxA=q`?p+u2{6ym;
z7UVEu_GB<{V^U-|P`Rr*Zt2H)ZYL%h?fkphW$TAIuj+!<Jp8V8P$_X&W#na`nl+6t
jyo(z`O1=2)rOw6#XzVCl=Wr*re40+_o3v9q-v<EzPIQdl

diff --git a/meta-integrity/scripts/ima-gen-CA-signed.sh b/meta-integrity/scripts/ima-gen-CA-signed.sh
index b10b1ba..5f3a728 100755
--- a/meta-integrity/scripts/ima-gen-CA-signed.sh
+++ b/meta-integrity/scripts/ima-gen-CA-signed.sh
@@ -20,6 +20,7 @@ CAKEY=${2:-ima-local-ca.priv}
 
 cat << __EOF__ >$GENKEY
 [ req ]
+default_bits = 1024
 distinguished_name = req_distinguished_name
 prompt = no
 string_mask = utf8only
@@ -35,15 +36,13 @@ basicConstraints=critical,CA:FALSE
 #basicConstraints=CA:FALSE
 keyUsage=digitalSignature
 #keyUsage = nonRepudiation, digitalSignature, keyEncipherment
-extendedKeyUsage=critical,codeSigning
 subjectKeyIdentifier=hash
 authorityKeyIdentifier=keyid
 #authorityKeyIdentifier=keyid,issuer
 __EOF__
 
-openssl req -new -nodes -utf8 -sha256 -days 36500 -batch -config $GENKEY \
-        -out csr_ima.pem -keyout privkey_ima.pem \
-        -newkey ec -pkeyopt ec_paramgen_curve:prime256v1
-openssl x509 -req -in csr_ima.pem -days 36500 -extfile $GENKEY -extensions v3_usr \
+openssl req -new -nodes -utf8 -sha1 -days 365 -batch -config $GENKEY \
+        -out csr_ima.pem -keyout privkey_ima.pem
+openssl x509 -req -in csr_ima.pem -days 365 -extfile $GENKEY -extensions v3_usr \
         -CA $CA -CAkey $CAKEY -CAcreateserial \
         -outform DER -out x509_ima.der
diff --git a/meta-integrity/scripts/ima-gen-local-ca.sh b/meta-integrity/scripts/ima-gen-local-ca.sh
index 339d3e3..b600761 100755
--- a/meta-integrity/scripts/ima-gen-local-ca.sh
+++ b/meta-integrity/scripts/ima-gen-local-ca.sh
@@ -18,6 +18,7 @@ GENKEY=ima-local-ca.genkey
 
 cat << __EOF__ >$GENKEY
 [ req ]
+default_bits = 2048
 distinguished_name = req_distinguished_name
 prompt = no
 string_mask = utf8only
@@ -32,11 +33,10 @@ emailAddress = john.doe@example.com
 basicConstraints=CA:TRUE
 subjectKeyIdentifier=hash
 authorityKeyIdentifier=keyid:always,issuer
-keyUsage = cRLSign, keyCertSign
+# keyUsage = cRLSign, keyCertSign
 __EOF__
 
-openssl req -new -x509 -utf8 -sha256 -days 36500 -batch -config $GENKEY \
-        -newkey ec -pkeyopt ec_paramgen_curve:prime256v1 \
+openssl req -new -x509 -utf8 -sha1 -days 3650 -batch -config $GENKEY \
         -outform DER -out ima-local-ca.x509 -keyout ima-local-ca.priv
 
 openssl x509 -inform DER -in ima-local-ca.x509 -out ima-local-ca.pem
diff --git a/meta-integrity/scripts/ima-gen-self-signed.sh b/meta-integrity/scripts/ima-gen-self-signed.sh
new file mode 100755
index 0000000..5ee876c
--- /dev/null
+++ b/meta-integrity/scripts/ima-gen-self-signed.sh
@@ -0,0 +1,41 @@
+#!/bin/sh
+#
+# Copied from ima-evm-utils.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# version 2 as published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program.  If not, see <http://www.gnu.org/licenses/>.
+
+GENKEY=ima.genkey
+
+cat << __EOF__ >$GENKEY
+[ req ]
+default_bits = 1024
+distinguished_name = req_distinguished_name
+prompt = no
+string_mask = utf8only
+x509_extensions = myexts
+
+[ req_distinguished_name ]
+O = example.com
+CN = meta-intel-iot-security example signing key
+emailAddress = john.doe@example.com
+
+[ myexts ]
+basicConstraints=critical,CA:FALSE
+keyUsage=digitalSignature
+subjectKeyIdentifier=hash
+authorityKeyIdentifier=keyid
+__EOF__
+
+openssl req -new -nodes -utf8 -sha1 -days 36500 -batch \
+        -x509 -config $GENKEY \
+	-outform DER -out x509_ima.der -keyout privkey_ima.pem
-- 
2.34.1


