Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C10A6E01C31; Tue, 12 Jun 2018 02:37:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f178.google.com (mail-ot0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D857E017BC
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 02:37:51 -0700 (PDT)
Received: by mail-ot0-f178.google.com with SMTP id n3-v6so27265368ota.5
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 02:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=3/T6UWVb4c2+Sz5hdfbnYM2aUsLxjrrOSNMJqAMlW2c=;
	b=AYS9jmQHRB62mfZ0zd0wcywGHWDtXcvx+TceGd8aZpQDvC70DFQoq4bOo8N6mP6gY9
	HBy910OyRyBplIa2hvgOoajH68KOD+dRDdvn7YgAaOGb9TShWiMWhqZYUWHzuRC6/yba
	n3vkDyQrggwJjWHqw6OWt1wFVUOB2SGghhEt0ApSBqKkGB6FnnCYBah685xjjgSAK3nK
	Hvfx7f7fil9UsoaVMo51snGrjymjwEbMqlHUTk0f3Rk9stjkVWPNVTcedEUiejXs9d7k
	baoo9FSe2ymK88tfePZBLxppwLAxxvP7x1abwx0R3fnCH5pZDS7APA/NivvlkTZh0moh
	4FDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=3/T6UWVb4c2+Sz5hdfbnYM2aUsLxjrrOSNMJqAMlW2c=;
	b=aOXKdr++BDW55p/5fAgYlZbs2zU9Z1V+5dbpwcdIHI6aFvLsWHyUC8EvRRMR3+g1Np
	hHJi6Fwv/Nq4i92708U6aRk4eyue0abLPKNTDFJ8vamKNAeKqgCmPlAdI0hZdKxLeRaz
	v4DK8q6OYbm8YVDGZ3AMlVGP8s7/3buIsdi52j3/Xy/yQCdep8ySIKkMLqrZ80HSQXWF
	GQktXrrvTMTWKmAaGkVNVZJ2TMQ/voACY2xTRjXY0PZ9WKq/B5Bry8D1yLGlTGrwXp2N
	CvT0cJ2Tbk0y9nb6Mkzhlj1CBFVYE17GCjx/juq506OFRI+ROeJxh4OWX2fDjgm476Bj
	yIUA==
X-Gm-Message-State: APt69E0GffmdCyJQKFfbcyaiL6a2NvCuKoDR1X90K4gBGXbpCA+Etr/+
	YFKfPatCwphVC70PkDEWWXiJiTgFsDxml7xmzbY=
X-Google-Smtp-Source: ADUXVKJQpD6FVYDWNiBV0/eIapnGd395pZUcv4ES6xKDHRyAffMCoNMwzRgvSh5AOa+bQ0cZpbM/2GqkdJBrFEskgCE=
X-Received: by 2002:a9d:1f3b:: with SMTP id
	x56-v6mr1663741otd.369.1528796270261; 
	Tue, 12 Jun 2018 02:37:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90cd:0:0:0:0:0 with HTTP; Tue, 12 Jun 2018 02:37:49
	-0700 (PDT)
In-Reply-To: <CAMXie8GXRqKFwCOOPApHUcxpEo1K9NeCVazsqSvWtzZ-Bxsqzw@mail.gmail.com>
References: <CAMXie8EtM6FOs4Qf3XHW-5EGTy_+xc7Cen-U_UB3ZpO8b4PcjA@mail.gmail.com>
	<5E53D14CE4667A45B9A06760DE5D13D0F38E9788@ALA-MBC.corp.ad.wrs.com>
	<CAMXie8EYUhONeuve=oF3hs9fe9Jz_rTP2QWFh0AKZdyyGj=J8Q@mail.gmail.com>
	<611dfb80-87b3-33f7-7bdc-3a3f36a6be7f@gmail.com>
	<CAMXie8GXRqKFwCOOPApHUcxpEo1K9NeCVazsqSvWtzZ-Bxsqzw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 12 Jun 2018 12:37:49 +0300
Message-ID: <CANNYZj-U69qvSQKcVwEgY3+8qcn7fKtpCS3BYjk9QrRVoPx_1w@mail.gmail.com>
To: Ricardo Ramirez <o_o@ieee.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Tue, 12 Jun 2018 09:37:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You start by defining 'works'. It can be anything from quickly
building an image and booting it on the target hardware to see a login
prompt, to running a massive test suite and achieving 100% pass rate.

Alex

2018-06-12 2:14 GMT+03:00 Ricardo Ramirez <o_o@ieee.org>:
> Thanks for the reply, Khem!
>
> What steps should I follow to be able to verify the build I put together =
for
> SPARCv9 works (or doesn't)?
>
> I realize it is a pretty non-conventional (newbie like) question but I'd
> like to follow a methodological procedure to validate the build.
>
> I appreciate your answer.
>
> -R
>
> On Mon, Jun 11, 2018 at 5:41 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> Hi Ricardo
>>
>> On 6/10/18 7:06 PM, Ricardo Ramirez wrote:
>>>
>>> Hi David,
>>>
>>> Thanks for the prompt reply!
>>>
>>> My question was a follow up of Khem's inquire (posted on 2014-05-02)
>>>
>>> https://lists.yoctoproject.org/pipermail/yocto/2014-May/019387.html
>>>
>>
>> this reply still holds as of today.
>>
>>> Using the links you sent me, I found that the old OE-Classic branch
>>> supports sparc32 but didn't see any sparc64
>>>
>>> http://layers.openembedded.org/layerindex/oe-classic/recipes/
>>>
>>> As such, I'd like to know what steps I need to follow in order to enabl=
e
>>> a SPARCv9 machine in Yocto.
>>>
>>
>> We support arm/aarch64/mips/mips64/ppc/ppc64/riscv64/x86/x86_64 for majo=
r
>> arches in OE-Core, we also carry patches to support SH4 but do not test
>> actively for it. sparc support is in there atleast I see basic construct=
s
>> are there. Its should be possible to build upon that easily. But it will=
 not
>> work out of box to set your expectations right.
>>
>>> I appreciate your answer.
>>>
>>> -R
>>>
>>>
>>> On Sun, Jun 10, 2018 at 7:17 PM, Reyna, David <david.reyna@windriver.co=
m
>>> <mailto:david.reyna@windriver.com>> wrote:
>>>
>>>     Hi Ricardo,____
>>>
>>>     __ __
>>>
>>>     If you are asking about the list of MACHINE types that Yocto Projec=
t
>>>     supports, then the best place to look is in the Layer Index:____
>>>
>>>     __ __
>>>
>>>     https://layers.openembedded.org/layerindex/branch/master/layers/
>>>
>>> <https://layers.openembedded.org/layerindex/branch/master/layers/>____
>>>
>>>     __ __
>>>
>>>     Click on the =E2=80=9CMachines=E2=80=9D tab, click on the =E2=80=9C=
Search=E2=80=9D tab with or
>>>     without a search value, and see the glorious list.____
>>>
>>>     __ __
>>>
>>>     The same goes for supported layers, recipes, classes, and distro
>>>     values.____
>>>
>>>     __ __
>>>
>>>     You can change the =E2=80=9CBranch=E2=80=9D value to see the MACHIN=
E=E2=80=99s per
>>> release.____
>>>
>>>     __ __
>>>
>>>     - David Reyna____
>>>
>>>     __ __
>>>
>>>     *From:*yocto-bounces@yoctoproject.org
>>>     <mailto:yocto-bounces@yoctoproject.org>
>>>     [mailto:yocto-bounces@yoctoproject.org
>>>     <mailto:yocto-bounces@yoctoproject.org>] *On Behalf Of *Ricardo
>>> Ramirez
>>>     *Sent:* Sunday, June 10, 2018 5:07 PM
>>>     *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>     *Subject:* Re: [yocto] Target CPU architectures that Yocto Project
>>>     Support____
>>>
>>>     __ __
>>>
>>>     Hi,____
>>>
>>>     __ __
>>>
>>>     Naive question from a newbie. How can this be achieved? I'd
>>>     appreciate if you could please shed some light on what steps need t=
o
>>>     be followed?____
>>>
>>>     __ __
>>>
>>>     Thanks in advance,____
>>>
>>>     __ __
>>>
>>>     -R____
>>>
>>>
>>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

