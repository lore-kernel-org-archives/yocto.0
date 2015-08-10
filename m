Return-Path: <ac.rossi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F1B5E00A84; Mon, 10 Aug 2015 12:35:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ac.rossi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE0E0E00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 12:35:02 -0700 (PDT)
Received: by lagz9 with SMTP id z9so59274104lag.3
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 12:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=y5OtmGL2br+b+4EsSbGK7AmWFeyssxY55+S+Vgz3/Yw=;
	b=ROvMnw7d3hrAxK86s5E0Gey36uyLy5vVFjcTufs1HI0WUIl+prRXH50WW79S+06/N0
	hl0uksI1HNWrGHRf2nbrKOAFJJcQAS3WSbjiYWDF9iy1kxhKW2hJKp4UnIEcEm6zenPz
	nVyomXivQB1bQSR4TGp/qwDAP6gr9ZqOtpgpLWRYE4U+DL6Lbq9QeCXSK49f6ZZSGwse
	HY48eTnsJVlpCuoWED66rNF/SEJ+4fHgwa1WiNa/wWuHppJwH4LklPGyvIBWbJYJYw7+
	Yw7mspP6FXodg1wZ+sY8uJuY9du/kQdoqay+tI1+U2T5vAJS80qVckqwd7W1W9lGRchI
	PaEA==
MIME-Version: 1.0
X-Received: by 10.112.25.39 with SMTP id z7mr22350561lbf.102.1439235300763;
	Mon, 10 Aug 2015 12:35:00 -0700 (PDT)
Received: by 10.114.5.197 with HTTP; Mon, 10 Aug 2015 12:35:00 -0700 (PDT)
In-Reply-To: <CAJTo0LYVMnYUkLoGm=CxkzSJjSwXYM-5JCODZXXmjmDBwP973A@mail.gmail.com>
References: <CAPzboycMBBs_d+06jX+CWCZ_9yaxvEbPOBzQrxDu6i3cEOgsLA@mail.gmail.com>
	<CAJTo0LYVMnYUkLoGm=CxkzSJjSwXYM-5JCODZXXmjmDBwP973A@mail.gmail.com>
Date: Mon, 10 Aug 2015 15:35:00 -0400
Message-ID: <CAPzboycqfmRgXBTp1p83Um=cagi43kHWvq31cesKfKONAmif4A@mail.gmail.com>
From: Adam Rossi <ac.rossi@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autotools --prefix ignored?
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
X-List-Received-Date: Mon, 10 Aug 2015 19:35:06 -0000
Content-Type: text/plain; charset=UTF-8

Perfection! Thanks Ross!

On Mon, Aug 10, 2015 at 5:53 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 7 August 2015 at 15:28, Adam Rossi <ac.rossi@gmail.com> wrote:
>>
>> inherit autotools
>> EXTRA_OECONF = "--prefix=${D}/opt/myfolder"
>>
>> The above is ignored, auto tools puts the results in /usr/bin
>
>
> Autotools already passes --prefix so you should probably just set prefix in
> the recipe instead.  Also don't use ${D}.
>
> inherit autotools
> prefix=/opt/myfolder
>
> Ross

