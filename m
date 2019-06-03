Return-Path: <morne.lamprecht@melangex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7BE0E00D4D; Mon,  3 Jun 2019 12:07:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.48 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1534CE00D38
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 12:07:16 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id d17so4628032wmb.3
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 12:07:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=melangex-com.20150623.gappssmtp.com; s=20150623;
	h=sender:date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=jYHD8dsMcAbdsjbQrIYjg3TuBYUk0oKaTTnmYMW4SGc=;
	b=QubXGOlljLASKazyUPKIErayhPDoxLP5MWdRB+3SwJaQBTJ4Fr6wBk9/MAIqifp1Tc
	FeFRgOIsDgNkffV4waCJVGyXcUqSqcRvfwRiZpOnocgQ8eNIyd+1aRZgyfIEv+ps8UCT
	c2cYCtWzTSo1/ZCianj0MMc27+WCE10SrM8aDRGnnXuSR8iDI88BYi6wTc+4maisCV8c
	cOBw6o4LqURdoAVYffi6h0I6WXh9+wFPexAI8p/YGfSCoCmRXJWYFpyRsuPTHNDgIf4f
	RLvCyfEsZ8fbNRk291YcxWcRKbea7TazHUyHOkhngqzW+LrDAXhq22S49d8T1o5MgzRX
	C7Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:date:from:to:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=jYHD8dsMcAbdsjbQrIYjg3TuBYUk0oKaTTnmYMW4SGc=;
	b=AnM1tlb4h4kS9oy5fXfOIvSuGQMTJw+e82nGQo/ImWKnAHCQ3OvUPhAeV7r4+coT8R
	p33fnp5sC4Oc5pU5+kSQ43rw1RcFAMYNvT/oC5TOmFGnXxUzVX4t6DS/1m4wSiWmmCX7
	5a24mSNeLO3NvDUHhMje5LH7HNupgrUGkQd4u3nje5gfHDRNIGxVEiUA9bWPwhKzjtyy
	rOG6dykiDET/WV0psbQtj1a0Y7SKt+K5MByO4A55RlJdIPXEJOXeU09FnZkiKNsWH8PY
	kBhnaokER2ed/agSsPdmVcdI8mZO0lPuv3baIsT0aP+EajJzNzYzd2D4b0N/K64fZuIk
	RfrQ==
X-Gm-Message-State: APjAAAUvJ7yxLtjLNqOVuVgBlqZudTd6P1m83vxitnS/1YbZwhESxC0w
	a6BmkErmq40x11iIIJfelTMbM/04hkc=
X-Google-Smtp-Source: APXvYqyDhjgZFaES8gClCSOPO+JugshJknMOKQ3hJ7geLHTRD5GCNmSKBWkO2aNYEU4dgXendjpgTw==
X-Received: by 2002:a1c:9957:: with SMTP id b84mr15913525wme.165.1559588835644;
	Mon, 03 Jun 2019 12:07:15 -0700 (PDT)
Received: from localhost ([209.203.60.70]) by smtp.gmail.com with ESMTPSA id
	f2sm16071640wrq.48.2019.06.03.12.07.14 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 03 Jun 2019 12:07:14 -0700 (PDT)
Sender: =?UTF-8?Q?Morn=C3=A9_Lamprecht?= <morne.lamprecht@melangex.com>
Date: Mon, 3 Jun 2019 21:07:11 +0200
From: =?iso-8859-1?Q?Morn=E9?= Lamprecht <morne@linux.com>
To: yocto@yoctoproject.org
Message-ID: <20190603190711.GB24026@archworkstation>
Mail-Followup-To: yocto@yoctoproject.org
References: <CAGAf8Lxb88uf_zw0Hzkc74zSD3GG4zQh-UwzQmBhMTLCxqRd5Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8Lxb88uf_zw0Hzkc74zSD3GG4zQh-UwzQmBhMTLCxqRd5Q@mail.gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: Potential (?) systemd YOCTO problems
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
X-List-Received-Date: Mon, 03 Jun 2019 19:07:17 -0000
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Jun 03, 2019 at 07:38:47PM +0200, Zoran Stojsavljevic wrote:
>Still. I expected to see the following on the 
>target (my BBB): /etc/init.d/networking script, 

I would have a look at the values of 
DISTRO_FEATURES_BACKFILL_CONSIDERED as well as 
VIRTUAL-RUNTIME_initscripts.

My understanding is that if the former is set to 
"sysvinit", it causes any redundant SysVinit 
scripts to be removed, and further, that if the 
latter is set to "", then all initscripts are 
removed from the image altogether.

		- Morné

