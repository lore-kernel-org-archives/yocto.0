Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CF6BE00A75; Sun,  4 Aug 2019 08:30:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 256F5E00A00
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2019 08:30:21 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id l21so38384113pgm.3
	for <yocto@yoctoproject.org>; Sun, 04 Aug 2019 08:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=ei6Vqrhfo5ocG0bjzirDZoJFIKfx86XsDLLBTbuZzmw=;
	b=DhHBdsZaWp4zSjLdT3DFvOJBouVncCjHwZy9yM823NiyWurBuD9FkDga9BolxPlxBx
	DOD6x9OmpkiGBI7rh8NoQWjOw2ZcDi+25wzujzDKvTSq51VBEzRfiMKb+uTTrlDt613w
	D/AkeW4o5pa6sZtONGb6ZPucPAYPQ43d8b9Vtfd7PM2Z1xLCMQNYobyB5mIZ1HRJJq4l
	GgnSBdxYhWJs6sdftA7PgjTJBRC5FJ3Uipb2sDvrSfXoMMp2nFTYTVuBeTwmU6ZB7g5l
	bDOZoX18J5xbjHWSY930Md97vQvBNaRb1c+dI74vYg7QmTA+u6DvzqrHW5xSj9mWieVU
	aoVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=ei6Vqrhfo5ocG0bjzirDZoJFIKfx86XsDLLBTbuZzmw=;
	b=KyPRmfl8OT6HgGr9woQwU+4ZmoGb9rLx09zJEC7zpHPyIkYu2nLtty87wVhmr99FQ+
	Krnw6uZuHDqi3Va2iudKc8q2RBQXi4D07AuGakYeXYs6uTGy0s3Kehrb8lm4ktnz7WWX
	+xFNlGpn8sc06rfZBNszKvUSAs5AhJv0d8JOHDroFM7m5UZGPJy6exmwXdpoibioV1Xj
	2BiYi3Vb/z4wrGW3WAXqzlWU35zgS3Qs48AD0tON6OLDBrHRTWlKokA4OVHfkUnmvxG/
	e6v8XZWli1KFCbGZTwEpuKdkHwaYg3e9/NP9ecpgOdkIGqVLO8nrqo7UApf8JMJMzj7L
	HlmA==
X-Gm-Message-State: APjAAAWe1vd51JamXXYGY7b1QPwrrryrtBJSr0fiEKjekSRFnJpDAP6T
	XUWRUSZilkjLKyq8RH5lcu6UKt3W
X-Google-Smtp-Source: APXvYqzB5BjrTNgH24+aN3UphLhmFw1NkW29rgLhjbmYCBPyfhEgdsiC7Mnc/T6S/u/SQvlGE+T7gw==
X-Received: by 2002:a62:26c1:: with SMTP id
	m184mr66282570pfm.200.1564932620453; 
	Sun, 04 Aug 2019 08:30:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:c33:ec66:1133:5c04:a1c4?
	([2601:202:4180:c33:ec66:1133:5c04:a1c4])
	by smtp.gmail.com with ESMTPSA id
	a3sm84194945pfi.63.2019.08.04.08.30.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 04 Aug 2019 08:30:20 -0700 (PDT)
To: Dmitry Eremin-Solenikov <dbaryshkov@gmail.com>, yocto@yoctoproject.org
References: <20190728153150.9438-1-dbaryshkov@gmail.com>
	<20190728153150.9438-2-dbaryshkov@gmail.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <1ba0a774-2ad2-94a0-24cf-1ed3964f2948@gmail.com>
