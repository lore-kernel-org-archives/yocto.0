Return-Path: <yani.dubin@taitradio.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 132A1E00E03; Thu, 24 Sep 2015 19:24:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_LOW,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCA48E00708
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 19:24:20 -0700 (PDT)
Received: by oiww128 with SMTP id w128so51687285oiw.2
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 19:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=taitradio.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=fQytHKzBsV3L2Q5DxLeGA1W3/LBOhddbWmjB7TYSTog=;
	b=CT1jIFVXz9caSRrFK90Y/7P/RO9Z99AV2dMyKy5lPDAvqaq66eyY1sCpinOBxXIV4t
	rXnQarv2puHhP5Zc3i4slj9KkJESwJ7Sm9S0TyK3YOtJ/d9yWXva/VrkCU2IIJ/k3Y01
	c4fTTfgzxv60LAQaAQFBJYwTbG3MP29dwb+oo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=fQytHKzBsV3L2Q5DxLeGA1W3/LBOhddbWmjB7TYSTog=;
	b=hCR3s62hSJDxKBUFAkvkG1NQ63b2H5P+CiYItatYsEtZG9WaswKBdd1Fng32HxOWm/
	1FCMUX5wZpkK96fl3v7i99nr2tPXkIn1tK0z6ZbtNkcsQZ02yM25wf6prvTVq5xasBvU
	p/uy7qgw2UXPgMk93IGbdLafA8Xz3OG9pFg49X45d9ABNfG0lD+cKRsyYs+hMTAN31zu
	j9gXmTNTRAmaqDWhadLqifnmrcurQ3qRxkmqQSmNCQ30cgEe2aqyjZCv53x2M5R2xnN9
	5T5peGCHOVHN76mC5r2trK7nLmaSKqpqbgjGWasYQo9U76nTETqRMScoaqgnJRvo/YBM
	pt3A==
X-Gm-Message-State: ALoCoQmQgQv3qCljxG+uzW76sWCvTpUVqt+cIOp1Xt40V7jlvtcy49GbjVTZrHrb0dFFg8uTwPOvfmWpWHKdRQYrQi+muhB8KGOZd+88XvjUm72Ia59W1l1ddg/eZXZt+MLr4M5hZEWe
MIME-Version: 1.0
X-Received: by 10.202.206.22 with SMTP id e22mr1692545oig.132.1443147859709;
	Thu, 24 Sep 2015 19:24:19 -0700 (PDT)
Received: by 10.202.104.31 with HTTP; Thu, 24 Sep 2015 19:24:19 -0700 (PDT)
In-Reply-To: <CAGMdoFnzV3P2PLhKtSOyJByF7REqDCCSk8=n0LXfAFUtJ5ofGw@mail.gmail.com>
References: <CAGMdoFnzV3P2PLhKtSOyJByF7REqDCCSk8=n0LXfAFUtJ5ofGw@mail.gmail.com>
Date: Fri, 25 Sep 2015 14:24:19 +1200
Message-ID: <CAHSWo-gJ=hLNwQzJUiSoZ4dTW1kairk+f-2v8+gKXgvrG9idXw@mail.gmail.com>
From: Yani Dubin <yani.dubin@taitradio.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Create empty directory in RFS
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
X-List-Received-Date: Fri, 25 Sep 2015 02:24:28 -0000
Content-Type: text/plain; charset=UTF-8

On 25 September 2015 at 10:32, Edward Wingate <edwingate8@gmail.com> wrote:
>
> How can I create an empty directory in my root FS?  I want to create
> /mnt/sd to use as a mount point.  I put "install -d ${D}/mnt/sd" in
> do_install() of one of my recipes, but I get:
>
> ERROR: QA Issue: my-recipe: Files/directories were installed but not shipped
>   /mnt
>   /mnt/sd [installed-vs-shipped]
>

That is correctly installing it, the QA issue is telling you that you
need to add the directory name to FILES_${PN} (for it to be
packaged/shipped, else it will not make it into the rootfs).

Regards,
Yani.




-- 
Yani Dubin
Senior Design Engineer
Tait Communications
DDI: +64-3-357-1565
Email: yani.dubin@taitradio.com


www.taitradio.com

-- 

------------------------------
This email, including any attachments, is only for the intended recipient. 
It is subject to copyright, is confidential and may be the subject of legal 
or other privilege, none of which is waived or lost by reason of this 
transmission.
If you are not an intended recipient, you may not use, disseminate, 
distribute or reproduce such email, any attachments, or any part thereof. 
If you have received a message in error, please notify the sender 
immediately and erase all copies of the message and any attachments.
Unfortunately, we cannot warrant that the email has not been altered or 
corrupted during transmission nor can we guarantee that any email or any 
attachments are free from computer viruses or other conditions which may 
damage or interfere with recipient data, hardware or software. The 
recipient relies upon its own procedures and assumes all risk of use and of 
opening any attachments.
------------------------------

