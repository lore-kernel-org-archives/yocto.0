Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2265AE00C25; Tue,  6 Aug 2019 07:46:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8C16E00A93
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2019 07:46:06 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id d1so8900303pgp.4
	for <yocto@yoctoproject.org>; Tue, 06 Aug 2019 07:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ftM3oW6j/Fc/K3gfaXChbgIC/uhyPplflQUnS8rrj1o=;
	b=n+Giyo1NzsNeB4xT1xPOO1azJB8wHYW4sNZSWI8Z5YSTqsgD/oBtt8HIHbpmt3K6tH
	j7Pcnu8IcDCKJXixxdY4zvUb9kVmYfs/XDyzOoLFXGKnbX+ZMrWILvJdzqHBDxr96YIx
	q9rlRZ4wSwHMDijchHQCzfRQ7ZjjoxwPp+KtajpdoL4BJgkx6zDf5vnNUBjKiqCd5HL0
	pZ2ul5KuE/1vcfFH5oZsx9xPkTCxvHSdS3hEbkJ2/Nu7FDoNm3SwCOtTl0CH+h7YdB9f
	SG3OyHbwIMDHDRTQGAP/xpYlZj2HY7As/K1JrCNPKH4vLZvigWzuBK9EZT2jRDVWj2Dg
	lEww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ftM3oW6j/Fc/K3gfaXChbgIC/uhyPplflQUnS8rrj1o=;
	b=tvSrrX6Ui5S7Ey68eW4GwKECU6sCHQDYWR8kPKD6CfF55qnsVXcM/2wr2EKfSCNEod
	T2+7njSJMgBUZwSAl+a2XDOVxd/zLdGlfCq0uS/wFqIpF722ePAVRxRaE43MZ9TgL3yB
	A3qdL3Y8wpv1cZnd/4X8to/1XBIYfZbIfD19BjPsWXzbcKNGcropHqZJzhr7Z+UBe9ye
	ftTZXADW+Ni4d2DGRfhVKL3ssa8CZiOouvBibhgBaqZvza/h8bxhx9FrHSI03gfslpUz
	6Lc41Q66YYXpAScLMYuil0/CeOv80BlYGp4s09amFiWcEVndZkaQIz2zMIJjZL1ZfehQ
	NfVQ==
X-Gm-Message-State: APjAAAVjEbZqtH1i0Cqfgmpfc7Fez4Q+G8+67VOurMjneSfNXJSYDpst
	dOwUTNZzf+dhSfvZR9jMa8y1YCg6
X-Google-Smtp-Source: APXvYqxFXPfBjRzQft8k9xT7ctmzVJkqi6pOJfttpP9rz7B8sJ9H8Fa/wL6QrBgXFazx8fECGGZ0ug==
X-Received: by 2002:a63:3387:: with SMTP id z129mr3325819pgz.177.1565102766009;
	Tue, 06 Aug 2019 07:46:06 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net
	([2601:202:4180:c33:b1d3:f235:39b7:d104])
	by smtp.gmail.com with ESMTPSA id
	f12sm78875109pgo.85.2019.08.06.07.46.05
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Aug 2019 07:46:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  6 Aug 2019 07:46:04 -0700
Message-Id: <1565102764-32661-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Cc: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
Subject: [meta-security][v2][PATCH] kernel-modsign.bbclass: add support for kernel modules signing
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
X-List-Received-Date: Tue, 06 Aug 2019 14:46:08 -0000

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Add bbclass responsible for handling signing of kernel modules.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

fixup class to avoid including in every configure task

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/classes/kernel-modsign.bbclass      | 29 ++++++++++++++++++++++
 meta-integrity/data/debug-keys/privkey_modsign.pem | 28 +++++++++++++++++++++
 meta-integrity/data/debug-keys/x509_modsign.crt    | 22 ++++++++++++++++
 3 files changed, 79 insertions(+)
 create mode 100644 meta-integrity/classes/kernel-modsign.bbclass
 create mode 100644 meta-integrity/data/debug-keys/privkey_modsign.pem
 create mode 100644 meta-integrity/data/debug-keys/x509_modsign.crt

diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
new file mode 100644
index 0000000..09025ba
--- /dev/null
+++ b/meta-integrity/classes/kernel-modsign.bbclass
@@ -0,0 +1,29 @@
+# No default! Either this or MODSIGN_PRIVKEY/MODSIGN_X509 have to be
+# set explicitly in a local.conf before activating kernel-modsign.
+# To use the insecure (because public) example keys, use
+# MODSIGN_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
+MODSIGN_KEY_DIR ?= "MODSIGN_KEY_DIR_NOT_SET"
+
+# Private key for modules signing. The default is okay when
+# using the example key directory.
+MODSIGN_PRIVKEY ?= "${MODSIGN_KEY_DIR}/privkey_modsign.pem"
+
+# Public part of certificates used for modules signing.
+# The default is okay when using the example key directory.
+MODSIGN_X509 ?= "${MODSIGN_KEY_DIR}/x509_modsign.crt"
+
+# If this class is enabled, disable stripping signatures from modules
+INHIBIT_PACKAGE_STRIP = "1"
+
+kernel_do_configure_prepend() {
+    if [ -f "${MODSIGN_PRIVKEY}" -a -f "${MODSIGN_X509}" ]; then
+        cat "${MODSIGN_PRIVKEY}" "${MODSIGN_X509}" \
+            > "${B}/modsign_key.pem"
+    else
+        bberror "Either modsign key or certificate are invalid"
+    fi
+}
+
+do_shared_workdir_append() {
+    cp modsign_key.pem $kerneldir/
+}
diff --git a/meta-integrity/data/debug-keys/privkey_modsign.pem b/meta-integrity/data/debug-keys/privkey_modsign.pem
new file mode 100644
index 0000000..4cac00a
--- /dev/null
+++ b/meta-integrity/data/debug-keys/privkey_modsign.pem
@@ -0,0 +1,28 @@
+-----BEGIN PRIVATE KEY-----
+MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEWsJjB2pA5Ih6
+EelXvVjwWY1ix1azMciNRNPPQN1AMXF0K/VUkfOYbaPajg1cQYEf9gk3q7OZ5Axk
+UY/e5piZORaPcsmj0lV0L+NSlRYydR5M/QxtEz26585FgqRGdAe6umStPmVKdqa2
+d68O4PgQgJJtVuz6ndm+0uNEUDCVLwhkGQSwNB3qBbZAUX9escZ/a8eUiBfMYKaO
+k8JRyM+2br9dgpTFg4UfBYexgNSQo8g5TIBGc8KgQiKCuFj1fQEhV5z4RusHthjc
+NYXa3RHmdclxyrGeYr5ZRc47HqE1gd5NDR0WeHn4C4YKcfK1rZZz/2+6hfsIRfGx
+6cQKk23hAgMBAAECggEAJ0ULiWirPG04SkmYxF5vEiqm1zGMymvTc0VnoxSS60q4
+KQa9mvtRn5OV6JjuXRwQqga30zV4xvdP7yRMxMSTkllThL7tSuE/C+yj5xlABjlc
+JQOa35mwh9fibg5xslF0Vkj+55MKCPlv4CBRl4Uwt4QvRMTUwk6dhMeCgmATR1J1
+2/7AipjtfFYreDx7sLbRVvSzUhmZS0iCbNOhtTWPLNW+9YKHTOffKa04HzNtnAXq
+OjJ0IRZD/C6LfkBUsnHg2eEiA97QXh/Srsl9nc8DaUK1IXRywEdmYIoNMWMav2Hm
+RO8kkU30BqKW+/EO2ZbH2GmkxvwWd0ocBnLC3FRWEQKBgQDu4T8CB3YsOcVjqem4
+iBlaSht/b46YQc7A1SOqZCimehmmXNSxQOkapIG3wlIr5edtXQA+xv09+WrproUB
+SjAnqaH6pYeCvbNlY5k344gtYs+Kco2rq5GYa+LumAeX2Sam8F7u4LxvEogCecX7
+e4rnG3lt3AVuuRE7zpCQtaWcJQKBgQDSbUvea9pcYli9pssTl+ijQKkgG9DdaYbA
+I5w5bY1TPYZ/Ocysljefv/ssaHFh4DPxE1MQ5JHwZgZRo1EICxxYzGsLjyR/fmjz
+1c/NJlTtalCNtLvWaf7b02ag/abnP8neiSpLL5xqHvGo5ikWwgYQD+9HVKGvL3S1
+kI7x/ziADQKBgQCqFbkuMa/jh3LTJp0iZc1fa1qu3vhx0pFq3Zeab9w9xLxUps5O
+MwCGltFBzNuDJBwm00wkZrzTjq6gGkHbjD5DT1XkyE13OqjsLQFgOOKyJiPN2Qik
+TfHJzC91YMwvQ09xF78QaPXiRBiRYrEkAXACY56PKVS45I6vvcFTN/Ll/QKBgA9m
+KDMyuVwhZlUaq6nXaBLqXHYZEwPhARd2g6xANCNvUTRmSnAm3hM2vW7WhdWfzq1J
+uL53u6ZYEQZQaVGpXn2xF/RUmVsrKQsPDpH4yCZHrXVxUH20bA4yPkRxy5EIvgEn
+EI1IAq5RbWXq0f70W/U49U3HB74GPwg6d/uFreDRAoGAN+v9gMQA6A1vM7LvbYR8
+5CwwyqS/CfI9zKPLn53QstguXC/ObafIYQzVRqGb9lCQgtlmmKw4jMY0B/lDzpcH
+zS8rqoyvDj/m7i17NYkqXErJKLRQ0ptXKdLXHlG0u185e7Y5p4O3Z5dk8bACkpHi
+hp764y+BtU4qIcVaPsPK4uU=
+-----END PRIVATE KEY-----
diff --git a/meta-integrity/data/debug-keys/x509_modsign.crt b/meta-integrity/data/debug-keys/x509_modsign.crt
new file mode 100644
index 0000000..5fa2a90
--- /dev/null
+++ b/meta-integrity/data/debug-keys/x509_modsign.crt
@@ -0,0 +1,22 @@
+-----BEGIN CERTIFICATE-----
+MIIDnjCCAoagAwIBAgIUUqmBj5Q8edHMMTXsoGVGEEKdwV4wDQYJKoZIhvcNAQEL
+BQAwZzEqMCgGA1UEAxMhbWV0YS1zZWN1cml0eSBtb2R1bGVzIHNpZ25pbmcga2V5
+MRQwEgYDVQQKEwtleGFtcGxlLmNvbTEjMCEGCSqGSIb3DQEJARYUam9obi5kb2VA
+ZXhhbXBsZS5jb20wIBcNMTkwNzI3MjIzOTA3WhgPMjExOTA3MjcyMjM5MTVaMGcx
+KjAoBgNVBAMTIW1ldGEtc2VjdXJpdHkgbW9kdWxlcyBzaWduaW5nIGtleTEUMBIG
+A1UEChMLZXhhbXBsZS5jb20xIzAhBgkqhkiG9w0BCQEWFGpvaG4uZG9lQGV4YW1w
+bGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxFrCYwdqQOSI
+ehHpV71Y8FmNYsdWszHIjUTTz0DdQDFxdCv1VJHzmG2j2o4NXEGBH/YJN6uzmeQM
+ZFGP3uaYmTkWj3LJo9JVdC/jUpUWMnUeTP0MbRM9uufORYKkRnQHurpkrT5lSnam
+tnevDuD4EICSbVbs+p3ZvtLjRFAwlS8IZBkEsDQd6gW2QFF/XrHGf2vHlIgXzGCm
+jpPCUcjPtm6/XYKUxYOFHwWHsYDUkKPIOUyARnPCoEIigrhY9X0BIVec+EbrB7YY
+3DWF2t0R5nXJccqxnmK+WUXOOx6hNYHeTQ0dFnh5+AuGCnHyta2Wc/9vuoX7CEXx
+senECpNt4QIDAQABo0AwPjAMBgNVHRMBAf8EAjAAMA8GA1UdDwEB/wQFAwMHgAAw
+HQYDVR0OBBYEFDa35X9LnPlrd76inh/cYgeXh6X4MA0GCSqGSIb3DQEBCwUAA4IB
+AQBTPTh7zY9BrfZW9Izk9JSZYNigwUDwjrhNBSLr5NKi2A/LmZ0jjdCDkwaCn5io
+xrAq5oxPCAkwlzKwY2ootcL3+En4Pq2e5U+n9kRrpDpKKiR5/0S0d9vpgg4eZR0R
+kxqE9APCQ5SFU3PgnJ5H5y2SPXzle3bgUsWxNGD81zXFn5clJj4XHvJDWTQ/jG7C
+FTQ1o1HXtzda4EmKIzrSU/ayVbpPg5fPEBJjk/hHPT45kfzVZBuxwBLXVbe/YyWi
+NTFWCbJwjZwVRKrsQ3HFpYMWvugtcsSHo7vGi06FvUHcS2sUZH5sFn7hulcIGICt
+EztTO8Q+yhZujZbmEyJmxqZv
+-----END CERTIFICATE-----
-- 
2.7.4