Date: Sun, 4 Aug 2019 08:30:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190728153150.9438-2-dbaryshkov@gmail.com>
Subject: Re: [meta-security 2/3] kernel-modsign.bbclass: add support for kernel modules signing
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
X-List-Received-Date: Sun, 04 Aug 2019 15:30:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 7/28/19 8:31 AM, Dmitry Eremin-Solenikov wrote:
> From: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
>
> Add bbclass responsible for handling signing of kernel modules.
>
> Signed-off-by: Dmitry Eremin-Solenikov <dmitry_eremin-solenikov@mentor.com>
> ---
>  meta-integrity/classes/kernel-modsign.bbclass | 29 +++++++++++++++++++
>  .../data/debug-keys/privkey_modsign.pem       | 28 ++++++++++++++++++
>  .../data/debug-keys/x509_modsign.crt          | 22 ++++++++++++++
>  3 files changed, 79 insertions(+)
>  create mode 100644 meta-integrity/classes/kernel-modsign.bbclass
>  create mode 100644 meta-integrity/data/debug-keys/privkey_modsign.pem
>  create mode 100644 meta-integrity/data/debug-keys/x509_modsign.crt
>
> diff --git a/meta-integrity/classes/kernel-modsign.bbclass b/meta-integrity/classes/kernel-modsign.bbclass
> new file mode 100644
> index 000000000000..1e4d94b79091
> --- /dev/null
> +++ b/meta-integrity/classes/kernel-modsign.bbclass
> @@ -0,0 +1,29 @@
> +# No default! Either this or MODSIGN_PRIVKEY/MODSIGN_X509 have to be
> +# set explicitly in a local.conf before activating kernel-modsign.
> +# To use the insecure (because public) example keys, use
> +# MODSIGN_KEY_DIR = "${INTEGRITY_BASE}/data/debug-keys"
> +MODSIGN_KEY_DIR ?= "MODSIGN_KEY_DIR_NOT_SET"
> +
> +# Private key for modules signing. The default is okay when
> +# using the example key directory.
> +MODSIGN_PRIVKEY ?= "${MODSIGN_KEY_DIR}/privkey_modsign.pem"
> +
> +# Public part of certificates used for modules signing.
> +# The default is okay when using the example key directory.
> +MODSIGN_X509 ?= "${MODSIGN_KEY_DIR}/x509_modsign.crt"
> +
> +# If this class is enabled, disable stripping signatures from modules
> +INHIBIT_PACKAGE_STRIP = "1"
> +
> +do_configure_prepend() {

This is being pulled in with every configure task and causing parsing
issues.

I changed it to "kernel_do_configure_prepend" and that fixed the issue I
was seeing.

things appear to be still working, Can you double check.

- armin


> +    if [ -f "${MODSIGN_PRIVKEY}" -a -f "${MODSIGN_X509}" ]; then
> +        cat "${MODSIGN_PRIVKEY}" "${MODSIGN_X509}" \
> +            > "${B}/modsign_key.pem"
> +    else
> +        bberror "Either modsign key or certificate are invalid"
> +    fi
> +}
> +
> +do_shared_workdir_append() {
> +    cp modsign_key.pem $kerneldir/
> +}
> diff --git a/meta-integrity/data/debug-keys/privkey_modsign.pem b/meta-integrity/data/debug-keys/privkey_modsign.pem
> new file mode 100644
> index 000000000000..4cac00ae303a
> --- /dev/null
> +++ b/meta-integrity/data/debug-keys/privkey_modsign.pem
> @@ -0,0 +1,28 @@
> +-----BEGIN PRIVATE KEY-----
> +MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDEWsJjB2pA5Ih6
> +EelXvVjwWY1ix1azMciNRNPPQN1AMXF0K/VUkfOYbaPajg1cQYEf9gk3q7OZ5Axk
> +UY/e5piZORaPcsmj0lV0L+NSlRYydR5M/QxtEz26585FgqRGdAe6umStPmVKdqa2
> +d68O4PgQgJJtVuz6ndm+0uNEUDCVLwhkGQSwNB3qBbZAUX9escZ/a8eUiBfMYKaO
> +k8JRyM+2br9dgpTFg4UfBYexgNSQo8g5TIBGc8KgQiKCuFj1fQEhV5z4RusHthjc
> +NYXa3RHmdclxyrGeYr5ZRc47HqE1gd5NDR0WeHn4C4YKcfK1rZZz/2+6hfsIRfGx
> +6cQKk23hAgMBAAECggEAJ0ULiWirPG04SkmYxF5vEiqm1zGMymvTc0VnoxSS60q4
> +KQa9mvtRn5OV6JjuXRwQqga30zV4xvdP7yRMxMSTkllThL7tSuE/C+yj5xlABjlc
> +JQOa35mwh9fibg5xslF0Vkj+55MKCPlv4CBRl4Uwt4QvRMTUwk6dhMeCgmATR1J1
> +2/7AipjtfFYreDx7sLbRVvSzUhmZS0iCbNOhtTWPLNW+9YKHTOffKa04HzNtnAXq
> +OjJ0IRZD/C6LfkBUsnHg2eEiA97QXh/Srsl9nc8DaUK1IXRywEdmYIoNMWMav2Hm
> +RO8kkU30BqKW+/EO2ZbH2GmkxvwWd0ocBnLC3FRWEQKBgQDu4T8CB3YsOcVjqem4
> +iBlaSht/b46YQc7A1SOqZCimehmmXNSxQOkapIG3wlIr5edtXQA+xv09+WrproUB
> +SjAnqaH6pYeCvbNlY5k344gtYs+Kco2rq5GYa+LumAeX2Sam8F7u4LxvEogCecX7
> +e4rnG3lt3AVuuRE7zpCQtaWcJQKBgQDSbUvea9pcYli9pssTl+ijQKkgG9DdaYbA
> +I5w5bY1TPYZ/Ocysljefv/ssaHFh4DPxE1MQ5JHwZgZRo1EICxxYzGsLjyR/fmjz
> +1c/NJlTtalCNtLvWaf7b02ag/abnP8neiSpLL5xqHvGo5ikWwgYQD+9HVKGvL3S1
> +kI7x/ziADQKBgQCqFbkuMa/jh3LTJp0iZc1fa1qu3vhx0pFq3Zeab9w9xLxUps5O
> +MwCGltFBzNuDJBwm00wkZrzTjq6gGkHbjD5DT1XkyE13OqjsLQFgOOKyJiPN2Qik
> +TfHJzC91YMwvQ09xF78QaPXiRBiRYrEkAXACY56PKVS45I6vvcFTN/Ll/QKBgA9m
> +KDMyuVwhZlUaq6nXaBLqXHYZEwPhARd2g6xANCNvUTRmSnAm3hM2vW7WhdWfzq1J
> +uL53u6ZYEQZQaVGpXn2xF/RUmVsrKQsPDpH4yCZHrXVxUH20bA4yPkRxy5EIvgEn
> +EI1IAq5RbWXq0f70W/U49U3HB74GPwg6d/uFreDRAoGAN+v9gMQA6A1vM7LvbYR8
> +5CwwyqS/CfI9zKPLn53QstguXC/ObafIYQzVRqGb9lCQgtlmmKw4jMY0B/lDzpcH
> +zS8rqoyvDj/m7i17NYkqXErJKLRQ0ptXKdLXHlG0u185e7Y5p4O3Z5dk8bACkpHi
> +hp764y+BtU4qIcVaPsPK4uU=
> +-----END PRIVATE KEY-----
> diff --git a/meta-integrity/data/debug-keys/x509_modsign.crt b/meta-integrity/data/debug-keys/x509_modsign.crt
> new file mode 100644
> index 000000000000..5fa2a9062a89
> --- /dev/null
> +++ b/meta-integrity/data/debug-keys/x509_modsign.crt
> @@ -0,0 +1,22 @@
> +-----BEGIN CERTIFICATE-----
> +MIIDnjCCAoagAwIBAgIUUqmBj5Q8edHMMTXsoGVGEEKdwV4wDQYJKoZIhvcNAQEL
> +BQAwZzEqMCgGA1UEAxMhbWV0YS1zZWN1cml0eSBtb2R1bGVzIHNpZ25pbmcga2V5
> +MRQwEgYDVQQKEwtleGFtcGxlLmNvbTEjMCEGCSqGSIb3DQEJARYUam9obi5kb2VA
> +ZXhhbXBsZS5jb20wIBcNMTkwNzI3MjIzOTA3WhgPMjExOTA3MjcyMjM5MTVaMGcx
> +KjAoBgNVBAMTIW1ldGEtc2VjdXJpdHkgbW9kdWxlcyBzaWduaW5nIGtleTEUMBIG
> +A1UEChMLZXhhbXBsZS5jb20xIzAhBgkqhkiG9w0BCQEWFGpvaG4uZG9lQGV4YW1w
> +bGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAxFrCYwdqQOSI
> +ehHpV71Y8FmNYsdWszHIjUTTz0DdQDFxdCv1VJHzmG2j2o4NXEGBH/YJN6uzmeQM
> +ZFGP3uaYmTkWj3LJo9JVdC/jUpUWMnUeTP0MbRM9uufORYKkRnQHurpkrT5lSnam
> +tnevDuD4EICSbVbs+p3ZvtLjRFAwlS8IZBkEsDQd6gW2QFF/XrHGf2vHlIgXzGCm
> +jpPCUcjPtm6/XYKUxYOFHwWHsYDUkKPIOUyARnPCoEIigrhY9X0BIVec+EbrB7YY
> +3DWF2t0R5nXJccqxnmK+WUXOOx6hNYHeTQ0dFnh5+AuGCnHyta2Wc/9vuoX7CEXx
> +senECpNt4QIDAQABo0AwPjAMBgNVHRMBAf8EAjAAMA8GA1UdDwEB/wQFAwMHgAAw
> +HQYDVR0OBBYEFDa35X9LnPlrd76inh/cYgeXh6X4MA0GCSqGSIb3DQEBCwUAA4IB
> +AQBTPTh7zY9BrfZW9Izk9JSZYNigwUDwjrhNBSLr5NKi2A/LmZ0jjdCDkwaCn5io
> +xrAq5oxPCAkwlzKwY2ootcL3+En4Pq2e5U+n9kRrpDpKKiR5/0S0d9vpgg4eZR0R
> +kxqE9APCQ5SFU3PgnJ5H5y2SPXzle3bgUsWxNGD81zXFn5clJj4XHvJDWTQ/jG7C
> +FTQ1o1HXtzda4EmKIzrSU/ayVbpPg5fPEBJjk/hHPT45kfzVZBuxwBLXVbe/YyWi
> +NTFWCbJwjZwVRKrsQ3HFpYMWvugtcsSHo7vGi06FvUHcS2sUZH5sFn7hulcIGICt
> +EztTO8Q+yhZujZbmEyJmxqZv
> +-----END CERTIFICATE-----


