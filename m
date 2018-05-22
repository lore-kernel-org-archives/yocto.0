Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 725DEE008D2; Tue, 22 May 2018 04:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F91DE008D2
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 04:01:05 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id e20-v6so17928029iof.4
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 04:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8BrZF7FFK18GFdXPszD1HOHJg40e2t8UhcrgRza44Tg=;
	b=ulYeoDx27tZBwtWzjU4lrZ9fsDgJzY/zQhJKJv9eTG3M90giBNE6wn0esPMrImox+8
	7qK2fQTgUufKJJGXOlBrvlCzH6nTJB9dXbSxHZy/omXt8XAAh22gyW9009G9KoztOWOo
	k/QoPBjIIBG5i3/MggsUFP7eP13SMd73QBpPS0hf2X3f40ORscsKkrJI/4/t034yi74E
	Tqob1WT+avx3g1c1e4xADthCgyesLBTFkIUFc68ILEoVHy7oL4csRecaPdfzx9wkSKIE
	zT24A3o0RIIIqqlTSp37VAJpcXLW4dxaUi1B1jQ1SpvLufrT7E5wa38TZzfWSxr0yvXh
	r1xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8BrZF7FFK18GFdXPszD1HOHJg40e2t8UhcrgRza44Tg=;
	b=sKLCZvLQesXBEtiv378N14pILtk+gp2cuoXv7GUJG69eayA3EXtOJBGPbMwJxLQD3y
	lvvZH6IA8NaU/9SuWYlBmDAHxQRL1lf+dBOTXD1jAVpNZU4Mcs7DhLcqr8nmlNZ8GDAj
	0hJmtHl+xMs33z7C8uU8qZ9nHaiiu08ksz+FMYRUu9BkAq6NH1xLMWJ8Lk+V45k8a0QE
	YsSmTXi1WVKa3oYEwSmwap76IVgjCk+0wRgv5C9NcnOU2ue7SZiRIpWJ5HGuMle8xmaS
	ZIONy07/jVLEUYq56Mt5I1zIHYdI9lptwIRiImEA1lw6O6h2XFbgsqwOcDxbKmecyAjC
	XI2A==
X-Gm-Message-State: ALKqPwcyXM0PG20Tk7jXIALEwVtsQiozHBhtzWO8hRYArA02lhUGXF9X
	ecrq4nYQ55h+u1uMvTJWG72Woi2VYBrgz2C4+z0emA==
X-Google-Smtp-Source: AB8JxZp0JDMPmnD8MnmrQiYykixIo+DWRdYs5NraqVc1ugbh+4J7t8mVnsUrXm3ix9/NicEe1Sii+8dRS75Y+chlzC4=
X-Received: by 2002:a6b:248e:: with SMTP id
	k136-v6mr23711012iok.270.1526986865582; 
	Tue, 22 May 2018 04:01:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.239.11 with HTTP; Tue, 22 May 2018 04:00:44 -0700 (PDT)
In-Reply-To: <CA+FhBv-Usqs5A-nVGe2pV2YzFmVhebXL7uLZiqUybY_nDuyXgQ@mail.gmail.com>
References: <CA+FhBv_pki=SYi3V4OXCn65Hgph6R=y3tphsJLFeVocQKLV6hw@mail.gmail.com>
	<CAJTo0LYdi-cXJY6aNoNqVy0+o+EtjfEX-=Cg6RampP3QB7C6UQ@mail.gmail.com>
	<CA+FhBv-Usqs5A-nVGe2pV2YzFmVhebXL7uLZiqUybY_nDuyXgQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 May 2018 12:00:44 +0100
Message-ID: <CAJTo0LYG3EDTwTPHEn2qOTpURPdJpG-E5dQst1BzWi6=wN-N7g@mail.gmail.com>
To: Damien LEFEVRE <lefevre.da@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: native recipe question
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
X-List-Received-Date: Tue, 22 May 2018 11:01:07 -0000
Content-Type: text/plain; charset="UTF-8"

On 22 May 2018 at 11:56, Damien LEFEVRE <lefevre.da@gmail.com> wrote:
> The recipe builds. When I try using with  DEPENDS += "arrayfire-native" in
> the arrayfire recipe I get this warning:
> WARNING: arrayfire-3.6.0-r0 do_prepare_recipe_sysroot: Manifest
> /home/damien/pyro/build-jetson-tx2/tmp/sstate-control/manifest-x86_64-arrayfire-native.populate_sysroot
> not found?

Don't call the recipe arrayfire-native and then BBCLASSEXTEND=native,
as you'll end up with a non-native arrayfile-native and a native
arrayfire-native-native...

Either have a minimal arrayfire-native recipe which inherits native
and just builds the piece you want, or do the prepend in the recipe as
I said.

Ross

