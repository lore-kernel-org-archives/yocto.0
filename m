Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17E1BE0034C
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 14:45:57 -0800 (PST)
Received: from mail-ee0-f72.google.com ([74.125.83.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 17 Dec 2012 14:45:04 -0800
Received: by mail-ee0-f72.google.com with SMTP id c13so4986697eek.11
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 14:45:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=oz/03GcI/QpFKjyF4n3p4u3ex2XO0pXlEHeZmUU59V0=;
	b=M+pV7A9QJY9CFSYL6mLakr4ypTEPJResZ3/J8u9Qz3BzcvkWeVNAiTDQyApn60norS
	CKPvIvU20zQT31yhN5AzSQTgknr06HXPe04MjurpYGtrHgaKtGImVbXDgPmhdLByiHrQ
	6oCziJKSFL/glglZ1B6SgLroYT4/2cB8LKl2G9NyUMr1R30IHtqICXco6W7h6zCf8kdg
	GIf+ojVKBoDaUQSA2g8Ezzo/520Scge087t7YyyYXKBXy/nhLMwYnc3nN+m7Af2nSSlH
	ITSr9hTOxivmYOiBk+D3pAjenFh+gF5O0tWxL+Ilzw9UJ5eb3QXnG2lX6TwBVq75y9WI
	KNTw==
Received: by 10.194.76.99 with SMTP id j3mr20240935wjw.47.1355784354407;
	Mon, 17 Dec 2012 14:45:54 -0800 (PST)
Received: by 10.194.76.99 with SMTP id j3mr20240922wjw.47.1355784354209;
	Mon, 17 Dec 2012 14:45:54 -0800 (PST)
Received: from [192.168.1.13] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id bz12sm14792561wib.5.2012.12.17.14.45.52
	(version=SSLv3 cipher=OTHER); Mon, 17 Dec 2012 14:45:53 -0800 (PST)
Date: Mon, 17 Dec 2012 22:45:55 +0000
From: Ross Burton <ross.burton@intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Message-ID: <B8ED14ABBE8B49F4A95B1A5D2C5095F8@intel.com>
In-Reply-To: <50CF8383.4040904@gmail.com>
References: <50CF5A47.4040509@gmail.com>
	<CAJTo0LbWOq7J4McwEK0tC8wW---CJ9ToKz4zfeuFE3p_viXBiQ@mail.gmail.com>
	<50CF8383.4040904@gmail.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQmwzEp82GNk9QEGIrAAVDgVzVAUBuh9aDA1ZiH1TFU/x8WOEDa/YW2BCbF9pUQKuiPir66lu/QOvxBzVNTqfCt0McRppq5Gw+sbinhdgGhhSDMzdIhTWGU2QfNYrFvmqxuPa7h5MJhKy/rHW+akCINu6QeHJA==
Cc: yocto@yoctoproject.org
Subject: Re: Recipe differences between Danny and Master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Dec 2012 22:45:57 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Monday, 17 December 2012 at 20:41, Jim Abernathy wrote:
> I have not tested this back on Danny, but it seems to be past the point
> where it couldn't find anything. I have no idea how it worked in the 
> past. I remember having to toy with it a lot. I'm still not clear about 
> all the paths in a recipe. So I just copy others and try things that 
> eventually work.

The basic rule is that for a file: uri in a SRC_URI field, relative to the .bb it searches $PN-PV, $PN, then files/.

Obviously there are complications with extending that search path, and .bbappends extending the search path, but that's the underlying principle.

The practical result of this is that you can split general, per-package, and per-version files, which is useful when for example you need different patches per version of a package, but all versions can share an initscript.

Ross



