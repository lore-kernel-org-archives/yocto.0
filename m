Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D07BCE00B81; Tue,  9 Apr 2019 02:55:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B968AE00AD5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 02:55:51 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id f6so13740401iop.3
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 02:55:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3NvIMgD5U1Sx7kOSYJEOjmYWZ8SlnOii5xygkcIHeTE=;
	b=lNDRSJbgjLLy4GfiLDf/AVFask/+7WDzadSS9+MpZyBxTFLWfiwBMib4Owg+R2j6l7
	BvwOdTn1cIVPQLjZl0+ToVIoCvrX0T9hv+jTgodN4hbtCeizf9HrUpuKtJNmEqJp6yPj
	Ed9Pprs3rpu/NkWJOG78ckmy6yvPMR3SSBqsbkaUqwATK2LQ+qWWMdHRvnaeSdh7grQA
	+WzmBX223VKPaa/D0J2Mei9AR5/CtMyy1wJXhmkkmXUsxzrHwHmpZAAO8j1uU+y3XDzu
	JmBjfWh81FfAwwG9yWgx0JOkacx8C3n96oPHl3aTRo7PpsL7u6FhC1yh/s9zEpjoqBdA
	UPOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3NvIMgD5U1Sx7kOSYJEOjmYWZ8SlnOii5xygkcIHeTE=;
	b=Cai6dQ/RwFS/UNzvAOJoi9I3afuiMfTtKRreymTcAjxeJojjcbOD7myCQOhmKMxijp
	q9wFksqDbv753pu7Q3eXnsJ6U4yGSIcdpMvoIiBUvKZFjVcxai7FCRJT248t76/EUFjj
	sgZwY8DfE35KMUGWS8Oo6Jnm2ST7eL2aHpyvpqiLJ0BG1kjFmQplSWiEQ6Nv/7o87j0R
	33nfOml45mNU8QTXZtNbFn3dVmm3kna6guBzT9orkKBAHDkqBzOnZIK4h98R/NVk7mW2
	xuKkV/U6f4otQK/L3VeyuPyKYjjEwb40OUJZsuMXukz30JV8dzBAL8w1YmdsRlSLAp0O
	0hkA==
X-Gm-Message-State: APjAAAXSJGMqiaDXq59I1IErLc+2GHuQdQ0Vq7VZpVUOgaQpYILsJq+B
	EjzymnPbnmcAYS2WFK7ojHh9ljohSWSZO7bg9EkdV05CbfI=
X-Google-Smtp-Source: APXvYqwC1VZIK9UQwURCwegJUjq9Hd/wugf9c8e7nMmEbn01ZywAYsVdHB/vPKvLYBmcaoNiC2E2ac66Ljt6hTKWUaY=
X-Received: by 2002:a6b:7112:: with SMTP id q18mr9849466iog.5.1554803750854;
	Tue, 09 Apr 2019 02:55:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190404115301.1820604a@phoenix.invalid>
	<CAJTo0LbwKobcEg8qp0NY-EaEtkgyBHLoVNSBH41brjoOJPw_Vw@mail.gmail.com>
	<20190409094450.6a180445@phoenix.invalid>
In-Reply-To: <20190409094450.6a180445@phoenix.invalid>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Apr 2019 10:55:38 +0100
Message-ID: <CAJTo0LY2nx8PUBywRwBtFv2otHq5OKPBYv9fpuvpftnCe0Zp7w@mail.gmail.com>
To: Guenther Meyer <d.s.e@sordidmusic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Metadata is missing in some Python packages
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
X-List-Received-Date: Tue, 09 Apr 2019 09:55:52 -0000
Content-Type: text/plain; charset="UTF-8"

Specifically for twisted, do you mean these files:

python3-twisted-core:
        /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/PKG-INFO
        /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/SOURCES.txt
        /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/dependency_links.txt
        /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/entry_points.txt
        /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/not-zip-safe
        /usr/lib/python3.7/site-packages/Twisted-18.4.0-py3.7.egg-info/requires.txt

