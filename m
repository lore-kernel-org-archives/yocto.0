Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A649AE014F3
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 01:04:32 -0700 (PDT)
Received: from 2.70.208.156.mobile.tre.se (2.70.208.156) by
	stoexhubfe01.domain01.net (10.12.10.6) with Microsoft SMTP Server (TLS)
	id 8.3.279.1; Mon, 22 Apr 2013 10:04:29 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <CAFyqS9oR-s4Mo5a-OyU6=NynDKTy+FsprDjxe1ubbkKLFmK=Ug@mail.gmail.com>
References: <CAFyqS9rXZcC9EWFsM=9MfXtrr--8QmRq9+5kn2rJ_TzeE6nEBg@mail.gmail.com>
	<a2f752ad-070b-4b95-bf55-8ce4f031b199@email.android.com>
	<CAFyqS9oR-s4Mo5a-OyU6=NynDKTy+FsprDjxe1ubbkKLFmK=Ug@mail.gmail.com>
MIME-Version: 1.0
From: Anders Darander <anders@chargestorm.se>
Date: Mon, 22 Apr 2013 10:04:25 +0200
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Message-ID: <d39e1aa5-4722-4c85-8295-8c95ebb7f11f@email.android.com>
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gnupg vs gpgme
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
X-List-Received-Date: Mon, 22 Apr 2013 08:04:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit



"Hans Beckérus" <hans.beckerus@gmail.com> wrote:

>On Mon, Apr 22, 2013 at 9:47 AM, Anders Darander
><anders@chargestorm.se> wrote:
>> Hi,
>>
>> "Hans Beckérus" <hans.beckerus@gmail.com> wrote:
>>
>>>Hello. I wish to bring in gnupg to our system but from what I can
>tell
>>>gnupg is not part of Yocto nor OpenEmbedded. However, gpgme is. Is
>>>gpgme to consider a complete replacement for gnupg? I have no need
>for
>>>any gpg application libraries, but need the ability to sign and
>>>perhaps encrypt/decrypt information. Is an option here to bring in
>>>gnupg 1.4.13 myself or is this not something you should recommend?
>>
>> Well there are recipes for gnupg versions 1.4.7 and 2.0.19 in
>OE-Core, and this in Yocto. See meta/recipes-support.
>>
>
>Ah. Yes, now I see it. I think my mistake was that I searched for gpg
>not gnupg :( My bad.
>Is there anything that should make me consider 1.4.7 before 2.x? I am
>looking for something as lean as possible since there are very limited
>resources on the target system. Also, 1.4.13 seems to be considered
>current stable. I guess OE is lagging behind somewhat on this package?
>
 
Well, 1.4.7 was the last release under GPLv2, which is the primary reason for keeping it. 2.0 19 is what you'll get when requesting gnupg from the build system, unless you either prefer the old version or declare that you don't want GPLv3 in your images. 

Cheers, 
Anders 

-- 
Anders Darander
ChargeStorm AB          Tel: +46 702 44 84 36
Laxholmstorget 3        Email: anders@chargestorm.se
602 21 Norrköping       Web: www.chargestorm.se

Sent from my Android phone with K-9 Mail. Please excuse my brevity.

