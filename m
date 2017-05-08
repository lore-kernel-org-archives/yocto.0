Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96CF7E00AE4; Mon,  8 May 2017 06:36:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FBDFE00A38
	for <yocto@yoctoproject.org>; Mon,  8 May 2017 06:36:20 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id e65so38684577ita.1
	for <yocto@yoctoproject.org>; Mon, 08 May 2017 06:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=4vXQ3hbpLcaMZSsVgqCxFgufJyKBAzs+i3l+GLLM6cY=;
	b=SYKYX7e3yjSqHJM2pgTGlZw2o0RUcK4AJQTDg1WUUn81cLwnG0kscf2+G7ogfRf82n
	uiRQsm8N6nkG56wkogvWRGP9Y31NhrxCh0sAnPICLQBeWW75KufAK+pe3kTCOP5n0WxA
	1oVW0VxZCy6qxCIUejKWb6llkD+B8pJ2I7BG5LSpWN5iUlkLYV06y38D7veL1Zh7ZNYy
	NDwbnvQOh6okp1g6PXR2/itASaIVOKXLQ6p4k+JRQWALAJguT5TVH9OWtWigQiyisBF2
	ab3FXJGMudiS8LuE7gEt18Jg1fQQ/RjscZm/ba9K45f20ySVV2/ZrqmF8KrJDlg7eTUz
	diGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=4vXQ3hbpLcaMZSsVgqCxFgufJyKBAzs+i3l+GLLM6cY=;
	b=iKzTPqMhqFFIErDIY9k1Kzd/fyeR28sTPXN2ZGRnDLqey+XrU/DRRFDqN41HUpx15K
	K0trZKgsj6l0SdSM24R/9kpSfQ3eJDEjizd6fqPrLHL84NhuKiazCeewoYm1k/ePsHuK
	pfCkqRb0IbeErwWC1q/HtE++5EQdYgEhUfbdkRfB/mBwZgYwbJTxkiDorM0BjY+0SQYB
	RNVMG2XB6/sfhzyNGeT+E8+xHBtIB/qL0MP/FWEMyGiBq90idyGWH7C9C/5WB7pt6st8
	zLQDECiyjsaVhQoH67/IbStlRwWyRFfI70t+eHIrcLN+MzfVWhIMceLmEOxcaFO9UeIJ
	zztg==
X-Gm-Message-State: AN3rC/4IlpIo5vpGdaOzLdGKeWLfwlJTxRtzIykaEIsSkj6ypEjEKMs/
	9oxMemoGnKGCcDgg
X-Received: by 10.36.32.138 with SMTP id t132mr19603561itt.89.1494250580388;
	Mon, 08 May 2017 06:36:20 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8D834.dip0.t-ipconnect.de. [93.232.216.52])
	by smtp.gmail.com with ESMTPSA id
	w130sm4516267ita.20.2017.05.08.06.36.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 08 May 2017 06:36:18 -0700 (PDT)
Message-ID: <1494250575.4241.328.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?An=EDbal_Lim=F3n?= <anibal.limon@linux.intel.com>
Date: Mon, 08 May 2017 15:36:15 +0200
In-Reply-To: <1487625169-22282-1-git-send-email-anibal.limon@linux.intel.com>
References: <1487625169-22282-1-git-send-email-anibal.limon@linux.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCHv2] yocto-compat-layer.py: Add script to YP Compatible Layer validation
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
X-List-Received-Date: Mon, 08 May 2017 13:36:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-02-20 at 15:12 -0600, Aníbal Limón wrote:
> +    try:
> +        ldata = bb.parse.handle(lconf, ldata, include=True)
> +    except BaseException as exc:
> +        raise LayerError(exc)

Anibal, where is this LayerError class in compatlayer/__init__.py
supposed to come from? It doesn't get imported, leading to:

  File
"/fast/work/intel-iot-refkit/openembedded-core/scripts/lib/compatlayer/__init__.py", line 45, in _get_layer_collections
    raise LayerError(exc)
NameError: name 'LayerError' is not defined

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




