Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ia0-f180.google.com (mail-ia0-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ACC0E014AC
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 10:41:06 -0800 (PST)
Received: by mail-ia0-f180.google.com with SMTP id f27so3420236iae.39
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 10:41:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding;
	bh=h+si4omCPaHznWs/C3ik8hlYX022FyIdsTCxIw6z104=;
	b=B+IquIkO2hhLTzntnDTmpDdNV2feTQsLIyVdokFEQtEVRLcJ5VonV6fcgrDMWosu8d
	TeWY9QsZ32rH57mxguVKW+adr2YuEFZ+2ONR0P1TeVZN96MxbfBb8oe2ks1zfYBtVi6h
	O81KuJs3Hogt1zsWBs0N4nH66c2DAMJKxiblkVu1XkAdRzMF9FyQ7CrDCdBN6q/dSWu8
	dhHPa9HmgSEKWFFn5ee8oPtrTsa75xoygjSFIFG2mrH8vC1/qysqkuJncuTQ7c+QC2Y9
	QOGFyabkje89THdQHlWbr6Nhr58zys5Voo8vjZDH0m6nw1wl9aVfyUw8fjxNetQm1x03
	tyNA==
X-Received: by 10.43.114.4 with SMTP id ey4mr15304976icc.27.1358880065770;
	Tue, 22 Jan 2013 10:41:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.12.129 with HTTP; Tue, 22 Jan 2013 10:40:45 -0800 (PST)
In-Reply-To: <20130118165906.676f0ec6@e6520eb>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
	<CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
	<19691651.cLZhLvd0Ni@helios>
	<CANge7vWH1tCjHsJOSa=JP86a3+APQk93ds1UwuYeUGzy4F02WQ@mail.gmail.com>
	<20130117091908.493c18fb@e6520eb>
	<CANge7vXP6Cy4sxo-vXuPEyigd5ag=Jt2ixc_WhZv2QQ+UnnBxw@mail.gmail.com>
	<20130118165906.676f0ec6@e6520eb>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Tue, 22 Jan 2013 13:40:45 -0500
Message-ID: <CANge7vVu6f8WKG8xzqBNxX-_DX_ieuncCrYQ7QpJL3mhcBxYsQ@mail.gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>
Cc: yocto@yoctoproject.org, Paul Eggleton <paul.eggleton@linux.intel.com>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Tue, 22 Jan 2013 18:41:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 18, 2013 at 10:59 AM, Eric B=E9nard <eric@eukrea.com> wrote:
> Le Fri, 18 Jan 2013 10:25:22 -0500,
> Jon Szymaniak <jon.szymaniak@gmail.com> a =E9crit :
>> I checked the package list on a running system (opkg list | grep -i
>> qt). Here's all the installed Qt packages...no qt4-embedded-examples
>> as far as I see.
>>
>> libqtcoree4 - 4.8.3-r50.0
>> libqtdeclarativee4 - 4.8.3-r50.0
>> libqtguie4 - 4.8.3-r50.0
>> libqtnetworke4 - 4.8.3-r50.0
>> libqtscripte4 - 4.8.3-r50.0
>> libqtsqle4 - 4.8.3-r50.0
>>
>> Seems strange to me...any thoughts?
>
> strange, in a fresh build of danny /usr/share/qtopia is only present in
> the following packages :
>
> ./qt4-embedded-translation-linguist/usr/share/qtopia
> ./qt4-embedded-translation-qt/usr/share/qtopia
> ./qt4-embedded-translation-qvfb/usr/share/qtopia
> ./qt4-embedded-qt3to4/usr/share/qtopia
> ./qt4-embedded-translation-qtconfig/usr/share/qtopia
> ./qt4-embedded-mkspecs/usr/share/qtopia
> ./qt4-embedded-phrasebook-dutch/usr/share/qtopia
> ./qt4-embedded-phrasebook-french/usr/share/qtopia
> ./qt4-embedded-phrasebook-spanish/usr/share/qtopia
> ./qt4-embedded-phrasebook-russian/usr/share/qtopia
> ./qt4-embedded-phrasebook-italian/usr/share/qtopia
> ./qt4-embedded-phrasebook-polish/usr/share/qtopia
> ./qt4-embedded-translation-assistant/usr/sh
> ./qt4-embedded-phrasebook-swedish/usr/share/qtopia
> ./qt4-embedded-doc/usr/share/doc/qtopia
> ./qt4-embedded-translation-designer/usr/share/qtopia
> ./qt4-embedded-phrasebook-danish/usr/share/qtopia
> ./qt4-embedded-phrasebook-finnish/usr/share/qtopia
> ./qt4-embedded-phrasebook-german/usr/share/qtopia
> ./qt4-embedded-demos-doc/usr/share/doc/qtopia
> ./qt4-embedded-phrasebook-japanese/usr/share/qtopia
> ./qt4-embedded-phrasebook-norwegian/usr/share/qtopia
> ./qt4-embedded-phrasebook-hungarian/usr/share/qtopia
>
> can you check in your workdir in packages-split which package includes
> this directory ?
>
> Eric

Eric,

Sorry for the delay. I did check my packages-split and it was the same
as what you listed.

Since your email, I had removed my do_install_append() from my
qt4-embedded bbappend, blown away build/$MY_DIR/tmp and done a full
rebuild. I no longer see the qtopia directory in my images. Perhaps
this was a vestige of me experimenting with Qt early on?

I guess I'll call it a mystery solved for the time being, but will
touch back on the mailing list if I figure out what exactly caused
this to be populated in my filesystem. (Unless of course, there were
other items you'd like me to check.)

Thanks again,
Jon

