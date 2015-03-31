Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B765E0085D; Tue, 31 Mar 2015 01:17:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B70DE00854
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 01:17:08 -0700 (PDT)
Received: by pdmh5 with SMTP id h5so870623pdm.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 01:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=yq3FBuLaARVnW51S3B+6VMpD9Kmn1pHrW/pYB+1pB0I=;
	b=vwsVto6bfzdylsC625MhgKJ6QU7XGuslONJR9uT1VCpDmeIbl9RzAi+iDpAGk1rsXo
	DzJ/hkg5kwUtpJnn3rThRavcVu3zHbprRooSUAKQ0beEn+c0d58NVB8VFnWqwwj73hW8
	KcoBP5td95bWDhvJkoRY1gQNtntFYmDE02D24Lsjn0NJe07Qb696xDDyMvXrdmsPUHVy
	YkqnO/2+zAeoMs8Qjcd0PLCD4q0gRBtnvUuFyQjvMaKXIfjKHcqqOQt8Pe1FfWnrxbX1
	87HfcVXSlvR5p2VBSPc+zxwlQvh/HJIqxoOkqCxrGTgpIR1NcbWSt0Ub5w1EArqJ6WRJ
	r+rw==
X-Received: by 10.67.4.104 with SMTP id cd8mr66018489pad.116.1427789828661;
	Tue, 31 Mar 2015 01:17:08 -0700 (PDT)
Received: from ?IPv6:2601:9:3580:84c:5d29:da51:1fde:9224?
	([2601:9:3580:84c:5d29:da51:1fde:9224])
	by mx.google.com with ESMTPSA id
	xz1sm13019474pbb.47.2015.03.31.01.17.06
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 31 Mar 2015 01:17:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2070.6\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1427787459-22162-1-git-send-email-gshastri@juniper.net>
Date: Tue, 31 Mar 2015 01:17:05 -0700
Message-Id: <DAC35B91-2D66-4B86-913C-77A8AB9E5EF9@gmail.com>
References: <1427787459-22162-1-git-send-email-gshastri@juniper.net>
To: Gaurang Shastri <gshastri@juniper.net>
X-Mailer: Apple Mail (2.2070.6)
Cc: enealinux@lists.enea.com, yocto@yoctoproject.org
Subject: Re: [PATCH] Add makedumpfile utility
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
X-List-Received-Date: Tue, 31 Mar 2015 08:17:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


> On Mar 31, 2015, at 12:37 AM, Gaurang Shastri <gshastri@juniper.net> wrote:
> 
> +do_install() {
> +	install -d ${D}${bindir}/
> +	install -c -m 755 ${S}/makedumpfile ${D}${bindir}/
> +}
> +

make it a single line like below
install -Dm 0755 ${S}/makedumpfile ${D}${bindir}/makedumpfile

