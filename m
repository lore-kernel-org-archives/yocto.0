Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C46E00C06; Sat, 24 Oct 2015 15:14:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.ro]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3CB1E00BFD
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 15:14:09 -0700 (PDT)
Received: by ioll68 with SMTP id l68so155633001iol.3
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 15:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=BfwqJDTaalZq/L0xgo+biogL5bzalPJRaHMBHCaKADE=;
	b=XfLxfwwAppEmqPHik7ICZKiARkoLAulJ1pDkLeqpTqRak1V+tkhYnBUL/UfU1EBxfu
	lZt52HE8B13RsnrIt11Kipdt6hjyVsQKNBm4hiCSG5Wb9QR/v+HUEwJrK0X8KCZX+R5/
	JU2J5D8otxX9qoprJPmmgfyy4iZAPKwAjNIhhwcTqs+H6XmXHinqfNbf7xlCXKLbwanu
	i4CgyjsFRf3zsGh4GvMw80sMV3HGaAi+Iw7DgcWiriozxUwVqbRYqBOd60mIN9CWubpb
	S1fazdqkM7fl01EpvI4doUKzs4Iy82hN9pTf1pfgNxZ4uT3SutUtCVT8hOFLjK8SH/F6
	XVpw==
X-Received: by 10.107.136.67 with SMTP id k64mr27097340iod.117.1445724849112; 
	Sat, 24 Oct 2015 15:14:09 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	h13sm10400127ioe.32.2015.10.24.15.14.07
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 15:14:08 -0700 (PDT)
To: Nicolas Aguirre <aguirre.nicolas@gmail.com>,
	Andrei Gherzan <andrei@gherzan.ro>
References: <CAK18fxHMv0LR1y58wzRZHEEmy-mwbMRHKTbqh9KR56NeEB98Cg@mail.gmail.com>
	<CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <562C02AE.9030609@gmail.com>
Date: Sat, 24 Oct 2015 18:14:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAHTvVMc7DBOLGvOU7X5YuO+O6FKSEaXW0aUsBd_VHsKQrEhqcg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] Yocto on the 9$ computer
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
X-List-Received-Date: Sat, 24 Oct 2015 22:14:10 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/24/15 15:58, Nicolas Aguirre wrote:
> 2015-10-24 19:26 GMT+02:00 Andrei Gherzan <andrei@gherzan.ro>:
>
>> Have a C.H.I.P. 9$ computer? It works with Yocto now.
>>
>> http://layers.openembedded.org/layerindex/branch/master/layer/meta-chip/
>>
> Good job.
> IMO it make sense to add C.H.I.P support in meta-sunxi, don't you think ?

Interesting: I had the exact same thought, had started to compose a
reply, but then thought about layers such as meta-beagleboard and
meta-raspberrypi :-)

Unfortunately there isn't much oversight/guidance in BSP-land. It's
entirely understandable (the work involved would be monstrous, and the
existing infrastructure can barely keep up with the tiny handful of BSPs
that are currently used for validation) but can be a bit frustrating
nonetheless.

Do we create layers for every board (meta-chip, meta-raspberrypi,
meta-beagleboard) or do we create layers for SoCs themselves
(meta-sunxi, meta-atmel, meta-rockchip)[1]? Currently there is no
"correct" answer. Unfortunately the distinction between SoCs, boards,
MACHINEs, DEFAULTTUNEs, and DISTROs isn't as clear and as clean as one
would like.

:-)
    Trevor



[1] and let's not forget layers such as meta-ettus and meta-gumstix:
companies who make various boards with various SoCs!

