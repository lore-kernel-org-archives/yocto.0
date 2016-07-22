Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 172F2E00F06; Fri, 22 Jul 2016 00:03:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C560E00EF6
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 00:03:44 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id q128so45005424wma.1
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2016 00:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=vnpYdwxMsNe65ykpNXi/cWo01CQpYkyX5Ggm6MN8kDs=;
	b=BZ4XiJaJlM61A0FZuie/FoibzgT0xfybxOmXnrCEJISn8T0Aog7WJQtmFH8vmYXo7U
	OC5WGytELomny7MVBAAN9PinzQ128gYR+gSbY1McZ+CyfuZFjblt5gG2tQRNPqkIwKTk
	0YICdIFycu/vkQHBomWbT8De3xsMgmkpgWEi+EzasM54Hb8YJpLUEoPPoeuJNa3f+YLt
	oloMLTLSCb+ZwwHc5XkJ8uhQodhuf75K47LW1DiUukyo3Oo2NIyIl6KIozaR582MU5FK
	Vdo3svTh1VZOla9MiNM/S4NMwEKBVkwLyUIs55G18tBYMbKM+EOQBzjyXFnMfHOpnGrR
	RlfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=vnpYdwxMsNe65ykpNXi/cWo01CQpYkyX5Ggm6MN8kDs=;
	b=KvSCpwyi3h8oy5NVuC1C4zYZ9kzOcU9YOn5j5PfaCsglIOEPa1vIzgv7YArAg6Le6E
	ie5k3sf3fzl0e/JRArXPVGgUTe/w1bnPYH9WTepr/DLYSS6TVqP+I1tsbKY7l1sj6XB2
	OBzUq/HwBa00suManvSeuY3/xDb1pR6OAMS62d4h2bqkueGg2LV9Ph1WUKxO4T30wa7I
	c6SBUy2TKBWa6VlsXlISB3MlRMoj/h3GcRR6/qUTiGLMv/8YBGvxsma2g4PdZdm/G8jy
	AcRMEjEGxfaHaIFmlZXY/gKrvIzzlWfenQyWx/DEnypbN8pEjoicvfGVosFjIf8pYPH8
	9euw==
X-Gm-Message-State: AEkoouvQJDs1/3A1IKiQTPMlXAmOF6BH28X1uTvNM8+rmAOsaUsmwwC0ijETx7slHAqWSQ==
X-Received: by 10.28.95.85 with SMTP id t82mr3320042wmb.20.1469171024121;
	Fri, 22 Jul 2016 00:03:44 -0700 (PDT)
Received: from [192.168.2.129] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	d62sm10727722wmd.7.2016.07.22.00.03.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Jul 2016 00:03:43 -0700 (PDT)
To: Herve Jourdain <herve.jourdain@neuf.fr>,
	'Paul Barker' <paul@paulbarker.me.uk>, yocto@yoctoproject.org
References: <20160721080236.0ed7287e@nuc.betafive.co.uk>
	<001e01d1e366$2908ffc0$7b1aff40$@neuf.fr>
From: "piotr.lewicki" <piotr.lewicki@elfin.de>
Message-ID: <543dea85-f500-9551-12f2-25bc718b47d2@elfin.de>
Date: Fri, 22 Jul 2016 09:03:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <001e01d1e366$2908ffc0$7b1aff40$@neuf.fr>
Subject: Re: [meta-raspberrypi] linux-raspberrypi versions
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
X-List-Received-Date: Fri, 22 Jul 2016 07:03:48 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I also think that's a good idea. In my opinion we should at least make 
latest LTS (4.4) the default kernel and try to add latest mainline.

Probably the "proper way" of dealing with the issue is using branches. 
This way (as it is in oe-core): jethro would have kernel 3.18 and 4.1, 
krogoth would have 4.4 and 4.1 and master would only have 4.4 and latest 
mainline.

Don't you think that it would be a good idea to create some "quasi" 
krogoth branch out of what is on master and then cleaning the master 
(e.g. removing kernel 3.18 and 4.1) ?


BR,

Piotr


On 21.07.2016 17:39, Herve Jourdain wrote:
> Hi Paul,
>
> I had the same line of thoughts...
> I believe 3.18 should be dropped, maybe even 4.1, default to 4.4, and maybe
> add 4.7 to the mix, since 4.7 seems to be where the bulk of the work is done
> now.
>
> Herve
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Paul Barker
> Sent: jeudi 21 juillet 2016 09:03
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-raspberrypi] linux-raspberrypi versions
>
> Hi all,
>
> I'm planning to look at the linux-raspberypi recipes once I've had time to
> send V2 of my u-boot patches. I'd like to know people's thoughts on the
> available kernel versions in the meta-raspberrypi layer:
>
> Is anyone still using the linux-raspberrypi 3.18 recipe? The commit
> referenced in SRCREV is from June 2015. I think it's probably time to retire
> this unless anyone has a reason to keep it around.
>
> Is there any reason to keep linux-raspberrypi 4.1 as the default recipe? The
> last commit to the 4.1 branch was in April and the default branch on the
> linux-raspberrypi GitHub repository has been
> 4.4 since then. I think we should change the default version to 4.4 unless
> there's a good reason not to.
>
> If there's no objections I'll send a couple of patches to drop 3.18 and
> change the default to 4.4.
>
> Thanks,
> Paul Barker
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


