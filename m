Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6316EE00E85; Thu, 17 Sep 2015 09:49:14 -0700 (PDT)
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
	*      [209.85.220.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f50.google.com (mail-pa0-f50.google.com
	[209.85.220.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D49CCE00C36
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 09:49:12 -0700 (PDT)
Received: by padhk3 with SMTP id hk3so24193689pad.3
	for <yocto@yoctoproject.org>; Thu, 17 Sep 2015 09:49:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=sThBUWHpyG/cHmJG+Bx6H/VxFGCmxZR02KQY0TkeP40=;
	b=l7/wvOEMIGpYUYl1TAjZE8O44Hk1GQ+zMiEVQZnQ7BuCAmY0c+PZ9zSbcRzUQP75ae
	t+Bwif36Wu1m6oMDv0eb5O53AvRUn/KXcIWW7V9UElYpPfwHRxOOY7rMSXHLgvHSlwgi
	ZD9wc79un+iv1ixBdW6R/RXIhJ22rTbAfd4aq4g8gMFzT9tDjeTl9NPhS+OJFQLME/ky
	Dma16J8ZMGMJqFSy81J9sg7kI1FDQp+GUksL8lRw0Y1en4coCjZH8WVzN1zRGXCUYmk8
	D4NZHk+BHPzzDV+t55g/SSzz32jnf8GwxIvBw8Lhe+9vGiG8IeF+55LW/8tzXFfCZV+I
	nR5w==
X-Received: by 10.68.69.40 with SMTP id b8mr244295pbu.84.1442508551891;
	Thu, 17 Sep 2015 09:49:11 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:49aa:86d2:553e:adcc?
	([2601:202:4000:1239:49aa:86d2:553e:adcc])
	by smtp.googlemail.com with ESMTPSA id
	ch3sm4406181pbb.18.2015.09.17.09.49.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 17 Sep 2015 09:49:10 -0700 (PDT)
Message-ID: <55FAEF05.1050206@gmail.com>
Date: Thu, 17 Sep 2015 09:49:09 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>, 
	yocto@yoctoproject.org
References: <1442248346-28160-1-git-send-email-jkrishnanjanappa@mvista.com>
In-Reply-To: <1442248346-28160-1-git-send-email-jkrishnanjanappa@mvista.com>
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: Re: [meta-security][PATCH] paxctl: add new recipe
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
X-List-Received-Date: Thu, 17 Sep 2015 16:49:14 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

In queue for merging.

thanks,
Armin

On 09/14/2015 09:32 AM, Jagadeesh Krishnanjanappa wrote:
> paxctl  is  a tool that allows PaX flags to be modified on a per-binary
> basis.  PaX is part of common  security-enhancing  kernel  patches  and
> secure distributions, such as GrSecurity or Adamantix and Hardened Gen-
> too, respectively.  Your system needs to be running a properly  patched
> and configured kernel for this program to have any effect.
> 
> Signed-off-by: Jagadeesh Krishnanjanappa <jkrishnanjanappa@mvista.com>
> Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
> ---
>  recipes-security/paxctl/paxctl_0.9.bb | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 recipes-security/paxctl/paxctl_0.9.bb
> 
> diff --git a/recipes-security/paxctl/paxctl_0.9.bb b/recipes-security/paxctl/paxctl_0.9.bb
> new file mode 100644
> index 0000000..8eadad1
> --- /dev/null
> +++ b/recipes-security/paxctl/paxctl_0.9.bb
> @@ -0,0 +1,20 @@
> +DESCRIPTION = "paxctl  is  a tool that allows PaX flags to be modified on a \
> +               per-binary basis. PaX is part of common  security-enhancing  \
> +               kernel  patches  and secure distributions, such as \
> +               GrSecurity or Adamantix and Hardened Gen-too, respectively."
> +HOMEPAGE = "https://pax.grsecurity.net/"	       
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://paxctl.c;beginline=1;endline=5;md5=0ddd065c61020dda79729e6bedaed2c7 \
> +                    file://paxctl-elf.c;beginline=1;endline=5;md5=99f453ce7f6d1687ee808982e2924813 \
> +		   "
> +
> +SRC_URI = "http://pax.grsecurity.net/paxctl-${PV}.tar.gz"
> +SRC_URI[md5sum] = "9bea59b1987dc4e16c2d22d745374e64"
> +SRC_URI[sha256sum] = "a330ddd812688169802a3ba29e5e3b19956376b8f6f73b8d7e9586eb04423c2e"
> +
> +do_install() {
> +	oe_runmake 'DESTDIR=${D}' install
> +}
> +
> +FILES_${PN} = "${base_sbindir}/paxctl"
> +FILES_${PN}-doc = "${mandir}/man1/paxctl.1"
> 

