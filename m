Return-Path: <maxim.radugin@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7200FE006AD
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:23:01 -0800 (PST)
Received: by mail-wi0-f182.google.com with SMTP id en1so5511289wid.3
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 06:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3zBKMQVcdJuuBaH65MX1J8NcXKJmeovdJnq1jz03CQc=;
	b=D/qoayk2gk+LjjHzfyXdk/z2Dq90CBo5F4H+5vZ7ssLyUHytgt5HypGMyyK0LBDDmD
	BaC0h6TvsMO52J370iYx1kCfTdyIdqqdOyBA0hvM0z/PGjr6rBcPbEuy00lK6BGKZKCQ
	2CY99Tk9uDc963PSmGM2THRKEmlu62OiqlOAQjT6rml5f08i4I5eMPwKl4l6TMiLTNoQ
	KgLDREvnLzwj02U/KeBrK+GJUNsr0AZTd2rPa1vllvTmhlEs72ajjOm5H0WutV7I6f5n
	d2i02kSTXX9kRz8ika3uy3GUFCTnY6UcUMRojqPB/7zEwHSmLSXd0t1wbsz7CtjAlwej
	l0mQ==
MIME-Version: 1.0
X-Received: by 10.194.143.100 with SMTP id sd4mr1300204wjb.69.1385389380246;
	Mon, 25 Nov 2013 06:23:00 -0800 (PST)
Received: by 10.194.219.165 with HTTP; Mon, 25 Nov 2013 06:23:00 -0800 (PST)
In-Reply-To: <CAAVaN8xoGRLF9Qj3tnNo9zi3GCx8L_Z7za2EbVu66g7YfJYeGg@mail.gmail.com>
References: <CAAVaN8zkRU-dfasC-Dbyr2Y1+RoYmx6CAn1h1Ox5m=y2=xCPEw@mail.gmail.com>
	<CAAVaN8xoGRLF9Qj3tnNo9zi3GCx8L_Z7za2EbVu66g7YfJYeGg@mail.gmail.com>
Date: Mon, 25 Nov 2013 16:23:00 +0200
Message-ID: <CABWuD8dk_BA0Zkn3NMXP+fLqcvRtFqvghF=3Bj-3DqNLbbM-ag@mail.gmail.com>
From: Maxim Radugin <maxim.radugin@gmail.com>
To: Andy Ng <andreas2025@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to integrate QT Embedded toolchain in the final SDK.sh image
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
X-List-Received-Date: Mon, 25 Nov 2013 14:23:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Andy,

You can create, for example, sdk-image.bb recipe with something like
(tested with Danny):

----------

LICENSE = "MIT"
LIC_FILES_CHKSUM =
"file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \

file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

PR = "r1"

require recipes-qt/meta/meta-toolchain-qt.bb


SDK_RDEPENDS += " \
        your-libs \
        "
----------

Then bitbake sdk-image.bb -c populate_sdk

BR,
Maxim.

On Mon, Nov 25, 2013 at 3:34 PM, Andy Ng <andreas2025@gmail.com> wrote:
> Using Dylan 9.0.1
>
>
> On Mon, Nov 25, 2013 at 1:29 PM, Andy Ng <andreas2025@gmail.com> wrote:
>>
>> Hi
>>
>> I try to produce some SDK that the environment has QT embedded support
>> plus Boost.
>>
>> As far as I know the command to produce sdk is
>>
>> bitbake foo-image  -c populate_sdk
>>
>> Despite the fact that the "foo-image" builds the QT, Boost, and the
>> application, the -c populate_sdk command  does not put QT environment and
>> its environment variables to the environment file of the SDK! Is this a bug?
>>
>> How do you produce the combined SDK?
>>
>> The bitbake meta-toolchin-qte, it produces an SDK with just the toolchain,
>> and the QT libs.
>>
>> How do I produce a rich super-set of QT SDK and  the Image SDK?
>>
>> Best regards,
>> Andreas
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

