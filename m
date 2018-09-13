Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8A93E006C7; Thu, 13 Sep 2018 02:23:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C07EE0053F
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:23:48 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id i10-v6so619204oth.0
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 02:23:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=OjLRsQv0ZUN9vd8v6hW06CMMElqjCeckKw7z5xBpyAI=;
	b=vRZuvO9PEDwdJCeoNKmDbBRu10PBZQ/DFGckTwCeN+BYzaaQ9KOfa8kk45fXLlXWEZ
	0wtc9yEOn3gNkDHaitmEN0bRBn/XCID8Lfpue9XSkGrRIKaHlWURYFl364v8lHC9GF0k
	U3xhnhavT0rqfJo9CRdoQLQwHABNNpI6KsseEUXi7JVlXhTEU7n5rXOnFDqCIzTVZUbA
	OoMd23uqfcpVCpkqy8nTvPIj4eMO9aWVBEq6v1e0MbfUbVF8jBzmX2l7kY1LC4RZijex
	vv9hXlcjwBdTYwYFQf0npLPSNMsPfsr7yWamGcEJNwiU+RfOlVSNn572N6ilv8dew/tc
	OWJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=OjLRsQv0ZUN9vd8v6hW06CMMElqjCeckKw7z5xBpyAI=;
	b=Lxyx8kimxrBo+MBHtBELH3uaEi7LSKjwaJeWLLZuJ/fpKMsUL9Ku/0N+D8n8Bnj4G1
	S4Pnn+jTZFlcObIdhkxf4n47n/OI7TsWrgQqf9C4sKB5Av+RGktJ2RpCJb4Pz+2fnyZy
	aYBwA50wCBg4gVnfs22PxhQaDNWau8yNg5fv89RIE8OTlGeRnJPrrPfGtJrLQrwA7zUo
	WVIddJxTcYuhjj5xjJvnZOletokIRwp9Ysa3jpKOCEl4P1t/uziv3y71jngdQNB1qSzH
	ihMozg6ZYyOtEjsVmaDfZTTMKp6DjPhpQAJ68r7RqVIxecV0yYGXwgF77gnI+PuADPyl
	NpWQ==
X-Gm-Message-State: APzg51DW23YsFXot0x87ImjBkZ+U1r5CCvCf6XOIRFhBox40ppruJ2cQ
	DbwTjbmMQ2DpMWR1tqmK+FI5QLcilx4EulzoYFXtDoKhuLM=
X-Google-Smtp-Source: ANB0Vdadfr7oMKsruxc7r1rUEKWE+h37KvYDrVkNgd52UOnRGmlLESeSH9rTEqb5+1lQ1plrbTW/8B+DYPn9T5i/C88=
X-Received: by 2002:a9d:844:: with SMTP id 62-v6mr611808oty.159.1536830627604; 
	Thu, 13 Sep 2018 02:23:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:7ac:0:0:0:0:0 with HTTP;
	Thu, 13 Sep 2018 02:23:27 -0700 (PDT)
In-Reply-To: <VI1PR01MB1070238E178742F446F6BECCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaGN05veUbuoZpP5SpfMETcjOGtazPB688+bwuwM+hyHg@mail.gmail.com>
	<VI1PR01MB1070238E178742F446F6BECCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 13 Sep 2018 10:23:27 +0100
Message-ID: <CAJTo0La6FvAbV=pn4kBM_4yrbYk=bcetFLuZN1drt6W=FxBMpQ@mail.gmail.com>
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>, 
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: allarch class used in autoconf-archive recipe
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
X-List-Received-Date: Thu, 13 Sep 2018 09:23:48 -0000
Content-Type: text/plain; charset="UTF-8"

Re-adding yocto@ to CC.

On 13 September 2018 at 09:42, Dudziak Krzysztof
<Krzysztof.Dudziak@gemalto.com> wrote:
> Myself does not address level of warnings. TBH I did not check how the warnings status is.
> Myself operates currently at recipe's level, no more.
> In lights of my understanding, which of course might still be wrong, there is conflict between
> recommendation made in reference manual and how this package implements its recipe.
> How to handle this situation?
>
> How to actually read Ross' answer? For me it's hard to find there answer to my question. Apologize please,
> I am not so deep in Yocto Project.

The documentation states:

"OpenEmbedded recipes that produce packages that depend on tunings
through use of the RDEPENDS and TUNE_PKGARCH variables, should never
be configured for all architectures using allarch."

autoconf-archive doesn't produce packages that depend on tunings
though RDEPENDS, so it can use allarch.

Ross

