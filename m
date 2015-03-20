Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2D15E0076B; Fri, 20 Mar 2015 08:38:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8BC8E003FA
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 08:38:12 -0700 (PDT)
Received: by igbqf9 with SMTP id qf9so21086480igb.1
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 08:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=X4SBHz1a+RTn/kboaVJMrVJItBMOL5P6Br/XLfHp1Uw=;
	b=B4pN2J47POMY0jL6q7bTkiSEm8xONir2fwLjF6QbAkfcTYRUCLQsqrGbFtGeo4nR1M
	+85872kw7kNvKhj8wpfVIUrPSqYFwL3PUlKKW+6P79jRReG4oHHXajIzC2lkWt5twP6+
	ww8Ep2n768xoL4E997HwCWya93G2KKbTkn0nyqZG0wfOJDlYf0V94wX2PTEZZze/xxQ3
	6Vwii0OPzUwlXsCgnUvBixxo+fWEvEi6mafYk2pUcU4tVYJHfUad7N+hvetusixj7kyS
	bQNseix9ALoxp05aYnmvqp34fWAMxYiWfpi3dtcd+9559LkwhSeAlJL3IUhiDTMYtEFh
	mMgA==
X-Received: by 10.43.14.199 with SMTP id pr7mr4936279icb.3.1426865892159;
	Fri, 20 Mar 2015 08:38:12 -0700 (PDT)
Received: from [192.168.141.85] ([67.55.34.223])
	by mx.google.com with ESMTPSA id p2sm3375630ioi.0.2015.03.20.08.38.11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Mar 2015 08:38:11 -0700 (PDT)
Message-ID: <550C3EE1.3050805@gmail.com>
Date: Fri, 20 Mar 2015 11:38:09 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <550C3452.2070403@gmail.com>
	<CAPhnLPBv6yZf1wAPd=WZMG6XEqLqCJBc758NcerDYJ_FLfWmZA@mail.gmail.com>
In-Reply-To: <CAPhnLPBv6yZf1wAPd=WZMG6XEqLqCJBc758NcerDYJ_FLfWmZA@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: unpacking poky-dora-10.0.4.tar.bz2
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
X-List-Received-Date: Fri, 20 Mar 2015 15:38:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/20/15 11:06, Flanagan, Elizabeth wrote:
> The directory name should be poky-dora-10.0.4. I'll fix the tarball
> ASAP. -b

Great, thanks.

