Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D99BE00D0C; Tue, 25 Oct 2016 23:41:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F81E00CF5
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 23:41:32 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id q124so13554366itd.1
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 23:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=nl3C6wgUDmbcbSvbWVUyH5TXecPzUDfvkvr4e7wfCrE=;
	b=fwW6M8hwtHmDnItmH38W8cNIfys9ho+qZPnoza+HrV2cko5dkGKq5UjL5z7WffcmbT
	Ci0AnWru6OdLsI9fjFGPhCFfbuMIDnxP1Uuwou+49bMKp+cIURSj6nqcUNRRxjNd+1rh
	jSIrd35DfMtejhAG8QY0PSAx7QLJB+rTYBDMSSwKHbGNwUsgp22fljojbNqbSG4AvuTG
	f1qsgdeZ15yMFUWmmM9Y8E/eiTJhTnodE7ZnOdOLa8OvwXdBHUPWYSK8n/M66Wuc+5hm
	srD3kU9IBFcpd9M3u69gYsOIn6b+Brhj3vPplsg4zILb6eeBmf7xDlrhz17+z3BN8ddN
	rsbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=nl3C6wgUDmbcbSvbWVUyH5TXecPzUDfvkvr4e7wfCrE=;
	b=HpNH9RnB1pOQpDP5Z1/WEuAzWSu3iMkHbNRMjrpjvrrD5+bXdq9og+pyE0o7D7AC6/
	tHMmo+3SGPLZ+L1ipt4wngxrZVyXNOMJO2SI9NID/rDsZTyHSlQPapQDqIde4s2Ln+W5
	rUAy8Sp/1cAPnDI+lJKqldRCNx7wUh8pIkGuTT1TZ9meuxNqIzyXR1AJTT85GDLqf1gi
	eFKi2ns+c0c+orvODvvlW+a+uWu9GF/H4kowHB2ZdD15hbnqdGZ+aOH/UMREpoqP+uVk
	FbpF2SlcdTdr59BeBx/z08HFQtNYeWeZk/Zgh5wB6YB3hAVcXzIsKTqiw6kXtjV2mbVa
	ew6w==
X-Gm-Message-State: ABUngvcmIzjSPvSf/AgSEKqTb7hyPXl+BSXioVm7nV73wq6cSSAiz60EJC9MvFsSQxGj/GC3
X-Received: by 10.36.184.1 with SMTP id m1mr1028009ite.24.1477464091331;
	Tue, 25 Oct 2016 23:41:31 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8D3DA.dip0.t-ipconnect.de. [93.232.211.218])
	by smtp.gmail.com with ESMTPSA id
	i184sm468926itf.15.2016.10.25.23.41.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Oct 2016 23:41:30 -0700 (PDT)
Message-ID: <1477464087.2887.22.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: "Blaettler, Michael" <michael.blaettler@siemens.com>
Date: Wed, 26 Oct 2016 08:41:27 +0200
In-Reply-To: <347AAC56F29ACA4EA31B39C2109A6FE702F13188@DEFTHW99EH2MSX.ww902.siemens.net>
References: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
	<1477314859.21499.20.camel@intel.com>
	<347AAC56F29ACA4EA31B39C2109A6FE702F12C61@DEFTHW99EH2MSX.ww902.siemens.net>
	<1477387933.21499.74.camel@intel.com>
	<347AAC56F29ACA4EA31B39C2109A6FE702F13188@DEFTHW99EH2MSX.ww902.siemens.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: curl-native and ca-bundle
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
X-List-Received-Date: Wed, 26 Oct 2016 06:41:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-10-26 at 06:20 +0000, Blaettler, Michael wrote:
> Hi Patrick
> 
> I just checked the source code of curl.
> 
> In acinclude.m4 on line 2560, you'll find:
> dnl CURL_CHECK_CA_BUNDLE
> dnl -------------------------------------------------
> dnl Check if a default ca-bundle should be used
> dnl
> dnl regarding the paths this will scan:
> dnl /etc/ssl/certs/ca-certificates.crt Debian systems
> dnl /etc/pki/tls/certs/ca-bundle.crt Redhat and Mandriva
> dnl /usr/share/ssl/certs/ca-bundle.crt old(er) Redhat
> dnl /usr/local/share/certs/ca-root-nss.crt FreeBSD
> dnl /etc/ssl/cert.pem OpenBSD, FreeBSD (symlink)
> dnl /etc/ssl/certs/ (ca path) SUSE
> 
> Later in the function there's a for loop, searching every path for the certificate-chain (if --with-ca-bundle is not set).
> for a in /etc/ssl/certs/ca-certificates.crt \
>          /etc/pki/tls/certs/ca-bundle.crt \
>          /usr/share/ssl/certs/ca-bundle.crt \
>          /usr/local/share/certs/ca-root-nss.crt \
>          /etc/ssl/cert.pem \
>          "$cac"; do
>     if test -f "$a"; then
>         ca="$a"
>         break
>     fi
> done
> 
> Regarding this configuration script, removing --with-ca-bundle in curl-native should not cause any problems.

Quite the opposite, it leads exactly to the problem that I feared.

Suppose you build on distro foo where the configure script finds and
thus hardcodes in the binary ca=/etc/ssl/certs/ca-certificates.crt. Then
you build on distro bar which has /etc/pki/tls/certs/ca-bundle.crt
instead. When using uninative, it is likely that compiling curl-native
anew will be skipped and instead curl-native gets installed from the
sstate that was prepared on distro foo. The result is a curl-native that
doesn't have SSL certificates and thus https will not work.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




