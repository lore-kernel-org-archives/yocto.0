Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3357AE00C71; Fri, 30 Nov 2018 08:28:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
	[209.85.215.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 486D5E00C31
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2018 08:28:37 -0800 (PST)
Received: by mail-pg1-f177.google.com with SMTP id w6so2714206pgl.6
	for <yocto@yoctoproject.org>; Fri, 30 Nov 2018 08:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=0VfJ/6IkG5ahu9JnMOmIoQhHw8K0W3eXRNxOTPkQwPQ=;
	b=Sk8AarT3Y1Zs+yTjRDNeHC+HxwS6ouyw72QF2hWSlE+v1SzV900gdscj78xZ0aYsZP
	igVCP1E3/+vHBDhQCkvAPyKoJ+JslfSLfuTu19OULDTXhbLW9b6XX0rZzZqKptxG7Smt
	85lo3o4UDrxSwxdvzYdB608DMqaC3kZXOJXymAv/oPX+mqGVNYSm/RN4EdZQFhJucHWR
	Dfoas60xoAogQMSNE+DVcYrqD+NxWVEdjdRmri/McMGKrKG8bVzVAElgL0zk5lXqtmBM
	UGrX6bW1learp5W/SKltsn8s8Eh8bn0R2zm23BIKPO+AjSYEKnJJ3NkM5s1/d8n78xJj
	aUTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=0VfJ/6IkG5ahu9JnMOmIoQhHw8K0W3eXRNxOTPkQwPQ=;
	b=Z34zt6Fp1bxBPXtCyC8tHRXnobfAoTyaTl6jc7rHPpUs3Zi/mDIzB7n1O+GFzt6DWA
	gadOaxr27L4lCZTKLvf1yU/Z+duuSNYMjxKytNsnIJtsO+QXY0QE9HGhgq4E7XxLN7h0
	xbCphS/7bDJM55r145s7njbV92eYQXt9Ts4HfI0NjHL4IELQWBAl92AQ5xyfzrRZ82Zl
	Snfmd4cQ6VinrQ50Ap163n7BF1+mEhFzn3oR4m8xf+2jQmESDref1Hn+NG4jjtcuIAP/
	UAyhxS32GA9y0N5YmSzxefTfmiOjZn8YpSzKL5GIPCD4Km8jSN/ahrlnogAbLQE6lvfS
	1SgA==
X-Gm-Message-State: AA+aEWanNoNicPk1JkmYu8iw3XqaoUFBKufgt10Z70grMSE3S00ilVkM
	ql/M7XNW6nqh0f2zy7N9vcX3AR+LuEs=
X-Google-Smtp-Source: AFSGD/V+5Kc6XwP3znKlNgYBk3MZdj9+XIpTu30Ki5E4knxV8KDxmoI0In15b5euvYIzoHBxM1JIoA==
X-Received: by 2002:a63:d5e:: with SMTP id 30mr5385963pgn.54.1543595315851;
	Fri, 30 Nov 2018 08:28:35 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:6daa:a077:826a:8a52?
	([2601:202:4180:c33:6daa:a077:826a:8a52])
	by smtp.gmail.com with ESMTPSA id
	y1-v6sm7323097pfb.81.2018.11.30.08.28.33
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Nov 2018 08:28:34 -0800 (PST)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
	yocto@yoctoproject.org
References: <20181130153459.28202-1-schnitzeltony@gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <57d567c0-d1c8-2321-b20c-d3ce6209f064@mvista.com>
Date: Fri, 30 Nov 2018 08:28:32 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181130153459.28202-1-schnitzeltony@gmail.com>
Subject: Re: [PATCH][meta-qt4] sip: re-add 4.19
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
X-List-Received-Date: Fri, 30 Nov 2018 16:28:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 11/30/18 7:34 AM, Andreas Müller wrote:
> * Haven't tested this but it seems unlikely that python-pyqt builds properly
>   with '--sip-module PyQt5.sip' in meta-oe's sip

Why not fix the version in meta-oe?

- armin
> * I plan to move reworked sip to meta-qt5 and remove meta-oe's version
> * remove FILES_${PN} - not necessary
> * add "STRIP="" for native configure to avoid 'already stripped' warning
> * tested build of python-pyqt
>
> Signed-off-by: Andreas Müller <schnitzeltony@gmail.com>
> ---
>  recipes-qt4/recipes-python/sip_4.19.bb | 41 ++++++++++++++++++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 recipes-qt4/recipes-python/sip_4.19.bb
>
> diff --git a/recipes-qt4/recipes-python/sip_4.19.bb b/recipes-qt4/recipes-python/sip_4.19.bb
> new file mode 100644
> index 0000000..b43c2d2
> --- /dev/null
> +++ b/recipes-qt4/recipes-python/sip_4.19.bb
> @@ -0,0 +1,41 @@
> +SUMMARY = "SIP is a C++/Python Wrapper Generator"
> +HOMEPAGE = "http://www.riverbankcomputing.co.uk/sip"
> +SECTION = "devel"
> +LICENSE = "GPLv2+"
> +LIC_FILES_CHKSUM = "file://LICENSE-GPL2;md5=e91355d8a6f8bd8f7c699d62863c7303"
> +
> +inherit python-dir
> +
> +DEPENDS = "python"
> +
> +SRC_URI = "${SOURCEFORGE_MIRROR}/project/pyqt/sip/sip-${PV}/sip-${PV}.tar.gz"
> +SRC_URI[md5sum] = "be51a05065c9323b98a2ec2966c64e6a"
> +SRC_URI[sha256sum] = "014bf55f653e0d8bcc582705ef4fbd61e0859a36e959ab46d8fa060cdf0b5e27"
> +
> +BBCLASSEXTEND = "native"
> +
> +PACKAGES += "python-sip"
> +
> +do_configure_prepend_class-target() {
> +    echo "py_platform = linux" > sip.cfg
> +    echo "py_inc_dir = %(sysroot)/${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
> +    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
> +    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
> +    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
> +    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
> +    python configure.py --configuration sip.cfg --sysroot ${STAGING_DIR_HOST} CC="${CC}" CXX="${CXX}" LINK="${CXX}" STRIP="" LINK_SHLIB="${CXX}" CFLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" LFLAGS="${LDFLAGS}"
> +}
> +do_configure_prepend_class-native() {
> +    echo "py_platform = linux" > sip.cfg
> +    echo "py_inc_dir = ${includedir}/python%(py_major).%(py_minor)" >> sip.cfg
> +    echo "sip_bin_dir = ${D}/${bindir}" >> sip.cfg
> +    echo "sip_inc_dir = ${D}/${includedir}" >> sip.cfg
> +    echo "sip_module_dir = ${D}/${libdir}/python%(py_major).%(py_minor)/site-packages" >> sip.cfg
> +    echo "sip_sip_dir = ${D}/${datadir}/sip" >> sip.cfg
> +    python configure.py --configuration sip.cfg --sysroot ${STAGING_DIR_NATIVE} STRIP=""
> +}
> +do_install() {
> +    oe_runmake install
> +}
> +
> +FILES_python-sip = "${libdir}/${PYTHON_DIR}/site-packages/"


