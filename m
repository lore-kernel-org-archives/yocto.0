Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88558E00777; Tue, 10 Mar 2015 07:18:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D0AE00754
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 07:18:53 -0700 (PDT)
Received: by iecsf10 with SMTP id sf10so15564951iec.2
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 07:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0FKIoecxlRB5ESP9IVotzeYY58h8oSCVqODWFIdSggs=;
	b=y+WubZOgLJjKuZE4Y9ZmXdvD9tviruvNTpT7VYWhaWwk0+seaB6ERAlgDyx/aq6DOV
	epccnW2t7z7FpoFm2NwXrdXSoqSnMemqSXc/13WKQR5FIOUnL7DN3F84b8v+8fSBl0PX
	ACg1MdU4TfVEixCT06O+bXWuPqdXfVt2jEZCK/+b3LHvZP4cG8Bn9ZgDVe4tUjlT04VA
	UXiqYRvupcNt1tVjMZCAoDPMzqx0vJJ8QLCLVmaTmOIOONzmK4w+m4XwgWRcWp49pr3N
	/OMowyntgf9MJFMWbCWVWHg0gx9REGjIB6BeRgf1BJakOYou7trFMnO34bYc2SdgVW1Z
	Xz3Q==
MIME-Version: 1.0
X-Received: by 10.50.36.103 with SMTP id p7mr83969649igj.20.1425997132633;
	Tue, 10 Mar 2015 07:18:52 -0700 (PDT)
Received: by 10.64.39.16 with HTTP; Tue, 10 Mar 2015 07:18:52 -0700 (PDT)
In-Reply-To: <1425994268.31108.38.camel@picadillo>
References: <CACjDgAN4pFt7Q-gm6dt-AMTryio_dsA8m_ARbssdc6QNktK8yQ@mail.gmail.com>
	<1425994268.31108.38.camel@picadillo>
Date: Tue, 10 Mar 2015 22:18:52 +0800
Message-ID: <CACjDgANh1pO1Ve=AdP1FH1d2sEfdatnFLqbu_hSOhBFXooOaRA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intel BSP for Rangeley
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
X-List-Received-Date: Tue, 10 Mar 2015 14:18:58 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Thanks for the info.  What recipe should I use get serial terminal
where the unit does not have any video port.  Thanks again.

Regards,
Albert.

On Tue, Mar 10, 2015 at 9:31 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Tue, 2015-03-10 at 12:45 +0800, Albert K wrote:
>> Dear all,
>>
>> May I know which BSP to use for Intel Atom C2000 Rangeley?  I do not
>> see that Intel BSP has the mohon peak bsp.  I am trying out the Dizzy
>> 1.7 branch.  Thanks.
>>
>
> There is a BSP for mohon peak in the meta-intel/dizzy branch:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/tree/meta-isg/meta-mohonpeak?h=dizzy
>
> Tom
>
>> Regards,
>> Albert.
>
>

