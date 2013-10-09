Return-Path: <jicheu@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC12BE0073F
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 08:15:20 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id c11so1069873wgh.30
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 08:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=M1zcATOYswlYMfpFjc2KjfSllW1YJH1sPWffQd28ra0=;
	b=Hf+33cgFMUn/ZVrOjs9KoM0GUbCgf4qOo8tbIaLfLhjG0oINWkKjwPzl8a+TU/o1QD
	VWl/xsx9NfNlUfx1hJGtg1mAs7x8Jna/y8z6YujBk1xetpYvCc3oF/MtU0P5kz3t5qzv
	UakL3w+esDdCALD0L7d+RtJFLHG3wx6SWm2E2N8EOupMnmBVm/1EM7RfrPHzEWcWtVcs
	b7Muse3HSNYbOPvIh6qXPGuvEYVFNDvR5kz/LwuWDpqKexxvlW57+oTXcAojGZH5CJel
	BqMs1CmNHPDhjF9hkW10qPHMfuTnEeCYNo9VTmdpa2t0E1+U0OVYqgLa8PGao5dJdzm5
	Q2XQ==
X-Received: by 10.181.11.163 with SMTP id ej3mr3121252wid.47.1381331719290;
	Wed, 09 Oct 2013 08:15:19 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id b13sm16167020wic.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 09 Oct 2013 08:15:18 -0700 (PDT)
Message-ID: <525572FE.1080904@gmail.com>
Date: Wed, 09 Oct 2013 17:15:10 +0200
From: Jean-Charles <jicheu@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <52554271.70306@gmail.com>	<CAJTo0LbOfVAuzo_XBikdnssxe52OQ-KNbiqq5u1JkBnSJBFZ_Q@mail.gmail.com>	<52557137.3080405@gmail.com>
	<CAJTo0LZ3RNiP41XjHk-6V_fG5J94BN7P2i5LBRJPWRLqJauJjw@mail.gmail.com>
In-Reply-To: <CAJTo0LZ3RNiP41XjHk-6V_fG5J94BN7P2i5LBRJPWRLqJauJjw@mail.gmail.com>
Subject: Re: dleyna not building
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
X-List-Received-Date: Wed, 09 Oct 2013 15:15:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/10/2013 17:11, Burton, Ross wrote:
> PREFERRED_VERSION_gssdp = "0.13.2"
I just figured this by checking the two recipes. I'll try again wth this 
added to my conf



