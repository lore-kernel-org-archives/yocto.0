Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DECA8E00ACE; Fri, 26 May 2017 06:52:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F5E2E00826
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:52:02 -0700 (PDT)
Received: by mail-it0-f48.google.com with SMTP id r63so9188966itc.1
	for <yocto@yoctoproject.org>; Fri, 26 May 2017 06:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=ueNMIbAJgfLBThzqZ6QZiOGKOV0SDQYXaB7tDCYq6AI=;
	b=hJO7/2sO28DoVrE2lraKwvc27y3J9LJYwzxQrR08NXgg0kUDUdZQ7OXhrYQMgd1hCO
	T6rthZCATt1/rPlLs5o6qNZO/g7JP/f1MLHeXZgsVKG2BKE5wfWc4v5dpLqwlgNw5wbk
	+RiUffA3Xsx4qJc6zOiMTd6H0Jpjbf8lsmcSKahCEBUPIrLNF63diA5SUaaq0PC7KsbL
	4ZbWWge1u7iexQzU+izp9lp5J9IqJ1CL6cOaMpomAz6RlC6hmpu1kCx47QUGiNT4eJ69
	4Nj3Y7G6dbzco81EamEyuyVsCu4uRFwRdmfCd9LLEMUwwc6T8FnXYgbZm04+K2/UYgxf
	EG0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=ueNMIbAJgfLBThzqZ6QZiOGKOV0SDQYXaB7tDCYq6AI=;
	b=od0bmnACYvqxP8ihT5ckPd/J5KaqArvvWVTbdAXTak5tU8om7q/0F/8HyaE4AmX7L9
	1vqPUuKYlDRFUEXPGPEU1M6RJzWSSWHWobzL5+qkDHrnUS8UVtJEsC8DNv+32e0Shf05
	uyT5cDoK/Bjv3wUQgb3RTExzBWJr8Uvb3qVYToWNSmnu15AessZYlvnBJCa7EmhB4VLt
	+OPxnIZetUoQ/h6WVNhIP5ppzCKiaQM5IBFgVVngoL7TDQeV6AXf3uscgJvWIoUGJv/b
	vFhxpRHeF9FPlvPsFOlT072S7BJ8yVsDYm2n8c60tZ4pdNmTCSP2Ja6lu7JIFxT/4FbF
	aeNw==
X-Gm-Message-State: AODbwcA70sHjnmf5lXwVA88muK6tH/yBOu4P5zkjzX2V7PTM9IkXfqYd
	CPSjyPv0mn1YkhQKVeg=
X-Received: by 10.36.68.203 with SMTP id o194mr4446666ita.8.1495806721591;
	Fri, 26 May 2017 06:52:01 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8F704.dip0.t-ipconnect.de. [93.232.247.4])
	by smtp.gmail.com with ESMTPSA id
	u135sm4628594itu.10.2017.05.26.06.51.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 26 May 2017 06:52:00 -0700 (PDT)
Message-ID: <1495806717.16923.120.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Date: Fri, 26 May 2017 15:51:57 +0200
In-Reply-To: <DM5PR0101MB2953F385C585BBDE4E224896B6FC0@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>
	, <CAP71WjyDHzecX1UTEkHSgJDud3G-3g9D0RvsOBCZkoAvtxPy_w@mail.gmail.com>
	,
	<DM5PR0101MB29537BD8470B6C9CACBE0D92B6FF0@DM5PR0101MB2953.prod.exchangelabs.com>
	,
	<DM5PR0101MB2953B2020A29FE56D2DC4FBEB6FF0@DM5PR0101MB2953.prod.exchangelabs.com>
	<DM5PR0101MB2953F385C585BBDE4E224896B6FC0@DM5PR0101MB2953.prod.exchangelabs.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dynamic-layers?
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
X-List-Received-Date: Fri, 26 May 2017 13:52:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-05-26 at 08:09 +0000, Takashi Matsuzawa wrote:
> Hello.
> 
> 
> So, this is the case I have to be careful about the order of conf
> files listed in BBLAYERS list?
> 
> i.e. if I have dynamic-layers line in my layer X and expansion need to
> take care of layer A, B, C, then, A, B, C needs to be apper before X
> within BBLAYERS list.

Yes, I think that's how it is meant to be used.

The reason is that layers get added one-by-one in the order in which
they appear in BBLAYERS, and then the code in
meta-freescale/conf/layer.conf only sees what has been added already.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




