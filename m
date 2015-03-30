Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01FB7E00837; Mon, 30 Mar 2015 15:51:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01C77E00779
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 15:51:27 -0700 (PDT)
Received: by padcy3 with SMTP id cy3so180235359pad.3
	for <yocto@yoctoproject.org>; Mon, 30 Mar 2015 15:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=NobmI2mD3Uo0fQp23ghuBZSeOOsedM5oQwYDMDWHuWI=;
	b=l6zyiYdeePlU8Mpb1+tJ+ylrq9mYkTRZ15P3bKbFMFPTkZedHlXjVMV+zoTRxlA8sP
	w2KGTEo9tH4GFDWhDPhnKFl82pvMSmGLjx8Fo2yBqJvYsekezZWXdycgSZ+HBRMIDXuY
	z9w42QsMX7WZNrwEMTlweli92kuDMLpkOmLfW3con4R43sgGa3VQv9Tq6vhe/U3btTK1
	jOYdfYMRlZaQBFAsgpCyLUbElNylkLa/b/Uxhesj6OGrkq4K73Z9fn9jcqU1CQkLdMT5
	stYMbfKIZEgR6kCe4BRez8LJrPb1LoxIUZajp1/Ww8f/rHnLYP8N013ZnLxvpDfCGWKU
	jd3w==
X-Received: by 10.70.0.98 with SMTP id 2mr22829513pdd.55.1427755887119;
	Mon, 30 Mar 2015 15:51:27 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:bdc8:daf2:1c92:3db7?
	([2601:c:a700:3ba7:bdc8:daf2:1c92:3db7])
	by mx.google.com with ESMTPSA id
	qr6sm11742400pbc.64.2015.03.30.15.51.25
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Mar 2015 15:51:25 -0700 (PDT)
Message-ID: <5519D366.4070506@gmail.com>
Date: Mon, 30 Mar 2015 15:51:18 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Chris Hallinan <challinan@gmail.com>, yocto@yoctoproject.org
References: <1427748653-20274-1-git-send-email-challinan@gmail.com>
In-Reply-To: <1427748653-20274-1-git-send-email-challinan@gmail.com>
Subject: Re: [PATCH] Gracefully abort if rootfs.img gets to big
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
X-List-Received-Date: Mon, 30 Mar 2015 22:51:30 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Chris,

Should the hardcoded value '4160800000' be a variable so it can be 
overridden?

- armin

On 03/30/2015 01:50 PM, Chris Hallinan wrote:
> See https://bugzilla.yoctoproject.org/show_bug.cgi?id=7541
>
> Current implementation of live image type cannot support image size
> greater than 4GB. If the image gets too large, the build simply
> hangs silently, without any clues or debug output to indicate why.
> This patch prevents the build hanging on rootfs.img getting too big.
>
> ---
>   meta/classes/bootimg.bbclass | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/meta/classes/bootimg.bbclass b/meta/classes/bootimg.bbclass
> index b1c03ba..e143e24 100644
> --- a/meta/classes/bootimg.bbclass
> +++ b/meta/classes/bootimg.bbclass
> @@ -84,6 +84,13 @@ populate() {
>   	fi
>
>   	if [ -n "${ROOTFS}" ] && [ -s "${ROOTFS}" ]; then
> +		ROOTFS_FILE_SIZE=`stat -L -c "%s" ${ROOTFS}`
> +		bbnote "do_bootimg(): rootfs.img size = ${ROOTFS_FILE_SIZE}"
> +		# Actual limit is difficult to determine
> +		# This leaves ~128MiB headroom for initrd and boot files
> +		if [ ${ROOTFS_FILE_SIZE} -gt 4160800000 ]; then
> +			bbfatal "Root fs (rootfs.img) is too big for live image"
> +		fi
>   		install -m 0644 ${ROOTFS} ${DEST}/rootfs.img
>   	fi
>
>

