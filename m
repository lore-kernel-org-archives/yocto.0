Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC048E01373; Wed, 13 Jun 2018 16:02:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f42.google.com (mail-vk0-f42.google.com
	[209.85.213.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEC4FE012A2
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 16:02:51 -0700 (PDT)
Received: by mail-vk0-f42.google.com with SMTP id o17-v6so2560677vka.2
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 16:02:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=EuIvfDCn+TSIIXH0GQmyoQVJtIME2owVpbS76SFo5VQ=;
	b=HMn5Fc6gqQlsX2JR1MCx/RciiF/p/SeEKBMDOzYr9YH86Mu13ySMlJ456kIA+nKDQ4
	wdYM8TVsJ4k6VK5n1ohFmreHZ05zYOSuOTt21zBOTFNJe+F6oi/Hjg8GFXWoBmH08RQz
	3XPg3nqNfTHL0jrGmZRI4YmN/Ff9/ZNXRj2jH8WOPEfx2pHpfAmPcKEXLo5JNvwPneRF
	uWtDuZlyKBgcqB1mLJQpR2wJPCdWP6xPXIbLh82o95eAaS02prq/2VE7FO2zs6GiZ1L5
	BzqYol9B7ziiE/YXTbEgrxcWER69EMzsie1M/a8kAOp3LTtm4qkUY6yaIUYSDaZxy2VK
	8W/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=EuIvfDCn+TSIIXH0GQmyoQVJtIME2owVpbS76SFo5VQ=;
	b=s7wR8F2AiUy7UeKgV4339H1AFya85SfaUgGMudmn/r9KZJzmqHOPQOEt53QCdt1ID/
	Y5hgeKP9Aw4usIj5qcmGAi/4l34eW10f5Ttmsj+8Q0TfzVDY+qoXToH/3uWJ23j6NJaa
	hNmDnXtrfMrIoiMq+0fUsq7K8vtKLEm7ukwMjLIzO1fVRFjfqG5wH0WX47dN52jyVAP5
	r95Pn37Ze67xFl0GCgoX0k7g365brCtgZK9ZY1ZDFdDi59Ni3L6RcV0v86wiTBZZJeFy
	NjVHf2iNdGuCYzv5IGe7iZD1kt7hMQLK2/Tbo4PhSxr4DnJJNavGs3om1GZwWxejAx7d
	riHQ==
X-Gm-Message-State: APt69E0sAPk5O88owRaoj2r3cSAssPkm5IvBl5DzIUsknmeEoyfTmxi9
	xQy4KUKKrhqhor70mkOnJZiZblFQMyAzOSwu4JajGw==
X-Google-Smtp-Source: ADUXVKL7I0f6N39uCKhEQxDjiAeW9q9hQlrW8rMYRPnA86Cf7YBdcFqpoSiwQnRgjKgHp87LF6V/6jFxhZw3yIdgO50=
X-Received: by 2002:a1f:c3c7:: with SMTP id
	t190-v6mr110178vkf.24.1528930970918; 
	Wed, 13 Jun 2018 16:02:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:28a:0:0:0:0:0 with HTTP;
	Wed, 13 Jun 2018 16:02:50 -0700 (PDT)
In-Reply-To: <D6C2C352-896F-4D2B-A499-4526393B9418@emagii.com>
References: <3cf3fb0e-02c4-8867-7650-8764bfb67a3b@emagii.com>
	<b02028a72c604aa1bce0e40bc0089f43@XBOX02.axis.com>
	<9EEEF203-2371-4CCE-8E70-947330CDB462@emagii.com>
	<20180613132009.GA11193@ad.chargestorm.se>
	<D6C2C352-896F-4D2B-A499-4526393B9418@emagii.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 13 Jun 2018 16:02:50 -0700
Message-ID: <CAJ86T=XtAdK7=Xbhg9ndKmimiRqstHHtLhvPyNP6AM+q+qr6eQ@mail.gmail.com>
To: Ulf Samuelsson <yocto@emagii.com>
Cc: Anders Darander <anders@chargestorm.se>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How handle files needing updates in read-only filesystem
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
X-List-Received-Date: Wed, 13 Jun 2018 23:02:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 13, 2018 at 9:28 AM, Ulf Samuelsson <yocto@emagii.com> wrote:
> Thanks, is it more efficient than symlinking?

Efficient in what way?

Have you looked at the volatile-binds recipe in oe-core? Its job is to
setup enough bind mounts to enable systemd to run from a readonly
rootfs. Although it's currently systemd specific (it only provides a
systemd service file, no init script) it might give you some clues
about how to setup bind mounts at boot time.

> Best Regards,
> Ulf Samuelsson
>
>> 13 juni 2018 kl. 15:20 skrev Anders Darander <anders@chargestorm.se>:
>>
>> * Ulf Samuelsson <yocto@emagii.com> [180612 22:01]:
>>
>>> We want most of /etc to be read-only for security reasons,
>>> and the overlayfs will make the whole of /etc writeable.
>>
>>> I tried mount =E2=80=94bind /etc/timezone /persistent/etc/timezone, and=
 it
>>> complained that they were not directories. Bind mounting /etc again
>>> will make all of /etc writeable.
>>
>> Try to use: mount =E2=80=94o bind /etc/timezone /persistent/etc/timezone
>>
>> I'm using that heavily, either manually or by the volatile-binds recipe.
>> It works perfectly fine with files.
>>
>>> Symlinking to /persistent is fine, so the question is what an
>>> acceptable method is to have a simple way of ensuring that a certain
>>> file is converted to that symlink.
>>
>> This is normally done by a manual inspection / addition of bbappend
>> file.
>>
>> Cheers,
>> Anders
>> --
>> Anders Darander, Senior System Architect
>> ChargeStorm AB / eStorm AB
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

