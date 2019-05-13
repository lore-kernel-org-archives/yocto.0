Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28788E00D12; Mon, 13 May 2019 08:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f193.google.com (mail-it1-f193.google.com
	[209.85.166.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90AD3E0096F;
	Mon, 13 May 2019 08:29:32 -0700 (PDT)
Received: by mail-it1-f193.google.com with SMTP id s3so20975516itk.1;
	Mon, 13 May 2019 08:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ntoCN6frwKH0fkFV1OislitCjZqXw9dqr1CYy9ACQ3s=;
	b=QNSNWfoxSLffl26hC5SvSlL/jmnlrPi37bZbtRWJLoVzBbD8KcT/F8SbvuVxIUhtPq
	anovVayPFkIb+6+OkgSH8Wv/FwukybOc9/lFQ+EBPaLlIJbLgohOZYqED0VJw6w0gfF4
	TxpGEOmgUQCtEj784OyYsmzh3TLpnr565YDaa8FyjmrdPHa006oiqUvyxgYeV3piOgYy
	qP9SD+aY8Fob8vdZzA+j0exGU3fxDYwYRUCmkXtXoKU9yy6LpfmjNCfIMDirSP64Pkfh
	ApoAv8jKqNQwUrRA+gDePtZpCkOQGEoj9kJMAPJ3UGeBVguPDyU2r/s3uAIZ+GRsGEZQ
	CDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ntoCN6frwKH0fkFV1OislitCjZqXw9dqr1CYy9ACQ3s=;
	b=OU1FE0Wk0kxbcIPH+ydjzW2JZjZsFldeKBn8Y1wSQNRUCLewGXpayTCvNI6cC0eWUT
	+SBtwyQZUEUpEP8PUaHFmkA23YMhO2xY2Vh7FujpF4WZEs+/XEzZsSzo407EXDokwk6R
	70D7/DasHk50h9chb3FNs4MxlY+NHIB3QGINLNWUE3LYP3do5FoIKqEv3SON8OoZhLoj
	viDNveoHxUs+8pjf8SfhVzcwHKUrPqesOH6meiKXtbt+zsf4nPfx3zpOyIBVDKZWbuxl
	tAT5WPXN4ej1qtqrbRobnxhu2rF4m2PDtXzsAjCJt039hyVg0zUh1tf2pkrJXVBNlY78
	2/qQ==
X-Gm-Message-State: APjAAAUoFMGUgmgpZV0LzsJX0PacdyDzy/wBrKhQCyMwITP91C1jKckJ
	mmGiB/K5bf8F/5Jrk5xcf+1Khc0W+xBv7IudhoA=
X-Google-Smtp-Source: APXvYqzCk81sVyTz/Q0CkdLC1NOSC6gU9OkhP/rlZpxtREro072L/jln9yHl9fbOFxixRof2QjxPQ+SSGs157e9V3ZQ=
X-Received: by 2002:a05:660c:443:: with SMTP id
	d3mr19296808itl.147.1557761372061; 
	Mon, 13 May 2019 08:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAUYH83APXjXi8FiT3492zi0EVcsT4MfT69LJO+nJ5er8w@mail.gmail.com>
	<4823d30b2edfc0eea9fcdec81f68e6e8f113f015.camel@intel.com>
	<CAOe0dAVUf0hJDze4mRbNp-wGCpKMJs-5FQP7rTwiUmopwBQcdw@mail.gmail.com>
	<4a8c7bbf-e0e9-dd0b-af5f-ed3ff6df5562@gmail.com>
	<CAOe0dAXhkzhQZO2zOPtM4s5pO-t9VFOPsWt_h-5P+4rT=Hzhog@mail.gmail.com>
	<CANp-EDYmzPbafstpL60UtjtiznDtv02ZvTxH5Mnarr4c6NTQcg@mail.gmail.com>
In-Reply-To: <CANp-EDYmzPbafstpL60UtjtiznDtv02ZvTxH5Mnarr4c6NTQcg@mail.gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 13 May 2019 20:59:20 +0530
Message-ID: <CAOe0dAX-_ZCbo-pveYi2MOC9ytO1ejkAqQGcjzCr1_Hpz=+8nQ@mail.gmail.com>
To: Ralph Siemsen <ralph.siemsen@linaro.org>
Cc: yocto-bsp@yoctoproject.org,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Timestamp error between zImage & uname-a [ Yocto-2.6.1 + Qemux86 ]
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
X-List-Received-Date: Mon, 13 May 2019 15:29:33 -0000
Content-Type: multipart/alternative; boundary="0000000000003a09560588c69552"

--0000000000003a09560588c69552
Content-Type: text/plain; charset="UTF-8"

Thanks Ralph for informative reply .
Will check once again after deleting the file you suggested .

Ashish


On Mon, May 13, 2019, 7:05 PM Ralph Siemsen <ralph.siemsen@linaro.org>
wrote:

> Hi Ashish,
>
> On Mon, May 13, 2019 at 5:57 AM AshishKumar Mishra <
> ashish.emailaddress@gmail.com> wrote:
>
>> So , time shown by "uname -a" is retains older value even though
>> i had compiled the linux multiple times .
>>
>
> This is normal behaviour, even when building the kernel directly (eg. not
> using Yocto). It is a bit surprising at first, but it all comes down to
> dependencies in the Makefile for the kernel.
>
> The version string displayed by "uname -a" comes from init/version.c in
> the kernel source tree. Specifically the symbol UTS_VERSION, which is
> defined in include/generated/compile.h. This file is produced when you
> first build, and remains thereafter, unless you do "make clean" or
> equivalent.
>
> Currently , only way i am able to bypass this behavior is to do bitbake -c
>> cleanall linux-yocto
>> before every compilation.
>>
>
> You can delete the include/generated/compile.h file in your kernel build
> directory. Upon rebuild of kernel, the file will be re-created with the
> current date/time.
>
> Regards
> Ralph
>

--0000000000003a09560588c69552
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br></div><div dir=3D"auto"><br></div><div dir=3D"au=
to">Thanks Ralph for informative reply .</div><div dir=3D"auto">Will check =
once again after deleting the file you suggested .</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Ashish=C2=A0</div><div dir=3D"auto"><br><br><div=
 class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Mon, May 13, 2019, 7:05 PM Ralph Siemsen &lt;<a href=3D"mailto:ralph.siem=
sen@linaro.org">ralph.siemsen@linaro.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Ashish,</div=
><div><br></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">On Mon, May 13, 2019 at 5:57 AM AshishKumar Mishra &lt;<a href=
=3D"mailto:ashish.emailaddress@gmail.com" target=3D"_blank" rel=3D"noreferr=
er">ashish.emailaddress@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">So , tim=
e shown by &quot;uname -a&quot; is retains older value even though <br>i ha=
d compiled the linux multiple times .<br></div></div></blockquote><div><br>=
</div><div>This is normal behaviour, even when building the kernel directly=
 (eg. not using Yocto). It is a bit surprising at first, but it all comes d=
own to dependencies in the Makefile for the kernel.</div><div><br></div><di=
v>The version string displayed by &quot;uname -a&quot; comes from init/vers=
ion.c in the kernel source tree. Specifically the symbol UTS_VERSION, which=
 is defined in include/generated/compile.h. This file is produced when you =
first build, and remains thereafter, unless you do &quot;make clean&quot; o=
r equivalent.</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Currently , only way i am able=
 to bypass this behavior is to do bitbake -c cleanall linux-yocto <br></div=
><div dir=3D"ltr">before every compilation.<br></div></div></blockquote><di=
v><br></div><div>You can delete the include/generated/compile.h file in you=
r kernel build directory. Upon rebuild of kernel, the file will be re-creat=
ed with the current date/time.</div><div><br></div><div>Regards</div><div>R=
alph<br></div></div></div>
</blockquote></div></div></div>

--0000000000003a09560588c69552--
