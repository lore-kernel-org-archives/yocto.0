Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8C71E00A38; Thu, 20 Jul 2017 21:37:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.44 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.44 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f44.google.com (mail-oi0-f44.google.com
	[209.85.218.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 083E7E0090A
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 21:37:56 -0700 (PDT)
Received: by mail-oi0-f44.google.com with SMTP id q4so43429489oif.1
	for <yocto@yoctoproject.org>; Thu, 20 Jul 2017 21:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=EHLIs+fKW+fqqDdYZ6NVlF1tGQFS0Zn3vmAxwpahctY=;
	b=STmxIOs0AdILJETIBFC81jOJ+vrZrrNfAtZ2SANLbm46oJAX7TQQJwgOMMorBq1UV5
	mCWdM3gQppf7ON2zPJ6m9x3V6rlgc9xZ0u1YClcIO8ubOJR+Bd9+yAUX2einZZmKU/q5
	b4pxui3YU5jX+kzAmh+CaYxTufo8nXvOVRrPNSj7ILqzm6s+F7J48qzHs/8z6aRrtq0k
	tFa7mHfVsipclVk6M5J3b4ApWqmc2tjz4MC3hzV6npq4VKsW92qdtsj2MDjl08xw/WqS
	/Lou/ZsJYdQygWu7E/xZYcW01sL453RBPAKJ9Dpb4+eRICnHvCsb97+5GhL/DJGSEviP
	yByw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=EHLIs+fKW+fqqDdYZ6NVlF1tGQFS0Zn3vmAxwpahctY=;
	b=RBD8wkqgJk36GwtXB6rGghi5kmO7miH8AhJoxfEM5LaNj39uwVtmZrR1SUr3ZWqnhD
	c+QF3jfE7ecj+8CeE38+T9UZqSBeBZfhWH6mk3/1sZsqbXaDvPmC/slzRY/w0b0cw9/0
	GYNUt5xCz//krhY+NYUemt3AIDJD/2jY+vuSwoMjPRRgEPjJLCWbCG7rgdJo0U4MR2Bx
	lcmnQYVNEShFfe65x/eRkkMnY6E0SHatIjRmRmVKOl6mHyttL3pxWjwHjk8O2nS0qlGI
	Sq1SWXbwplUSN9GmipaCHiSP/gY4H+EfSoxAzFG2WX1gMZUfOohmsVbCeaSjOJzP4TxX
	ji3A==
X-Gm-Message-State: AIVw110nDNK4owQP5TRlKrJXhXGLEmlISvNoaLkF5cZmbE3G8dN05PNE
	/bpY+FBFghQbKNMB
X-Received: by 10.202.4.208 with SMTP id 199mr1000758oie.182.1500611875861;
	Thu, 20 Jul 2017 21:37:55 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8FE14.dip0.t-ipconnect.de. [93.232.254.20])
	by smtp.gmail.com with ESMTPSA id
	v195sm1708760oif.54.2017.07.20.21.37.52
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Jul 2017 21:37:54 -0700 (PDT)
Message-ID: <1500611869.8415.11.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Fri, 21 Jul 2017 06:37:49 +0200
In-Reply-To: <1628a1f3-ec46-1144-1d5e-8242c8672edd@gmail.com>
References: <1500447463.5689.81.camel@intel.com>
	<2ad0b40b-b201-9974-7f28-10efc611ffb1@windriver.com>
	<1628a1f3-ec46-1144-1d5e-8242c8672edd@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: dynamic layer dependencies in meta-security
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
X-List-Received-Date: Fri, 21 Jul 2017 04:37:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-07-20 at 14:39 -0700, akuster808 wrote:
> > I would certainly caution against dynamic layerdepends/layerrecommends and
> > instead focus on listing everything between what is required and what you want
> > to add in addition -- then using the meta-freescale approach of only extending
> > (the recommends) when present.

FWIW, the meta-freescale approach has been superseeded by
BBFILES_DYNAMIC.

> This appears to be more beneficial in a  bbappends than a recipe needing 
> a package from another layer.

BBFILES_DYNAMIC can be used for both .bb and .bbappend files.

In refkit, I ended up just using it for .bbappend files:
https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/conf/layer.conf#L7

        # All our .bbappends for other layers are in a separate
        # "bbappends/<layer>" hierarchy. We activate only those
        # bbappends for which the layer they apply to is actually
        # present.
        #
        # Sorted by layer path to keep related layers together.
        BBFILES_DYNAMIC += " \
        clang-layer:${LAYERDIR}/bbappends/meta-clang/*/*/*.bbappend \
        flatpak:${LAYERDIR}/bbappends/meta-flatpak/*/*/*.bbappend \
        
For recipes, I wanted to have a bit more flexibility:
- let developers decide from where they get the dependency - the
  well-known layer or a copy elsewhere
- let recipes decide which features they enable based on which
  dependencies are available
        
Also, "bitbake foo" should result in an error about "dependency bar
required for foo not found", not a blunt "nothing provides foo". With
BBFILES_DYNAMIC for .bb files one only gets the latter.

Here's how it is defined what's available:
https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/conf/layer.conf#L51
        
                # There are multiple different ways for providing some of the
                # dependencies. Here we assume that the dependencies are available if
                # the layers that the refkit distro takes them from are present.
                HAVE_META_OE = "${@ bb.utils.contains('BBFILE_COLLECTIONS', 'openembedded-layer', 'True', 'False', d) }"
                HAVE_ATOP ??= "${HAVE_META_OE}"
            HAVE_CRYPTSETUP ??= "${HAVE_META_OE}"
            ...

And here's how it is used:
https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/recipes-images/images/initramfs-framework-refkit-dm-verity.bb#L22

        python () {
            if not oe.types.boolean(d.getVar('HAVE_CRYPTSETUP') or '0'):
                raise bb.parse.SkipRecipe('cryptsetup dependency not available')
        }


-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




