Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C614E00DC9; Fri, 29 Dec 2017 05:49:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8680E00D89
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 05:49:55 -0800 (PST)
Received: by mail-oi0-f51.google.com with SMTP id x20so28763705oix.12
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 05:49:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=S5LLk7O2rwE7RyXjqvcIpJaiQbDEjZkf4+o9FN3Lutw=;
	b=0SARDpHJR5ss7ts9QPze0QofjxVXpAc3sucw7J7OVDcTvJZp2hPwkrqxaPtw1c/xLE
	WeP5IlbpBmYDoIearMNsyfYu6y+avBgUIaaWzqr5FF/IRjrxPZameFoZX5w+Ti/S88zR
	mzRbIB1wUscyydh/dqW/48MxlIEHS30XxOz43Fy4agnmKaK7GdjziwBeUIxIIz1RMG2l
	lCmCQ6E1A+0tRkvToRrKwx52k6AlFjvYpIwT3xC/Dy8kwuqksY3DIU0b2B95x5H3pzI3
	/y23n/D+ci79L8Si+b17bUJtetQUCGRwO1Zvkn+2qSct+91N/YY7sCldJsIxFlLyBLdL
	AFoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=S5LLk7O2rwE7RyXjqvcIpJaiQbDEjZkf4+o9FN3Lutw=;
	b=ZUEI2dhS9pZZY7W1mBX8Q985dszlmGfo6SefI9E63HgWlgxqETtiqJo6mUmdxPyZcx
	eEfeCQBg6CviCamgi8tJTBupo0OVRjaxTYpamqpFwD0oAjCyKhcJkh6KYRKCOEg21mbx
	sz6UO2jcSf1eRX63RyV9sOIgEQv90fY9YiUpvPuJNyjBoo+WceooUxlfdeDU7gb43NVR
	8bD/FQ0n1LxggCWdIbZs2KKoYJXXbQqArvig4i32pcbFSkYN6PyydJgUDhvIXaBSk6by
	y47j892w3BU/hq9Gv/pyS0BbgemIl0uHUHHxUwfg9J4f9E4rTVTp5IwP0m3jLbMULP/1
	khCQ==
X-Gm-Message-State: AKGB3mKt9x1hYHF0JnRqL94zStqRTAyZabi+R92W/A5R8Cx4xUa22tNE
	zJOCmkz1UJilXJdoT3w5UTuO5KV90M+3100lbYS77g==
X-Google-Smtp-Source: ACJfBoveF4XhQegg7ImYHk3w4x/Q9RpXQ/M/N8jj5EGRlj9vWHXrfIhhtZS3xLvFu++Tw3u74dxeKn8jwRsc8FzyqDY=
X-Received: by 10.202.87.139 with SMTP id l133mr25121303oib.151.1514555394788; 
	Fri, 29 Dec 2017 05:49:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.58.101 with HTTP; Fri, 29 Dec 2017 05:49:54 -0800 (PST)
In-Reply-To: <CANx9H-B+XqfgyOHyNUBC0eMJ=ivT30BZaPkQE4u6iK0Cs+Yw6Q@mail.gmail.com>
References: <CAOT_U5Zb+aMyseXVPpjYxG_9TPD2nxa_Rvgu_z7N6qS1kBFGMg@mail.gmail.com>
	<CAOT_U5YOPe5_sSDu7Kn_9_8znPXJd4=VvdW6FiTeLxc9Pjoi-g@mail.gmail.com>
	<CANx9H-B+XqfgyOHyNUBC0eMJ=ivT30BZaPkQE4u6iK0Cs+Yw6Q@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 29 Dec 2017 14:49:54 +0100
Message-ID: <CAOT_U5bqJa5K7m6FrX+eX73kYa4dhnWU9HeDOaZAMub1hu18DQ@mail.gmail.com>
To: Tim Orling <ticotimo@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Python cryptography failing due to undefined symbol: pthread_atfork
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
X-List-Received-Date: Fri, 29 Dec 2017 13:49:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Tim,
your hunch was right, it can be fixed with the .bbappend, thanks.
Would like to submit it as a patch to python-cryptography.inc.

Is there a policy on what should be the base commit
for which the patch should be applied on?

I can't test it with master, I saw there is a rocko-next,
should that be a starting point?


On Sat, Dec 23, 2017 at 5:18 AM, Tim Orling <ticotimo@gmail.com> wrote:
> My hunch (not tested) is that the recipe needs -pthread added to LDSHARED=
:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/distutil=
s.bbclass#n82
>
> So try a python3-cryptography_%.bbappend file with =E2=80=9Cexport LDSHAR=
ED=3D"${CCLD}
> -shared -pthread=E2=80=9D in your own layer
>
> Or try adding that line to python-cryptography.inc and then submit a patc=
h
> if it works.
> On Fri, Dec 22, 2017 at 9:10 AM Alan Martinovic <alan.martinovic@senic.co=
m>
> wrote:
>>
>> I have confirmed that no `-pthread` flags are being set for building
>> python-cryptography.
>>
>> Running the following:
>>
>>     bitbake python-cryptography -c do_compile
>>     bitbake python-cryptography -c devshell
>>     grep pthread ../temp/run.do_compile
>>
>> gives no returns.
>> Also there isn't a mention of it when doing a build in full
>> verbose:
>>
>>     bitbake python-cryptography -c cleanall
>>     bitbake python-cryptography -vvv | vi -
>>
>>
>> On the target the symbol is identified as missing (NOTYPE):
>>
>>     ~# readelf -a
>>
>> /usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_openssl.a=
bi3.so
>> | grep pthread_atfork
>>     000aebb4  0002d916 R_ARM_JUMP_SLOT   00000000   pthread_atfork
>>        729: 00000000     0 NOTYPE  GLOBAL DEFAULT  UND pthread_atfork
>>
>>
>> My current goal is to extend the recipe with the `-pthread` so that
>> it's there when
>> the '_openssl' extension is being built.
>> Still open to suggestions.
>>
>>
>> A thing that seems to be underlying my assumption is that the recipe
>> for python-cryptography
>> hasn't actually changed between Morty (where it worked) and Rocko...
>>
>> On Thu, Dec 21, 2017 at 6:17 PM, Alan Martinovic
>> <alan.martinovic@senic.com> wrote:
>> > Hi there,
>> > just did a migration to Rocko and am witnessing"
>> >
>> >     root@device:~# python3
>> >     Python 3.5.3 (default, Dec 20 2017, 02:02:22)
>> >     [GCC 7.2.0] on linux
>> >     Type "help", "copyright", "credits" or "license" for more
>> > information.
>> >     >>> from cryptography.hazmat.bindings._openssl import ffi, lib
>> >     Traceback (most recent call last):
>> >       File "<stdin>", line 1, in <module>
>> >     ImportError:
>> >
>> > /usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_openssl=
.abi3.so:
>> > undefined symbol: pthread_atfork
>> >
>> >
>> > Have tried both the recipe that comes with Rocko
>> > and master of meta-openembedded.
>> >
>> > Seems to be the same bug as this one:
>> >
>> > https://bugs.gentoo.org/630578
>> >
>> > resolved with this patch:
>> >
>> >
>> > https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=3Dc824d1c44fcf455=
6de21d2c8b8ae3732b0fc0c5b
>> >
>> > Can someone provide hints on what would that translate to
>> >  for the python cryptography recipe?
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

