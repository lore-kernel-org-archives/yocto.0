Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55147E006B3; Mon,  9 Jul 2018 02:33:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7BA7E006B3
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 02:33:42 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id n84-v6so34638350oib.9
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 02:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EuLUp9KV+eNpl7V4JE+EexpWzqjQ3QJFJ7b6VOnU3I4=;
	b=yh7mlr1rFSYou00Gzu9lvYJtMnC91XakLqeExrnKLQtGeH4VoSr2yzF50jzx+gBgeY
	fHlcXxn9c5bQ8sAk2Dm7hyL4kFbZj9P8MstIoM5VK9KtQECtYY9zbtcIr9G2KvtczRep
	GoBcisN779JRqXL8UJVNSXNbBYJNCH7WwHggypfKR/9vDkEBn0BB7Evxjwn8iPHmjBZg
	i0tP8/nbPqwXgmInzDE7aJhETbOScNcy1TNmgriMUvYiwJff0U2U7nQmna88LMRNOZaI
	3E19gGTWZmdH0bPIuvdL9lBV3RXdIH1x3Q3uk2vbLlG08T1HcQHifASnxeJ9uwsmG7PQ
	t8Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EuLUp9KV+eNpl7V4JE+EexpWzqjQ3QJFJ7b6VOnU3I4=;
	b=C50ZXFNfc+4i6GtvzI55zSY/yA1uPLwB//8Vc07VTSmyygXgXNa+H1OaEe7GwR2ujr
	RfT4NSzPy4xrLKluLfnyv6l55TX1RqlQDHcRw7In6n+i3DKL5NePIr1fdEHjVP3/az1Z
	k6AysPOt78EJvu4fgGiWgXDxt23HKjW0gZ2XfJLBOiXLzzaEbB00yRm4Z80efB30pqD3
	bbM8jhOqlCCZXmEj5PWucK2PKb3Gcg0cPDe+FMAosNcdzUlbF7y4yL2u9K5kBgwUqv6M
	s6Lj8cYyZaudAwlKgN9TyuYf3miX/9UhSu3Ao0EwlNkvQ4IwIUwZ6FUMEcsaxLAlg7fr
	My9Q==
X-Gm-Message-State: APt69E07I9mkv5jUotTyGDWOqS4DjnzyAB8lkihZRmScoun1mYivS+TH
	yY//eHNHr725T43Rbb8tXlmSmW7sUYYELPberum3wA==
X-Google-Smtp-Source: AAOMgpdYccd4ANSPQVrdStv/shg8LjXvv3p6btg2we4egin167ZG9RAjYRb/5VR6pIOpUBZFwVm3Phl1rwX8L9g8HlU=
X-Received: by 2002:aca:4c8e:: with SMTP id
	z136-v6mr23706498oia.170.1531128822385; 
	Mon, 09 Jul 2018 02:33:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Mon, 9 Jul 2018 02:33:21 -0700 (PDT)
In-Reply-To: <CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com>
References: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
	<CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 9 Jul 2018 10:33:21 +0100
Message-ID: <CAJTo0LbYsWz-O0o9g8dTYCsJYJb8Z+jU9k1aRM_j=XNrWRvm5A@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Building gutenprint recipe
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
X-List-Received-Date: Mon, 09 Jul 2018 09:33:43 -0000
Content-Type: text/plain; charset="UTF-8"

If it's just a single simple binary that you need to run at build time
then you can build it manually in the target recipe before invoking
make.

The Pango recipe has an example of doing this.

Ross

On 7 July 2018 at 11:17, Alexander Kanavin <alex.kanavin@gmail.com> wrote:
> How to do this is specific to each project. Generally, you want the
> target recipe to depend on the native recipe (so that the necessary
> native tools show up in the target sysroot), and then you need to
> study the build system of the upstream component project (makefiles
> etc.) to see how it can be instructed to use the tool installed in the
> system, instead of building and using it's own version. Then patch the
> source code accordingly from the recipe.
>
> Alex
>
> 2018-07-07 12:02 GMT+02:00 Timm <timm@timmedia.de>:
>> There was a gutenprint recipe back in OE-Classic:
>> https://layers.openembedded.org/layerindex/oe-classic/recipe/12076/
>>
>> But currently there is no gutenprint available for Yocto.
>>
>> I tried to build my own recipe. But I got stuck at the stage where the
>> build process wants to call some generated binaries:
>>
>>     | ./extract-strings `cat xml-stamp | sed -e
>> 's;^;../../../gutenprint-5.2.11/src/xml/;'` > xmli18n-tmp.h.tmp
>>     | /lib/ld-linux-armhf.so.3: No such file or directory
>>
>> So, I introduced a "native" recipe, which just compiles the
>> "extract-strings" for me:
>>
>> ----------------------------------------------------------------------------------------------------------
>>
>> SECTION = "libs"
>> require gutenprint_${PV}.bb
>> DEPENDS = "gettext-native"
>> inherit native autotools
>>
>> EXTRA_OECONG = "\
>>         --disable-libgutenprintui2 \
>>             --disable-samples \
>>         --without-gimp2 \
>>         --without-doc \
>>         --disable-nls \
>>         --disable-nls-macos \
>>         --without-foomatic \
>>         --without-foomatic3 \
>>         --disable-escputil \
>>         --disable-test \
>>         --disable-testpattern \
>>         --without-cups \
>>                "
>>
>> do_compile() {
>>     oe_runmake -C src/xml/ extract-strings
>> }
>>
>> -----------------------------------------------------------------------------------------------------------------
>>
>> The next step is quite unclear for me? How can I tell the build system
>> not to generate the extract-strings again and use the native instead?
>>
>> As reference I used the build scripts from openwrt and buildroot. But
>> I'm not able to translate this build steps to Yocto.
>>
>> https://github.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenprint/Makefile
>>
>> https://github.com/buildroot/buildroot/blob/master/package/gutenprint/gutenprint.mk
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

