Return-Path: <otavio.salvador@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D20FE0086F; Tue,  9 Dec 2014 08:02:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f49.google.com (mail-yh0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9297E0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:02:08 -0800 (PST)
Received: by mail-yh0-f49.google.com with SMTP id f10so391463yha.22
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 08:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=aJWwuKsW+vzWOl70ov82UlDPhxunppaGG0x9OjYaQr4=;
	b=Az8etsRUfVgaWMPIl8+d3wN9T2J8IG/QlaQkkcSw3s89c3mI1S/bFfNrQ51LPR19E/
	XZA/aoZFEXacW8sUmgRZcv9xJYmxk7MCMoTt/P8vwdL9YUF9C2BoiGHs6eNkJat/OUtv
	+FHGB1/A6aWqKkao9PnufSnR1rGTy7bkqAYVnG39BdZbIYzbos3EkX0fsOtZ87g7bi/n
	WBFaDW3O4YIoVcx51nbv8q1CQU6Hxw7DZBnsRzB+UQbTtEL5DCS0RyzWQij+9qpFn5dM
	pLiE4BQq3PwlUpdqnq5/Fabc/G5oRhrWIcv9wzNZvcGI1nrhn1Ud6l4F+wOfBReagZ5d
	9ojw==
MIME-Version: 1.0
X-Received: by 10.236.66.72 with SMTP id g48mr3606552yhd.37.1418140927592;
	Tue, 09 Dec 2014 08:02:07 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.171.132 with HTTP; Tue, 9 Dec 2014 08:02:07 -0800 (PST)
In-Reply-To: <CAJTo0LY4G-cPJf_7Fof89_onpjn+WY9h8FCzYFi+3NRNBzrjXQ@mail.gmail.com>
References: <1418135572-5521-1-git-send-email-otavio@ossystems.com.br>
	<20141209152907.GB18757@axis.com>
	<CAP9ODKqOJs0yh4q0FrKkYKsYQGMhM-X+LU5y=k+0-itumS=jZQ@mail.gmail.com>
	<CAJTo0LY4G-cPJf_7Fof89_onpjn+WY9h8FCzYFi+3NRNBzrjXQ@mail.gmail.com>
Date: Tue, 9 Dec 2014 14:02:07 -0200
X-Google-Sender-Auth: wW0mg4qXdL7keHu9E2L3Ew6nO2o
Message-ID: <CAP9ODKpRLHZJnbB4yL7MN8sZSRWrrDq+3j52=OASAH7ZPF=1+A@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project Mailing List <yocto@yoctoproject.org>
Subject: Re: [PATCH v2] distro/poky: Add Debian 8 (Jessie) as sanity tested
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
X-List-Received-Date: Tue, 09 Dec 2014 16:02:18 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Dec 9, 2014 at 1:41 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 9 December 2014 at 15:32, Otavio Salvador <otavio@ossystems.com.br>
> wrote:
>>
>> Richard, can you pick the v1 or want me to send a v3?
>
>
> I had v1 in my MUT, then dropped it and added v2.  I can drop that and go
> back to v1. ;)

Thanks Ross, please do :)

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

