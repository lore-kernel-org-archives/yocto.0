Return-Path: <dbaryshkov@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58AE1E00C4F; Sun, 28 Jul 2019 08:31:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dbaryshkov[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B4BEE0098A
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:31:56 -0700 (PDT)
Received: by mail-lf1-f67.google.com with SMTP id z15so35995781lfh.13
	for <yocto@yoctoproject.org>; Sun, 28 Jul 2019 08:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=Azv7aagVV52+Ntmm7+b1sLnNOsvXx6tk6pstsSGeg14=;
	b=rOU4pM5u7AZGT8iuaSzLwmNolz5eJWZUQETShxPX2n3sHYSzUnBGO5ohxG4jgJVfiN
	4IPwHxkBAum9Ax9lshsIpV4UyzknEZgbGgkhWLX//NRoLtPfr/tFit4xi/0FJoU+3ZoT
	I+RHTA2xRUfHGXgmf+XpEwGc0qv7OL3u4WQnadXb+BD6DyNIrjIJgq1GPp+5mKACcaiO
	gnNY5AW+PQPeF05Gh2Zh5h46IJOt5hVQf/2II9dzV79+7WKqJribI0YK1SzB0Xy912u/
	d6rgVvNhsm5XagpUXTuyJc2l9NlQOD5kXE9QuAGuH9pooPCJEUKWwpocyLdIJWLPYUOq
	x3Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Azv7aagVV52+Ntmm7+b1sLnNOsvXx6tk6pstsSGeg14=;
	b=ZsNNbLZpQrnKp65Xjyj/gYjmrBbJHYTIGWsnFzsJoUgH5w+NhH0MBFyfP3D3nlECk4
	INhBUhU3/cnJn3lpPzCzxRGJxQx7bPtcWdaLGeHVneotFgLE6iiwsTi5MPA7sBbkklG8
	v+nn7hwmJC/PXwV6ki5eISgQKPP5Ly82dMu2h+XhDvOA0eJXOu1/q6Q0FPBPkzl6rBre
	T1VYowlEPvyezVGRc7bWYRCU41LiBvOmlliD2K3hUyAnirbx1uCFWGYDbLmqqkCnef2A
	3mY0qHp72wBlICcwRCJ5Cnmmz02uiqlcpj8Ie228vMmr9morKMs7bvb425fcxRCQztII
	fF1A==
X-Gm-Message-State: APjAAAWQKoYm8KdXWNNlGzFC7im07EtcO1oY1NSZLW1dK/qey7kJkabY
	fM7FT7FiEprWADFI25ph4mjAlUUHR+g=
X-Google-Smtp-Source: APXvYqyLGGMaNy2aHb0ak+5LevSp5gxJCm46shmy6hSBhGw1mWWCtbg+g762LuIRWoduTOasxkHqkw==
X-Received: by 2002:a19:f603:: with SMTP id x3mr44120777lfe.125.1564327915555; 
	Sun, 28 Jul 2019 08:31:55 -0700 (PDT)
Received: from localhost.localdomain ([94.25.228.134])
	by smtp.gmail.com with ESMTPSA id
	j7sm13520555lji.27.2019.07.28.08.31.54 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Sun, 28 Jul 2019 08:31:54 -0700 (PDT)
From: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 28 Jul 2019 18:31:49 +0300
Message-Id: <20190728153150.9438-2-dbaryshkov@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190728153150.9438-1-dbaryshkov@gmail.com>
References: <20190728153150.9438-1-dbaryshkov@gmail.com>
MIME-Version: 1.0
Subject: [meta-security 2/3] kernel-modsign.bbclass: add support for kernel modules signing
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
X-List-Received-Date: Sun, 28 Jul 2019 15:31:58 -0000
Content-Transfer-Encoding: 8bit

From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>

Add bbclass responsible for handling signing of kernel modules.

Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
---
 meta-integrity/classes/kernel-modsign.bbclass | 29 +++++++++++++++++++
 .../data/debug-keys/privkey_modsign.pem       | 28 ++++++++++++++++++
 .../data/debug-keys/x509_modsign.crt          | 22 ++++++++++++++
 3 files changed, 79 insertions(+)
 create mode 100644 meta-integrity/classes/kernel-modsign.bbclass
 create mode 100644 meta-integrity/data/debug-keys/privkey_modsign.pem
 create mode 100644 meta-integrity/data/debug-keys/x509_modsign.crt

diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
new file mode 100644
index 000000000000..1e4d94b79091
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
+do_configure_prepend() {
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
index 000000000000..4cac00ae303a
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
index 000000000000..5fa2a9062a89
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
2.20.1


