Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6397E00873; Mon, 22 Sep 2014 22:55:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8312EE0086E
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 22:55:00 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id tr6so8504942ieb.26
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 22:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZsWV3mLTBtOkECaBuRTO282TeJaYUPDz2nkNjcX5imM=;
	b=PjxTC1TFy+dSuf2XwecQb/zUhe89UKBQS4xX6h4xweKL/Nm939MowoHSGvdvGKArg2
	L2L3X+YNBaCQWDhiGvclxJ+Yf5rCYi1e+tvmCUxfWfTpBvm5gY19TXoPVL8bCglFt0qJ
	keprSUgY1DUQSPRbTNd8qu7IWrpBVYhLG2zqBBibn+XXn/21TkII4YIUmYhZ3OoQHjlL
	MNu6cTBqcG/M3BEBsNVTVdABUUBnlDFS7zN9cPCj8ZVQHqYpUW27OZXPZ2iQZTdRe4rw
	tvSvtXcMSRv2XLa4ZnYhSf4da3pIygWHkynoQ7GHP3nZsm5WgqixTbfKU26S68pn4e5Z
	m+SQ==
X-Received: by 10.50.20.4 with SMTP id j4mr517089ige.13.1411451699170; Mon, 22
	Sep 2014 22:54:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.240.6 with HTTP; Mon, 22 Sep 2014 22:54:29 -0700 (PDT)
In-Reply-To: <CA+Z6RkUOs2panpkstvdoiy8cCf7vL_7XCcUkQq4hyPvGYG=3NQ@mail.gmail.com>
References: <CA+Z6RkW1D8pPpGCTu_SwF5Q+d0Um-MuYQM3mtube=u2txu0V6A@mail.gmail.com>
	<26633520.FLER5Y4OlA@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWSwoqcn9HBttOn1jrTaX5X=OhLLGVsex5TqzWcHGG1LQ@mail.gmail.com>
	<2002943.O9tR5uaDDD@peggleto-mobl5.ger.corp.intel.com>
	<CA+Z6RkWN=wbJkf94rwPWNqDKdGvhGPRvdTXFjqM+Uho8mTCzkg@mail.gmail.com>
	<CA+Z6RkUOs2panpkstvdoiy8cCf7vL_7XCcUkQq4hyPvGYG=3NQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Sep 2014 22:54:29 -0700
Message-ID: <CAMKF1sqc0+V0V__Ot1T_Qzd-DPpTK4OF9ooAz2EOEEXfT-S-aQ@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Navani Srivastava <navani.srivastava@lnttechservices.com>
Subject: Re: Integration of custom recipe with SDK
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
X-List-Received-Date: Tue, 23 Sep 2014 05:55:04 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 22, 2014 at 9:26 PM, Navani Srivastava
<navani.srivastava@gmail.com> wrote:
> Please find the recipe attached herewith for qjson. This recipe is helpful
> to work with qt4-embedded as qt4 doesn't have qjson feature in built.
> I tried 'bitbake -c populate_sdk <myimage>' but it has not integrated qjson
> package along. I am suspecting qjson recipe now. Am i missing anything in
> attached recipe which is blocking me to integrate qjson in SDK?
>

Have you made sure that qjson is otherwise included into your image ?
I see that FILES_${PN} is being overwritten twice may be you want +=
in second place.


> Navani
>
> On Mon, Sep 22, 2014 at 2:48 PM, Navani Srivastava
> <navani.srivastava@gmail.com> wrote:
>>
>> I will follow the suggestion given by you and will update the result.
>> However in case if I want to integrate custom recipe with
>> meta-toolchain-qte, is there any example existing which can help me in
>> understanding?
>>
>> Right now I am following the procedure given by Randy but some example
>> could be of a great help!!
>>
>> Regards
>>
>> Navani
>>
>>
>> On Mon, Sep 22, 2014 at 2:21 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>>>
>>> On Monday 22 September 2014 14:06:26 Navani Srivastava wrote:
>>> > On Mon, Sep 22, 2014 at 1:45 PM, Paul Eggleton <
>>> > paul.eggleton@linux.intel.com> wrote:
>>> > > On Sunday 21 September 2014 09:26:07 Navani Srivastava wrote:
>>> > > > We are not using populatesdk ... we need to generate it through
>>> > > > meta-toolchain-qte only so i am trying with the solution provided
>>> > > > by
>>> > > > randy..
>>> > >
>>> > > Can I ask why? I'd like to understand where -c populate_sdk needs
>>> > > further
>>> > > improvement.
>>> >
>>> > I have to generate toolchain which contain qt related tools also like
>>> > qmake
>>> > and qjson, so we are using meta-toolchain-qte to generate the
>>> > toolchain..
>>> > Do you suggest it's better to integrate meta-toolchain-qte somehow with
>>> > populate_sdk so that we can make life easier?
>>>
>>> It is possible to integrate the two - all you need to do is ensure the
>>> extra
>>> qte tools get added to the SDK. One way to achieve this would be to add
>>> the
>>> following to your image recipe:
>>>
>>> QTNAME = "qte"
>>> QT_DIR_NAME = "qtopia"
>>> require recipes-qt/meta/meta-toolchain-qt.inc
>>>
>>> (I haven't tested this so I'm not 100% sure if it will work, but it
>>> should.)
>>>
>>> Cheers,
>>> Paul
>>>
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>>
>>
>