Ross

On Tue, 9 Apr 2019 at 08:49, Guenther Meyer <d.s.e@sordidmusic.com> wrote:
>
> On Fri, 5 Apr 2019 18:17:43 +0100
> "Burton, Ross" <ross.burton@intel.com> wrote:
>
> > What metadata in particular do you refer to?
>
> The *egg-info folders and everything contained in them, especially
> the files PKG-INFO or METADATA. The recipes are basically identical.
>
> Some packages have it, some not:
>
> Django-2.1.7-py3.5.egg-info
> EasyProcess-0.2.5-py3.5.egg-info
> HelperSDT
> HelperSDT-0.1.0-py3.5.egg-info
> OpenSSL
> PyHamcrest-1.9.0-py3.5.egg-info
> PySocks-1.6.8-py3.5.egg-info
> PyVirtualDisplay-0.2.1-py3.5.egg-info
> Twisted-0.0.0-py3.5.egg-info
> aioredis
> aioredis-1.2.0-py3.5.egg-info
> asgiref
> asgiref-2.3.2-py3.5.egg-info
> asn1crypto
> asn1crypto-0.24.0-py3.5.egg-info
> async_timeout
> async_timeout-3.0.1-py3.5.egg-info
> attr
> attrs-18.1.0-py3.5.egg-info
> autobahn
> autobahn-19.1.1-py3.5.egg-info
> behave
> behave-1.2.6-py3.5.egg-info
> can
> certifi
> certifi-2018.8.13-py3.5.egg-info
> cffi
> cffi-1.11.5-py3.5.egg-info
> channels
> channels-2.1.7-py3.5.egg-info
> channels_redis
> channels_redis-2.3.2-py3.5.egg-info
> chardet
> chardet-3.0.4-py3.5.egg-info
> click
> click-6.7-py3.5.egg-info
> constantly
> constantly-15.1.0-py3.5.egg-info
> cryptography
> cryptography-2.3-py3.5.egg-info
> daphne
> daphne-2.2.5-py3.5.egg-info
> django
> django_model_utils-3.1.2-py3.5.egg-info
> easyprocess
> hamcrest
> hiredis
> hiredis-1.0.0-py3.5.egg-info
> idna
> idna-2.7-py3.5.egg-info
> incremental
> incremental-17.5.0-py3.5.egg-info
> model_utils
> msgpack
> msgpack_python-0.5.6-py3.5.egg-info
> ndg
> ndg_httpsclient-0.5.1-py3.5.egg-info
> parse-1.8.4-py3.5.egg-info
> parse_type
> parse_type-0.4.2-py3.5.egg-info
> ply
> ply-3.11-py3.5.egg-info
> psutil
> psutil-5.4.6-py3.5.egg-info
> psycopg2
> psycopg2-2.7.5-py3.5.egg-info
> pyOpenSSL-18.0.0-py3.5.egg-info
> pyasn1
> pyasn1-0.4.4-py3.5.egg-info
> pycparser
> pycparser-2.18-py3.5.egg-info
> python_can-2.2.1-py3.5.egg-info
> pytz
> pytz-2018.5-py3.5.egg-info
> pyvirtualdisplay
> requests
> requests-2.19.1-py3.5.egg-info
> selenium
> selenium-3.141.0-py3.5.egg-info
> service_identity
> service_identity-18.1.0-py3.5.egg-info
> setuptools
> setuptools-40.0.0-py3.5.egg-info
> six-1.11.0-py3.5.egg-info
> twisted
> txaio
> txaio-18.8.1-py3.5.egg-info
> urllib3
> urllib3-1.23-py3.5.egg-info
> websocket
> websocket_client-0.54.0-py3.5.egg-info
> wrapt
> wrapt-1.10.11-py3.5.egg-info
> zope
> zope.interface-4.5.0-py3.5.egg-info
>
>
> --
> Summer-Hack-Session 2.8
> http://session.pestilenz.org/session2/
>

