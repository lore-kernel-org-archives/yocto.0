Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9773EE00A2C; Tue,  7 Jul 2015 05:18:01 -0700 (PDT)
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
	*      [209.85.213.171 listed in list.dnswl.org]
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E829E009F0
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 05:17:57 -0700 (PDT)
Received: by igrv9 with SMTP id v9so138883733igr.1
	for <yocto@yoctoproject.org>; Tue, 07 Jul 2015 05:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=ciuhDBcmgaBqWAV1pOSJeR4INYlLi4yl+ubBIjXUPZY=;
	b=Rur6+MHy31vbE2IZxtei/m9qz9DUVADVhdf++TX92t6Z3p6ZLeMedCSSGE3MwWdSyX
	zJxXLGrMbOAmR3P9YO3bVf2gtKaBZr8V+J6q8GAciWzfocNhKcKnZCG4FX+xg7QvuRFm
	989LbbZnePt+XWQ5EUTL2NIzQkV8Uz4Et4lIDy3hyUgvCeuj59XZimkVQlMz3RiUeES3
	kIVNiABY5yE1VWFudk30BMyt7DAn/gUxz8rlvz5W/BHe8D1g/jxqJEorcopK4G4z5UAm
	hfK2t5Qc6XtuQK/boEiP8g88cT+B2Q9rxwKhlXgN6PO4bILQTa74ZwlbnGfvnoeuh7R/
	VTzw==
MIME-Version: 1.0
X-Received: by 10.42.206.5 with SMTP id fs5mr16640656icb.19.1436271477154;
	Tue, 07 Jul 2015 05:17:57 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.36.218.7 with HTTP; Tue, 7 Jul 2015 05:17:57 -0700 (PDT)
In-Reply-To: <CAJTo0Lb1Nth4VGocNqTDWFnrzO4_FGFbeg6Akk7ZmSvFLPP6Ew@mail.gmail.com>
References: <alpine.LFD.2.11.1502190508290.29947@localhost>
	<CAF3SDA6sUY=4cg-pihtftzTNDREm5cKMS7MqQp4DJ9M81ez5UQ@mail.gmail.com>
	<87vbdwy88m.fsf@weregild.amer.corp.natinst.com>
	<CAJTo0Lb1Nth4VGocNqTDWFnrzO4_FGFbeg6Akk7ZmSvFLPP6Ew@mail.gmail.com>
Date: Tue, 7 Jul 2015 09:17:57 -0300
X-Google-Sender-Auth: ub8JrFCRBBIMt2YHUH-GzI9238Y
Message-ID: <CAP9ODKpctCYLujwOt9FyCit1qrpn8p_=CdM5g6Ov4zkVJSEOeA@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH] cross-localedef-native_2.20.bb: fix for gcc5
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
X-List-Received-Date: Tue, 07 Jul 2015 12:18:01 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jul 7, 2015 at 5:29 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 7 July 2015 at 03:54, Richard Tollerton <rich.tollerton@ni.com> wrote:
>>
>> The build of cross-localedef-native is observed to fail under gcc5 hosts
>> with multiple definition errors, e.g.:
>
>
> Is this patch intended for fido?  Master doesn't have 2.20 anymore (2.21)
> and I believe that works with gcc5 hosts.

I would prefer to upgrade to 2.21, if this is tthe case.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

