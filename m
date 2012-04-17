Return-Path: <raj.khem@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CFE5E0132F
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 13:44:32 -0700 (PDT)
Received: by lbbgg13 with SMTP id gg13so1673612lbb.35
	for <yocto@yoctoproject.org>; Tue, 17 Apr 2012 13:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=4+MOSOLxPlt3mwYIdQB9qEATBtTgkY694zepjDTYH+0=;
	b=jq67jxNKuVKRf/nDfS/AX6ULSVzWVBpvoIgi9Pn0Exf92YTxCRQu2znp+Xb2k2s+t3
	LnL4aU33q4WkrFCYbYfMY+OHl73kBr4Wpnp71aQ52BURpajFXMmjovltWl6qhgjmMAAk
	Ew5YyDKktJlPFPSViZhaN1jALEMQH82XGZp5+ZaI4ymCNiXm9Ol177f7+Z/uUMsYJZmQ
	3wU/x6nUrY5BZI7Lu7eZ4/zxSj9sW2jpFBMvIpuyem7ord27NfuiefakYqcZBjTEyoqy
	EOATFEBzrc71dC6qwsDdT/PJBQ6DJ9/dZJEJddRlQB9C1ROfO+6vcgRPt0pTcAPLysxg
	TJUw==
Received: by 10.152.145.228 with SMTP id sx4mr8186305lab.45.1334695471127;
	Tue, 17 Apr 2012 13:44:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.129.134 with HTTP; Tue, 17 Apr 2012 13:44:00 -0700 (PDT)
In-Reply-To: <20120417224028.5f80ebd7@eb-e6520>
References: <20120417224028.5f80ebd7@eb-e6520>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 17 Apr 2012 13:44:00 -0700
Message-ID: <CAMKF1spWEJt-ze6h+96Pk=K2QkhJ4K1LpeBs81r6DWG2N3o2Kg@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Cc: yocto@yoctoproject.org, openembedded-devel@lists.openembedded.org
Subject: Re: [OE-core] meta-chromium
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Apr 2012 20:44:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 17, 2012 at 1:40 PM, Eric B=C3=A9nard <eric@eukrea.com> wrote:
>
>
> we have pushed the begining of our (Eukr=C3=A9a Electromatique's team and
> especially Denis) work to get Chromium to build with OpenEmbedded Core
> to : git://github.com/eukrea/meta-chromium.git
> https://github.com/eukrea/meta-chromium

good job Eric and Denis can you add an entry into  layerindex too please
if you havent done that already

http://openembedded.org/LayerIndex

