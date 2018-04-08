Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B44C0E00AF2; Sun,  8 Apr 2018 03:03:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D7E9E008E4
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2018 03:03:23 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Apr 2018 03:03:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,423,1517904000"; d="scan'208";a="189675088"
Received: from anmitta2-mobl1.gar.corp.intel.com (HELO [10.249.73.218])
	([10.249.73.218])
	by orsmga004.jf.intel.com with ESMTP; 08 Apr 2018 03:03:22 -0700
To: Mostafa Farzane <farzanemostafa@yahoo.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
References: <674400918.88037.1523083601988.ref@mail.yahoo.com>
	<674400918.88037.1523083601988@mail.yahoo.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <355c797a-a34b-2326-62bf-ca503edc82f5@intel.com>
Date: Sun, 8 Apr 2018 18:03:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <674400918.88037.1523083601988@mail.yahoo.com>
Subject: Re: Cannot add libsrtp to yocto image
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
X-List-Received-Date: Sun, 08 Apr 2018 10:03:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/07/2018 02:46 PM, Mostafa Farzane wrote:
> Hi,
> I need to add libsrtp to my yocto image. So I added libsrtp to
> "IMAGE_INSTALL". But I faced the following errors:
> 
> Unknown package 'libsrtp'.
> 
> Collected errors:
>  * opkg_solver_install: Cannot install package libsrtp.

That is because there's no package named libsrtp. Please see:

https://wiki.yoctoproject.org/wiki/Technical_FAQ#I.27ve_included_a_package_in_my_image_but_files_I_expect_to_be_there_are_missing.2C_what.27s_the_issue.3F


$ oe-pkgdata-util list-pkg-files -p libsrtp
libsrtp-dbg:
libsrtp-dev:
        /usr/include/srtp/aes.h
        /usr/include/srtp/aes_cbc.h
        /usr/include/srtp/aes_gcm_ossl.h
        /usr/include/srtp/aes_icm.h
        /usr/include/srtp/aes_icm_ossl.h
        /usr/include/srtp/alloc.h
        /usr/include/srtp/auth.h
        /usr/include/srtp/cipher.h
        /usr/include/srtp/config.h
        /usr/include/srtp/crypto.h
        /usr/include/srtp/crypto_kernel.h
        /usr/include/srtp/crypto_math.h
        /usr/include/srtp/crypto_types.h
        /usr/include/srtp/cryptoalg.h
        /usr/include/srtp/datatypes.h
        /usr/include/srtp/ekt.h
        /usr/include/srtp/err.h
        /usr/include/srtp/getopt_s.h
        /usr/include/srtp/gf2_8.h
        /usr/include/srtp/hmac.h
        /usr/include/srtp/integers.h
        /usr/include/srtp/kernel_compat.h
        /usr/include/srtp/key.h
        /usr/include/srtp/null_auth.h
        /usr/include/srtp/null_cipher.h
        /usr/include/srtp/prng.h
        /usr/include/srtp/rand_source.h
        /usr/include/srtp/rdb.h
        /usr/include/srtp/rdbx.h
        /usr/include/srtp/rtp.h
        /usr/include/srtp/rtp_priv.h
        /usr/include/srtp/sha1.h
        /usr/include/srtp/srtp.h
        /usr/include/srtp/srtp_priv.h
        /usr/include/srtp/stat.h
        /usr/include/srtp/ut_sim.h
        /usr/include/srtp/xfm.h
libsrtp-staticdev:
        /usr/lib64/libsrtp.a

