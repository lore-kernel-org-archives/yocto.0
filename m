Return-Path: <sudhangathan@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA390E01437
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 19:58:13 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id rp16so5118784pbb.28
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2013 19:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=user-agent:in-reply-to:references:mime-version:content-type:subject
	:from:date:to:message-id;
	bh=8rFmyEJ80vmQcp7o++P2BZvO8D8icl2ziUOZOhoJO44=;
	b=F1TciNDPaGtHhtqnmYoEYeVjo21E2kcHhc8lhs+JMik5J+NEQHfA9Mti6Qf0CzlfBp
	+n5K7yjJl509o6VA7WXgmvIN3sxjm6Dpiqg9qLCOncKq+QZ4qIxh12DPcV/NOKW1k1lV
	JHAL2VklHntWYne9PGe64BmLkCvAGA0WX/p1mFTyMMFIJfetMnnauHx99VG5tTuTifwf
	xTeF+ZgU+dxIDieMFzGKHWZnIeIk95msM7yDs5cfiAlfOzVZXHxwd9mG7F0uzsHB2Axl
	n52iYP9AKPxq0FZ/rfYWiP0LpkZicxKDaIEtdfcHf62jORE0NHCiVSbnn18RcDDgUPyk
	N7wQ==
X-Received: by 10.68.242.105 with SMTP id wp9mr19978786pbc.153.1374289092996; 
	Fri, 19 Jul 2013 19:58:12 -0700 (PDT)
Received: from [223.228.17.191] ([223.228.17.191])
	by mx.google.com with ESMTPSA id
	kc8sm22481709pbc.18.2013.07.19.19.58.10 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 19 Jul 2013 19:58:11 -0700 (PDT)
User-Agent: Kaiten Mail
In-Reply-To: <CAAGt+t3cZgGVwORrw1hk5jSSTJ+51c7QoEAQmUMg66evAdzfwA@mail.gmail.com>
References: <CAAGt+t3cZgGVwORrw1hk5jSSTJ+51c7QoEAQmUMg66evAdzfwA@mail.gmail.com>
MIME-Version: 1.0
From: Sudhangathan BS <sudhangathan@gmail.com>
Date: Sat, 20 Jul 2013 08:26:46 +0530
To: Zafrullah Syed <zafrullahmehdi@gmail.com>,yocto <yocto@yoctoproject.org>
Message-ID: <10ef064e-1ee7-4bd3-9689-4a5ee6bd030f@email.android.com>
Subject: Re: MLO, u-boot and uImage are same for any rootfs created?
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
X-List-Received-Date: Sat, 20 Jul 2013 02:58:15 -0000
Content-Type: multipart/alternative;
	boundary="----IPTK341PMRCIY73Z6V9YSCIBO0WFLV"

------IPTK341PMRCIY73Z6V9YSCIBO0WFLV
Content-Type: text/plain;
 charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Zafrullah,

MLO, u-boot, will remain unchanged unless you change the source code of MLO and u-boot or your hardware... 
uImage and modules too will remain unchanged as long as you don't change the source code of kernel or add any extra modules/drivers. 

In your case, as long as you are adding/removing packages, you only need to rebuild the rootfs.. And that too, Yocto will mostly take care of rebuilding the uImage/modules if necessary.. 

Best,

Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
>Hi all,
>
>I am integrating some packages and building Images and I need to create
>separate rootfs for each package.
>
>My doubt: Does MLO, u-boot, uImage and modules.tgz are same for any
>rootfs
>created? or do i need to create again all of them for every package i
>add?
>
>Thanks and Regards,
>Zafrullah Syed
>
>
>------------------------------------------------------------------------
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

--
Sudhangathan BS
Sent from Kaiten Mail. Please excuse my brevity.

------IPTK341PMRCIY73Z6V9YSCIBO0WFLV
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: 8bit

<html><head></head><body><p dir=ltr>Hi Zafrullah,</p>
<p dir=ltr>MLO, u-boot, will remain unchanged unless you change the source code of MLO and u-boot or your hardware... <br>
uImage and modules too will remain unchanged as long as you don't change the source code of kernel or add any extra modules/drivers. </p>
<p dir=ltr>In your case, as long as you are adding/removing packages, you only need to rebuild the rootfs.. And that too, Yocto will mostly take care of rebuilding the uImage/modules if necessary.. </p>
<p dir=ltr>Best,</p>
<br><br><div class="gmail_quote">Zafrullah Syed &lt;zafrullahmehdi@gmail.com&gt; wrote:<blockquote class="gmail_quote" style="margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir="ltr">Hi all,<div><br /></div><div>I am integrating some packages and building Images and I need to create separate rootfs for each package.</div><div><br /></div><div>My doubt: Does MLO, u-boot, uImage and modules.tgz are same for any rootfs created? or do i need to create again all of them for every package i add?<br clear="all" />

<div><br /></div><div>Thanks and Regards,</div><div>Zafrullah Syed</div><div><font color="#888888" face="arial, sans-serif"><span style="border-collapse:collapse"><br /></span></font></div>
</div></div>
<p style="margin-top: 2.5em; margin-bottom: 1em; border-bottom: 1px solid #000"></p><pre class="k9mail"><hr /><br />yocto mailing list<br />yocto@yoctoproject.org<br /><a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br /></pre></blockquote></div><br>
--<br>
Sudhangathan BS<br>
Sent from Kaiten Mail. Please excuse my brevity.</body></html>

------IPTK341PMRCIY73Z6V9YSCIBO0WFLV--
